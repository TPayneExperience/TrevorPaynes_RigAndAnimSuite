
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)

import Utilities.Logger as log
reload(log)

class FK_Branch_01(absBhv.Abstract_Behavior):
    bhvType = 'FK Branch'
    validLimbTypes = (1, 2, 3, 4) # rigData.LIMB_TYPES
    groupType = ''        # LookAt, IKPV...
    groupShape = ''
    groupCount = 0
    groupMoveable = True   # for moving control pivots
    uiOrderIndex = 230  
    usesJointControls = True
    usesLimbControls = False
    bakeLosesData = False
    duplicateJointGroups = False
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        pm.disconnectAttr(limb.usedGroups)
        for group in pm.listConnections(limb.jointGroups):
            pm.connectAttr(limb.usedGroups, group.used)
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
    
#============= SETUP ============================

    def Setup_Rig_Controls(self, limb):
        parentControl = rigUtil.GetParentControl(limb)
        groups = pm.listConnections(limb.jointGroups)
        if parentControl:
            for group in groups:
                pm.parentConstraint(parentControl, group, mo=1)
    
    def Setup_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        for group in pm.listConnections(limb.jointGroups):
            joint = pm.listConnections(group.joint)[0]
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
        if pm.listConnections(limb.limbParent):
            jointGroups = pm.listConnections(limb.jointGroups)
            for group in jointGroups:
                cst = pm.listRelatives(group, c=1, type='parentConstraint')
                pm.delete(cst)

    def Teardown_Constraint_JointsToControls(self, limb):
        for joint in pm.listConnections(limb.joints):
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
    