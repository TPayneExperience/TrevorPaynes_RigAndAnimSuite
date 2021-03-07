
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)
import Rigging.Popups.POPUP_EditPresets as editPst
reload(editPst)


class RIG_BHV_Limb_Hierarchy_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
        self.rigBHV = parent.rigBHV
        self.grpMng = parent.grpMng
        self.nameMng = parent.nameMng
        self.logger = parent.logger
        self.pfrs = parent.pfrs
        self.rootMng = self.pfrs.rootMng
        self.pstMng = parent.pfrs.pstMng

        self._limbs = {} # rootID_limbID : limb
        self._validLimbs = []
        self._presets = {} # preset_name : presetRoot
        self._presetsUI = []
        self._presetToDelete = None
        self.rmb_ui = None

        self._Setup()

    def Populate(self): 
        self.logger.debug('\tBhv_LimbHier > Populate')
        # SAME AS APP LIMB HIER
        pm.treeView(self.widget, e=1, removeAll=1)
        curRoot = self.pfrs.root
        self._limbs = {}
        self._validLimbs = []
        rootLimbs = []
        for root in self.rootMng.GetSceneRoots():
            rootLimbs += self.limbMng.GetRootLimbs(root)
        for rootLimb in rootLimbs[::-1]:
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                self.logger.debug('\t\tlimb ' + str(limb))
                root = pm.listConnections(limb.rigRoot)[0]
                self.logger.debug('\t\troot ' + str(root))
                rootID = root.ID.get()
                prefix = root.prefix.get()
                self.logger.debug('\t\tprefix ' + str(prefix))
                limbID = '%d_%d' % (rootID, limb.ID.get())
                self.logger.debug('\t\tlimbid ' + str(limbID))
                self._limbs[limbID] = limb
                name = '%s_%s' % (prefix, limb.pfrsName.get())
                self.logger.debug('\t\tname ' + str(name))
                parent = pm.listConnections(limb.limbParent)
                parentID = ''
                if parent:
                    parent = parent[0]
                    parentRoot = pm.listConnections(parent.rigRoot)[0]
                    parentRootID = parentRoot.ID.get()
                    parentID = '%d_%d' % (parentRootID, parent.ID.get())
                if root.rigMode.get() == 0: # Setup Rig
                    enable = limb.enableLimb.get()
                elif root.rigMode.get() == 1: # Animate Rig
                    enable = (root == curRoot)
                pm.treeView(self.widget, e=1, ai=(limbID, parentID))
                pm.treeView(self.widget, e=1, enl=(limbID, enable))
                pm.treeView(self.widget, e=1, dl=(limbID, name))
                side = rigData.LIMB_SIDES[limb.side.get()]
                if (side == 'L'):
                    pm.treeView(self.widget, e=1, bti=(limbID, 1, side),
                            lbc=(limbID, 0.1, 0.1, 0.3))
                elif (side == 'R'):
                    pm.treeView(self.widget, e=1, bti=(limbID, 1, side),
                            lbc=(limbID, 0.3, 0.1, 0.1))
                else:
                    pm.treeView(self.widget, e=1, bvf=(limbID, 1, 0))
                # NOT IN APP HIER
                if limb.bhvType.get() in rigData.EMPTY_BHV_INDEXES:
                    pm.treeView(self.widget, e=1, ornament=(limbID, 1, 0, 3))
                self.logger.debug('\t\t---- LIMB COMPLETE ----\n')
        # self.PopulateRMB()

#=========== SETUP ====================================

    def _Setup(self):
        msg = '- MMB + Drag + Drop to reparent'
        msg += '\n- Red Dots indicate Empty Limbs'
        msg += '\n- Double Click to rename Empty Limbs'
        self.widget = pm.treeView(nb=1, ann=msg, enk=1)
        pm.treeView(self.widget, e=1, scc=self.SelectionChanged,
                                        sc=self.ValidateSelection,
                                        elc=self.RenameLimb,
                                        dad=self.ReparentLimb)
        with pm.popupMenu() as self.rmb_ui:
            pm.menuItem(l='Add Empty Limb', c=self.AddEmptyRigLimb)
            self.remove_mi = pm.menuItem(l='Remove Empty Rig Limb', 
                                        en=0, c=self.RemoveEmptyLimb)
            pm.menuItem(d=1)
            pm.menuItem(l='Load Skeleton Hierarchy', c=self.LoadSkelHier)
            pm.menuItem(l='PRESETS', d=1)
            pm.menuItem(l='Save Preset', c=self.SavePreset)
            pm.menuItem(l='Edit Presets', c=self.EditPresets)
            pm.menuItem(l='APPLY PRESET', d=1)

