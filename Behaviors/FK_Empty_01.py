
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)

import Common.Logger as log
reload(log)

class FK_Empty_01(absBhv.Abstract_Behavior):
    bhvName = 'Empty'
    validLimbTypes = (0,)   # rigData.LIMB_TYPES
    groupName = 'Empty'  # LookAt, IKPV...
    groupCount = 1
    groupMoveable = True    # for moving control pivots
    orderIndex = 100  
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        group = pm.listConnections(limb.limbGroups)[0]
        pm.connectAttr(limb.parentableGroups, group.parentable)
    
#============= EDITABLE ============================

    def Setup_Editable(self, limb):
        log.funcFileDebug()
    
    def Teardown_Editable(self, limb):
        log.funcFileDebug()
    
#============= RIG ============================

    def Setup_Rig_Internal(self, limb):
        log.funcFileDebug()
    
    def Setup_Rig_External(self, limb):
        log.funcFileDebug()
        parentGroups = rigUtil.GetParentableGroupsOfParent(limb)
        if not parentGroups:
            return
        index = limb.limbParentControl.get()
        parentGroup = parentGroups[index]
        parentControl = pm.listConnections(parentGroup.control)[0]
        group = pm.listConnections(limb.limbGroups)[0]
        pm.parentConstraint(parentControl, group, mo=1)
        control = pm.listConnections(group.control)[0]
        pm.controller(control, parentControl, p=1)
    
#============= UI ============================

    def Setup_LimbProperties_UI(self, limb):
        log.funcFileDebug()
        return False
    
    def Setup_GroupProperties_UI(self, group):
        log.funcFileDebug()
    