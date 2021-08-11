
import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import ANM_Behavior as bhv
reload(bhv)
import Utilities.UI_Utilities as uiUtil
reload(uiUtil)
import Utilities.Logger as log
reload(log)

class ANM_Behavior_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Behavior'
    uiOrderIndex = 110
    operation = bhv.ANM_Behavior()
    def __init__(self):
        self._currentBhv = None # for verifying group selection
        self._presetsUI = []
        self._selectedLimbs = []

    def Setup_UI(self, rigRoot, allRigRoots):  # Return nothing, parent should cleanup
        self._Setup()
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._presetsUI = []
        self._selectedLimbs = []
        self._currentBhv = None # for verifying group selection
        self.PopulateLimbHierNormal()
        self.PopulatePresets()
        
    def Teardown_UI(self):
        pass

#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limbs', bv=1):
                self.limb_tv = pm.treeView(ams=0, adr=0, arp=0, nb=1, enk=1)
                pm.treeView(self.limb_tv, e=1, scc=self.SelectedLimb,
                                                elc=self.IgnoreRename)
                with pm.popupMenu() as self.rmb_ui:
                    self.kfOnly_mi = pm.menuItem(l='Copy Keyframes Only', cb=0)
                    pm.menuItem(l='APPLY PRESET', en=0, d=1)
            with pm.frameLayout('Controls', bv=1):
                self.control_tv = pm.treeView(arp=0, adr=0, ams=0,
                                            elc=self.IgnoreRename)
                pm.treeView(self.control_tv, e=1, scc=self.SelectedControl)
        with pm.verticalLayout():
            msg = 'Limb Properties'
            with pm.frameLayout(l=msg, bv=1, en=0) as self.limbProp_fl:
                with pm.columnLayout(adj=1, rs=5) as self.bhvLimbProp_cl:
                    pm.text('(EDIT in RIGGING Category)')
                    pm.text('(Select Limb to key bhv attrs)')
                    with pm.columnLayout(co=('left', -100)):
                        self.enableLimb_cg = pm.attrControlGrp(
                                                l='Enable Limb',
                                                a='perspShape.shakeEnabled')
                    self.bhvType_l = pm.text(l='Bhv Type: ')
                    self.grpParent_at = pm.attrEnumOptionMenu(  
                                                l='Parent Joint', 
                                                at='perspShape.filmFit')
            msg = 'Behavior Properties'
            with pm.frameLayout(l=msg, bv=1, en=0) as self.bhvProp_fl:
                self.bhvProp_cl = pm.columnLayout(adj=1)

#=========== LIMB HIER ====================================

    def IgnoreRename(self, idStr, newName):
        return ''

    def PopulateLimbHierNormal(self, selectLimb=None):
        log.funcFileDebug()
        self._limbIDs = uiUtil.PopulateLimbHierNormal(self.limb_tv, 
                                                self._rigRoot,
                                                self._allRigRoots)
        if not selectLimb:
            return
        for limbID, limb in self._limbIDs.items():
            if limb == selectLimb:
                pm.treeView(self.limb_tv, e=1, si=(limbID, 1))

    def SelectedLimb(self):
        log.funcFileInfo()
        self.PopulateLimbProperties(None)
        self.PopulateControlHier(None)
        self.PopulateBhvProperties(None)
        self.PopulatePresets()
        self._rigRoot = None
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        self._selectedLimbs = []
        self._currentBhv = None
        if not limbIDStrs:
            return
        self._selectedLimbs = [self._limbIDs[ID] for ID in limbIDStrs]
        limb = self._selectedLimbs[0]
        self._rigRoot = pm.listConnections(limb.rigRoot)[0]
        self.PopulatePresets()
        for limb in self._selectedLimbs:
            log.debug('\t\t' + limb.pfrsName.get())
        if len(self._selectedLimbs) == 1:
            limb = self._selectedLimbs[0]
            bhvFile = limb.bhvFile.get()
            self._currentBhv = self.operation.bhvMng.bhvs[bhvFile]
            self.PopulateLimbProperties(limb)
            self.PopulateControlHier(limb)
            self.PopulateBhvProperties(limb)
        pm.select(self._selectedLimbs)

    def ApplyPreset(self, presetID):
        log.funcFileInfo()
        # warn if going to lose data:
        allPresets = pm.listConnections(self._rigRoot.presets)
        presets = [p for p in allPresets if p.ID.get() == presetID]
        willLoseData = False
        for preset in presets:
            bhvFile = preset.bhvFile.get()
            bhv = self.operation.bhvMng.bhvs[bhvFile]
            if bhv.bakeLosesData:
                willLoseData = True
        if willLoseData:
            msg = 'Applying this preset may result in '
            msg += '\nkeyframe data loss. Proceed?'
            result = pm.confirmDialog(
                            t='Apply Preset Baking Warning', 
                            icon='warning', 
                            m=msg, 
                            b=['Ok', 'Cancel'], 
                            db='Ok', 
                            cb='Cancel', 
                            ds='Cancel')
            if result == 'Cancel':
                return
        kfOnly = pm.menuItem(self.kfOnly_mi, q=1, cb=1)
        self.operation.ApplyPreset(self._rigRoot, presetID, kfOnly)
        self._selectedLimbs = []
        self.PopulateLimbHierNormal()
        self.PopulateControlHier(None)
        self.PopulateLimbProperties(None)
        self.PopulateBhvProperties(None)

    def PopulatePresets(self):
        log.funcFileInfo()
        if self._presetsUI:
            pm.deleteUI(self._presetsUI)
            self._presetsUI = []
        if not self._selectedLimbs:
            return
        presetIDs = {}
        for limb in self._selectedLimbs:
            for preset in pm.listConnections(limb.presets):
                presetIDs[preset.ID.get()] = preset.presetName.get()
        for presetID in sorted(list(presetIDs.keys())):
            presetName = presetIDs[presetID]
            item = pm.menuItem(l=presetName, p=self.rmb_ui, 
                            c=pm.Callback(self.ApplyPreset, presetID))
            self._presetsUI.append(item)


#=========== CONTROL HIER ====================================

    def PopulateControlHier(self, limb):
        log.funcFileDebug()
        pm.treeView(self.control_tv, e=1, removeAll=1)
        if not limb:
            return
        self._limbGroups = uiUtil.PopulateControlHier(self.control_tv, 
                                                    limb)
        
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

#=========== LIMB PROPERTIES ====================================

    def PopulateLimbProperties(self, limb):
        log.funcFileDebug()
        if not limb:
            return
        msg = 'BhvType: ' + limb.bhvType.get()
        pm.text(self.bhvType_l, e=1, l=msg)
        pm.attrControlGrp(  self.enableLimb_cg, e=1, 
                                a=limb.enableLimb)
        pm.deleteUI(self.grpParent_at)
        self.grpParent_at = pm.attrEnumOptionMenu(  self.grpParent_at, 
                                                    l='Parent Control', 
                                                    p=self.bhvLimbProp_cl,
                                                    at=limb.limbParentJoint)

#=========== BEHAVIOR PROPERTIES ====================================

    def PopulateBhvProperties(self, limb):
        log.funcFileDebug()
        pm.frameLayout(self.bhvProp_fl, e=1, en=0)
        if not limb:
            return
        pm.deleteUI(self.bhvProp_cl)
        with pm.columnLayout(adj=1, p=self.bhvProp_fl) as self.bhvProp_cl:
            enable = self._currentBhv.Setup_Animation_Limb_UI(limb)
        pm.frameLayout(self.bhvProp_fl, e=1, en=enable)


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
