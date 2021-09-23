
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
        self._allRigRoots = None
        self._limbIDs = {}
        self._selectedLimb = None
        self._limbGroups = []

    def Setup_UI(self, rigRoot, allRigRoots): 
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._selectedLimb = None
        self._limbGroups = []
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
                # with pm.popupMenu(): #as self.rmb_ui:
                #     self._reimport_mi = pm.menuItem(l='Reimport Control Shapes', 
                #                                     c=self.ReimportControlShapes)
            with pm.frameLayout('Controls', bv=1):
                self.control_tv = pm.treeView(arp=0, adr=0, ams=0,
                                            elc=self.IgnoreRename)
                # pm.treeView(self.control_tv, e=1, scc=self.SelectedControl)
        with pm.verticalLayout():
            with pm.frameLayout('Joints', bv=1):
                self.joint_tv = pm.treeView(arp=0, adr=0, ams=0,
                                            elc=self.IgnoreRename)
                # pm.treeView(self.joint_tv, e=1, scc=self.SelectedControl)
            with pm.frameLayout('Set Driven Key Gorups', bv=1):
                self.group_tv = pm.treeView(arp=0, adr=0, ams=0,
                                            elc=self.IgnoreRename)
                # pm.treeView(self.group_tv, e=1, scc=self.SelectedControl)

#=========== LIMB HIER ====================================
   
    def PopulateLimbHier(self):
        log.funcFileDebug()
        self._limbIDs.clear()
        self._limbIDs.update(uiUtil.PopulateLimbHierNormal(self.limb_tv, 
                                                self._rigRoot,
                                                self._allRigRoots))

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

    def SelectedLimb(self):
        log.funcFileInfo()
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        self._rigRoot = None
        self._selectedLimb = None
        self.PopulateControlHier()
        self.PopulateJointHier()
        self.PopulateGroupHier()

        if not limbIDStrs:
            return

        self._selectedLimb = self._limbIDs[limbIDStrs[0]]
        self.PopulateControlHier()
        self.PopulateJointHier()
        self.PopulateGroupHier()
        
        # self._selectedLimbs = [self._limbIDs[ID] for ID in limbIDStrs]
        # for limb in self._selectedLimbs:
        #     log.debug('\t\t' + limb.pfrsName.get())
        # if len(self._selectedLimbs) == 1:
        #     limb = self._selectedLimbs[0]
        #     self._rigRoot = pm.listConnections(limb.rigRoot)[0]
        #     self.PopulateControlHier(limb)
        #     self.PopulateLimbProperties(limb)
        #     self.PopulateControlMaterials(self._rigRoot)
        #     self.PopulateControlShapes()

#=========== CONTROL HIER ====================================

    def PopulateControlHier(self):
        log.funcFileDebug()
        pm.treeView(self.control_tv, e=1, removeAll=1)
        if not self._selectedLimb:
            return
        self._limbGroups = uiUtil.PopulateControlHier(self.control_tv, 
                                                    self._selectedLimb)
        
    def SelectedControl(self):
        log.funcFileDebug()
        # groupIDStr = pm.treeView(self.control_tv, q=1, selectItem=1)
        # if groupIDStr and self._rigRoot.rigMode.get() == 0:
        #     group = self._limbGroups[groupIDStr[0]]
        #     control = pm.listConnections(group.control)[0]
        #     log.info('\t"%s"'% control)
        #     pm.select(control)
        # else:
        #     pm.select(d=1)

#=========== JOINT HIER ====================================

    def PopulateJointHier(self):
        log.funcFileDebug()
        pm.treeView(self.joint_tv, e=1, removeAll=1)
        if not self._selectedLimb:
            return
        self._jointIDs = uiUtil.PopulateJointHier(self.joint_tv, 
                                                    self._selectedLimb)
        
    def SelectedControl(self):
        log.funcFileDebug()

#=========== GROUP HIER ====================================

    def PopulateGroupHier(self):
        log.funcFileDebug()
        pm.treeView(self.group_tv, e=1, removeAll=1)
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

    def SelectedControl(self):
        log.funcFileDebug()


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"


                        