
import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import SetDrivenKeys as sdk
reload(sdk)
import Utilities.UI_Utilities as uiUtil
reload(uiUtil)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import Utilities.Logger as log
reload(log)

class SetDrivenKeys_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Set Driven Keys'
    uiOrderIndex = 310
    operation = sdk.SetDrivenKeys()
    
    def __init__(self):
        self._rigRoot = None
        self._allRigRoots = []
        self._limbIDs = {}
        self._selectedLimb = None
        self._selectedControlGrp = None
        self._selectedJoint = None
        self._selectedGroup = None
        self._driver = None
        self._emptyLimbIDs = {}
        self._ctrGroups = []

    def Setup_UI(self, rigRoot, allRigRoots, pfrsUI): 
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._selectedLimb = None
        self._selectedControlGrp = None
        self._selectedJoint = None
        self._selectedGroup = None
        self._driver = None
        self._ctrGroups = []
        self._Setup()
        self.PopulateLimbHier()
        # self.operation.SetupOp(self._rigRoot)

    def Teardown_UI(self):
        pass
        # self.operation.TeardownOp(self._rigRoot)

#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limbs', bv=1):
                self.limb_tv = uiUtil.SetupLimbHier(self._limbIDs)
                pm.treeView(self.limb_tv, e=1, elc=self.IgnoreRename,
                                            scc=self.SelectedLimb)
            with pm.frameLayout('Controls', bv=1) as self.control_fl:
                self.control_tv = pm.treeView(arp=0, adr=0, ams=0,
                                            elc=self.IgnoreRename)
                pm.treeView(self.control_tv, e=1, scc=self.SelectedControl)
                with pm.popupMenu():
                    self.addGroup_mi = pm.menuItem(l='Add Driven Group', en=0,
                                                    c=self.AddSetDrivenGroup)
                    self.setCtrDriver_mi = pm.menuItem(l='Set As Driver', 
                                                    c=self.SetControlAsDriver)
        with pm.verticalLayout():
            with pm.frameLayout('Joints', bv=1) as self.joint_fl:
                self.joint_tv = pm.treeView(arp=0, adr=0, ams=0,
                                            elc=self.IgnoreRename)
                pm.treeView(self.joint_tv, e=1, scc=self.SelectedJoint)
                with pm.popupMenu():
                    self.setJntDriver_mi = pm.menuItem(l='Set As Driver', 
                                                    c=self.SetJointAsDriver)
            with pm.frameLayout('Set Driven Groups', bv=1):
                self.group_tv = pm.treeView(arp=0, adr=0, ams=0,
                                            elc=self.RenameGroup)
                pm.treeView(self.group_tv, e=1, scc=self.SelectedGroup)
                with pm.popupMenu():
                    self.removeGroup_mi = pm.menuItem(l='Remove group', en=0,
                                                    c=self.RemoveSetDrivenGroup)#, 
                    self.selectDriver_mi = pm.menuItem(l='Select group Driver', 
                                                    en=0,
                                                    c=self.SelectGroupDriver)
                    self.openWindow_mi = pm.menuItem(l='Open Set Driven Key Window', 
                                                    en=0,
                                                    c=self.OpenSetDrivenKeyWindow)
            # self.selectedDriver_b = pm.button("Select Group Driver:")

#=========== LIMB HIER ====================================
   
    def PopulateLimbHier(self):
        log.funcFileDebug()
        self._limbIDs.clear()
        self._emptyLimbIDs.clear()
        self._limbIDs.update(uiUtil.PopulateLimbHierNormal(self.limb_tv, 
                                                self._rigRoot,
                                                self._allRigRoots))
        # Currently just selects RANDOM limb, could be better
        for limbID, limb in self._limbIDs.items():
            if limb.limbType.get() == 0: # Avoid Empty limbs
                self._emptyLimbIDs[limbID] = limb
                pm.treeView(self.limb_tv, e=1, enableLabel=(limbID, 0))
        for limb in pm.listConnections(self._rigRoot.limbs):
            if pm.listConnections(limb.limbParent):
                continue
            if limb in list(self._emptyLimbIDs.values()):
                continue
            self._selectedLimb = limb
            break
        rigRootID = self._rigRoot.ID.get()
        limbID = '%d_%d' % (rigRootID, limb.ID.get())
        pm.treeView(self.limb_tv, e=1, selectItem=(limbID, 1))
        self.SelectedLimb()

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

    def SelectedLimb(self):
        log.funcFileInfo()
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        limb = self._selectedLimb
        rigRootID = self._rigRoot.ID.get()
        limbID = '%d_%d' % (rigRootID, limb.ID.get())
        if not limbIDStrs:
            pm.treeView(self.limb_tv, e=1, selectItem=(limbID, 1))
            return
        # Avoid selecting empty limbs
        if limbIDStrs[0] in self._emptyLimbIDs:
            pm.treeView(self.limb_tv, e=1, selectItem=(limbID, 1))
            pm.treeView(self.limb_tv, e=1, selectItem=(limbIDStrs[0], 0))
            return
        self._selectedLimb = self._limbIDs[limbIDStrs[0]]
        self.PopulateControlHier()
        self.PopulateJointHier()
        self.PopulateGroupHier()
        
