
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)
import Rigging.Popups.POPUP_EditPresets as editPst
reload(editPst)


class ANM_POS_Limb_Hierarchy_UI:
    def __init__(self, parent):
        self.parent = parent
        self.pfrs = parent.pfrs
        self.anmPOS = parent.pfrs.anmPOS
        # self.posMng = parent.pfrs.posMng
        self.logger = parent.pfrs.logger
        self.rootMng = self.pfrs.rootMng
        self.limbMng = parent.pfrs.limbMng
        # self.jntMng = parent.pfrs.jntMng
        # self.grpMng = parent.pfrs.grpMng
        # self.nameMng = parent.pfrs.nameMng
        # self.pstMng = parent.pfrs.pstMng

        # self._limbs = {} # rootID_limbID : limb
        # self._validLimbs = []
        # self._presets = {} # preset_name : presetRoot
        # self._presetsUI = []
        # self._presetToDelete = None
        # self.rmb_ui = None

        self._Setup()

    def Populate(self): 
        self.logger.debug('\tPos_LimbHier > Populate')
        # SAME AS APP LIMB HIER
        pm.treeView(self.widget, e=1, removeAll=1)
        # pm.menuItem(self.savePreset_mi, e=1, en=0)
        curRoot = self.pfrs.root
        self._limbs = {}
        self._validLimbs = []
        rootLimbs = []
        for root in self.rootMng.GetSceneRoots():
            rootLimbs += self.limbMng.GetRootLimbs(root)
        for rootLimb in rootLimbs[::-1]:
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                root = pm.listConnections(limb.rigRoot)[0]
                rootID = root.ID.get()
                prefix = root.prefix.get()
                limbID = '%d_%d' % (rootID, limb.ID.get())
                self._limbs[limbID] = limb
                name = '%s_%s' % (prefix, limb.pfrsName.get())
                parent = pm.listConnections(limb.limbParent)
                parentID = ''
                if parent:
                    parent = parent[0]
                    parentRoot = pm.listConnections(parent.rigRoot)[0]
                    parentRootID = parentRoot.ID.get()
                    parentID = '%d_%d' % (parentRootID, parent.ID.get())
                if root.rigMode.get() == 0: # Setup Rig
                    enable = limb.enableLimb.get()
                elif root.rigMode.get() == 2: # Animate Rig
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

#=========== SETUP ====================================

    def _Setup(self):
        self.widget = pm.treeView(adr=0, arp=0, nb=1)
        pm.treeView(self.widget, e=1, scc=self.SelectionChanged,
                                        elc=self.IgnoreRename)#,
                                        # sc=self.ValidateSelection,
                                        # elc=self.RenameLimb,
                                        # dad=self.ReparentLimb)
        with pm.popupMenu() as self.rmb_ui:
            self.save_mi = pm.menuItem(l='Save Pose', en=0, c=self.SavePose)
            pm.menuItem(d=1)
            pm.menuItem(l='Set Poses Library Folder', c=self.SetPosesFolder)
            # pm.menuItem(l='Apply Presets???')
            # pm.menuItem(l='Add Empty Limb', c=self.AddEmptyRigLimb)
            # self.remove_mi = pm.menuItem(l='Remove Empty Limb', 
            #                             en=0, c=self.RemoveEmptyLimb)
            # pm.menuItem(d=1)
            # pm.menuItem(l='Load Skeleton Hierarchy', c=self.LoadSkelHier)
            # pm.menuItem(l='PRESETS', d=1)
            # self.savePreset_mi = pm.menuItem(l='Save Preset', en=0, c=self.SavePreset)
            # pm.menuItem(l='Edit Presets', c=self.EditPresets)
            # pm.menuItem(l='APPLY PRESET', d=1)

