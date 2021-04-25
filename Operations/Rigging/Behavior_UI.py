
import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import Behavior as bhv
reload(bhv)
import Common.UI_Utilities as uiUtil
reload(uiUtil)
# import Common.General_Utilities as genUtil
# reload(genUtil)
import Common.Logger as log
reload(log)
import Data.Rig_Data as rigData
reload(rigData)
import Popups.EditPresets as editPst
reload(editPst)

import SceneData.RigRoot as rrt
reload(rrt)
import SceneData.Behavior_Manager as bhvMng
reload(bhvMng)

class Behavior_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Behavior'
    orderIndex = 200
    operation = bhv.Behavior()
    def __init__(self):
        self._bhvNames = []
        self._currentBhv = None # for verifying group selection
        self._selectedLimbs = []
        self._presets = {} # preset_name : presetRoot
        self._presetsUI = []

    def Setup_UI(self, rigRoot, allRigRoots):  # Return nothing, parent should cleanup
        self._Setup()
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self.PopulateLimbHier()
        self.PopulatePresets()
        
#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limbs', bv=1):
                tt = '- MMB + Drag + Drop to reparent'
                tt += '\n- Red Dots indicate Empty Limbs'
                tt += '\n- Double Click to rename Empty Limbs'
                self.limb_tv = pm.treeView(nb=1, ann=tt, enk=1)
                pm.treeView(self.limb_tv, e=1, scc=self.SelectedLimb,
                                                # sc=self.ValidateSelection,
                                                elc=self.RenameLimb,
                                                dad=self.ReparentLimb)
                with pm.popupMenu() as self.rmb_ui:
                    self._addEmpty_mi = pm.menuItem(l='Add Empty Limb', 
                                                en=0, c=self.AddEmptyLimb)
                    self._removeEmpty_mi = pm.menuItem(l='Remove Empty Limb', 
                                                en=0, c=self.RemoveEmptyLimb)
                    pm.menuItem(d=1)
                    self._loadSkel_mi = pm.menuItem(l='Load Skeletal Hierarchy', 
                                                en=0, c=self.LoadSkeletalHierarchy)
                    pm.menuItem(l='PRESETS', d=1)
                    self._savePreset_mi = pm.menuItem(l='Save Preset', 
                                                en=0, c=self.SavePreset)
                    pm.menuItem(l='Edit Presets', c=self.EditPresets)
                    pm.menuItem(l='APPLY PRESET', en=0, d=1)
            with pm.frameLayout('Controls', bv=1):
                tt = 'DOT = pivot is moveable!'
                tt += '\nDimmed = Disabled group'
                self.control_tv = pm.treeView(arp=0, adr=0, ams=0, ann=tt,
                                            elc=self.IgnoreRename)
                pm.treeView(self.control_tv, e=1, scc=self.SelectedControl)
        with pm.verticalLayout():
            with pm.frameLayout('Limb Properties', bv=1, en=0) as self.limbProp_fl:
                with pm.columnLayout(adj=1) as self.bhvLimbProp_cl:
                    with pm.columnLayout(co=('left', -100)):
                        self.enableLimb_cg = pm.attrControlGrp(l='Enable Limb',
                                                        a='perspShape.shakeEnabled')
                    self.bhvType_om = pm.optionMenu(l='Bhv Type', 
                                                    cc=self.SetBhvType)
                    self.grpParent_at = pm.attrEnumOptionMenu(  l='Parent Joint', 
                                                                at='perspShape.filmFit')
            with pm.frameLayout('Behavior Properties', bv=1, en=0) as self.bhvProp_fl:
                self.bhvProp_cl = pm.columnLayout(adj=1)

