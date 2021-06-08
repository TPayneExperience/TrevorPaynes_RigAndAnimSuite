
import os

import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import Constraints as cst
reload(cst)
import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import Utilities.UI_Utilities as uiUtil
reload(uiUtil)
# import Utilities.General_Utilities as genUtil
# reload(genUtil)
import Utilities.Logger as log
reload(log)
import Data.Rig_Data as rigData
reload(rigData)
import Popups.EditPresets as editPst
reload(editPst)


class Constraints_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Constraints'
    uiOrderIndex = 410
    operation = cst.Constraints()
    def __init__(self):
        # self._limbFunc = None
        self._rigRoot = None
        # self._selectedSceneJoints = []
        # self._limbJoints = {}
        # self._limbIDs = {} # limbID : limb
        self._selectedLimb = None
        self._selectedControls = None
        self._target = None

    def Setup_UI(self, rigRoot, allRigRoots):  # Return nothing, parent should cleanup
        self._Setup()
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self.PopulateLimbHier()
        self.UpdateApplyButton()
    
    def Teardown_UI(self, rigRoot, allRigRoots):
        pass
    
#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limbs', bv=1):
                self.limb_tv = pm.treeView(nb=1, enk=1)
                pm.treeView(self.limb_tv, e=1, scc=self.SelectedLimb)#,
                                                # elc=self.RenameLimb,
                                                # dad=self.ReparentLimb)
            with pm.frameLayout('Limb Controls', bv=1):
                self.control_tv = pm.treeView(arp=0, adr=0,
                                            elc=self.IgnoreRename)
                pm.treeView(self.control_tv, e=1, scc=self.SelectedControl)
                with pm.popupMenu():
                    self.setTarget_mi = pm.menuItem(l='Set As Target', 
                                                    c=self.SetAsTarget,
                                                    en=0)
            with pm.frameLayout('Limb Constraint Groups', bv=1):
                self.group_tv = pm.treeView(arp=0, adr=0, ams=0,
                                            elc=self.IgnoreRename)
                pm.treeView(self.group_tv, e=1, scc=self.SelectedGroup)
                with pm.popupMenu():
                    self.remove_mi = pm.menuItem(en=0,
                                        c=self.RemoveConstraintGroup,
                                        l='Remove Constraint Group')
        with pm.verticalLayout():
            with pm.frameLayout('Constraint Settings', bv=1):
                with pm.columnLayout(adj=1) as self.bhvLimbProp_cl:
                    with pm.optionMenu(l='Cst Type') as self.cstType_om:
                        for cstType in rigData.CST_TYPES:
                            pm.menuItem(l=cstType)
                    self.mo_cb = pm.checkBox(l='Maintain Offset', v=1)
                    self.lock_cb = pm.checkBoxGrp(  ncb=3, l='Enable',
                                                    la3=['X', 'Y', 'Z'],
                                                    va3=(1,1,1), cw4=(80,50,50,50))
                    self.target_t = pm.text(l='Target: NONE')
                    self.apply_b = pm.button(l='Apply Constraint', 
                                            c=self.ApplyConstraints,
                                            en=0)
            with pm.frameLayout('Attach Points (Coming v2.0)', bv=1, en=0):
                self.attach_tv = pm.treeView(arp=0, adr=0, ams=0,
                                            elc=self.IgnoreRename)
                # pm.treeView(self.group_tv, e=1, scc=self.SelectedGroup)

#=========== LIMB HIER ====================================

    def PopulateLimbHier(self, selectLimb=None):
        log.funcFileDebug()
        self._limbIDs = uiUtil.PopulateLimbHier(self.limb_tv, 
                                                self._rigRoot,
                                                self._allRigRoots)
        for limbID, limb in self._limbIDs.items():
            cstGrps = []
            for group in pm.listConnections(limb.usedGroups):
                cstGrps += pm.listConnections(group.constraintGroups)
            hasGrps = bool(cstGrps)
            pm.treeView(self.limb_tv, e=1, enl=(limbID, hasGrps))
        if not selectLimb:
            return
        for limbID, limb in self._limbIDs.items():
            if limb == selectLimb:
                pm.treeView(self.limb_tv, e=1, si=(limbID, 1))

    def SelectedLimb(self):
        log.funcFileInfo()
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        self._selectedLimb = None
        self.PopulateControlHier()
        self.PopulateGroupHier()
        if not limbIDStrs:
            self._rigRoot = None
            return
        limb = self._limbIDs[limbIDStrs[0]]
        self._selectedLimb = limb
        self._rigRoot = pm.listConnections(limb.rigRoot)[0]
        log.debug('\t\t' + limb.pfrsName.get())
        pm.select(pm.listConnections(limb.usedGroups))
        self.PopulateControlHier()
        self.PopulateGroupHier()

