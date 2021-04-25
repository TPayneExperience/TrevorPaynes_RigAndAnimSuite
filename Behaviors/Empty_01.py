
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)

import Common.Logger as log
reload(log)

class Empty_01(absBhv.Abstract_Behavior):
    bhvName = 'Empty'
    validLimbTypes = (0,)   # rigData.LIMB_TYPES
    groupType = 'Empty'  # LookAt, IKPV...
    groupShape = 'Square_Wire'
    groupCount = 1
    groupMoveable = True    # for moving control pivots
    orderIndex = 110  
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        group = pm.listConnections(limb.limbGroups)[0]
        pm.connectAttr(limb.parentableGroups, group.parentable)
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
    
#============= RIG ============================

    def Setup_Rig_Internal(self, limb):
        log.funcFileDebug()
    
    def Setup_Rig_External(self, limb):
        log.funcFileDebug()
        parentControl = rigUtil.GetParentControl(limb)
        if not parentControl:
            return
        group = pm.listConnections(limb.limbGroups)[0]
        pm.parentConstraint(parentControl, group, mo=1)
    
    def Teardown_Rig(self, limb):
        log.funcFileDebug()
        group = pm.listConnections(limb.limbGroups)[0]
        pm.delete(pm.listConnections(group.rx))
        rigUtil.Teardown_Controllers(limb)

#============= BAKE ============================

    def Setup_Bake(self, limb):
        log.funcFileDebug()
    
    def Teardown_Bake(self, limb):
        log.funcFileDebug()
    
#============= EDITABLE UI ============================

    def Setup_Editable_Limb_UI(self, limb):
        log.funcFileDebug()
        return False
    
    def Setup_Editable_Group_UI(self, group):
        log.funcFileDebug()
    
#============= ANIMATION UI ============================

    def Setup_Animation_Limb_UI(self, limb):
        return False # return if UI is enabled
    
    def Setup_Animation_Group_UI(self, group):
        pass
    
    