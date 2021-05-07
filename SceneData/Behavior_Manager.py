
import inspect
import os
import sys

import pymel.core as pm

import Common.Logger as log
reload(log)
import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Data.Rig_Data as rigData
reload(rigData)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)
import SceneData.Group as grp
reload(grp)
import Common.General_Utilities as genUtil
reload(genUtil)
import Data.General_Data as genData
reload(genUtil)

# FUNCTIONS MUST BE STATIC, USED ACROSS MULTIPLE FILES
class Behavior_Manager:
    bhvFiles = {}   # bhvName : [fileName1, fileName 2,...]
    bhvs = {}       # fileName : class
    bakeData = {}   # joint : group (with bake xforms)

    @staticmethod
    def InitBehaviors():
        log.funcFileDebug()
        Behavior_Manager.bhvFiles = {}
        Behavior_Manager.bhvs = {}
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
                        if bhvType not in Behavior_Manager.bhvFiles:
                            Behavior_Manager.bhvFiles[bhvType] = []
                        if fileName not in Behavior_Manager.bhvFiles[bhvType]:
                            Behavior_Manager.bhvFiles[bhvType].append(
                                                                fileName)
                        Behavior_Manager.bhvs[fileName] = obj()
    
    @staticmethod
    def InitLimb(limb):
        log.funcFileDebug()
        bhvFile = Behavior_Manager._GetDefaultBehaviorFile(limb)
        Behavior_Manager.SetBehavior(limb, bhvFile)
    
    @staticmethod
    def SetBehavior(limb, bhvFile):
        log.funcFileDebug()
        Behavior_Manager._Teardown_GroupVisibility(limb)
        bhv = Behavior_Manager.bhvs[bhvFile]
        limb.bhvFile.set(bhvFile)
        limb.bhvType.set(bhv.bhvType)
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        Behavior_Manager._InitRigRootBhv(rigRoot, bhv)
        Behavior_Manager._SetupLimbGroups(rigRoot, limb, bhv)
        bhv.InitLimb(limb)
        Behavior_Manager._Setup_GroupVisibility(limb)
        rigUtil.UpdateUsedControlMaterials(rigRoot, limb)
        return bhv

#============= SETUP / TEARDOWN RIG ============================

    @staticmethod
    def Setup_Edit_Rig(rigRoot):
        log.funcFileDebug()
        limbs = pm.listConnections(rigRoot.limbs)
        # Setup Control Pivots
        for limb in limbs:
            Behavior_Manager._Setup_ControlPivot(limb)
        # Setup Rig
        for limb in limbs:
            bhv = Behavior_Manager.bhvs[limb.bhvFile.get()]
            bhv.Setup_Rig_Internal(limb)
            bhv.Setup_Rig_External(limb)
            bhv.Setup_Constraint_JointsToControls(limb)
            if pm.listConnections(limb.limbParent):
                rigUtil.Setup_ControllersToParent(limb)
            else:
                rigUtil.Setup_ControllersGroup(limb)
        # Lock hide channelbox
        for limb in limbs:
            Behavior_Manager._LockHideLimbControls(limb)

    @staticmethod
    def Setup_Anim_Rig(rigRoot):
        log.funcFileDebug()
        limbs = pm.listConnections(rigRoot.limbs)
        controls = Behavior_Manager._SetupRig(limbs)
        for limb in limbs:
            bhv = Behavior_Manager.bhvs[limb.bhvFile.get()]
            bhv.Setup_Constraint_ControlsToJoints(limb)
        pm.refresh()
        if controls:
            Behavior_Manager._BakeJointDataToControls(
                                            Behavior_Manager.bakeData, 
                                            controls)
        for limb in limbs:
            bhv = Behavior_Manager.bhvs[limb.bhvFile.get()]
            bhv.Teardown_Constraint_ControlsToJoints(limb)
        for limb in limbs:
            bhv = Behavior_Manager.bhvs[limb.bhvFile.get()]
            bhv.Setup_Constraint_JointsToControls(limb)
        for limb in limbs:
            Behavior_Manager._LockHideLimbControls(limb)
        
    @staticmethod
    def _Setup_ControlPivot(limb):
        log.funcFileDebug()
        bhv = Behavior_Manager.bhvs[limb.bhvFile.get()]
        if bhv.groupMoveable:
            for group in pm.listConnections(limb.usedGroups):
                control = pm.listConnections(group.control)[0]
                pm.makeIdentity(control, a=1, t=1, r=1, s=1) # Freeze xforms
                pos = pm.xform(group, q=1, t=1, ws=1)
                pm.move(pos[0], pos[1], pos[2],         # Move pivot to group
                            control.scalePivot, 
                            control.rotatePivot, ws=1)

    @staticmethod
    def _LockHideLimbControls(limb):
        log.funcFileDebug()
        bhv = Behavior_Manager.bhvs[limb.bhvFile.get()]
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
        
    @staticmethod
    def Teardown_Anim_Rig(rigRoot):
        log.funcFileDebug()
        limbs = pm.listConnections(rigRoot.limbs)
        bakeDataParent = pm.listConnections(rigRoot.bakedDataGroup)[0]
        temp = Behavior_Manager._BakeControlsToJointData(limbs, 
                                                bakeDataParent)
        Behavior_Manager.bakeData = temp
        for limb in limbs:
            Behavior_Manager._TeardownLimb(limb)

    @staticmethod
    def Teardown_Edit_Rig(rigRoot):
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
            Behavior_Manager._TeardownLimb(limb)
        for limb in limbs:
            for group in pm.listConnections(limb.usedGroups):
                Behavior_Manager._Teardown_ControlPivot(group)
    
