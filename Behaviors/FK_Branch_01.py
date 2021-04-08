
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)

import Common.Logger as log
reload(log)

class FK_Branch_01(absBhv.Abstract_Behavior):
    validLimbTypes = (1, 2, 3, 4) # rigData.LIMB_TYPES
    groupNames = []        # LookAt, IKPV...
    isDepricated = False    
    orderIndex = 200  
    
    @staticmethod
    @log.static_decorator
    def InitLimb(limb):
        pass
    
#============= EDITABLE ============================

    @staticmethod
    @log.static_decorator
    def Setup_Editable(limb):
        for joint in pm.listConnections(limb.joints):
            group = pm.listConnections(joint.group)[0]
            pm.connectAttr(limb.usedGroups, group.used)
    
#============= RIG ============================

    @staticmethod
    @log.static_decorator
    def Setup_Rig_Internal(limb):
        for group in pm.listConnections(limb.usedGroups):
            if not group.enableGroup.get():
                continue
            pm.parent(group, limb)
            joint = pm.listConnections(group.joint)[0]
            control = pm.listConnections(group.control)[0]
            pm.parentConstraint(control, joint, mo=1)
    
    @staticmethod
    @log.static_decorator
    def Setup_Rig_External(limb):
        parentGroups = rigUtil.GetParentableGroupsOfParent(limb)
        if not parentGroups:
            return
        index = limb.limbParentControl.get()
        parentGroup = parentGroups[index]
        parentControl = pm.listConnections(parentGroup.control)[0]
        controls = []
        for group in pm.listConnections(limb.usedGroups):
            pm.parentConstraint(parentControl, group, mo=1)
            controls.append(pm.listConnections(group.control)[0])
        pm.controller(controls, parentControl, p=1)
    
    @staticmethod
    @log.static_decorator
    def Teardown_Groups(limb):
        for group in pm.listConnections(limb.usedGroups):
            joint = pm.listConnections(group.joint)[0]
            pm.parent(group, joint)
    
#============= UI ============================

    @staticmethod
    @log.static_decorator
    def Setup_LimbProperties_UI(limb):
        return None
    
    @staticmethod
    @log.static_decorator
    def Setup_GroupProperties_UI(limb):
        return None
    