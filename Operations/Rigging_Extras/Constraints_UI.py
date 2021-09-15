
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
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
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
        self._rigRoot = None
        self._allRigRoots = []
        self._selectedLimb = None
        self._selectedControls = []
        self._limbIDs = {}
        self._apIDs = {}
        self._target1 = None
        self._target2 = None
        self._selectedTargetControl = None
        self._selectedTargetAttachPoint = None

    def Setup_UI(self, rigRoot, allRigRoots):  # Return nothing, parent should cleanup
        self._Setup()
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._selectedLimb = None
        self._target1 = None
        self._target2 = None
        self._selectedTargetControl = None
        self._selectedTargetAttachPoint = None
        self._selectedControls = []
        self.PopulateLimbHierNormal()
        self.UpdateApplyButton()
    
    def Teardown_UI(self):
        pass
    
#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limbs', bv=1):
                self.limb_tv = uiUtil.SetupLimbHier(self._limbIDs)
                pm.treeView(self.limb_tv, e=1, scc=self.SelectedLimb,
                                            elc=self.IgnoreRename)
            with pm.frameLayout('Targetable Controls', bv=1):
                self.targetable_tv = pm.treeView(arp=0, adr=0, ams=0,
                                            elc=self.IgnoreRename,
                                            scc=self.SelectedTargetControl)
                with pm.popupMenu():
                    self.setTargetControl1_mi = pm.menuItem(l='Set As Target 1 (Required)', 
                                                    c=self.SetControlAsTarget1,
                                                    en=0)
                    self.setTargetControl2_mi = pm.menuItem(l='Set As Target 2 (Optional)', 
                                                    c=self.SetControlAsTarget2,
                                                    en=0)
                    pm.menuItem(l='Reset Target 2', c=self.ResetTarget2)
            with pm.frameLayout('Targetable Attach Points', bv=1):
                self.ap_tv = pm.treeView(arp=0, adr=0, ams=0,
                                            elc=self.IgnoreRename,
                                            scc=self.SelectedTargetAttachPoint)
                with pm.popupMenu():
                    self.setTargetAttachPoint1_mi = pm.menuItem(
                                                    l='Set As Target 1 (Required)', 
                                                    c=self.SetControlAsTarget1,
                                                    en=0)
                    self.setTargetAttachPoint2_mi = pm.menuItem(
                                                    l='Set As Target 2 (Optional)', 
                                                    c=self.SetControlAsTarget2,
                                                    en=0)
                    pm.menuItem(l='Reset Target 2', c=self.ResetTarget2)
        with pm.verticalLayout():
            with pm.frameLayout('Limb Controls', bv=1):
                self.control_tv = pm.treeView(arp=0, adr=0,
                                            elc=self.IgnoreRename)
                pm.treeView(self.control_tv, e=1, scc=self.SelectedControl)
            with pm.frameLayout('Constraint Settings', bv=1, mw=7, mh=7):
                with pm.columnLayout(adj=1, rs=5) as self.bhvLimbProp_cl:
                    with pm.optionMenu(l='Cst Type') as self.cstType_om:
                        for cstType in rigData.CST_TYPES:
                            pm.menuItem(l=cstType)
                    with pm.columnLayout(co=('left', 60)):
                        self.mo_cb = pm.checkBox(l='Maintain Offset', v=1)
                    self.lock_cb = pm.checkBoxGrp(  ncb=3, l='Enable',
                                                    la3=['X', 'Y', 'Z'],
                                                    va3=(1,1,1), cw4=(80,50,50,50))
                    self.target1_t = pm.text(l='Target 1: NONE')
                    self.target2_t = pm.text(l='Target 2: Default Parent')
                    self.apply_b = pm.button(l='Apply Constraint', 
                                            c=self.ApplyConstraints,
                                            en=0)
            with pm.frameLayout('Limb Constraint Groups', bv=1):
                self.group_tv = pm.treeView(arp=0, adr=0,
                                            elc=self.IgnoreRename)
                pm.treeView(self.group_tv, e=1, scc=self.SelectedGroup)
                with pm.popupMenu():
                    self.remove_mi = pm.menuItem(en=0,
                                        c=self.RemoveConstraintGroups,
                                        l='Remove Constraint Groups')

