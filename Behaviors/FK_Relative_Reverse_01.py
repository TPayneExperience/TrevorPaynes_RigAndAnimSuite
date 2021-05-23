
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)

import Common.Logger as log
reload(log)

class FK_Relative_01(absBhv.Abstract_Behavior):
    bhvType = 'FK Relative Reverse'
    validLimbTypes = (4,)   # rigData.LIMB_TYPES
    groupType = 'FKR'  # LookAt, IKPV...
    groupShape = 'Cube_Poly'
    groupCount = 1
    groupMoveable = False    # for moving control pivots
    orderIndex = 250  
    usesJointControls = False
    usesLimbControls = True
    bakeLosesData = True
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        limbGroup = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroup = rigUtil.SortGroups(jointGroups)[-1]
        joint = pm.listConnections(jointGroup.joint)[0]
        pm.parent(limbGroup, joint)
        rigUtil.ResetAttrs(limbGroup)
        pm.parent(limbGroup, limb)
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
    
#============= SETUP ============================

    def Setup_Rig_Internal(self, limb):
        log.funcFileDebug()
        limbGroup = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        limbControl = pm.listConnections(limbGroup.control)[0]
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)[::-1]
        controls = []
        # Parent control hierarchy
        for i in range(len(jointGroups)-1):
            childGroup = jointGroups[i+1]
            parentCtr = pm.listConnections(jointGroups[i].control)[0]
            pm.parent(childGroup, parentCtr)
            controls.append(parentCtr)
        multNode = pm.createNode('multiplyDivide')
        pm.connectAttr(limbControl.rotate, multNode.input1)
        scalar = 1.0/max(len(controls)-2, 1)
        multNode.input2.set(scalar, scalar, scalar)
        for childControl in controls: #[1:]:
            pm.connectAttr(multNode.output, childControl.rotate)
        return []
        
    def Setup_Rig_External(self, limb):
        log.funcFileDebug()
        parentControl = rigUtil.GetParentControl(limb)
        group = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        if parentControl:
            pm.parentConstraint(parentControl, group, mo=1)
        return [group]
    
    def Setup_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        for group in pm.listConnections(limb.jointGroups):
            joint = pm.listConnections(group.joint)[0]
            control = pm.listConnections(group.control)[0]
            pm.parentConstraint(control, joint, mo=1)
    
    def Setup_Constraint_ControlsToJoints(self, limb):
        log.funcFileDebug()
        limbGroup = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        limbControl = pm.listConnections(limbGroup.control)[0]
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroup = rigUtil.SortGroups(jointGroups)[-1]
        joint = pm.listConnections(jointGroup.joint)[0]
        pm.parentConstraint(joint, limbControl, mo=1)
        # Bind 
        for group in pm.listConnections(limb.jointGroups):
            joint = pm.listConnections(group.joint)[0]
            pm.parentConstraint(joint, group, mo=1)
    
#============= TEARDOWN ============================

    def Teardown_Rig_Internal(self, limb):
        log.funcFileDebug()
        limbGroup = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        limbControl = pm.listConnections(limbGroup.control)[0]
        conversionNode = pm.listConnections(limbControl.r)[0]
        multNodes = pm.listConnections(conversionNode.output)
        pm.delete(multNodes) # delete mult node
        groups = pm.listConnections(limb.jointGroups)
        groups = rigUtil.SortGroups(groups)[:-1]
        pm.parent(groups, limb)

    def Teardown_Rig_External(self, limb):
        log.funcFileDebug()
        if pm.listConnections(limb.limbParent):
            group = rigUtil.GetLimbGroups(limb, self.groupType)[0]
            cst = pm.listRelatives(group, c=1, type='parentConstraint')
            pm.delete(cst)

    def Teardown_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        jointGroups = pm.listConnections(limb.jointGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]
        for joint in joints:
            cst = pm.listRelatives(joint, c=1, type='parentConstraint')
            pm.delete(cst)
    
    def Teardown_Constraint_ControlsToJoints(self, limb):
        log.funcFileDebug()
        group = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        control = pm.listConnections(group.control)[0]
        cst = pm.listRelatives(control, c=1, type='parentConstraint')
        pm.delete(cst)
        for group in pm.listConnections(limb.jointGroups):
            pm.delete(pm.listRelatives(group, c=1, type='parentConstraint'))
    
#============= EDITABLE UI ============================

    def Setup_Editable_Limb_UI(self, limb):
        log.funcFileDebug()
        return False
    
#============= ANIMATION UI ============================

    def Setup_Animation_Limb_UI(self, limb):
        return False # return if UI is enabled
    