#=========== FUNCTIONS ====================================

    def LoadSkelHier(self, ignore):
        self.logger.info('\tLimbHier > LOAD SKELETON hierarchy')
        self.limbMng.ParentLimbsBySkeleton()
        self.parent.Populate()

    def ValidateSelection(self, limbIDStr, itemNum):
        limb = self._limbs[limbIDStr]
        root = pm.listConnections(limb.rigRoot)[0]
        return self.pfrs.root == root

    def SelectionChanged(self):
        self.logger.info('\tBhv_LimbHier > SelectionChanged')
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if not limbIDStrs:
            self.logger.info('\t\tDeselected Limbs')
            self.parent.LimbSelected(None)
            return
        pm.menuItem(self.remove_mi, e=1, en=bool(limbIDStrs))
        limb = self._limbs[limbIDStrs[0]]
        msg = '\t\tSELECTED limb "%s"'% limb.pfrsName.get()
        self.logger.info(msg)
        self.parent.LimbSelected(limb)

    def ReparentLimb(self, limbIDsStr, oldParents, i2, newParentIDStr, i3, i4, i5):
        self.logger.info('\tBhv_LimbHier > ReparentLimb')
        if oldParents[0] == newParentIDStr:
            return
        child = self._limbs[limbIDsStr[0]]
        name = child.pfrsName.get()
        if newParentIDStr:
            parent = self._limbs[newParentIDStr]
            msg = '\tLimbHier > REPARENTING '
            msg += '"%s" to "%s"' % (name, parent.pfrsName.get())
            self.logger.info(msg)
        else:
            parent = None
            self.logger.info('\tLimbHier > REPARENTING "%s" to world' % name)
        self.limbMng.ReparentLimb(child, parent)
        # self.jntMng.UpdateLimbParentJoint(child)
    
    def RenameLimb(self, limbIDStr, newName):
        self.logger.info('\tBhv_LimbHier > RenameLimb')
        limb = self._limbs[limbIDStr]
        # if limb.bhvType.get() not in self.rigBHV.emptyLimbIndexes:
        if limb.bhvType.get() not in rigData.EMPTY_BHV_INDEXES:
            return ''
        oldName = limb.pfrsName.get()
        msg = '\tLimbHier > RENAMING "%s" to "%s"' % (oldName, newName)
        self.logger.info(msg)

        if not self.nameMng.IsValidCharacterLength(newName):
            return ''
        if not self.nameMng.DoesNotStartWithNumber(newName):
            return ''
        if not self.nameMng.AreAllValidCharacters(newName):
            return ''
        if not self.limbMng.RenameLimb(limb, newName):
            msg = '**** Two limbs MAX may have same name'
            self.logger.error(msg)
        group = pm.listConnections(limb.bhvEmptyGroup)[0]
        self.grpMng.UpdateGroupName(group)
        self.Populate()
        return ''

#=========== RMB ====================================

    def AddEmptyRigLimb(self, ignore):
        self.limbMng.AddEmptyRigLimb()
        self.Populate()

    def RemoveEmptyLimb(self, ignore):
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        limb = self._limbs[limbIDStrs[0]]
        self.limbMng.RemoveEmptyLimb(limb)
        self.Populate()

#=========== MISC ====================================

    def SetEnableLimb(self, limb):
        root = pm.listConnections(limb.rigRoot)[0]
        enable = limb.enableLimb.get()
        limbID = '%d_%d' % (root.ID.get(), limb.ID.get())
        pm.treeView(self.widget, e=1, enl=(limbID, enable))

#=========== PRESET ====================================

    def EditPresets(self, ignore):
        editPst.POPUP_EditPresets(self)
        self.PopulateRMB()

    def PopulateRMB(self):
        self.logger.debug('\tBhv_LimbHier > PopulateRMB')
        if self._presetsUI:
            pm.deleteUI(self._presetsUI)
            self._presetsUI = []
        self._presets = {}
        presets = sorted(pm.listConnections(self.pfrs.root.presets))
        for preset in presets:
            shortName = preset.shortName()
            self._presets[shortName] = preset
            presetName = preset.presetName.get()
            item = pm.menuItem(l=presetName, p=self.rmb_ui, 
                            c=pm.Callback(self.ApplyPreset, shortName))
            self._presetsUI.append(item)

    def SavePreset(self, ignore):
        self.logger.info('\tBhv_LimbHier > SavePreset')
        result = pm.promptDialog(
                title='Save Preset',
                message='New Preset Name:',
                button=['OK', 'Cancel'],
                defaultButton='OK',
                cancelButton='Cancel',
                dismissString='Cancel')
        if result == 'Cancel':
            return
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        limbs = [self._limbs[ID] for ID in limbIDStrs]
        presetName = pm.promptDialog(query=True, text=True)
        
        self.pstMng.SavePreset(presetName, limbs)
        self.PopulateRMB()
    
    def ApplyPreset(self, presetName):
        self.logger.info('\tBhv_LimbHier > ApplyPreset')
        preset = self._presets[presetName]
        self.pstMng.ApplyPreset(preset)
        self.parent.Populate()















































