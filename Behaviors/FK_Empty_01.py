
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
    groupNames = ['Empty']  # LookAt, IKPV...
    groupMoveable = True    # for moving control pivots
    orderIndex = 100  
    
    @staticmethod
    def InitLimb(limb):
        log.funcFileDebug()
        group = pm.listConnections(limb.limbGroups)[0]
        pm.connectAttr(limb.parentableGroups, group.parentable)
    
#============= EDITABLE ============================

    @staticmethod
    def Setup_Editable(limb):
        log.funcFileDebug()
    
    @staticmethod
    def Teardown_Editable(limb):
        log.funcFileDebug()
    
#============= RIG ============================

    @staticmethod
    def Setup_Rig_Internal(limb):
        log.funcFileDebug()
    
    @staticmethod
    def Setup_Rig_External(limb):
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

    @staticmethod
    def Setup_LimbProperties_UI(limb):
        log.funcFileDebug()
        return False
    
    @staticmethod
    def Setup_GroupProperties_UI(group):
        log.funcFileDebug()
    