#=========== LIMB HIER ====================================

    def PopulateLimbHierNormal(self, selectLimb=None):
        log.funcFileDebug()
        self._limbIDs.clear()
        self._limbIDs.update(uiUtil.PopulateLimbHierNormal(self.limb_tv, 
                                                self._rigRoot,
                                                self._allRigRoots))
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
        self.PopulateTargetableHier()
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
        self.PopulateTargetableHier()
        self.PopulateAttachPointsHier()

#=========== TARGETABLE CONTROLS HIER ====================================

    def PopulateTargetableHier(self):
        log.funcFileDebug()
        self._targetableControls = {}
        self._selectedTargetControl = None
        self._selectedTargetAttachPoint = None
        pm.treeView(self.targetable_tv, e=1, removeAll=1)
        pm.menuItem(self.setTargetControl1_mi, e=1, en=0)
        pm.menuItem(self.setTargetControl2_mi, e=1, en=0)
        self.UpdateApplyButton()
        if not self._selectedLimb:
            return
        
        limb = self._selectedLimb
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        controls = [pm.listConnections(g.control)[0] for g in jointGroups]
        for control in controls:
            name = control.shortName()
            self._targetableControls[name] = control
            pm.treeView(self.targetable_tv, e=1, ai=(name, ''))
    
    def SelectedTargetControl(self):
        log.funcFileInfo()
        pm.menuItem(self.setTargetControl1_mi, e=1, en=0)
        pm.menuItem(self.setTargetControl2_mi, e=1, en=0)
        groupIDStrs = pm.treeView(self.targetable_tv, q=1, si=1)
        if not groupIDStrs:
            pm.select(d=1)
            return 
        self._selectedTargetControl = self._targetableControls[groupIDStrs[0]]
        pm.select(self._selectedTargetControl)
        pm.menuItem(self.setTargetControl1_mi, e=1, en=1)
        if self._selectedTargetControl != self._target1:
            pm.menuItem(self.setTargetControl2_mi, e=1, en=1)

    def SetControlAsTarget1(self, ignore):
        self._target1 = self._selectedTargetControl
        text = 'Target 1: %s' % self._target1
        pm.text(self.target1_t, e=1, l=text)
        self.PopulateTargetableHier()
        self.UpdateApplyButton()

    def SetControlAsTarget2(self, ignore):
        self._target2 = self._selectedTargetControl
        text = 'Target 2: %s' % self._target2
        pm.text(self.target2_t, e=1, l=text)
        self.PopulateTargetableHier()

    def ResetTarget2(self, ignore):
        self._target2 = None
        text = 'Target 2: Default Parent'
        pm.text(self.target2_t, e=1, l=text)
        self.PopulateTargetableHier()

#=========== ATTACH POINTS ====================================

    def PopulateAttachPointsHier(self):
        log.funcFileDebug()
        pm.treeView(self.ap_tv, e=1, removeAll=1)
        self._apIDs.clear()
        self._apIDs.update(uiUtil.PopulateAttachPointsHier(self.ap_tv,
                                                    self._rigRoot))

    def SelectedTargetAttachPoint(self):
        log.funcFileInfo()
        pm.menuItem(self.setTargetAttachPoint1_mi, e=1, en=0)
        pm.menuItem(self.setTargetAttachPoint2_mi, e=1, en=0)
        apIDStrs = pm.treeView(self.ap_tv, q=1, selectItem=1)
        if not apIDStrs:
            pm.select(d=1)
            return 
        self._selectedTargetAttachPoint = self._apIDs[apIDStrs[0]]
        pm.select(self._selectedTargetAttachPoint)
        pm.menuItem(self.setTargetAttachPoint1_mi, e=1, en=1)
        if self._selectedTargetAttachPoint != self._target1:
            pm.menuItem(self.setTargetAttachPoint2_mi, e=1, en=1)

    def SetControlAsTarget1(self, ignore):
        self._target1 = self._selectedTargetControl
        text = 'Target 1: %s' % self._target1
        pm.text(self.target1_t, e=1, l=text)
        self.PopulateTargetableHier()
        self.UpdateApplyButton()

    def SetControlAsTarget2(self, ignore):
        self._target2 = self._selectedTargetControl
        text = 'Target 2: %s' % self._target2
        pm.text(self.target2_t, e=1, l=text)
        self.PopulateTargetableHier()

    def ResetTarget2(self, ignore):
        self._target2 = None
        text = 'Target 2: Default Parent'
        pm.text(self.target2_t, e=1, l=text)
        self.PopulateTargetableHier()

