
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)

import Utilities.Logger as log
reload(log)
import SceneData.Joint as jnt
reload(jnt)

class Empty_01(absBhv.Abstract_Behavior):
    bhvType = 'Empty'
    validLimbTypes = (0,)   # rigData.LIMB_TYPES
    groupType = 'Empty'  # LookAt, IKPV...
    groupShape = 'Square_Wire'
    groupCount = 1
    groupMoveable = True    # for moving control pivots
    uiOrderIndex = 110  
    usesJointControls = False
    usesLimbControls = True
    bakeLosesData = False
    duplicateJointGroups = False
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        pm.select(d=1)
        joint = pm.joint()
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        jnt.Joint.Add(rigRoot, 0, limb, joint)
        joint.pfrsName.set('Empty')
        joint.v.set(0)
        limbGroup = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        limbControl = pm.listConnections(limbGroup.control)[0]
        jointGroup = pm.listConnections(joint.group)[0]
        jointGroup.v.set(0)
        pm.parent(jointGroup, limbControl)
        
    def CleanupLimb(self, limb):
        log.funcFileDebug()
        joint = pm.listConnections(limb.joints)[0]
        jnt.Joint.Remove(joint)
    
#============= SETUP ============================

    def Setup_Rig_Controls(self, limb):
        log.funcFileDebug()
        parentControl = rigUtil.GetParentControl(limb)
        group = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        if parentControl:
            pm.parentConstraint(parentControl, group, mo=1)
    
    def Setup_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        group = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        joint = pm.listConnections(limb.joints)[0]
        control = pm.listConnections(group.control)[0]
        pm.parentConstraint(control, joint)
    
    def Setup_Constraint_ControlsToXforms(self, limb, 
            xforms, hasPosCst, hasRotCst, hasScaleCst):
        log.funcFileDebug()
        xform = xforms[0]
        group = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        control = pm.listConnections(group.control)[0]
        if hasPosCst:
            pm.pointConstraint(xform, control)
        if hasRotCst:
            pm.orientConstraint(xform, control)
        if hasScaleCst:
            pm.scaleConstraint(xform, control)
        return [control]
    
#============= TEARDOWN ============================

    def Teardown_Rig_Controls(self, limb):
        log.funcFileDebug()
        if pm.listConnections(limb.limbParent):
            group = pm.listConnections(limb.limbGroups)[0]
            cst = pm.listRelatives(group, c=1, type='parentConstraint')
            pm.delete(cst)

    def Teardown_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        joint = pm.listConnections(limb.joints)[0]
        cst = pm.listRelatives(joint, c=1, type='parentConstraint')
        pm.delete(cst)
    
    def Teardown_Constraint_ControlsToXforms(self, limb):
        log.funcFileDebug()
        group = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        control = pm.listConnections(group.control)[0]
        pm.delete(pm.listRelatives(control, c=1, type='constraint'))
    
#============= EDITABLE UI ============================

    def Setup_Editable_Limb_UI(self, limb):
        log.funcFileDebug()
        return False
    
#============= ANIMATION UI ============================

    def Setup_Animation_Limb_UI(self, limb):
        return False # return if UI is enabled
    
    