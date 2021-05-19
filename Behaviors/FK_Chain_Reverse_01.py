
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)
import Data.General_Data as genData
reload(genData)

import Common.Logger as log
reload(log)

class FK_Chain_Reverse_01(absBhv.Abstract_Behavior):
    bhvType = 'FK Chain Reverse'
    validLimbTypes = (2, 3, 4) # rigData.LIMB_TYPES
    groupType = ''        # LookAt, IKPV...
    groupShape = ''
    groupCount = 0
    groupMoveable = True   # for moving control pivots
    orderIndex = 220  
    usesJointControls = True
    usesLimbControls = False
    bakeLosesData = False
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        groups = pm.listConnections(limb.jointGroups)
        groups = rigUtil.SortGroups(groups)
        if not limb.enableEndControl.get():
            groups = groups[:-1]
        for group in groups:
            pm.connectAttr(limb.usedGroups, group.used)
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
    
#============= SETUP ============================

    def Setup_Rig_Internal(self, limb):
        log.funcFileDebug()
        groups = pm.listConnections(limb.usedGroups)
        groups = rigUtil.SortGroups(groups)[::-1]
        for i in range(len(groups)-1):
            group = groups[i+1]
            parentCtr = pm.listConnections(groups[i].control)[0]
            pm.parent(group, parentCtr)
        return groups[1:]
    
    def Setup_Rig_External(self, limb):
        log.funcFileDebug()
        parentControl = rigUtil.GetParentControl(limb)
        groups = pm.listConnections(limb.usedGroups)
        group = rigUtil.SortGroups(groups)[-1]
        if parentControl:
            pm.parentConstraint(parentControl, group, mo=1)
        return [group]
    
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
        groups = pm.listConnections(limb.usedGroups)
        groups = rigUtil.SortGroups(groups)[:-1]
        pm.parent(groups, limb)

    def Teardown_Rig_External(self, limb):
        log.funcFileDebug()
        if pm.listConnections(limb.limbParent):
            groups = pm.listConnections(limb.usedGroups)
            group = rigUtil.SortGroups(groups)[-1]
            cst = pm.listRelatives(group, c=1, type='parentConstraint')
            pm.delete(cst)

    def Teardown_Constraint_JointsToControls(self, limb):
        jointGroups = pm.listConnections(limb.usedGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]
        for joint in joints:
            cst = pm.listRelatives(joint, c=1, type='parentConstraint')
            pm.delete(cst)
    
    def Teardown_Constraint_ControlsToJoints(self, limb):
        jointGroups = pm.listConnections(limb.usedGroups)
        controls = [pm.listConnections(g.control)[0] for g in jointGroups]
        for control in controls:
            cst = pm.listRelatives(control, c=1, type='parentConstraint')
            pm.delete(cst)

#============= EDITABLE UI ============================

    def Setup_Editable_Limb_UI(self, limb):
        log.funcFileDebug()
        return False
    
#============= ANIMATION UI ============================

    def Setup_Animation_Limb_UI(self, limb):
        log.funcFileDebug()
        return False # return if UI is enabled
    