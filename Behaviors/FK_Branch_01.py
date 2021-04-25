
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)

import Common.Logger as log
reload(log)

class FK_Branch_01(absBhv.Abstract_Behavior):
    bhvName = 'FK Branch'
    validLimbTypes = (1, 2, 3, 4) # rigData.LIMB_TYPES
    groupType = ''        # LookAt, IKPV...
    groupShape = ''
    groupCount = 0
    groupMoveable = True   # for moving control pivots
    orderIndex = 230  
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        for group in pm.listConnections(limb.parentableGroups):
            pm.connectAttr(limb.usedGroups, group.used)
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
    
#============= RIG ============================

    def Setup_Rig_Internal(self, limb):
        log.funcFileDebug()
        for group in pm.listConnections(limb.usedGroups):
            pm.parent(group, limb)
            joint = pm.listConnections(group.joint)[0]
            control = pm.listConnections(group.control)[0]
            pm.parentConstraint(control, joint, mo=1)
    
    def Setup_Rig_External(self, limb):
        log.funcFileDebug()
        parentControl = rigUtil.GetParentControl(limb)
        if not parentControl:
            return
        for group in pm.listConnections(limb.usedGroups):
            pm.parentConstraint(parentControl, group, mo=1)
    
    def Teardown_Rig(self, limb):
        log.funcFileDebug()
        jointGroups = pm.listConnections(limb.parentableGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]
        constraints = [pm.listConnections(j.rx)[0] for j in joints]
        pm.delete(constraints)
        if pm.listConnections(limb.limbParent):
            constraints = [pm.listConnections(g.rx)[0] for g in jointGroups]
            pm.delete(constraints)

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
    
    def Setup_Animation_Group_UI(self, group):
        pass
    