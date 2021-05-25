
import inspect
import os
import sys

import pymel.core as pm

import Utilities.Logger as log
reload(log)
import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Data.Rig_Data as rigData
reload(rigData)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import SceneData.Group as grp
reload(grp)
import Utilities.General_Utilities as genUtil
reload(genUtil)
import Data.General_Data as genData
reload(genUtil)

# FUNCTIONS MUST BE STATIC, USED ACROSS MULTIPLE FILES
class Behavior_Manager(object):
    bhvFiles = {}   # bhvName : [fileName1, fileName 2,...]
    bhvs = {}       # fileName : class
    bakeData = {}   # joint : group (with bake xforms)
    groupTypes = set()

    def InitBehaviors(self):
        log.funcFileDebug()
        self.bhvFiles = {}
        self.bhvs = {}
        self.groupTypes = set(['Joint'])
        rootPath = os.path.dirname(__file__)
        rootPath = os.path.dirname(rootPath)
        bhvPath = os.path.join(rootPath, 'Behaviors')
        for opFile in os.listdir(bhvPath):
            if '__init__.py' in opFile:
                continue
            fileName = os.path.splitext(opFile)[0]
            moduleName = '%s.%s' % ('Behaviors', fileName)
            exec('import %s' % moduleName)
            exec('reload (%s)' % moduleName)
            module = sys.modules[moduleName]
            for name, obj in inspect.getmembers(module):
                if inspect.isclass(obj):
                    if issubclass(obj, absBhv.Abstract_Behavior):
                        bhvType = obj.bhvType
                        if bhvType not in self.bhvFiles:
                            self.bhvFiles[bhvType] = []
                        if fileName not in self.bhvFiles[bhvType]:
                            self.bhvFiles[bhvType].append(
                                                                fileName)
                        bhv = obj()
                        self.bhvs[fileName] = bhv
                        if bhv.groupType:
                            self.groupTypes.add(bhv.groupType)
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        bhvFile = self._GetDefaultBehaviorFile(limb)
        self.SetBehavior(limb, bhvFile)
    
    def SetBehavior(self, limb, bhvFile):
        log.funcFileDebug()
        self._Teardown_GroupVisibility(limb)
        bhv = self.bhvs[bhvFile]
        limb.bhvFile.set(bhvFile)
        limb.bhvType.set(bhv.bhvType)
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        self._SetupLimbGroups(rigRoot, limb, bhv)
        bhv.InitLimb(limb)
        self._Setup_GroupVisibility(limb)
        rigUtil.UpdateUsedControlMaterials(rigRoot, limb)
        return bhv

#============= SETUP / TEARDOWN RIG ============================

    def Setup_Edit_Rig(self, rigRoot):
        log.funcFileDebug()
        limbs = pm.listConnections(rigRoot.limbs)
        # Setup Control Pivots
        for limb in limbs:
            self._Setup_ControlPivot(limb)
        # Setup Rig
        for limb in limbs:
            bhv = self.bhvs[limb.bhvFile.get()]
            bhv.Setup_Rig_Internal(limb)
            bhv.Setup_Rig_External(limb)
            bhv.Setup_Constraint_JointsToControls(limb)
            if pm.listConnections(limb.limbParent):
                rigUtil.Setup_ControllersToParent(limb)
            else:
                rigUtil.Setup_ControllersGroup(limb)
        # Lock hide channelbox
        for limb in limbs:
            self._LockHideLimbControls(limb)

    def Setup_Anim_Rig(self, rigRoot):
        log.funcFileDebug()
        if pm.objExists(rigData.JOINTS_ANIM_LAYER):
            pm.animLayer(rigData.JOINTS_ANIM_LAYER, e=1, mute=0)
        limbs = rigUtil.GetSortedLimbs(rigRoot)[::-1]
        controls = self._SetupRig(limbs)
        for limb in limbs:
            bhv = self.bhvs[limb.bhvFile.get()]
            bhv.Setup_Constraint_ControlsToJoints(limb)
        pm.refresh()
        if controls:
            self._BakeJointDataToControls(  self.bakeData, 
                                            controls)
        for limb in limbs:
            bhv = self.bhvs[limb.bhvFile.get()]
            bhv.Teardown_Constraint_ControlsToJoints(limb)
        pm.refresh()
        for limb in limbs:
            bhv = self.bhvs[limb.bhvFile.get()]
            bhv.Setup_Constraint_JointsToControls(limb)
        # Lock hide channelbox
        for limb in limbs:
            self._LockHideLimbControls(limb)
        if pm.objExists(rigData.JOINTS_ANIM_LAYER):
            pm.delete(rigData.JOINTS_ANIM_LAYER)
        
    def _LockHideLimbControls(self, limb):
        log.funcFileDebug()
        bhv = self.bhvs[limb.bhvFile.get()]
        if bhv.usesJointControls:
            for group in pm.listConnections(limb.jointGroups):
                control = pm.listConnections(group.control)[0]
                pos = limb.channelBoxJointCtrPos.get()
                rot = limb.channelBoxJointCtrRot.get()
                scale = limb.channelBoxJointCtrScale.get()
                rigUtil.ChannelBoxAttrs(control, pos, rot, scale, 0)
        if bhv.usesLimbControls:
            for group in pm.listConnections(limb.limbGroups):
                control = pm.listConnections(group.control)[0]
                pos = limb.channelBoxLimbCtrPos.get()
                rot = limb.channelBoxLimbCtrRot.get()
                scale = limb.channelBoxLimbCtrScale.get()
                rigUtil.ChannelBoxAttrs(control, pos, rot, scale, 0)
        
    def Teardown_Anim_Rig(self, rigRoot):
        log.funcFileDebug()
        limbs = pm.listConnections(rigRoot.limbs)
        bakeDataParent = pm.listConnections(rigRoot.bakedDataGroup)[0]
        self.bakeData = self._BakeControlsToJointData(limbs, 
                                                bakeDataParent)
        for limb in limbs:
            self._TeardownLimb(limb)

    def Teardown_Edit_Rig(self, rigRoot):
        log.funcFileDebug()
        limbs = pm.listConnections(rigRoot.limbs)

        # Reset Controls
        for limb in limbs:
            for group in pm.listConnections(limb.usedGroups):
                control = pm.listConnections(group.control)[0]
                pm.cutKey(control)
                rigUtil.ChannelBoxAttrs(control, 1, 1, 1, 0)
                rigUtil.ResetAttrs(control)
        pm.refresh()
        for limb in limbs:
            self._TeardownLimb(limb)
        for limb in limbs:
            for group in pm.listConnections(limb.usedGroups):
                self._Teardown_ControlPivot(group)
    
