
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import Data.General_Data as genData
reload(genData)

import Utilities.Logger as log
reload(log)

class FK_Chain_Reverse_01(absBhv.Abstract_Behavior):
    bhvType = 'FK Chain Reverse'
    validLimbTypes = (2, 3, 4) # rigData.LIMB_TYPES
    groupType = ''        # LookAt, IKPV...
    groupShape = ''
    groupCount = 0
    groupMoveable = True   # for moving control pivots
    uiOrderIndex = 220  
    usesJointControls = True
    usesLimbControls = False
    bakeLosesData = False
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        groups = pm.listConnections(limb.jointGroups)
        groups = rigUtil.SortGroups(groups)
        if not limb.enableEndControl.get():
            groups = groups[:-1]
        pm.disconnectAttr(limb.usedGroups)
        for group in groups:
            pm.connectAttr(limb.usedGroups, group.used)
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
    
#============= SETUP ============================

    def Setup_Rig_Controls(self, limb):
        log.funcFileDebug()
        groups = pm.listConnections(limb.jointGroups)
        groups = rigUtil.SortGroups(groups)[::-1]
        for i in range(len(groups)-1):
            group = groups[i+1]
            parentCtr = pm.listConnections(groups[i].control)[0]
            pm.parent(group, parentCtr)

        # External
        parentControl = rigUtil.GetParentControl(limb)
        if parentControl:
            pm.parentConstraint(parentControl, groups[0], mo=1)
    
    def Setup_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        for i in range(1, len(jointGroups)):
            joint = pm.listConnections(jointGroups[i-1].joint)[0]
            group = jointGroups[i]
            control = pm.listConnections(group.control)[0]
            pm.parentConstraint(control, joint, mo=1)
    
    def Setup_Constraint_ControlsToXforms(self, limb, 
            xforms, hasPosCst, hasRotCst, hasScaleCst):
        log.funcFileDebug()
        groups = pm.listConnections(limb.jointGroups)
        groups = rigUtil.SortGroups(groups)
        controls = [pm.listConnections(g.control)[0] for g in groups]
        for xform, control in zip(xforms, controls):
            if hasPosCst:
                pm.pointConstraint(xform, control)
            if hasRotCst:
                pm.orientConstraint(xform, control)
            if hasScaleCst:
                pm.scaleConstraint(xform, control)
        return controls
    
#============= TEARDOWN ============================

    def Teardown_Rig_Controls(self, limb):
        log.funcFileDebug()
        groups = pm.listConnections(limb.jointGroups)
        groups = rigUtil.SortGroups(groups)[:-1]
        pm.parent(groups, limb)
        if pm.listConnections(limb.limbParent):
            groups = pm.listConnections(limb.jointGroups)
            group = rigUtil.SortGroups(groups)[-1]
            cst = pm.listRelatives(group, c=1, type='parentConstraint')
            pm.delete(cst)

    def Teardown_Constraint_JointsToControls(self, limb):
        jointGroups = pm.listConnections(limb.jointGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]
        for joint in joints:
            cst = pm.listRelatives(joint, c=1, type='parentConstraint')
            pm.delete(cst)
    
    def Teardown_Constraint_ControlsToXforms(self, limb):
        jointGroups = pm.listConnections(limb.jointGroups)
        controls = [pm.listConnections(g.control)[0] for g in jointGroups]
        for control in controls:
            pm.delete(pm.listRelatives(control, c=1, type='constraint'))

#============= EDITABLE UI ============================

    def Setup_Editable_Limb_UI(self, limb):
        log.funcFileDebug()
        return False
    
#============= ANIMATION UI ============================

    def Setup_Animation_Limb_UI(self, limb):
        log.funcFileDebug()
        return False # return if UI is enabled
    