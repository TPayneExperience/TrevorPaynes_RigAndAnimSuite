
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import Data.General_Data as genData
reload(genData)

import Utilities.Logger as log
reload(log)

class FK_Chain_01(absBhv.Abstract_Behavior):
    bhvType = 'FK Chain'
    validLimbTypes = (2, 3, 4) # rigData.LIMB_TYPES
    groupType = ''        # LookAt, IKPV...
    groupShape = ''
    groupCount = 0
    groupMoveable = True   # for moving control pivots
    uiOrderIndex = 210  
    usesJointControls = True
    usesLimbControls = False
    bakeLosesData = False
    duplicateJointGroups = False
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        if not limb.hasAttr('enableEndControl'):
            pm.addAttr(limb, ln='enableEndControl', at='bool', 
                                    dv=1, h=genData.HIDE_ATTRS)
        groups = pm.listConnections(limb.jointGroups)
        groups = rigUtil.SortGroups(groups)
        if not limb.enableEndControl.get():
            groups = groups[:-1]
        pm.disconnectAttr(limb.usedGroups)
        for group in groups:
            pm.connectAttr(limb.usedGroups, group.used)
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
    
#============= FOR BEHAVIOR OPERATION ============================

    def Setup_ForBhvOp(self, limb):
        pass
    
    def Teardown_ForBhvOp(self, limb):
        pass
    
#============= SETUP ============================

    def Setup_Rig_Controls(self, limb):
        log.funcFileDebug()
        groups = pm.listConnections(limb.jointGroups)
        groups = rigUtil.SortGroups(groups)
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
        groups = pm.listConnections(limb.jointGroups)
        groups = rigUtil.SortGroups(groups)[1:]
        pm.parent(groups, limb)
        if pm.listConnections(limb.limbParent):
            jointGroups = pm.listConnections(limb.jointGroups)
            jointGroup = rigUtil.SortGroups(jointGroups)[0]
            cst = pm.listRelatives(jointGroup, c=1, type='parentConstraint')
            pm.delete(cst)

    def Teardown_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        joints = pm.listConnections(limb.joints)
        for joint in joints:
            cst = pm.listRelatives(joint, c=1, type='parentConstraint')
            pm.delete(cst)
    
    def Teardown_Constraint_ControlsToXforms(self, limb):
        log.funcFileDebug()
        jointGroups = pm.listConnections(limb.jointGroups)
        controls = [pm.listConnections(g.control)[0] for g in jointGroups]
        for control in controls:
            pm.delete(pm.listRelatives(control, c=1, type='constraint'))
    
#============= EDITABLE UI ============================

    def Setup_Editable_Limb_UI(self, limb):
        log.funcFileDebug()
        with pm.columnLayout(co=('left', -100)):
            pm.attrControlGrp(l='Enable End Control',
                                a=limb.enableEndControl,
                        cc=pm.Callback(self._SetEnableEndControl, limb))
        return True
    
    def _SetEnableEndControl(self, limb):
        log.funcFileDebug()
        isEnabled = limb.enableEndControl.get()
        groups = pm.listConnections(limb.jointGroups)
        group = rigUtil.SortGroups(groups)[-1]
        group.v.set(isEnabled)
        if isEnabled:
            pm.connectAttr(limb.usedGroups, group.used)
        else:
            pm.disconnectAttr(group.used)
    
#============= ANIMATION UI ============================

    def Setup_Animation_Limb_UI(self, limb):
        log.funcFileDebug()
        return False 
    
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
