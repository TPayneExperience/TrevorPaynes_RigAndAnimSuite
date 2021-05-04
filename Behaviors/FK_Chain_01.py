
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)
import Data.General_Data as genData
reload(genData)

import Common.Logger as log
reload(log)

class FK_Chain_01(absBhv.Abstract_Behavior):
    bhvType = 'FK Chain'
    validLimbTypes = (3, 4) # rigData.LIMB_TYPES
    groupType = ''        # LookAt, IKPV...
    groupShape = ''
    groupCount = 0
    groupMoveable = True   # for moving control pivots
    orderIndex = 210  
    usesJointControls = True
    usesLimbControls = False
    bakeLosesData = False
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        if not limb.hasAttr('enableEndControl'):
            pm.addAttr(limb, ln='enableEndControl', at='bool', 
                                    dv=1, h=genData.HIDE_ATTRS)
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
        groups = rigUtil.SortGroups(groups)
        for i in range(len(groups)-1):
            group = groups[i+1]
            parentCtr = pm.listConnections(groups[i].control)[0]
            pm.parent(group, parentCtr)
        return groups[1:]
    
    def Setup_Rig_External(self, limb):
        log.funcFileDebug()
        parentControl = rigUtil.GetParentControl(limb)
        groups = pm.listConnections(limb.usedGroups)
        group = rigUtil.SortGroups(groups)[0]
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
            pm.parentConstraint(joint, control)
    
#============= TEARDOWN ============================

    def Teardown_Rig_Internal(self, limb):
        log.funcFileDebug()
        groups = pm.listConnections(limb.usedGroups)
        groups = rigUtil.SortGroups(groups)[1:]
        pm.parent(groups, limb)

    def Teardown_Rig_External(self, limb):
        log.funcFileDebug()
        if pm.listConnections(limb.limbParent):
            jointGroups = pm.listConnections(limb.usedGroups)
            jointGroup = rigUtil.SortGroups(jointGroups)[0]
            pm.delete(pm.listConnections(jointGroup.rx))

    def Teardown_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        joints = pm.listConnections(limb.joints)
        constraints = [pm.listConnections(j.rx)[0] for j in joints]
        pm.delete(constraints)
    
    def Teardown_Constraint_ControlsToJoints(self, limb):
        log.funcFileDebug()
        jointGroups = pm.listConnections(limb.usedGroups)
        controls = [pm.listConnections(g.control)[0] for g in jointGroups]
        constraints = [pm.listConnections(c.rx)[0] for c in controls]
        pm.delete(constraints)
    
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
    