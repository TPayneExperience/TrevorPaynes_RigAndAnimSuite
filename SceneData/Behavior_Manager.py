
import inspect
import os
import sys

import pymel.core as pm

import Utilities.Logger as log
import Abstracts.Abstract_Behavior as absBhv
import Utilities.Rig_Utilities as rigUtil
import SceneData.Group as grp
import Utilities.General_Utilities as genUtil
import Data.General_Data as genData

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
        self.groupTypes = set(['Joint', 'FK'])
        rootPath = os.path.dirname(__file__)
        rootPath = os.path.dirname(rootPath)
        bhvPath = os.path.join(rootPath, 'Behaviors')
        for opFile in os.listdir(bhvPath):
            if opFile.startswith('__'):
                continue
            fileName = os.path.splitext(opFile)[0]
            moduleName = '%s.%s' % ('Behaviors', fileName)
            exec('import %s' % moduleName)
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
    
    def CleanupLimb(self, limb):
        bhv = self.bhvs[limb.bhvFile.get()]
        bhv.CleanupLimb(limb)

    def SetBehavior(self, limb, bhvFile):
        log.funcFileDebug()
        oldBhvFile = limb.bhvFile.get()
        if oldBhvFile:
            self.CleanupLimb(limb)
        self._Teardown_GroupVisibility(limb)

        newBhv = self.bhvs[bhvFile]
        limb.bhvFile.set(bhvFile)
        limb.bhvType.set(newBhv.bhvType)
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        self._SetupLimbGroups(rigRoot, limb, newBhv)
        newBhv.InitLimb(limb)
        self._Setup_GroupVisibility(limb)
        rigUtil.UpdateUsedControlMaterials(rigRoot, limb)
        return newBhv

#============= SETUP / TEARDOWN RIG ============================

    def _GetBhvSortedLimbs(self, rigRoot):
        rootLimbs = []
        allLimbs = []
        ikLimbs = []
        for limb in pm.listConnections(rigRoot.limbs):
            if not pm.listConnections(limb.limbParent):
                rootLimbs.append(limb)
        for rootLimb in rootLimbs:
            for limb in rigUtil.GetLimbCreationOrder(rootLimb):
                if 'IK' in limb.bhvType.get():
                    ikLimbs.append(limb)
                else:
                    allLimbs.append(limb)
        allLimbs += ikLimbs
        return allLimbs

    def Setup_Rig(self, rigRoot):
        log.funcFileDebug()
        limbs = self._GetBhvSortedLimbs(rigRoot)

        # Store joint pos/rot + pivot
        for limb in limbs:
            for joint in pm.listConnections(limb.joints):
                joint.startPos.set(joint.t.get())
                joint.startRot.set(joint.r.get())
                group = pm.listConnections(joint.group)[0]
                pm.parent(group, limb)

        # Setup Control Hier
        for limb in limbs:
            limb.v.set(limb.enableLimb.get())
            # Parent joint groups to limbs
            bhv = self.bhvs[limb.bhvFile.get()]
            bhv.Setup_Rig_Controls(limb)

        # Constrain Joints to Controls
        for limb in limbs:
            bhv = self.bhvs[limb.bhvFile.get()]
            bhv.Setup_Constraint_JointsToControls(limb)
            if pm.listConnections(limb.limbParent):
                rigUtil.Setup_ControllersToParent(limb)
            else:
                rigUtil.Setup_ControllersGroup(limb)

        # Constrain Controls to Controls
        for limb in limbs:
            for group in pm.listConnections(limb.usedGroups):
                for cstGroup in pm.listConnections(group.constraintGroups):
                    self._SetupConstraintGroup(cstGroup)

        # Lock hide channelbox + joint list
        for limb in limbs:
            self._LockHideLimbControls(limb)
        
        rigRoot.isBuilt.set(1)

    def Teardown_Rig(self, rigRoot):
        log.funcFileDebug()
        limbs = self._GetBhvSortedLimbs(rigRoot)[::-1]

        # Reset Controls
        for limb in limbs:
            limb.v.set(1)
            for group in pm.listConnections(limb.usedGroups):
                control = pm.listConnections(group.control)[0]
                # pm.cutKey(control)
                rigUtil.ChannelBoxAttrs(control, 1, 1, 1, 0)
                rigUtil.ResetAttrs(control)

        # Teardown control constraints
        for limb in limbs:
            for group in pm.listConnections(limb.usedGroups):
                for cstGroup in pm.listConnections(group.constraintGroups):
                    self._TeardownConstraintGroup(cstGroup)

        # Teardown Joint Constraints
        pm.refresh()
        for limb in limbs:
            bhvFile = limb.bhvFile.get()
            bhv = self.bhvs[bhvFile]
            rigUtil.Teardown_Controllers(limb)
            bhv.Teardown_Constraint_JointsToControls(limb)

        # Controls
        for limb in limbs:
            bhvFile = limb.bhvFile.get()
            bhv = self.bhvs[bhvFile]
            bhv.Teardown_Rig_Controls(limb)
        
        # Fix Pivots
        joints = {} # longName : joint
        for limb in limbs:
            for joint in pm.listConnections(limb.joints):
                joints[joint.longName()] = joint
                group = pm.listConnections(joint.group)[0]
                pm.parent(group, joint)
        rigRoot.isBuilt.set(0)
    
        # Reset Joints
        for name in sorted(joints.keys()):
            joint = joints[name]
            joint.t.set(joint.startPos.get())
            joint.r.set(joint.startRot.get())

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
        