#=========== CONTROL HIER ====================================

    def PopulateControlHier(self):
        log.funcFileDebug()
        pm.treeView(self.control_tv, e=1, removeAll=1)
        pm.menuItem(self.setTarget_mi, e=1, en=0)
        self._selectedControls = []
        self.UpdateApplyButton()
        if not self._selectedLimb:
            return
        self._limbGroups = uiUtil.PopulateControlHier(self.control_tv, 
                                                    self._selectedLimb)
        # if self._currentBhv.groupMoveable:
        #     for groupID in list(self._limbGroups.keys()):
        #         pm.treeView(self.control_tv, e=1, orc=(groupID, 0, 1, 0),
        #                                     ornament=(groupID, 1, 0, 3))
        
    def IgnoreRename(self, idStr, newName):
        return ''

    def SelectedControl(self):
        log.funcFileInfo()
        groupIDStrs = pm.treeView(self.control_tv, q=1, selectItem=1)
        pm.menuItem(self.setTarget_mi, e=1, en=0)
        if groupIDStrs:
            groups = [self._limbGroups[s] for s in groupIDStrs]
            self._selectedControls = [pm.listConnections(g.control)[0] for g in groups]
            if len(self._selectedControls) == 1:
                pm.menuItem(self.setTarget_mi, e=1, en=1)
        else:
            self._selectedControls = None
        self.UpdateApplyButton()

    def SetAsTarget(self, ignore):
        self._target = self._selectedControls[0]
        text = 'Target: %s' % self._target
        pm.text(self.target_t, e=1, l=text)
        self.PopulateControlHier()

#=========== CONSTRAINT PROPERTIES ====================================

    def ApplyConstraints(self, ignore):
        log.funcFileInfo()
        cstTypeStr = pm.optionMenu(self.cstType_om, q=1, v=1)
        index = rigData.CST_TYPES.index(cstTypeStr)
        mo = pm.checkBox(self.mo_cb, q=1, v=1)
        locks = pm.checkBoxGrp(self.lock_cb, q=1, va3=1)

        for control in self._selectedControls:
            self.operation._ApplyConstraint(control, 
                                            self._target,
                                            mo,
                                            locks[0],
                                            locks[1],
                                            locks[2], 
                                            index)
        self.PopulateControlHier()
        self.PopulateGroupHier()

    def UpdateApplyButton(self):
        if not self._target:
            pm.button(self.apply_b, e=1, en=0, l='Missing Target')
            return
        if not self._selectedControls:
            pm.button(self.apply_b, e=1, en=0, l='Select Affected Controls')
            return
        cstTypeStr = pm.optionMenu(self.cstType_om, q=1, v=1)
        count = len(self._selectedControls)
        msg = '%s Constraint (%d) Controls' %(cstTypeStr, count)
        pm.button(self.apply_b, e=1, en=1, l=msg)

#=========== GROUP HIER ====================================

    def PopulateGroupHier(self):
        log.funcFileDebug()
        pm.treeView(self.group_tv, e=1, removeAll=1)
        self._selectedGroup = None
        pm.menuItem(self.remove_mi, e=1, en=0)
        if not self._selectedLimb:
            return
        
        limb = self._selectedLimb
        self._groups = {} # index : group
        cstGroups = []
        for group in pm.listConnections(limb.usedGroups):
            cstGroups += pm.listConnections(group.constraintGroups)
        for group in cstGroups:
            name = group.shortName()
            self._groups[name] = group
            pm.treeView(self.group_tv, e=1, ai=(name, ''))
    
    def SelectedGroup(self):
        log.funcFileInfo()
        groupIDStrs = pm.treeView(self.group_tv, q=1, selectItem=1)
        pm.menuItem(self.remove_mi, e=1, en=0)
        if not groupIDStrs:
            return 
        self._selectedGroup = self._groups[groupIDStrs[0]]
        pm.select(self._selectedGroup)
        pm.menuItem(self.remove_mi, e=1, en=1)

    def RemoveConstraintGroup(self, ignore):
        log.funcFileInfo()
        self.operation.RemoveConstraintGroup(self._selectedGroup)
        self.PopulateGroupHier()