#============= ANIMATION TRANSFER (BAKING) ============================
   
    def _BakeControlsToJointData(self, limbs, bakeDataParent):
        log.funcFileDebug()
        bakeData = {} # joint : tempGroup
        allJoints = []
        tempCsts = []
        start = pm.playbackOptions(q=1, ast=1)
        end = pm.playbackOptions(q=1, aet=1)
        for limb in limbs:
            allJoints += pm.listConnections(limb.joints)
        for joint in allJoints:
            group = pm.spaceLocator()
            pm.parent(group, bakeDataParent)
            tempCsts.append(pm.parentConstraint(joint, group))
            bakeData[joint] = group
        groups = list(bakeData.values())
        pm.bakeResults(groups, sm=1, t=(start, end))
        pm.delete(tempCsts)
        return bakeData

    def _TeardownLimb(self, limb):
        log.funcFileDebug()
        bhvFile = limb.bhvFile.get()
        bhv = self.bhvs[bhvFile]
        rigUtil.Teardown_Controllers(limb)
        bhv.Teardown_Constraint_JointsToControls(limb)
        bhv.Teardown_Rig_External(limb)
        bhv.Teardown_Rig_Internal(limb)

    def _SetupRig(self, limbs):
        log.funcFileDebug()
        controls = []
        data = bool(self.bakeData)
        for limb in limbs:
            # if joints have keys or there's baked data
            joints = pm.listConnections(limb.joints)
            keys = any([pm.keyframe(j, q=1, kc=1) for j in joints])
            hasKeys = (data or keys)
            bhvFile = limb.bhvFile.get()
            bhv = self.bhvs[bhvFile]
            # Setup rig and store controls
            groups = bhv.Setup_Rig_Internal(limb)
            if limb.bakeInternal.get() and hasKeys:
                controls += [pm.listConnections(g.control)[0] for g in groups]
            groups = bhv.Setup_Rig_External(limb)
            if limb.bakeExternal.get() and hasKeys:
                controls += [pm.listConnections(g.control)[0] for g in groups]
        return controls

    def _BakeJointDataToControls(self, tempGroups, controls):
        start = pm.playbackOptions(q=1, ast=1)
        end = pm.playbackOptions(q=1, aet=1)
        log.funcFileDebug()
        for joint, group in tempGroups.items():
            pm.parentConstraint(group, joint)
        pm.cutKey(controls)
        pm.bakeResults(controls, sm=1, t=(start, end))

        if tempGroups:
            pm.delete(list(tempGroups.values()))

