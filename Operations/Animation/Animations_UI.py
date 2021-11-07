
from collections import OrderedDict
import os

import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
import Operations.Animation.Animations as anm
import Utilities.UI_Utilities as uiUtil
import Utilities.General_Utilities as genUtil
import Utilities.Logger as log

class Animation_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Animations'
    uiOrderIndex = 310
    operation = anm.Animations()

    def __init__(self):
        self._limbIDs = OrderedDict() # limbID : limb

    def Setup_UI(self, rigRoot, allRigRoots, pfrsUI): 
        self._Setup()
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._selectedLimbs = []
        self.rigRoots = OrderedDict() # ID : rigRoot
        self.PopulateRigRootHier()
        
    def Teardown_UI(self):
        pass

#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Rig Roots', bv=1):
                self.rigRoot_tv = pm.treeView(adr=0, arp=0, ams=0)
                pm.treeView(self.rigRoot_tv, e=1, scc=self.SelectedRigRoot,
                                            elc=self.IgnoreRename)
            with pm.frameLayout('Limbs', bv=1):
                self.limb_tv = uiUtil.SetupLimbHier(self._limbIDs)
                pm.treeView(self.limb_tv, e=1, ams=1, elc=self.IgnoreRename,
                                            scc=self.SelectedLimb)
        with pm.verticalLayout():
            with pm.frameLayout('Options', bv=1, mw=5, mh=5):
                with pm.columnLayout(adj=1, rs=5):
                    pm.button(l='Delete Static Channels On Limb', c=self.DeleteStaticChannelsOnLimb)
                    pm.button(l='Remove Limb Animations', c=self.RemoveLimbAnimations)
            with pm.frameLayout('Import Animation', bv=1, mw=7, mh=7):
                with pm.columnLayout(adj=1, rs=5):
                    self.constraints_cb = pm.checkBoxGrp( ncb=3, l='  ',
                                                la3=['Position', 'Rotation', 'Scale'],
                                                va3=(1,1,1), cw4=(10,70,70,70),
                                                cc=self.ChangedConstraints)
                    self.import_b = pm.button(l='Import Animation', c=self.ImportAnimation)

#=========== RIG ROOT HIER ====================================
   
    def PopulateRigRootHier(self):
        log.funcFileDebug()
        self.rigRoots.clear()
        for rigRoot in genUtil.GetRigRoots():
            index = str(rigRoot.ID.get())
            name = rigRoot.pfrsName.get()
            pm.treeView(self.rigRoot_tv, e=1, addItem=(index, ''))
            pm.treeView(self.rigRoot_tv, e=1, displayLabel=(index, name))
            self.rigRoots[index] = rigRoot
        rigRootID = self._rigRoot.ID.get()
        pm.treeView(self.rigRoot_tv, e=1, selectItem=(rigRootID, 1))
        self.PopulateLimbHier()

    def SelectedRigRoot(self):
        log.funcFileInfo()
        rigRootIDStrs = pm.treeView(self.rigRoot_tv, q=1, selectItem=1)
        if not rigRootIDStrs:
            rigRootID = self._rigRoot.ID.get()
            pm.treeView(self.rigRoot_tv, e=1, selectItem=(rigRootID, 1))
            return
        self._rigRoot = self.rigRoots[rigRootIDStrs[0]]
        self.PopulateLimbHier()

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

#=========== LIMB HIER ====================================

    def PopulateLimbHier(self):
        log.funcFileDebug()
        pm.treeView(self.limb_tv, e=1, removeAll=1)
        self._limbIDs.clear()
        self._limbIDs.update(uiUtil.PopulateLimbHierNormal(self.limb_tv, 
                                                self._rigRoot,
                                                self._allRigRoots))
        self._selectedLimbs = list(self._limbIDs.values())
        for rigLimbID in list(self._limbIDs.keys()):
            pm.treeView(self.limb_tv, e=1, si=(rigLimbID, 1))

    def SelectedLimb(self):
        log.funcFileInfo()
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        if not limbIDStrs:
            for limb in self._selectedLimbs:
                rigRootID = self._rigRoot.ID.get()
                limbID = '%d_%d' % (rigRootID, limb.ID.get())
                pm.treeView(self.limb_tv, e=1, selectItem=(limbID, 1))
                return
        self._selectedLimbs = [self._limbIDs[ID] for ID in limbIDStrs]

#=========== MISC ====================================

    def DeleteStaticChannelsOnLimb(self, _):
        for limb in self._selectedLimbs:
            self.operation.DeleteStaticChannelsOnLimb(limb)

    def RemoveLimbAnimations(self, _):
        log.funcFileInfo()
        result = pm.confirmDialog(
                        t='Delete Animation', 
                        icon='warning', 
                        m='Remove control animation?', 
                        b=['Ok', 'Cancel'], 
                        db='Ok', 
                        cb='Cancel', 
                        ds='Cancel')
        if result == 'Ok':
            for limb in self._selectedLimbs:
                self.operation.RemoveLimbAnimations(limb)

#=========== PROPERTIES ====================================

    def ImportAnimation(self, _):
        log.funcFileInfo()
        curFile = pm.sceneName()
        result = pm.fileDialog2(fm=1, 
                                ff='PFRS Animation (*.pfa)', 
                                dir=os.path.dirname(curFile), 
                                cap='Import Animation',
                                okc='Import')
        if not result:
            return
        filePath = result[0]
        vals = pm.checkBoxGrp(self.constraints_cb, q=1, va3=1)
        self.operation.ImportAnimation(self._selectedLimbs, filePath,
                                        vals[0], vals[1], vals[2])

    def ChangedConstraints(self, _):
        log.funcFileInfo()
        self.UpdateApplyButton()

    def UpdateApplyButton(self):
        isEnabled = any(pm.checkBoxGrp(self.constraints_cb, q=1, va3=1))
        pm.button(self.import_b, e=1, en=isEnabled)
            
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
