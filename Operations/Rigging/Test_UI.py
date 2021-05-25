
import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import Test as tst
reload (tst)
import Utilities.UI_Utilities as uiUtil
reload(uiUtil)
import Utilities.Logger as log
reload(log)

class Test_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Test'
    orderIndex = 500
    operation = tst.Test()
    
    def Setup_UI(self, rigRoot, allRigRoots):
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._Setup()
        self.PopulateLimbHier()

    def Teardown_UI(self, rigRoot, allRigRoots):
        pass

#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limbs', bv=1):
                self.limb_tv = pm.treeView(ams=0, adr=0, arp=0, nb=1, enk=1,
                                            elc=self.IgnoreRename)
                pm.treeView(self.limb_tv, e=1, scc=self.SelectedLimb)
            with pm.frameLayout('Controls', bv=1):
                self.control_tv = pm.treeView(arp=0, adr=0, ams=0,
                                            elc=self.IgnoreRename)
                pm.treeView(self.control_tv, e=1, scc=self.SelectedControl)
        with pm.verticalLayout():
            with pm.frameLayout('Ignore me!', bv=1, en=0):
                pm.text(l="You're breathtaking!")

#=========== LIMB HIER ====================================
   
    def PopulateLimbHier(self):
        log.funcFileDebug()
        self.PopulateControlHier(None)
        self._limbIDs = uiUtil.PopulateLimbHier(self.limb_tv, 
                                                self._rigRoot,
                                                self._allRigRoots)

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

    def SelectedLimb(self):
        log.funcFileInfo()
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        self.PopulateControlHier(None)
        if not limbIDStrs:
            pm.select(d=1)
            return
        self._selectedLimbs = [self._limbIDs[ID] for ID in limbIDStrs]
        # controls = []
        for limb in self._selectedLimbs:
            log.debug('\t\t' + limb.pfrsName.get())
            # for group in pm.listConnections(limb.usedGroups):
            #     controls += pm.listConnections(group.control)
        if len(self._selectedLimbs) == 1:
            limb = self._selectedLimbs[0]
            self.PopulateControlHier(limb)
        # pm.select(controls)
        pm.select(self._selectedLimbs)

#=========== CONTROL HIER ====================================

    def PopulateControlHier(self, limb):
        log.funcFileDebug()
        pm.treeView(self.control_tv, e=1, removeAll=1)
        if not limb:
            return
        self._limbGroups = uiUtil.PopulateControlHier(self.control_tv, 
                                                    limb)
        
    def SelectedControl(self):
        log.funcFileDebug()
        groupIDStr = pm.treeView(self.control_tv, q=1, selectItem=1)
        if groupIDStr:
            group = self._limbGroups[groupIDStr[0]]
            control = pm.listConnections(group.control)[0]
            log.info('\t"%s"'% control)
            pm.select(control)
        else:
            pm.select(d=1)