#============= ANIMATION TRANSFER (BAKING) ============================
   
    def SetupAnimJoints(self, rigRoot):
        '''Create duplicate joints to store animation'''
        log.funcFileDebug()
        start = pm.playbackOptions(q=1, ast=1)
        end = pm.playbackOptions(q=1, aet=1)
        tempCsts = []
        jointDict = {} # oldJoint : animJoint

        # Duplicate and pair joint/animJoint
        for limb in pm.listConnections(rigRoot.limbs):
            joints = pm.listConnections(limb.joints)
            animJoints = pm.duplicate(joints, po=1, rc=1)
            for joint, animJoint in zip(joints, animJoints):
                pm.connectAttr(limb.animJoints, animJoint.limb)
                jointDict[joint] = animJoint
                group = pm.listConnections(joint.group)[0]
                pm.connectAttr(animJoint.group, group.animJoint)
                tempCsts.append(pm.parentConstraint(joint, animJoint))
                tempCsts.append(pm.scaleConstraint(joint, animJoint))
                animJoint.v.set(0)

        # Bake + delete constraints
        pm.bakeResults(list(jointDict.values()), sm=1, t=(start, end))
        pm.delete(tempCsts)

        return jointDict

    def TeardownAnimJoints(self, limb):
        log.funcFileDebug()
        pm.delete(pm.listConnections(limb.animJoints))

    def ApplyAnimJoints(self, limbs, 
            hasPosCst, hasRotCst, hasScaleCs):
        log.funcFileDebug()
        start = pm.playbackOptions(q=1, ast=1)
        end = pm.playbackOptions(q=1, aet=1)
        controls = []
        cstLimbs = []
        for limb in limbs:
            if not limb.toBeBaked.get():
                continue
            jointGroups = pm.listConnections(limb.jointGroups)
            jointGroups = rigUtil.SortGroups(jointGroups)
            animJoints = [pm.listConnections(g.animJoint)[0] for g in jointGroups]
            bhv = self.bhvs[limb.bhvFile.get()]
            ctrs = bhv.Setup_Constraint_ControlsToXforms(
                limb, animJoints, hasPosCst, hasRotCst, hasScaleCs
            )
            controls.append(ctrs)
            cstLimbs.append(limb)
        if controls:
            pm.cutKey(controls)
            pm.bakeResults(controls, sm=1, t=(start, end))

        for limb in cstLimbs:
            limb.toBeBaked.set(0)
            bhv = self.bhvs[limb.bhvFile.get()]
            bhv.Teardown_Constraint_ControlsToXforms(limb)