#=========== FUNCTIONS ====================================

    def SavePose(self, ignore):
        self.logger.info('\tPos_LimbHier > SavePose')
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        limbs = [self._limbs[limbStr] for limbStr in limbIDStrs]
        result = pm.promptDialog(
                title='Save Pose',
                message='New Pose Name:',
                button=['OK', 'Cancel'],
                defaultButton='OK',
                cancelButton='Cancel',
                dismissString='Cancel')
        if result == 'Cancel':
            return
        poseName = pm.promptDialog(q=1, tx=1)
        self.anmPOS.SavePose(poseName, limbs)
        self.parent.PoseSaved()

    def SetPosesFolder(self, ignore):
        self.logger.info('\tPos_LimbHier > SetPosesFolder')
        folder = self.pfrs.root.posesFolderPath.get()
        result = pm.fileDialog2(fm=3, dir=folder, 
                                cap='Set Pose Library Folder')
        if result:
            self.pfrs.root.posesFolderPath.set(result[0])

#     def ValidateSelection(self, limbIDStr, itemNum):
#         limb = self._limbs[limbIDStr]
#         root = pm.listConnections(limb.rigRoot)[0]
#         return self.pfrs.root == root

    def SelectionChanged(self):
        self.logger.info('\tPos_LimbHier > SelectionChanged')
        pm.menuItem(self.save_mi, e=1, en=0)
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if not limbIDStrs:
            self.logger.info('\t\tDeselected Limbs')
            self.parent.LimbsSelected(None)
            return
        limbs = [self._limbs[limbStr] for limbStr in limbIDStrs]
        parent = pm.listConnections(limbs[0].rigRoot)[0]
        for limb in limbs[1:]:
            if parent != pm.listConnections(limbs[0].rigRoot)[0]:
                self.parent.LimbsSelected(None)
                return
        pm.menuItem(self.save_mi, e=1, en=1)
        msg = '\t\tSELECTED limbs:'
        for limb in limbs:
            msg += '\n\t\t\t' + limb.pfrsName.get()
        self.logger.info(msg)
        self.parent.LimbsSelected(limbs)

    def IgnoreRename(self, idStr, newName):
        self.logger.debug('\tApp_CtrHier > IgnoreRename')
        return ''

# #=========== RMB ====================================

#     def AddEmptyRigLimb(self, ignore):
#         self.limbMng.AddEmptyRigLimb()
#         self.Populate()

#     def RemoveEmptyLimb(self, ignore):
#         limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
#         limb = self._limbs[limbIDStrs[0]]
#         self.limbMng.RemoveEmptyLimb(limb)
#         self.Populate()

# #=========== MISC ====================================

#     def SetEnableLimb(self, limb):
#         root = pm.listConnections(limb.rigRoot)[0]
#         enable = limb.enableLimb.get()
#         limbID = '%d_%d' % (root.ID.get(), limb.ID.get())
#         pm.treeView(self.widget, e=1, enl=(limbID, enable))

# #=========== PRESET ====================================

#     def EditPresets(self, ignore):
#         editPst.POPUP_EditPresets(self)
#         self.PopulateRMB()

#     def PopulateRMB(self):
#         self.logger.debug('\tPos_LimbHier > PopulateRMB')
#         if self._presetsUI:
#             pm.deleteUI(self._presetsUI)
#             self._presetsUI = []
#         self._presets = {}
#         presets = sorted(pm.listConnections(self.pfrs.root.presets))
#         for preset in presets:
#             shortName = preset.shortName()
#             self._presets[shortName] = preset
#             presetName = preset.presetName.get()
#             item = pm.menuItem(l=presetName, p=self.rmb_ui, 
#                             c=pm.Callback(self.ApplyPreset, shortName))
#             self._presetsUI.append(item)

#     def SavePreset(self, ignore):
#         self.logger.info('\tPos_LimbHier > SavePreset')
#         result = pm.promptDialog(
#                 title='Save Preset',
#                 message='New Preset Name:',
#                 button=['OK', 'Cancel'],
#                 defaultButton='OK',
#                 cancelButton='Cancel',
#                 dismissString='Cancel')
#         if result == 'Cancel':
#             return
#         limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
#         limbs = [self._limbs[ID] for ID in limbIDStrs]
#         presetName = pm.promptDialog(query=True, text=True)
#         limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        
#         self.pstMng.SavePreset(presetName, limbs)
#         self.PopulateRMB()
    
#     def ApplyPreset(self, presetName):
#         self.logger.info('\tPos_LimbHier > ApplyPreset')
#         preset = self._presets[presetName]
#         self.pstMng.ApplyPreset(preset)
#         self.parent.Populate()















































