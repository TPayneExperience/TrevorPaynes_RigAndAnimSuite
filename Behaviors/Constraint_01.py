
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)
import Data.General_Data as genData
reload(genData)
import Data.Rig_Data as rigData
reload(rigData)

import Common.Logger as log
reload(log)

class Constraint_01(absBhv.Abstract_Behavior):
    bhvType = 'Constraint'
    validLimbTypes = (1, 2) # rigData.LIMB_TYPES
    groupType = ''        # LookAt, IKPV...
    groupShape = ''
    groupCount = 0
    groupMoveable = True   # for moving control pivots
    orderIndex = 520  
    usesJointControls = True
    usesLimbControls = False
    bakeLosesData = False
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        hide = genData.HIDE_ATTRS
        jointGroups = pm.listConnections(limb.jointGroups)
        # Limb Attrs
        if not limb.hasAttr('cstTargetJointIndex'):
            cstTypes = ':'.join(rigData.CST_TYPES)
            pm.addAttr(limb, ln='cstType', at='enum', 
                                    en=cstTypes, h=hide)
            pm.addAttr(limb, ln='cstTargetJointIndex', 
                                    at='short', h=hide)
            pm.addAttr(limb, ln='cstPosX', at='bool', dv=1, h=hide)
            pm.addAttr(limb, ln='cstPosY', at='bool', dv=1, h=hide)
            pm.addAttr(limb, ln='cstPosZ', at='bool', dv=1, h=hide)
            pm.addAttr(limb, ln='cstRotX', at='bool', dv=1, h=hide)
            pm.addAttr(limb, ln='cstRotY', at='bool', dv=1, h=hide)
            pm.addAttr(limb, ln='cstRotZ', at='bool', dv=1, h=hide)
            parentLimbs = pm.listConnections(limb.limbParent)
            if parentLimbs:
                parentLimb = parentLimbs[0]
                parentJoints = pm.listConnections(parentLimb.joints)
                sourceIndex = limb.limbParentJoint.get()
                targetIndex = min(sourceIndex + 1, len(parentJoints))
                limb.cstTargetJointIndex.set(targetIndex)

        # Group Weights
        for group in jointGroups:
            pm.connectAttr(limb.usedGroups, group.used)
            if not group.hasAttr('cstWeight'):
                pm.addAttr(group, ln='cstWeight', at='float', 
                                dv=0.5, min=0, max=1, h=hide)
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
    
#============= SETUP ============================

    def Setup_Rig_Internal(self, limb):
        log.funcFileDebug()
        return []
    
    def Setup_Rig_External(self, limb):
        log.funcFileDebug()
        parentControl = rigUtil.GetParentControl(limb)
        if parentControl:
            groups = pm.listConnections(limb.jointGroups)
            extraGroup = pm.group(groups)
            pm.parentConstraint(parentControl, extraGroup, mo=1)
        return groups
    
    def Setup_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)

        # Bind Joints to Controls
        for group in jointGroups:
            joint = pm.listConnections(group.joint)[0]
            control = pm.listConnections(group.control)[0]
            pm.parentConstraint(control, joint, mo=1)
        
        # Requires parent limb
        parentLimbs = pm.listConnections(limb.limbParent)
        if not parentLimbs:
            return

        # Get Joints to constrain to 
        parentLimb = parentLimbs[0]
        parentGroups = pm.listConnections(parentLimb.jointGroups)
        parentGroups = rigUtil.SortGroups(parentGroups)
        parentControls = [pm.listConnections(g.control)[0] for g in parentGroups]
        sourceIndex = limb.limbParentJoint.get()
        targetIndex = limb.cstTargetJointIndex.get()
        sourceControl = parentControls[sourceIndex]
        targetControl = parentControls[targetIndex]

        # Store Skip bools
        skipPosX = not limb.cstPosX.get()
        skipPosY = not limb.cstPosY.get()
        skipPosZ = not limb.cstPosZ.get()
        skipRotX = not limb.cstRotX.get()
        skipRotY = not limb.cstRotY.get()
        skipRotZ = not limb.cstRotZ.get()

        cstType = limb.cstType.get()

        for group in jointGroups:
            weight = group.cstWeight.get()
            if cstType == 0:
                cst = pm.orientConstraint(sourceControl, targetControl, group)
                pm.setAttr('%s.%sW0' % (cst, sourceControl), 1-weight)
                pm.setAttr('%s.%sW1' % (cst, targetControl), weight)
                if skipRotX: pm.orientConstraint(cst, e=1, sk='x')
                if skipRotY: pm.orientConstraint(cst, e=1, sk='y')
                if skipRotZ: pm.orientConstraint(cst, e=1, sk='z')
            if cstType == 1:
                cst = pm.parentConstraint(sourceControl, targetControl, group)
                pm.setAttr('%s.%sW0' % (cst, sourceControl), 1-weight)
                pm.setAttr('%s.%sW1' % (cst, targetControl), weight)
                if skipPosX: pm.parentConstraint(cst, e=1, st='x')
                if skipPosY: pm.parentConstraint(cst, e=1, st='y')
                if skipPosZ: pm.parentConstraint(cst, e=1, st='z')
                if skipRotX: pm.parentConstraint(cst, e=1, sr='x')
                if skipRotY: pm.parentConstraint(cst, e=1, sr='y')
                if skipRotZ: pm.parentConstraint(cst, e=1, sr='z')
            if cstType == 2:
                cst = pm.pointConstraint(sourceControl, targetControl, group)
                pm.setAttr('%s.%sW0' % (cst, sourceControl), 1-weight)
                pm.setAttr('%s.%sW1' % (cst, targetControl), weight)
                if skipPosX: pm.pointConstraint(cst, e=1, sk='x')
                if skipPosY: pm.pointConstraint(cst, e=1, sk='y')
                if skipPosZ: pm.pointConstraint(cst, e=1, sk='z')
            if cstType == 3:
                cst = pm.scaleConstraint(sourceControl, targetControl, group)
                pm.setAttr('%s.%sW0' % (cst, sourceControl), 1-weight)
                pm.setAttr('%s.%sW1' % (cst, targetControl), weight)
            
    def Setup_Constraint_ControlsToJoints(self, limb):
        log.funcFileDebug()
        for group in pm.listConnections(limb.jointGroups):
            joint = pm.listConnections(group.joint)[0]
            control = pm.listConnections(group.control)[0]
            pm.parentConstraint(joint, control, mo=1)
    
