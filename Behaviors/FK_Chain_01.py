
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
    validLimbTypes = (2, 3, 4) # rigData.LIMB_TYPES
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
            pm.addAttr(limb, ln='fkJoints', dt='string')
        joints = pm.listConnections(limb.joints)
        joints = rigUtil.Joint._GetSortedJoints(joints)
        groups = [pm.listConnections(j.group)[0] for j in joints]
        pm.disconnectAttr(limb.fkJoints)
        for joint in joints:
            pm.connectAttr(limb.fkJoints, joint.limbExtra)
        if not limb.enableEndControl.get():
            groups = groups[:-1]
        for group in groups:
            pm.connectAttr(limb.usedGroups, group.used)
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
    
#============= SETUP ============================

    def Setup_Rig_Internal(self, limb):
        log.funcFileDebug()
        joints = pm.listConnections(limb.fkJoints)
        joints = rigUtil.Joint._GetSortedJoints(joints)
        groups = [pm.listConnections(j.group)[0] for j in joints]
        for i in range(len(groups)-1):
            group = groups[i+1]
            parentCtr = pm.listConnections(groups[i].control)[0]
            pm.parent(group, parentCtr)
        return groups[1:]
    
    def Setup_Rig_External(self, limb):
        log.funcFileDebug()
        parentControl = rigUtil.GetParentControl(limb)
        joints = pm.listConnections(limb.fkJoints)
        joints = rigUtil.Joint._GetSortedJoints(joints)
        group = pm.listConnections(joints[0].group)[0]
        if parentControl:
            pm.parentConstraint(parentControl, group, mo=1)
        return [group]
    
    def Setup_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        for joint in pm.listConnections(limb.fkJoints):
            group = pm.listConnections(joint.group)[0]
            control = pm.listConnections(group.control)[0]
            pm.parentConstraint(control, joint, mo=1)
    
    def Setup_Constraint_ControlsToJoints(self, limb):
        log.funcFileDebug()
        for joint in pm.listConnections(limb.joints): # bind to main joints?
            group = pm.listConnections(joint.group)[0]
            control = pm.listConnections(group.control)[0]
            pm.parentConstraint(joint, control)
    
#============= TEARDOWN ============================

    def Teardown_Rig_Internal(self, limb):
        log.funcFileDebug()
        joints = pm.listConnections(limb.fkJoints)
        joints = rigUtil.Joint._GetSortedJoints(joints)
        groups = [pm.listConnections(j.group)[0] for j in joints][1:]
        pm.parent(groups, limb)

    def Teardown_Rig_External(self, limb):
        log.funcFileDebug()
        if pm.listConnections(limb.limbParent):
            joints = pm.listConnections(limb.fkJoints)
            joints = rigUtil.Joint._GetSortedJoints(joints)
            group = pm.listConnections(joints[0].group)[0]
            cst = pm.listRelatives(group, c=1, type='parentConstraint')
            pm.delete(cst)

    def Teardown_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        for joint in pm.listConnections(limb.fkJoints):
            cst = pm.listRelatives(joint, c=1, type='parentConstraint')
            pm.delete(cst)
    
    def Teardown_Constraint_ControlsToJoints(self, limb):
        log.funcFileDebug()
        joints = pm.listConnections(limb.joints)
        groups = [pm.listConnections(j.group)[0] for j in joints]
        controls = [pm.listConnections(g.control)[0] for g in groups]
        for control in controls:
            cst = pm.listRelatives(control, c=1, type='parentConstraint')
            pm.delete(cst)
    
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
        joints = pm.listConnections(limb.fkJoints)
        joints = rigUtil.Joint._GetSortedJoints(joints)
        group = pm.listConnections(joints[-1].group)[0]
        group.v.set(isEnabled)
        if isEnabled:
            pm.connectAttr(limb.usedGroups, group.used)
        else:
            pm.disconnectAttr(group.used)
    
#============= ANIMATION UI ============================

    def Setup_Animation_Limb_UI(self, limb):
        log.funcFileDebug()
        return False 
    