#============= UTIL ============================

    def _Setup_ControlPivot(self, limb):
        log.funcFileDebug()
        bhvFile = limb.bhvFile.get()
        bhv = self.bhvs[bhvFile]
        if bhv.groupMoveable:
            for group in pm.listConnections(limb.usedGroups):
                control = pm.listConnections(group.control)[0]
                pm.makeIdentity(control, a=1, t=1, r=1, s=1) # Freeze xforms
                pos = pm.xform(group, q=1, t=1, ws=1)
                print(str(group) + ' : ' + str(pos))
                pm.move(pos[0], pos[1], pos[2],         # Move pivot to group
                            control.scalePivot, 
                            control.rotatePivot, ws=1)

    def _Teardown_ControlPivot(self, group):
        control = pm.listConnections(group.control)[0]
        pm.xform(control, cp=1) # Re-center pivots
        gPos = pm.xform(group, q=1, t=1, ws=1)
        cPos = pm.xform(control, q=1, t=1, ws=1)
        pm.xform(control, t=gPos, ws=1)
        pm.makeIdentity(control, a=1, t=1, r=1, s=1) # Freeze xforms
        pm.xform(control, t=cPos, ws=1)

    def _Setup_GroupVisibility(self, limb):
        for group in pm.listConnections(limb.usedGroups):
            group.v.set(1)

    def _Teardown_GroupVisibility(self, limb):
        for group in pm.listConnections(limb.usedGroups):
            group.v.set(0)

    def _GetDefaultBehaviorFile(self, limb):
        limbType = limb.limbType.get()
        orderedFiles = {}
        for bhvFiles in list(self.bhvFiles.values()):
            bhvFile = bhvFiles[-1]
            bhv = self.bhvs[bhvFile]
            orderIndex = bhv.orderIndex
            if orderIndex in orderedFiles:
                msg = 'All behavior orderIndex values must be unique!'
                msg += '\n"%s" conflicting with ' % bhv.bhvType
                msg += '"%s"' % orderedFiles[orderIndex].bhvType
                raise ValueError(msg)
            if limbType in bhv.validLimbTypes:
                orderedFiles[orderIndex] = bhvFile
        index = sorted(list(orderedFiles.keys()))[0]
        return orderedFiles[index]

    # @staticmethod
    # def _InitRigRootBhv(rigRoot, behavior):
    #     log.funcFileDebug()
    #     if not behavior.groupCount:
    #         return
    #     attr = behavior.groupType + 'Shape'
    #     if rigRoot.hasAttr(attr):
    #         return
    #     groupShape = behavior.groupShape
    #     pm.addAttr(rigRoot, ln=attr, dt='string', h=genData.HIDE_ATTRS)
    #     tempParent = pm.listConnections(rigRoot.controlTemplates)[0]
    #     for ctr in pm.listRelatives(tempParent, c=1):
    #         if groupShape in ctr.shortName():
    #             pm.connectAttr(ctr.rigRoot, rigRoot + '.' + attr)
    #             return

    def InitRigRootControlShapeAttrs(self, rigRoot):
        folder = os.path.dirname(__file__)
        folder = os.path.dirname(folder)
        folder = os.path.join(folder, 'Data')
        filePath = os.path.join(folder, 'Config.json')
        config = genUtil.Json.Load(filePath)

        hide = genData.HIDE_ATTRS
        for groupType in self.groupTypes:
            attr = '%sShape' % (groupType)
            if not rigRoot.hasAttr(attr):
                pm.addAttr(rigRoot, ln=attr, dt='string', h=hide)
                fullAttr = '%s.%s' % (rigRoot, attr)
                configAttr = 'controlShape_' + groupType
                pm.setAttr(fullAttr, config[configAttr])

    def _SetupLimbGroups(self, rigRoot, limb, behavior):
        log.funcFileDebug()
        groupType = behavior.groupType
        groupCount = behavior.groupCount
        pm.disconnectAttr(limb.usedGroups)
        limbGroups = pm.listConnections(limb.limbGroups)
        limbGroupDict = {} # groupType : Group
        for group in limbGroups:
            name = group.groupType.get()
            if name not in limbGroupDict:
                limbGroupDict[name] = []
            limbGroupDict[name].append(group)
        if groupType not in limbGroupDict:
            limbGroupDict[groupType] = []
        toCreate = max(groupCount - len(limbGroupDict[groupType]), 0)
        for i in range(toCreate):
            group = grp.Group.AddLimbGroup(rigRoot, i, groupType, limb)
            limbGroupDict[groupType].append(group)
        for i in range(groupCount):
            group = limbGroupDict[groupType][i]
            pm.connectAttr(limb.usedGroups, group.used)
            genUtil.Name.UpdateLimbGroupName(rigRoot, limb, group)


