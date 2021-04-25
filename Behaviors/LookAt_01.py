
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)

import Common.Logger as log
reload(log)

class LookAt_01(absBhv.Abstract_Behavior):
    bhvName = 'Look At'
    validLimbTypes = (1,)   # rigData.LIMB_TYPES
    groupType = 'LookAt'  # LookAt, IKPV...
    groupShape = 'Circle_Wire'
    groupCount = 1
    groupMoveable = False    # for moving control pivots
    orderIndex = 410
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        if not limb.hasAttr('lookAtDistance'):
            pm.addAttr(limb, ln='lookAtDistance', at='float', 
                                                min=0, dv=1)
        joint = pm.listConnections(limb.joints)[0]
        group = pm.listConnections(limb.usedGroups)[0]
        pm.parent(group, joint)
        rigUtil.ResetAttrs(group)
        pm.parent(group, limb)
        self._UpdateControl(limb)
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
    
#============= RIG ============================

    def Setup_Rig_Internal(self, limb):
        log.funcFileDebug()
        joint = pm.listConnections(limb.joints)[0]
        limbGroup = pm.listConnections(limb.usedGroups)[0]
        control = pm.listConnections(limbGroup.control)[0]

        # Move Mid Group to Mid control position
        pos = pm.xform(limbGroup, q=1, t=1, ws=1)
        pm.xform(limbGroup, t=pos, ws=1)
        rigUtil.ResetAttrs(control)

        # Aim Constraint + Joint Group Constraint
        pm.aimConstraint(control, joint, mo=1)
        jointGroup = pm.listConnections(joint.group)[0]
        pm.parentConstraint(joint, jointGroup, mo=1)
    
    def Setup_Rig_External(self, limb):
        log.funcFileDebug()
        parentControl = rigUtil.GetParentControl(limb)
        if not parentControl:
            return
        group = pm.listConnections(limb.usedGroups)[0]
        pm.parentConstraint(parentControl, group, mo=1)
    
    def Teardown_Rig(self, limb):
        log.funcFileDebug()
        joint = pm.listConnections(limb.joints)[0]
        pm.delete(pm.listConnections(joint.rx))
        limbGroup = pm.listConnections(limb.usedGroups)[0]
        pm.delete(pm.listConnections(limbGroup.rx))

        # Reposition group to second joint
        jointPos = pm.xform(joint, q=1, t=1, ws=1)
        pm.xform(limbGroup, t=jointPos, ws=1)
        self._UpdateControl(limb)

#============= BAKE (Requires Setup) ============================

    def Setup_Bake(self, limb):
        log.funcFileDebug()
    
    def Teardown_Bake(self, limb):
        log.funcFileDebug()
    
#============= EDITABLE UI ============================

    def Setup_Editable_Limb_UI(self, limb):
        log.funcFileDebug()
        pm.attrControlGrp( l='Control Distance', a=limb.lookAtDistance,
                            cc=pm.Callback(self._UpdateControl, limb))
        return True
    
#============= ANIMATION UI ============================

    def Setup_Animation_Limb_UI(self, limb):
        return False # return if UI is enabled
    
    def Setup_Animation_Group_UI(self, group):
        pass
    
    def _UpdateControl(self, limb):
        dist = limb.lookAtDistance.get()
        group = pm.listConnections(limb.usedGroups)[0]
        control = pm.listConnections(group.control)[0]
        control.tx.set(dist)
        control.ty.set(0)
        control.tz.set(0)