#============= UTIL ============================

    def _Setup_GroupVisibility(self, limb):
        for group in pm.listConnections(limb.usedGroups):
            if not pm.listConnections(group.v):
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
                msg += '"%s"' % orderedFiles[uiOrderIndex]
                raise ValueError(msg)
            if limbType in bhv.validLimbTypes:
                orderedFiles[uiOrderIndex] = bhvFile
            # Set Branch limb to fk Branch
            if bhv.bhvType == 'FK Branch' and limbType == 2:
                orderedFiles[0] = bhvFile
        index = sorted(orderedFiles.keys())[0]
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
        # Build limb group dict
        limbGroupDict = {} # groupType : Group
        for group in limbGroups:
            name = group.groupType.get()
            if name not in limbGroupDict:
                limbGroupDict[name] = []
            limbGroupDict[name].append(group)

        if groupType not in limbGroupDict:
            limbGroupDict[groupType] = []

        # Create Limb Groups
        toCreate = max(groupCount - len(limbGroupDict[groupType]), 0)
        for i in range(toCreate):
            group = grp.Group.AddLimbGroup(rigRoot, i, groupType, limb)
            limbGroupDict[groupType].append(group)

        # Create FK Groups
        if behavior.duplicateJointGroups:
            joints = pm.listConnections(limb.joints)
            joints = rigUtil.GetSortedJoints(joints)
            if 'FK' not in limbGroupDict:
                limbGroupDict['FK'] = []
                for i in range(len(joints)):
                    group = grp.Group.AddLimbGroup(rigRoot, i, 'FK', limb) 
                    limbGroupDict['FK'].append(group)
            for i in range(len(joints)):
                group = limbGroupDict['FK'][i]
                pm.connectAttr(limb.usedGroups, group.used)
                genUtil.UpdateLimbGroupName(rigRoot, limb, group)
                pm.parent(group, joints[i])
                rigUtil.ResetAttrs(group)
                pm.parent(group, limb)

        # Connect Groups to Used
        for i in range(groupCount):
            group = limbGroupDict[groupType][i]
            pm.connectAttr(limb.usedGroups, group.used)
            genUtil.UpdateLimbGroupName(rigRoot, limb, group)

#=========== CONSTRAINTS ====================================

    def _SetupConstraintGroup(self, cstGroup):
        target1 = pm.listConnections(cstGroup.target1)[0]
        target2 = pm.listConnections(cstGroup.target2)[0]
        limbGroup = pm.listConnections(cstGroup.limbGroup)[0]
        control = pm.listConnections(limbGroup.control)[0]
        parent = pm.listRelatives(control, p=1)[0]

        # Parenting
        pm.parent(cstGroup, parent)
        rigUtil.ResetAttrs(cstGroup)
        pm.parent(control, cstGroup)

        # Set Default weight
        pos1 = pm.xform(target1, q=1, t=1, ws=1)
        pos2 = pm.xform(target2, q=1, t=1, ws=1)
        posC = pm.xform(control, q=1, t=1, ws=1)
        vec1C = [pos1[i] - posC[i] for i in range(3)]
        vec12 = [pos1[i] - pos2[i] for i in range(3)]
        mag1C = sum([i**2 for i in vec1C]) **0.5
        mag12 = sum([i**2 for i in vec12]) **0.5
        newWeight = mag1C / mag12
        cstGroup.cstWeight.set(newWeight)

        mo = cstGroup.maintainOffset.get()
        skip = []
        if cstGroup.lockX.get(): skip.append('x')
        if cstGroup.lockY.get(): skip.append('y')
        if cstGroup.lockZ.get(): skip.append('z')

        # Orient
        if cstGroup.cstType.get() == 0:
            cst = pm.orientConstraint(target1, target2, cstGroup, 
                                                    mo=mo, sk=skip)
        # Parent
        elif cstGroup.cstType.get() == 1:
            cst = pm.parentConstraint(target1, target2, cstGroup, mo=mo,
                                                    st=skip, sr=skip)
        # Point
        elif cstGroup.cstType.get() == 2:
            cst = pm.pointConstraint(target1, target2, cstGroup, 
                                                    mo=mo, sk=skip)
        # Scale
        elif cstGroup.cstType.get() == 3:
            cst = pm.scaleConstraint(target1, target2, cstGroup, 
                                                    mo=mo, sk=skip)

        # Invert Weight Node
        invertNode = pm.createNode('plusMinusAverage')
        invertNode.operation.set(2) # Subtract
        invertNode.input1D[0].set(1)
        attr1 = '%s.%sW0' % (cst, target1)
        attr2 = '%s.%sW1' % (cst, target2)

        # Connections
        pm.connectAttr(cstGroup.cstWeight, invertNode.input1D[1])
        pm.connectAttr(invertNode.output1D, attr1)
        pm.connectAttr(cstGroup.cstWeight, attr2)

    def _TeardownConstraintGroup(self, cstGroup):
        pm.delete(pm.listRelatives(cstGroup, c=1, type='constraint'))
        rigUtil.ResetAttrs(cstGroup)
        pm.delete(pm.listConnections(cstGroup.cstWeight))
        
        limbGroup = pm.listConnections(cstGroup.limbGroup)[0]
        control = pm.listConnections(limbGroup.control)[0]
        parent = pm.listRelatives(cstGroup, p=1)[0]
        pm.parent(control, parent)

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"