#============= TEARDOWN ============================

    def Teardown_Rig_Internal(self, limb):
        log.funcFileDebug()

    def Teardown_Rig_External(self, limb):
        log.funcFileDebug()
        if pm.listConnections(limb.limbParent):
            groups = pm.listConnections(limb.jointGroups)
            extraGroup = pm.listRelatives(groups[0], p=1)
            for group in groups:
                pm.parent(group, limb)
            pm.delete(extraGroup)

    def Teardown_Constraint_JointsToControls(self, limb):
        for joint in pm.listConnections(limb.joints):
            cst = pm.listRelatives(joint, c=1, type='parentConstraint')
            pm.delete(cst)

        for group in pm.listConnections(limb.jointGroups):
            csts = pm.listRelatives(group, c=1, type='parentConstraint')
            csts += pm.listRelatives(group, c=1, type='orientConstraint')
            csts += pm.listRelatives(group, c=1, type='pointConstraint')
            csts += pm.listRelatives(group, c=1, type='scaleConstraint')
            pm.delete(csts)
    
    def Teardown_Constraint_ControlsToJoints(self, limb):
        jointGroups = pm.listConnections(limb.jointGroups)
        controls = [pm.listConnections(g.control)[0] for g in jointGroups]
        for control in controls:
            cst = pm.listRelatives(control, c=1, type='parentConstraint')
            pm.delete(cst)
    
#============= EDITABLE UI ============================

    def Setup_Editable_Limb_UI(self, limb):
        log.funcFileDebug()
        parentLimbs = pm.listConnections(limb.limbParent)
        if not parentLimbs:
            return False
        parentLimb = parentLimbs[0]
        parentJoints = pm.listConnections(parentLimb.joints)
        parentJoints = rigUtil.Joint._GetSortedJoints(parentJoints)

        # Constraint type
        pm.attrEnumOptionMenu(l='Constraint Type', at=limb.cstType)

        # Target Joint, option menu
        with pm.optionMenu(l='Target Joint') as om:
            for i in range(len(parentJoints)):
                joint = parentJoints[i]
                name = joint.pfrsName.get()
                pm.menuItem(l=name, 
                    c=pm.Callback(self._SetTargetJoint, limb, i))
                if i == limb.cstTargetJointIndex.get():
                    pm.optionMenu(om, e=1, sl=i+1)
        # Skip Axes
        with pm.horizontalLayout():
            pm.text('Translate')
            with pm.columnLayout(co=('left', -120)):
                pm.attrControlGrp(l='X', a=limb.cstPosX)
            with pm.columnLayout(co=('left', -120)):
                pm.attrControlGrp(l='Y', a=limb.cstPosY)
            with pm.columnLayout(co=('left', -120)):
                pm.attrControlGrp(l='Z', a=limb.cstPosZ)
        with pm.horizontalLayout():
            pm.text('Rotate')
            with pm.columnLayout(co=('left', -120)):
                pm.attrControlGrp(l='X', a=limb.cstRotX)
            with pm.columnLayout(co=('left', -120)):
                pm.attrControlGrp(l='Y', a=limb.cstRotY)
            with pm.columnLayout(co=('left', -120)):
                pm.attrControlGrp(l='Z', a=limb.cstRotZ)
                
        # Group Constraint Weights
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        for group in jointGroups:
            joint = pm.listConnections(group.joint)[0]
            name = joint.pfrsName.get() + ' weight'
            pm.attrFieldSliderGrp(l=name, at=group.cstWeight, 
                                cw3=(100, 40, 60), pre=2)
        return True
    
    def _SetTargetJoint(self, limb, index):
        limb.cstTargetJointIndex.set(index)
    
#============= ANIMATION UI ============================

    def Setup_Animation_Limb_UI(self, limb):
        log.funcFileDebug()
        return False # return if UI is enabled
    