#=========== LIMB HIER ====================================

    def LoadSkeletalHierarchy(self, ignore):
        log.funcFileDebug()
        limb = self._selectedLimbs[0]
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        self.operation.LoadSkeletalHierarchy(rigRoot)
        self.PopulateLimbHier()
        self.PopulateControlHier(None)
        self.PopulateLimbProperties(None)
        self.PopulateBhvProperties(None)

    def PopulateLimbHier(self, selectLimb=None):
        log.funcFileDebug()
        self._limbIDs = uiUtil.PopulateLimbHier(self.limb_tv, 
                                                self._rigRoot,
                                                self._allRigRoots)
        if not selectLimb:
            return
        for limbID, limb in self._limbIDs.items():
            if limb == selectLimb:
                pm.treeView(self.limb_tv, e=1, si=(limbID, 1))

    def SelectedLimb(self):
        log.funcFileInfo()
        pm.menuItem(self._savePreset_mi, e=1, en=0)
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        self.PopulateLimbProperties(None)
        self.PopulateControlHier(None)
        self.PopulateBhvProperties(None)
        pm.menuItem(self._addEmpty_mi, e=1, en=0)
        pm.menuItem(self._removeEmpty_mi, e=1, en=0)
        pm.menuItem(self._loadSkel_mi, e=1, en=0)
        pm.menuItem(self._savePreset_mi, e=1, en=0)
        # Depop Group Prop
        if not limbIDStrs:
            return
        pm.menuItem(self._savePreset_mi, e=1, en=1)
        self._selectedLimbs = [self._limbIDs[ID] for ID in limbIDStrs]
        for limb in self._selectedLimbs:
            log.debug('\t\t' + limb.pfrsName.get())
        if len(self._selectedLimbs) == 1:
            pm.menuItem(self._addEmpty_mi, e=1, en=1)
            limb = self._selectedLimbs[0]
            pm.select(pm.listConnections(limb.usedGroups))
            self.PopulateLimbProperties(limb)
            self.PopulateControlHier(limb)
            self.PopulateBhvProperties(limb)
            pm.menuItem(self._loadSkel_mi, e=1, en=1)
            if limb.limbType.get() == 0: # Empty
                pm.menuItem(self._removeEmpty_mi, e=1, en=1)

    def ReparentLimb(self, limbIDsStr, oldParents, i2, newParentIDStr, i3, i4, i5):
        log.funcFileInfo()
        if oldParents[0] == newParentIDStr:
            return
        child = self._limbIDs[limbIDsStr[0]]
        name = child.pfrsName.get()
        if newParentIDStr:
            parent = self._limbIDs[newParentIDStr]
            msg = '"%s" to "%s"' % (name, parent.pfrsName.get())
            log.info(msg)
        else:
            parent = None
            log.info('"%s" to world' % name)
        self.operation.ReparentLimb(child, parent)
        # self.PopulateLimbProperties(child)
        # self.jntMng.UpdateLimbParentJoint(child)
    
    def AddEmptyLimb(self, ignore):
        log.funcFileInfo()
        limb = self._selectedLimbs[0]
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        newLimb = self.operation.AddEmptyLimb(rigRoot)
        self.PopulateLimbHier(newLimb)
        self.PopulateLimbProperties(newLimb)
        self.PopulateControlHier(newLimb)
        self.PopulateBhvProperties(newLimb)
        self._selectedLimbs = [newLimb]
        pm.menuItem(self._removeEmpty_mi, e=1, en=1)

    def RemoveEmptyLimb(self, ignore):
        log.funcFileInfo()
        limb = self._selectedLimbs[0]
        self.operation.RemoveEmptyLimb(limb)
        self.PopulateLimbHier()
        self.PopulateLimbProperties(None)
        self.PopulateControlHier(None)
        self.PopulateBhvProperties(None)
        pm.menuItem(self._addEmpty_mi, e=1, en=0)
        pm.menuItem(self._removeEmpty_mi, e=1, en=0)

    def RenameLimb(self, limbIDStr, newName):
        log.funcFileInfo()
        limb = self._limbIDs[limbIDStr]
        if limb.limbType.get() != 0:
            return ''
        oldName = limb.pfrsName.get()
        msg = '\t"%s" to "%s"' % (oldName, newName)
        log.info(msg)
        if self.operation.RenameLimb(limb, newName):
            self.PopulateLimbHier(limb)
            pm.menuItem(self._addEmpty_mi, e=1, en=0)
            pm.menuItem(self._removeEmpty_mi, e=1, en=0)
        return ''

    def SavePreset(self, ignore):
        log.funcFileInfo()
        result = pm.promptDialog(
                title='Save Preset',
                message='New Preset Name:',
                button=['OK', 'Cancel'],
                defaultButton='OK',
                cancelButton='Cancel',
                dismissString='Cancel')
        if result == 'Cancel':
            return
            
        presetName = pm.promptDialog(query=True, text=True)
        self.operation.SavePreset(presetName, self._rigRoot, 
                                        self._selectedLimbs)
        self.PopulatePresets()

    def ApplyPreset(self, preset):
        log.funcFileInfo()
        self.operation.ApplyPreset(preset)
        self._selectedLimbs = []
        self.PopulateLimbHier()
        self.PopulateControlHier(None)
        self.PopulateLimbProperties(None)
        self.PopulateBhvProperties(None)

    def EditPresets(self, ignore):
        log.funcFileDebug()
        editPst.EditPresets(self._rigRoot, self.operation)
        self.PopulatePresets()

    def PopulatePresets(self):
        log.funcFileInfo()
        if self._presetsUI:
            pm.deleteUI(self._presetsUI)
            self._presetsUI = []
        for preset in sorted(pm.listConnections(self._rigRoot.presets)):
            presetName = preset.presetName.get()
            item = pm.menuItem(l=presetName, p=self.rmb_ui, 
                            c=pm.Callback(self.ApplyPreset, preset))
            self._presetsUI.append(item)

