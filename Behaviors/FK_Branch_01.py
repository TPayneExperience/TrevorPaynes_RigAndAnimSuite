
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)

import Common.Logger as log
reload(log)

class FK_Branch_01(absBhv.Abstract_Behavior):
    bhvType = 'FK Branch'
    validLimbTypes = (1, 2, 3, 4) # rigData.LIMB_TYPES
    groupType = ''        # LookAt, IKPV...
    groupShape = ''
    groupCount = 0
    groupMoveable = True   # for moving control pivots
    orderIndex = 230  
    usesJointControls = True
    usesLimbControls = False
    bakeLosesData = False
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        for group in pm.listConnections(limb.jointGroups):
            pm.connectAttr(limb.usedGroups, group.used)
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
    
#============= SETUP ============================

    def Setup_Rig_Internal(self, limb):
        log.funcFileDebug()
        return []
    
    def Setup_Rig_External(self, limb):
        log.funcFileDebug()
        parentControl = rigUtil.GetParentControl(limb)
        groups = pm.listConnections(limb.usedGroups)
        if parentControl:
            for group in groups:
                pm.parentConstraint(parentControl, group, mo=1)
        return groups
    
    def Setup_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        for group in pm.listConnections(limb.usedGroups):
            joint = pm.listConnections(group.joint)[0]
            control = pm.listConnections(group.control)[0]
            pm.parentConstraint(control, joint, mo=1)
    
    def Setup_Constraint_ControlsToJoints(self, limb):
        log.funcFileDebug()
        for group in pm.listConnections(limb.usedGroups):
            joint = pm.listConnections(group.joint)[0]
            control = pm.listConnections(group.control)[0]
            pm.parentConstraint(joint, control, mo=1)
    
#============= TEARDOWN ============================

    def Teardown_Rig_Internal(self, limb):
        log.funcFileDebug()

    def Teardown_Rig_External(self, limb):
        log.funcFileDebug()
        if pm.listConnections(limb.limbParent):
            jointGroups = pm.listConnections(limb.usedGroups)
            constraints = [pm.listConnections(g.rx)[0] for g in jointGroups]
            pm.delete(constraints)

    def Teardown_Constraint_JointsToControls(self, limb):
        jointGroups = pm.listConnections(limb.usedGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]
        constraints = [pm.listConnections(j.rx)[0] for j in joints]
        pm.delete(constraints)
    
    def Teardown_Constraint_ControlsToJoints(self, limb):
        jointGroups = pm.listConnections(limb.usedGroups)
        controls = [pm.listConnections(g.control)[0] for g in jointGroups]
        constraints = [pm.listConnections(c.rx)[0] for c in controls]
        pm.delete(constraints)
    
#============= EDITABLE UI ============================

    def Setup_Editable_Limb_UI(self, limb):
        log.funcFileDebug()
        return False
    
#============= ANIMATION UI ============================

    def Setup_Animation_Limb_UI(self, limb):
        log.funcFileDebug()
        return False # return if UI is enabled
    