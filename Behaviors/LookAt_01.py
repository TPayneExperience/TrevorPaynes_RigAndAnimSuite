
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)

import Utilities.Logger as log
reload(log)

class LookAt_01(absBhv.Abstract_Behavior):
    bhvType = 'Look At'
    validLimbTypes = (1,)   # rigData.LIMB_TYPES
    groupType = 'LookAt'  # LookAt, IKPV...
    groupShape = 'Circle_Wire'
    groupCount = 1
    groupMoveable = False    # for moving control pivots
    uiOrderIndex = 510
    usesJointControls = False
    usesLimbControls = True
    bakeLosesData = False
    duplicateJointGroups = False
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        if not limb.hasAttr('lookAtDistance'):
            pm.addAttr(limb, ln='lookAtDistance', at='float', 
                                                min=0, dv=1)
            pm.addAttr(limb, ln='lookAtOffsetX', at='float')
            pm.addAttr(limb, ln='lookAtOffsetY', at='float')
            pm.addAttr(limb, ln='lookAtOffsetZ', at='float')
        self.Setup_ForBhvOp(limb)
        self.Teardown_ForBhvOp(limb)
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
    
#============= FOR BEHAVIOR OPERATION ============================

    def Setup_ForBhvOp(self, limb):
        joint = pm.listConnections(limb.joints)[0]
        tempGroup = pm.group(em=1, w=1)
        pm.parent(tempGroup, joint)
        rigUtil.ResetAttrs(tempGroup)
        group = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        control = pm.listConnections(group.control)[0]
        pm.parent(group, tempGroup)
        pm.delete(pm.parentConstraint(group, control))
        pm.delete(pm.parentConstraint(tempGroup, group))
        self._UpdateControl(limb)
    
    def Teardown_ForBhvOp(self, limb):
        group = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        tempGroup = pm.listRelatives(group, p=1)[0]
        pm.parent(group, limb)
        pm.delete(tempGroup)
    
#============= SETUP ============================

    def Setup_Rig_Controls(self, limb):
        log.funcFileDebug()
        limbGroup = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        control = pm.listConnections(limbGroup.control)[0]

        # Move Mid Group to Mid control position
        pm.xform(control, cp=1)
        pos = pm.xform(control, q=1, t=1, ws=1)
        pm.xform(limbGroup, t=pos, ws=1)
        rigUtil.ResetAttrs(control)

        # External
        parentControl = rigUtil.GetParentControl(limb)
        if parentControl:
            pm.parentConstraint(parentControl, limbGroup, mo=1)
    
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
    
    def Setup_Constraint_ControlsToXforms(self, limb, 
            xforms, hasPosCst, hasRotCst, hasScaleCst):
        log.funcFileDebug()
        limbGroup = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        control = pm.listConnections(limbGroup.control)[0]
        xform = xforms[0]
        if hasPosCst or hasRotCst:
            pm.parentConstraint(xform, control, mo=1)
        return [control]

#============= TEARDOWN ============================

    def Teardown_Rig_Controls(self, limb):
        log.funcFileDebug()
        limbGroup = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        joint = pm.listConnections(limb.joints)[0]
        jointPos = pm.xform(joint, q=1, t=1, ws=1)
        pm.xform(limbGroup, t=jointPos, ws=1)
        self._UpdateControl(limb)
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
    
    def Teardown_Constraint_ControlsToXforms(self, limb):
        log.funcFileDebug()
        group = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        control = pm.listConnections(group.control)[0]
        pm.delete(pm.listRelatives(control, c=1, type='constraint'))

#============= EDITABLE UI ============================

    def Setup_Behavior_Limb_UI(self, limb):
        log.funcFileDebug()
        pm.attrControlGrp( l='Control Distance', a=limb.lookAtDistance,
                            cc=pm.Callback(self._UpdateControl, limb))
        return True
    
#============= ANIMATION UI ============================

    def Setup_AnimationTools_Limb_UI(self, limb):
        with pm.columnLayout(co=('left', -100)):
            pm.attrControlGrp(l='Offset X', a=limb.lookAtOffsetX)
            pm.attrControlGrp(l='Offset Y', a=limb.lookAtOffsetY)
            pm.attrControlGrp(l='Offset Z', a=limb.lookAtOffsetZ)
        return True # return if UI is enabled
    
    def _UpdateControl(self, limb):
        dist = limb.lookAtDistance.get()
        group = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        group.tx.set(dist)
        group.ty.set(0)
        group.tz.set(0)

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