#=========== CONTROL HIER ====================================

    def PopulateControlHier(self):
        log.funcFileDebug()
        pm.treeView(self.control_tv, e=1, removeAll=1)
        self._selectedControls = []
        self.UpdateApplyButton()
        if not self._selectedLimb:
            return
        self._limbGroups = uiUtil.PopulateControlHier(self.control_tv, 
                                                    self._selectedLimb)
        
    def IgnoreRename(self, idStr, newName):
        return ''

    def SelectedControl(self):
        log.funcFileInfo()
        groupIDStrs = pm.treeView(self.control_tv, q=1, selectItem=1)
        if groupIDStrs:
            groups = [self._limbGroups[s] for s in groupIDStrs]
            self._selectedControls = [pm.listConnections(g.control)[0] for g in groups]
            pm.select(self._selectedControls)
        else:
            self._selectedControls = []
            pm.select(d=1)
        self.UpdateApplyButton()

#=========== CONSTRAINT PROPERTIES ====================================

    def ApplyConstraints(self, ignore):
        log.funcFileInfo()
        cstTypeStr = pm.optionMenu(self.cstType_om, q=1, v=1)
        index = rigData.CST_TYPES.index(cstTypeStr)
        mo = pm.checkBox(self.mo_cb, q=1, v=1)
        locks = pm.checkBoxGrp(self.lock_cb, q=1, va3=1)

        for control in self._selectedControls:
            target2 = self._target2
            if not target2:
                target2 = pm.listConnections(control.group)[0]
            self.operation._ApplyConstraint(control, 
                                            self._target1,
                                            target2,
                                            mo,
                                            not locks[0],
                                            not locks[1],
                                            not locks[2], 
                                            index)
        self.PopulateLimbHierNormal()
        self.PopulateControlHier()
        self.PopulateTargetableHier()
        self.PopulateGroupHier()
        self.UpdateApplyButton()

    def UpdateApplyButton(self):
        if not self._target1:
            pm.button(self.apply_b, e=1, en=0, l='Missing Target')
            return
        if not self._selectedControls:
            pm.button(self.apply_b, e=1, en=0, l='Select Affected Controls')
            return
        cstTypeStr = pm.optionMenu(self.cstType_om, q=1, v=1)
        count = len(self._selectedControls)
        msg = '%s Constraint (%d) Controls' %(cstTypeStr, count)
        pm.button(self.apply_b, e=1, en=1, l=msg)

#=========== CONSTRAINT GROUP HIER ====================================

    def PopulateGroupHier(self):
        log.funcFileDebug()
        pm.treeView(self.group_tv, e=1, removeAll=1)
        self._selectedGroup = None
        pm.menuItem(self.remove_mi, e=1, en=0)
        if not self._selectedLimb:
            return
        
        limb = self._selectedLimb
        self._groups = {} # index : group
        cstGroups = {}
        for group in pm.listConnections(limb.usedGroups):
            for cstGroup in pm.listConnections(group.constraintGroups):
                cstGroups[cstGroup.shortName()] = cstGroup
        for name in sorted(list(cstGroups.keys())):
            group = cstGroups[name]
            self._groups[name] = group
            pm.treeView(self.group_tv, e=1, ai=(name, ''))
    
    def SelectedGroup(self):
        log.funcFileInfo()
        groupIDStrs = pm.treeView(self.group_tv, q=1, selectItem=1)
        pm.menuItem(self.remove_mi, e=1, en=0)
        if not groupIDStrs:
            pm.select(d=1)
            return 
        self._selectedGroups = []
        for ID in groupIDStrs:
            self._selectedGroups.append(self._groups[ID])
        pm.select(self._selectedGroups)
        pm.menuItem(self.remove_mi, e=1, en=1)

    def RemoveConstraintGroups(self, ignore):
        log.funcFileInfo()
        self.operation.RemoveConstraintGroups(self._selectedGroups)
        self.PopulateGroupHier()

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