#============= ANIMATION TRANSFER (BAKING) ============================
   
    @staticmethod
    def _BakeControlsToJointData(limbs, bakeDataParent):
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

    @staticmethod
    def _TeardownLimb(limb):
        log.funcFileDebug()
        bhvFile = limb.bhvFile.get()
        bhv = Behavior_Manager.bhvs[bhvFile]
        rigUtil.Teardown_Controllers(limb)
        bhv.Teardown_Constraint_JointsToControls(limb)
        bhv.Teardown_Rig_External(limb)
        bhv.Teardown_Rig_Internal(limb)


    @staticmethod
    def _SetupRig(limbs):
        log.funcFileDebug()
        controls = []
        data = bool(Behavior_Manager.bakeData)
        for limb in limbs:
            # if joints have keys or there's baked data
            joints = pm.listConnections(limb.joints)
            keys = any([pm.keyframe(j, q=1, kc=1) for j in joints])
            hasKeys = (data or keys)
            bhvFile = limb.bhvFile.get()
            bhv = Behavior_Manager.bhvs[bhvFile]
            # Setup rig and store controls
            groups = bhv.Setup_Rig_Internal(limb)
            if limb.bakeInternal.get() and hasKeys:
                controls += [pm.listConnections(g.control)[0] for g in groups]
            groups = bhv.Setup_Rig_External(limb)
            if limb.bakeExternal.get() and hasKeys:
                controls += [pm.listConnections(g.control)[0] for g in groups]
        return controls

    @staticmethod
    def _BakeJointDataToControls(tempGroups, controls):
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

    @staticmethod
    def _Teardown_ControlPivot(group):
        control = pm.listConnections(group.control)[0]
        pm.xform(control, cp=1) # Re-center pivots
        gPos = pm.xform(group, q=1, t=1, ws=1)
        cPos = pm.xform(control, q=1, t=1, ws=1)
        pm.xform(control, t=gPos, ws=1)
        pm.makeIdentity(control, a=1, t=1, r=1, s=1) # Freeze xforms
        pm.xform(control, t=cPos, ws=1)

    @staticmethod
    def _Setup_GroupVisibility(limb):
        for group in pm.listConnections(limb.usedGroups):
            group.v.set(1)

    @staticmethod
    def _Teardown_GroupVisibility(limb):
        for group in pm.listConnections(limb.usedGroups):
            group.v.set(0)

    @staticmethod
    def _GetDefaultBehaviorFile(limb):
        limbType = limb.limbType.get()
        orderedFiles = {}
        for bhvFiles in list(Behavior_Manager.bhvFiles.values()):
            bhvFile = bhvFiles[-1]
            bhv = Behavior_Manager.bhvs[bhvFile]
            orderIndex = bhv.orderIndex
            if orderIndex in orderedFiles:
                msg = 'All behavior orderIndex values must be unique!'
                msg = '\n"%s" is conflicting.' % bhv.bhvType
                raise ValueError(msg)
            if limbType in bhv.validLimbTypes:
                orderedFiles[orderIndex] = bhvFile
        index = sorted(list(orderedFiles.keys()))[0]
        return orderedFiles[index]

    @staticmethod
    def _InitRigRootBhv(rigRoot, behavior):
        log.funcFileDebug()
        if not behavior.groupCount:
            return
        attr = behavior.groupType + 'Shape'
        if rigRoot.hasAttr(attr):
            return
        groupShape = behavior.groupShape
        pm.addAttr(rigRoot, ln=attr, dt='string', h=genData.HIDE_ATTRS)
        tempParent = pm.listConnections(rigRoot.controlTemplates)[0]
        for ctr in pm.listRelatives(tempParent, c=1):
            if groupShape in ctr.shortName():
                pm.connectAttr(ctr.rigRoot, rigRoot + '.' + attr)
                return

    @staticmethod
    def _SetupLimbGroups(rigRoot, limb, behavior):
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