#=========== CONTROL HIER ====================================

    def PopulateControlHier(self):
        log.funcFileDebug()
        pm.treeView(self.control_tv, e=1, removeAll=1)
        self._ctrGroups = uiUtil.PopulateControlHier(self.control_tv, 
                                                    self._selectedLimb)
        ctrGroupID = list(self._ctrGroups.keys())[0]
        pm.treeView(self.control_tv, e=1, selectItem=(ctrGroupID, 1))
        self._selectedControlGrp = self._ctrGroups[ctrGroupID]
        
    def SelectedControl(self):
        log.funcFileInfo()
        ctrGroupIDStrs = pm.treeView(self.control_tv, q=1, selectItem=1)
        if not ctrGroupIDStrs:
            groupIndex = self._selectedControlGrp.groupIndex.get()
            pm.treeView(self.control_tv, e=1, selectItem=(groupIndex, 1))
            return
        self._selectedControlGrp = self._ctrGroups[ctrGroupIDStrs[0]]

    def SetControlAsDriver(self, ignore):
        log.funcFileInfo()
        group = self._selectedControlGrp
        self._driver = pm.listConnections(group.control)[0]
        label = 'Controls (Driver = %s)' % self._driver
        pm.frameLayout(self.control_fl, e=1, l=label)
        pm.frameLayout(self.joint_fl, e=1, l='Joints')
        pm.menuItem(self.addGroup_mi, e=1, en=1)
    
    def AddSetDrivenGroup(self, ignore):
        log.funcFileInfo()
        control = pm.listConnections(self._selectedControlGrp.control)[0]
        self.operation.AddSetDrivenGroup(self._rigRoot, 
                                        self._selectedLimb, 
                                        control, 
                                        self._driver)
        self.PopulateGroupHier()

#=========== JOINT HIER ====================================

    def PopulateJointHier(self):
        log.funcFileDebug()
        pm.treeView(self.joint_tv, e=1, removeAll=1)
        self._jointIDs = uiUtil.PopulateJointHier(self.joint_tv, 
                                                    self._selectedLimb)
        jointID = list(self._jointIDs.keys())[0]
        pm.treeView(self.joint_tv, e=1, selectItem=(jointID, 1))
        self._selectedJoint = self._jointIDs[jointID]
        
    def SelectedJoint(self):
        log.funcFileInfo()
        jointIDStrs = pm.treeView(self.joint_tv, q=1, selectItem=1)
        if not jointIDStrs:
            group = pm.listConnections(self._selectedJoint.group)[0]
            groupID = group.groupIndex.get()
            pm.treeView(self.joint_tv, e=1, selectItem=(groupID, 1))
            return
        self._selectedJoint = self._jointIDs[jointIDStrs[0]]

    def SetJointAsDriver(self, ignore):
        log.funcFileInfo()
        self._driver = self._selectedJoint
        label = 'Joints (Driver = %s)' % self._driver
        pm.frameLayout(self.joint_fl, e=1, l=label)
        pm.frameLayout(self.control_fl, e=1, l='Controls')
        pm.menuItem(self.addGroup_mi, e=1, en=1)
        
#=========== GROUP HIER ====================================

    def PopulateGroupHier(self):
        log.funcFileDebug()
        pm.treeView(self.group_tv, e=1, removeAll=1)
        pm.menuItem(self.removeGroup_mi, e=1, en=0)
        pm.menuItem(self.selectDriver_mi, e=1, en=0)
        pm.menuItem(self.openWindow_mi, e=1, en=0)
        if not self._selectedLimb:
            return
        self.sdgIDs = {} # ID : group
        for group in pm.listConnections(self._selectedLimb.setDrivenGroups):
            groupID = str(group.ID.get())
            self.sdgIDs[groupID] = group
            name = group.shortName()
            pm.treeView(self.group_tv, e=1, addItem=(groupID, ''))
            pm.treeView(self.group_tv, e=1, displayLabel=(groupID, name))
        # rigRoot.nextSetDrivenGroupID.get()

    def SelectedGroup(self):
        log.funcFileInfo()
        groupIDStrs = pm.treeView(self.group_tv, q=1, selectItem=1)
        isEnabled = (bool(groupIDStrs))
        pm.menuItem(self.removeGroup_mi, e=1, en=isEnabled)
        pm.menuItem(self.selectDriver_mi, e=1, en=isEnabled)
        pm.menuItem(self.openWindow_mi, e=1, en=isEnabled)
        if not groupIDStrs:
            pm.select(d=1)
            return
        self._selectedGroup = self.sdgIDs[groupIDStrs[0]]
        pm.select(self._selectedGroup)

    def RenameGroup(self, groupIDStr, newName):
        log.funcFileDebug()
        group = self.groupIDs[groupIDStr]
        oldName = group.shortName()
        if newName == oldName:
            return ''
        if self.operation.RenameSetDrivenGroup(group, newName):
            self.PopulateGroupHier()
        return ''

    def SelectGroupDriver(self, ignore):
        log.funcFileInfo()
        driver = pm.listConnections(self._selectedGroup.driver)[0]
        pm.select(driver)

    def RemoveSetDrivenGroup(self, ignore):
        log.funcFileInfo()
        self.operation.RemoveSetDrivenGroup(self._selectedGroup)
        self.PopulateGroupHier()

    def OpenSetDrivenKeyWindow(self, ignore):
        self.operation.OpenSetDrivenKeyWindow(self._selectedGroup)

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"


                        