#=========== CONTROL HIER ====================================

    def PopulateControlHier(self, limb):
        log.funcFileDebug()
        pm.treeView(self.control_tv, e=1, removeAll=1)
        if not limb:
            return
        self._limbGroups = uiUtil.PopulateControlHier(self.control_tv, 
                                                    limb)
        if self._currentBhv.groupMoveable:
            for groupID in list(self._limbGroups.keys()):
                pm.treeView(self.control_tv, e=1, orc=(groupID, 0, 1, 0),
                                            ornament=(groupID, 1, 0, 3))
        
    def IgnoreRename(self, idStr, newName):
        return ''

    def SelectedControl(self):
        log.funcFileInfo()
        groupIDStr = pm.treeView(self.control_tv, q=1, selectItem=1)
        if groupIDStr:
            group = self._limbGroups[groupIDStr[0]]
            msg = '\t"%s"'% group
            log.info(msg)
            if self._currentBhv.groupMoveable:
                pm.select(group)
            else:
                pm.select(d=1)
        else:
            pm.select(d=1)

#=========== LIMB PROPERTIES ====================================

    def PopulateBehaviorsOptionMenu(self, limb):
        log.funcFileDebug()
        pm.optionMenu(self.bhvType_om, e=1, dai=1)
        self._bhvNames = []
        bhvFile = limb.bhvFile.get()
        limbType = limb.limbType.get()
        limbBhvName = ''
        orderedBhvs = {}
        for bhvFiles in list(bhvMng.Behavior_Manager.bhvFiles.values()):
            bhv = bhvMng.Behavior_Manager.bhvs[bhvFiles[-1]]
            if bhvFile in bhvFiles:
                limbBhvName = bhv.bhvName
            orderedBhvs[bhv.orderIndex] = bhv
        index = 0
        for priority in sorted(list(orderedBhvs.keys())):
            bhv = orderedBhvs[priority]
            bhvName = bhv.bhvName
            if limbType in bhv.validLimbTypes:
                pm.menuItem(l=bhvName, p=self.bhvType_om)
                self._bhvNames.append(bhvName)
                index += 1
            if bhvName == limbBhvName:
                pm.optionMenu(self.bhvType_om, e=1, sl=index)
        self._currentBhv = bhvMng.Behavior_Manager.bhvs[bhvFile]

    def SetBhvType(self, bhvType):
        log.funcFileInfo()
        limb = self._selectedLimbs[0]
        self._currentBhv = self.operation.SetLimbBehaviorType(limb, 
                                                            bhvType)
        self.PopulateControlHier(limb)
        self.PopulateBhvProperties(limb)

    def PopulateLimbProperties(self, limb):
        log.funcFileDebug()
        pm.frameLayout(self.limbProp_fl, e=1, en=bool(limb))
        if not limb:
            return
        self.PopulateBehaviorsOptionMenu(limb)
        pm.attrControlGrp(  self.enableLimb_cg, e=1, 
                                a=limb.enableLimb,
                                cc=pm.Callback(self.SetEnableLimb))
        pm.deleteUI(self.grpParent_at)
        self.grpParent_at = pm.attrEnumOptionMenu(  self.grpParent_at, 
                                                    l='Parent Control', 
                                                    p=self.bhvLimbProp_cl,
                                                    at=limb.limbParentControl,
                                                    cc=self.LogGroupParent)

    def SetEnableLimb(self):
        limb = self._selectedLimbs[0]
        root = pm.listConnections(limb.rigRoot)[0]
        enable = limb.enableLimb.get()
        limbID = '%d_%d' % (root.ID.get(), limb.ID.get())
        pm.treeView(self.limb_tv, e=1, enl=(limbID, enable))

    def LogGroupParent(self, name):
        msg = '\tSET GROUP PARENT to "%s"' % name
        log.info(msg)
    
#=========== BEHAVIOR PROPERTIES ====================================

    def PopulateBhvProperties(self, limb):
        log.funcFileDebug()
        pm.frameLayout(self.bhvProp_fl, e=1, en=0)
        if not limb:
            return
        pm.deleteUI(self.bhvProp_cl)
        with pm.columnLayout(adj=1, p=self.bhvProp_fl) as self.bhvProp_cl:
            enable = self._currentBhv.Setup_Editable_Limb_UI(limb)
        pm.frameLayout(self.bhvProp_fl, e=1, en=enable)

