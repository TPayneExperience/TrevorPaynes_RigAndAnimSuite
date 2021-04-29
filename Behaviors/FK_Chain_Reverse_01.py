
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
    validLimbTypes = (3, 4) # rigData.LIMB_TYPES
    groupType = ''        # LookAt, IKPV...
    groupShape = ''
    groupCount = 0
    groupMoveable = True   # for moving control pivots
    orderIndex = 220  
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        if not limb.hasAttr('enableEndControl'):
            pm.addAttr(limb, ln='enableEndControl', at='bool', 
                                    dv=1, h=genData.HIDE_ATTRS)
        groups = pm.listConnections(limb.parentableGroups)
        groups = rigUtil.SortGroups(groups)
        if not limb.enableEndControl.get():
            groups = groups[:-1]
        for group in groups:
            pm.connectAttr(limb.usedGroups, group.used)
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
    
#============= RIG ============================

    def Setup_Rig_Internal(self, limb):
        log.funcFileDebug()
        groups = pm.listConnections(limb.usedGroups)
        groups = rigUtil.SortGroups(groups)[::-1]
        pm.parent(groups[0], limb)
        for i in range(len(groups)-1):
            group = groups[i+1]
            parentCtr = pm.listConnections(groups[i].control)[0]
            pm.parent(group, parentCtr)
        for group in groups:
            joint = pm.listConnections(group.joint)[0]
            control = pm.listConnections(group.control)[0]
            pm.parentConstraint(control, joint, mo=1)
    
    def Setup_Rig_External(self, limb):
        log.funcFileDebug()
        parentControl = rigUtil.GetParentControl(limb)
        if not parentControl:
            return
        groups = pm.listConnections(limb.usedGroups)
        groups = rigUtil.SortGroups(groups)[::-1]
        pm.parentConstraint(parentControl, groups[0], mo=1)
    
    def Teardown_Rig(self, limb):
        log.funcFileDebug()
        jointGroups = pm.listConnections(limb.usedGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]
        constraints = [pm.listConnections(j.rx)[0] for j in joints]
        pm.delete(constraints)
        pm.delete(pm.listConnections(jointGroups[-1].rx))

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
        with pm.columnLayout(co=('left', -100)):
            pm.attrControlGrp(l='Enable End Control',
                                a=limb.enableEndControl,
                        cc=pm.Callback(self._SetEnableEndControl, limb))
        return True
    
    def _SetEnableEndControl(self, limb):
        log.funcFileDebug()
        isEnabled = limb.enableEndControl.get()
        groups = pm.listConnections(limb.parentableGroups)
        group = rigUtil.SortGroups(groups)[-1]
        group.v.set(isEnabled)
        if isEnabled:
            pm.connectAttr(limb.usedGroups, group.used)
        else:
            pm.disconnectAttr(group.used)
    
#============= ANIMATION UI ============================

    def Setup_Animation_Limb_UI(self, limb):
        return False # return if UI is enabled
    