
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
import Utilities.Anim_Utilities as animUtil
reload(animUtil)
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

    # def Setup_Edit_Rig(self, rigRoot):
    def Setup_Rig(self, rigRoot):
        log.funcFileDebug()
        limbs = pm.listConnections(rigRoot.limbs)

        # Setup Joint Locs
        for limb in limbs:
            for joint in pm.listConnections(limb.joints):
                loc = pm.listConnections(joint.loc)[0]
                pm.parentConstraint(joint, loc)

        # Setup Control Pivots
        for limb in limbs:
            limb.v.set(limb.enableLimb.get())
            self._Setup_ControlPivot(limb)
            bhv = self.bhvs[limb.bhvFile.get()]
            bhv.Setup_Rig_Controls(limb)
        for limb in limbs:
            bhv = self.bhvs[limb.bhvFile.get()]
            bhv.Setup_Constraint_JointsToControls(limb)
            if pm.listConnections(limb.limbParent):
                rigUtil.Setup_ControllersToParent(limb)
            else:
                rigUtil.Setup_ControllersGroup(limb)
        # Lock hide channelbox
        for limb in limbs:
            self._LockHideLimbControls(limb)
        rigRoot.isBuilt.set(1)

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
        
    def Teardown_Rig(self, rigRoot):
        log.funcFileDebug()
        limbs = pm.listConnections(rigRoot.limbs)

        # Reset Controls
        for limb in limbs:
            limb.v.set(1)
            for group in pm.listConnections(limb.usedGroups):
                control = pm.listConnections(group.control)[0]
                pm.cutKey(control)
                rigUtil.ChannelBoxAttrs(control, 1, 1, 1, 0)
                rigUtil.ResetAttrs(control)
        pm.refresh()
        for limb in limbs:
            bhvFile = limb.bhvFile.get()
            bhv = self.bhvs[bhvFile]
            rigUtil.Teardown_Controllers(limb)
            bhv.Teardown_Constraint_JointsToControls(limb)
            bhv.Teardown_Rig_Controls(limb)
        for limb in limbs:
            for group in pm.listConnections(limb.usedGroups):
                self._Teardown_ControlPivot(group)
        rigRoot.isBuilt.set(0)

        # Teardown Joint Locs
        for limb in limbs:
            for joint in pm.listConnections(limb.joints):
                loc = pm.listConnections(joint.loc)[0]
                pm.delete(pm.listRelatives(loc, c=1, type='constraint'))

    
#============= ANIMATION TRANSFER (BAKING) ============================
   
    def BakeJointAnimation(self, limbs, animName):
        log.funcFileDebug()
        animLimbs = []
        pm.delete(all=1, staticChannels=1)
        # Setup
        for limb in limbs:
            joints = pm.listConnections(limb.joints)

            # if no keys, skip
            if any([pm.keyframe(j, q=1, kc=1) for j in joints]):
                animLimbs.append(limb)
        
        self._BakeAnimation(animLimbs, animName)
        return animLimbs

    def BakeControlAnimation(self, limbs, animName):
        log.funcFileDebug()
        animLimbs = []
        pm.delete(all=1, staticChannels=1)
        # Setup
        for limb in limbs:
            groups = pm.listConnections(limb.usedGroups)
            controls = [pm.listConnections(g.control)[0] for g in groups]

            # if no keys, skip
            if any([pm.keyframe(c, q=1, kc=1) for c in controls]):
                animLimbs.append(limb)
        
        self._BakeAnimation(animLimbs, animName)
        return animLimbs

    def _BakeAnimation(self, animLimbs, animName):
        tempCsts = []
        locators = []
        start = pm.playbackOptions(q=1, ast=1)
        end = pm.playbackOptions(q=1, aet=1)

        for limb in animLimbs:
            # Create loc group + cst
            joints = pm.listConnections(limb.joints)
            joints = rigUtil.Joint._GetSortedJoints(joints)
            jointParent = pm.listRelatives(joints[0], p=1)
            group = grp.Group.AddAnimGroup(limb, animName)
            group.v.set(0)
            tempCsts.append(pm.parentConstraint(jointParent, group))
            # create locs + cst
            for joint in joints:
                loc = pm.spaceLocator()
                tempCsts.append(pm.parentConstraint(joint, loc))
                tempCsts.append(pm.scaleConstraint(joint, loc))
                pm.parent(loc, group)
                locators.append(loc)

        pm.bakeResults(locators, sm=1, t=(start, end))
        pm.delete(tempCsts)

    def ApplyControlAnimation(self, limbs, animName, 
            hasPosCst, hasRotCst, hasScaleCs):
        log.funcFileDebug()
        start = pm.playbackOptions(q=1, ast=1)
        end = pm.playbackOptions(q=1, aet=1)
        controls = []
        constraints = []
        for limb in limbs:
            joints = pm.listConnections(limb.joints)
            joints = rigUtil.Joint._GetSortedJoints(joints)
            jointParent = pm.listRelatives(joints[0], p=1)
            animGroup = animUtil.GetLimbAnim(limb, animName)
            locs = pm.listRelatives(animGroup, c=1)
            constraints.append(pm.parentConstraint(jointParent, animGroup))
            bhv = self.bhvs[limb.bhvFile.get()]
            ctrs = bhv.Setup_Constraint_ControlsToXforms(limb, locs, 
                            hasPosCst, hasRotCst, hasScaleCs)
            controls.append(ctrs)

        pm.cutKey(controls)
        pm.bakeResults(controls, sm=1, t=(start, end))
        pm.delete(constraints)

        for limb in limbs:
            bhv = self.bhvs[limb.bhvFile.get()]
            bhv.Teardown_Constraint_ControlsToXforms(limb)

    def DeleteAnimation(self, limbs, animName):
        log.funcFileDebug()
        for limb in limbs:
            group = animUtil.GetLimbAnim(limb, animName)
            grp.Group.Remove(group)

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
            uiOrderIndex = bhv.uiOrderIndex
            if uiOrderIndex in orderedFiles:
                msg = 'All behavior uiOrderIndex values must be unique!'
                msg += '\n"%s" conflicting with ' % bhv.bhvType
                msg += '"%s"' % orderedFiles[uiOrderIndex].bhvType
                raise ValueError(msg)
            if limbType in bhv.validLimbTypes:
                orderedFiles[uiOrderIndex] = bhvFile
        index = sorted(list(orderedFiles.keys()))[0]
        return orderedFiles[index]

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


