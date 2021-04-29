
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)

import Common.Logger as log
reload(log)

class FK_Relative_01(absBhv.Abstract_Behavior):
    bhvType = 'FK Relative'
    validLimbTypes = (4,)   # rigData.LIMB_TYPES
    groupType = 'FKR'  # LookAt, IKPV...
    groupShape = 'Cube_Poly'
    groupCount = 1
    groupMoveable = False    # for moving control pivots
    orderIndex = 240  
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        group = pm.listConnections(limb.usedGroups)[0]
        jointGroups = pm.listConnections(limb.parentableGroups)
        jointGroup = rigUtil.SortGroups(jointGroups)[0]
        joint = pm.listConnections(jointGroup.joint)[0]
        pm.parent(group, joint)
        rigUtil.ResetAttrs(group)
        pm.parent(group, limb)
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
    
#============= RIG ============================

    def Setup_Rig_Internal(self, limb):
        log.funcFileDebug()
        limbGroup = pm.listConnections(limb.usedGroups)[0]
        limbControl = pm.listConnections(limbGroup.control)[0]
        jointGroups = pm.listConnections(limb.parentableGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        controls = []
        # Parent control hierarchy
        for i in range(len(jointGroups)-1):
            childGroup = jointGroups[i+1]
            parentCtr = pm.listConnections(jointGroups[i].control)[0]
            pm.parent(childGroup, parentCtr)
            controls.append(parentCtr)
        pm.parent(jointGroups[0], limbControl)
        # Bind Joints
        for group in jointGroups:
            joint = pm.listConnections(group.joint)[0]
            control = pm.listConnections(group.control)[0]
            pm.parentConstraint(control, joint, mo=1)
        multNode = pm.createNode('multiplyDivide')
        pm.connectAttr(limbControl.rotate, multNode.input1)
        scalar = 1.0/max(len(controls)-2, 1)
        multNode.input2.set(scalar, scalar, scalar)
        for childControl in controls[1:]:
            pm.connectAttr(multNode.output, childControl.rotate)
        
    def Setup_Rig_External(self, limb):
        log.funcFileDebug()
        parentControl = rigUtil.GetParentControl(limb)
        if not parentControl:
            return
        group = pm.listConnections(limb.usedGroups)[0]
        pm.parentConstraint(parentControl, group, mo=1)
    
    def Teardown_Rig(self, limb):
        log.funcFileDebug()
        limbGroup = pm.listConnections(limb.usedGroups)[0]
        limbControl = pm.listConnections(limbGroup.control)[0]
        jointGroups = pm.listConnections(limb.parentableGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]
        constraints = [pm.listConnections(j.rx)[0] for j in joints]
        pm.delete(constraints)                      # delete joint parent cst
        if pm.listConnections(limb.limbParent):
            parentCst = pm.listConnections(limbGroup.rx)
            pm.delete(parentCst) # delete parent cst
        conversionNode = pm.listConnections(limbControl.r)[0]
        multNodes = pm.listConnections(conversionNode.output)
        pm.delete(multNodes) # delete mult node
        for group, joint in zip(jointGroups, joints):
            pm.parent(group, joint)

#============= BAKE (Requires Setup) ============================

    def Setup_Bake(self, limb):
        log.funcFileDebug()
    
    def Teardown_Bake(self, limb):
        log.funcFileDebug()
    
#============= EDITABLE UI ============================

    def Setup_Editable_Limb_UI(self, limb):
        log.funcFileDebug()
        return False
    
#============= ANIMATION UI ============================

    def Setup_Animation_Limb_UI(self, limb):
        return False # return if UI is enabled
    