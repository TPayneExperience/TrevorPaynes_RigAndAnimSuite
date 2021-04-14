
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)

import Common.Logger as log
reload(log)

class FK_Chain_01(absBhv.Abstract_Behavior):
    bhvName = 'FK Chain'
    validLimbTypes = (3, 4) # rigData.LIMB_TYPES
    groupNames = []        # LookAt, IKPV...
    groupMoveable = True   # for moving control pivots
    orderIndex = 100  
    
    @staticmethod
    def InitLimb(limb):
        log.funcFileDebug()
        for joint in pm.listConnections(limb.joints):
            group = pm.listConnections(joint.group)[0]
            pm.connectAttr(limb.usedGroups, group.used)
    
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
        groups = pm.listConnections(limb.usedGroups)
        groups = rigUtil.SortGroups(groups)
        for i in range(len(groups)-1):
            group = groups[i+1]
            if not group.enableGroup.get():
                continue
            parentCtr = pm.listConnections(groups[i].control)[0]
            pm.parent(group, parentCtr)
            joint = pm.listConnections(group.joint)[0]
            control = pm.listConnections(group.control)[0]
            pm.parentConstraint(control, joint, mo=1)
    
    @staticmethod
    def Setup_Rig_External(limb):
        log.funcFileDebug()
        parentGroups = rigUtil.GetParentableGroupsOfParent(limb)
        if not parentGroups:
            return
        index = limb.limbParentControl.get()
        parentGroup = parentGroups[index]
        parentControl = pm.listConnections(parentGroup.control)[0]
        groups = pm.listConnections(limb.usedGroups)
        groups = rigUtil.SortGroups(groups)
        pm.parentConstraint(parentControl, groups[0], mo=1)
        controls = []
        for group in groups:
            controls.append(pm.listConnections(group.control)[0])
        pm.controller(controls, parentControl, p=1)
    
    # @staticmethod
    # def Teardown_Rig(limb):
    #     log.funcFileDebug()
    #     for group in pm.listConnections(limb.usedGroups):
    #         joint = pm.listConnections(group.joint)[0]
    #         pm.parent(group, joint)
    
#============= UI ============================

    @staticmethod
    def Setup_LimbProperties_UI(limb):
        log.funcFileDebug()
        return False
    
    @staticmethod
    def Setup_GroupProperties_UI(group):
        log.funcFileDebug()
    