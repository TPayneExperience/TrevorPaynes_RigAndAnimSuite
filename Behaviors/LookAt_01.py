
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)

import Common.Logger as log
reload(log)

class LookAt_01(absBhv.Abstract_Behavior):
    bhvType = 'Look At'
    validLimbTypes = (1,)   # rigData.LIMB_TYPES
    groupType = 'LookAt'  # LookAt, IKPV...
    groupShape = 'Circle_Wire'
    groupCount = 1
    groupMoveable = False    # for moving control pivots
    orderIndex = 510
    usesJointControls = False
    usesLimbControls = True
    bakeLosesData = False
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        if not limb.hasAttr('lookAtDistance'):
            pm.addAttr(limb, ln='lookAtDistance', at='float', 
                                                min=0, dv=1)
            pm.addAttr(limb, ln='lookAtOffsetX', at='float')
            pm.addAttr(limb, ln='lookAtOffsetY', at='float')
            pm.addAttr(limb, ln='lookAtOffsetZ', at='float')
        joint = pm.listConnections(limb.joints)[0]
        group = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        pm.parent(group, joint)
        rigUtil.ResetAttrs(group)
        pm.parent(group, limb)
        self._UpdateControl(limb)
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
    
#============= SETUP ============================

    def Setup_Rig_Internal(self, limb):
        log.funcFileDebug()
        limbGroup = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        control = pm.listConnections(limbGroup.control)[0]

        # Move Mid Group to Mid control position
        pos = pm.xform(control, q=1, t=1, ws=1)
        pm.xform(limbGroup, t=pos, ws=1)
        rigUtil.ResetAttrs(control)
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
        joint = pm.listConnections(limb.joints)[0]
        limbGroup = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        control = pm.listConnections(limbGroup.control)[0]
        # Aim Constraint
        cst = pm.aimConstraint(control, joint, mo=1)
        pm.connectAttr(limb.lookAtOffsetX, cst.offsetX)
        pm.connectAttr(limb.lookAtOffsetY, cst.offsetY)
        pm.connectAttr(limb.lookAtOffsetZ, cst.offsetZ)
        # Joint Group Constraint
        jointGroup = pm.listConnections(joint.group)[0]
        pm.parentConstraint(joint, jointGroup, mo=1)
    
    def Setup_Constraint_ControlsToJoints(self, limb):
        log.funcFileDebug()
        joint = pm.listConnections(limb.joints)[0]
        limbGroup = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        control = pm.listConnections(limbGroup.control)[0]
        pm.parentConstraint(joint, control, mo=1)
        jointGroup = pm.listConnections(limb.jointGroups)[0]
        pm.parentConstraint(joint, jointGroup, mo=1)

#============= TEARDOWN ============================

    def Teardown_Rig_Internal(self, limb):
        log.funcFileDebug()
        limbGroup = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        joint = pm.listConnections(limb.joints)[0]
        jointPos = pm.xform(joint, q=1, t=1, ws=1)
        pm.xform(limbGroup, t=jointPos, ws=1)
        self._UpdateControl(limb)

    def Teardown_Rig_External(self, limb):
        log.funcFileDebug()
        if pm.listConnections(limb.limbParent):
            group = rigUtil.GetLimbGroups(limb, self.groupType)[0]
            cst = pm.listRelatives(group, c=1, type='parentConstraint')
            pm.delete(cst)

    def Teardown_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        joint = pm.listConnections(limb.joints)[0]
        cst = pm.listRelatives(joint, c=1, type='aimConstraint')
        pm.delete(cst)
        group = pm.listConnections(limb.jointGroups)[0]
        cst = pm.listRelatives(group, c=1, type='parentConstraint')
        pm.delete(cst)
    
    def Teardown_Constraint_ControlsToJoints(self, limb):
        log.funcFileDebug()
        group = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        control = pm.listConnections(group.control)[0]
        cst = pm.listRelatives(control, c=1, type='parentConstraint')
        pm.delete(cst)
        jGroup = pm.listConnections(limb.jointGroups)[0]
        pm.delete(pm.listRelatives(jGroup, c=1, type='parentConstraint'))

#============= EDITABLE UI ============================

    def Setup_Editable_Limb_UI(self, limb):
        log.funcFileDebug()
        pm.attrControlGrp( l='Control Distance', a=limb.lookAtDistance,
                            cc=pm.Callback(self._UpdateControl, limb))
        return True
    
#============= ANIMATION UI ============================

    def Setup_Animation_Limb_UI(self, limb):
        with pm.columnLayout(co=('left', -100)):
            pm.attrControlGrp(l='Offset X', a=limb.lookAtOffsetX)
            pm.attrControlGrp(l='Offset Y', a=limb.lookAtOffsetY)
            pm.attrControlGrp(l='Offset Z', a=limb.lookAtOffsetZ)
        return True # return if UI is enabled
    
    def _UpdateControl(self, limb):
        dist = limb.lookAtDistance.get()
        group = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        control = pm.listConnections(group.control)[0]
        control.tx.set(dist)
        control.ty.set(0)
        control.tz.set(0)
