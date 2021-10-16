
from collections import OrderedDict
import imp

import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
#imp.reload(absOpUI)
import ANM_Tools as tls
#imp.reload(tls)
import Utilities.UI_Utilities as uiUtil
#imp.reload(uiUtil)
import Utilities.Logger as log
#imp.reload(log)

class ANM_Tools_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Tools'
    uiOrderIndex = 110
    operation = tls.ANM_Tools()
    def __init__(self):
        self._currentBhv = None # for verifying group selection
        self._selectedLimb = None
        self._limbIDs = OrderedDict()

    def Setup_UI(self, rigRoot, allRigRoots, pfrsUI):  # Return nothing, parent should cleanup
        self._Setup()
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._selectedLimb = None
        self._currentBhv = None # for verifying group selection
        self.PopulateLimbHier()
        
    def Teardown_UI(self):
        pass

#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limbs', bv=1):
                self.limb_tv = pm.treeView(ams=0, adr=0, arp=0, nb=1, enk=1)
                pm.treeView(self.limb_tv, e=1, scc=self.SelectedLimb,
                                                elc=self.IgnoreRename)
            with pm.frameLayout('Controls', bv=1):
                self.control_tv = pm.treeView(arp=0, adr=0, ams=0,
                                            elc=self.IgnoreRename)
                pm.treeView(self.control_tv, e=1, scc=self.SelectedControl)
        with pm.verticalLayout():
            msg = 'Behavior Properties'
            with pm.frameLayout(l=msg, bv=1, en=0, mw=7, mh=7) as self.bhvProp_fl:
                self.bhvProp_cl = pm.columnLayout(adj=1)

#=========== LIMB HIER ====================================

    def IgnoreRename(self, idStr, newName):
        return ''

    def PopulateLimbHier(self):
        log.funcFileDebug()
        self._limbIDs.clear()
        self._limbIDs.update(uiUtil.PopulateLimbHierNormal(self.limb_tv, 
                                                self._rigRoot,
                                                self._allRigRoots))
        if not self._selectedLimb:
            self._selectedLimb = list(self._limbIDs.values())[0]
            rigRootID = self._rigRoot.ID.get()
            limbID = '%d_%d' % (rigRootID, self._selectedLimb.ID.get())
            pm.treeView(self.limb_tv, e=1, selectItem=(limbID, 1))
            bhvFile = self._selectedLimb.bhvFile.get()
            self._currentBhv = self.operation.bhvMng.bhvs[bhvFile]
        self.PopulateBhvProperties()
        self.PopulateControlHier()

    def SelectedLimb(self):
        log.funcFileInfo()
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        if not limbIDStrs:
            rigRootID = self._rigRoot.ID.get()
            limbID = '%d_%d' % (rigRootID, self._selectedLimb.ID.get())
            pm.treeView(self.limb_tv, e=1, selectItem=(limbID, 1))
            return
        self._selectedLimb = self._limbIDs[limbIDStrs[0]]
        self._rigRoot = pm.listConnections(self._selectedLimb.rigRoot)[0]
        bhvFile = self._selectedLimb.bhvFile.get()
        self._currentBhv = self.operation.bhvMng.bhvs[bhvFile]
        self.PopulateControlHier()
        self.PopulateBhvProperties()
        pm.select(self._selectedLimb)


#=========== CONTROL HIER ====================================

    def PopulateControlHier(self):
        log.funcFileDebug()
        pm.treeView(self.control_tv, e=1, removeAll=1)
        self._limbGroups = uiUtil.PopulateControlHier(self.control_tv, 
                                                    self._selectedLimb)
        
    def SelectedControl(self):
        log.funcFileInfo()
        groupIDStr = pm.treeView(self.control_tv, q=1, selectItem=1)
        if groupIDStr:
            group = self._limbGroups[groupIDStr[0]]
            control = pm.listConnections(group.control)[0]
            log.info('\t"%s"'% control)
            pm.select(control)
        else:
            pm.select(d=1)

#=========== BEHAVIOR PROPERTIES ====================================

    def PopulateBhvProperties(self):
        log.funcFileDebug()
        pm.deleteUI(self.bhvProp_cl)
        limb = self._selectedLimb
        with pm.columnLayout(adj=1, p=self.bhvProp_fl) as self.bhvProp_cl:
            enable = self._currentBhv.Setup_AnimationTools_Limb_UI(limb)
        pm.frameLayout(self.bhvProp_fl, e=1, en=enable)


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
