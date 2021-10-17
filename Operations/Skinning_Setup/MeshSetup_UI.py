
import imp

import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
import Utilities.Logger as log
import Operations.Skinning_Setup.MeshSetup as msh

class MeshSetup_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Mesh Setup'
    uiOrderIndex = 110
    operation = msh.MeshSetup()
    def __init__(self):
        self._allMeshes = {} # name : meshNode
        self._skinnedMeshes = {} # name : meshNode
        self._selectedAvailable = []
        self._selectedSkinned = []
        self._sourceSkin = None

    def Setup_UI(self, rigRoot, allRigRoots, pfrsUI): 
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._pfrsUI = pfrsUI
        self._allMeshes = {} # name : meshNode
        self._skinnedMeshes = {} # name : meshNode
        self._selectedAvailable = []
        self._sourceSkin = None
        self._Setup()
        self.Refresh(0)
        
    def Teardown_UI(self):
        pass

#=========== SETUP ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Available Meshes', bv=1):
                self.availableMeshes_tv = pm.treeView(adr=0, arp=0)
                pm.treeView(self.availableMeshes_tv, e=1,
                                                scc=self.SelectedAvaiable,
                                                elc=self.RenameMesh)
                with pm.popupMenu():
                    pm.menuItem(l='Refresh', c=self.Refresh)
                    self.add_mi = pm.menuItem(l='Add Meshes', en=0, 
                                                            c=self.AddMeshes)
                    self.delete_mi = pm.menuItem(l='Delete Meshes', en=0, 
                                                            c=self.DeleteMeshes)
        
        with pm.verticalLayout():
            with pm.frameLayout('Skinned Meshes', bv=1):
                tt = 'RMB to modify meshes, Double LMB to rename'
                self._skinnedMeshes_tv = pm.treeView(adr=0, arp=0, ann=tt)
                pm.treeView(self._skinnedMeshes_tv, e=1,
                                                scc=self.SelectedSkinned,
                                                elc=self.RenameMesh)
                with pm.popupMenu():
                    self.copy_mi = pm.menuItem(l='Copy Weights', en=0,
                                                  c=self.CopyWeights)
                    self.paste_mi = pm.menuItem(l='Paste Weights (None)', en=0,
                                                  c=self.PasteWeights)
                    pm.menuItem(divider=1)
                    msg = 'Rebuild Skins (use if joints changed)'
                    self.rebuild_mi = pm.menuItem(l=msg, c=self.RebuildSkins)
                    pm.menuItem(divider=1)
                    self.remove_mi = pm.menuItem(l='Remove Meshes', en=0, 
                                                            c=self.RemoveMeshes)
                    self.removeDelete_mi = pm.menuItem(l='Remove + Delete Meshes', 
                                                        en=0, 
                                                        c=self.RemoveDeleteMeshes)

#=========== AVAILABLE ====================================

    def PopulateAvailable(self):
        pm.treeView(self.availableMeshes_tv, e=1, removeAll=1)
        meshGroup = pm.listConnections(self._rigRoot.meshesParentGroup)[0]
        availableMeshes = pm.listRelatives(meshGroup, c=1, s=1)
        meshXforms = pm.listRelatives(meshGroup, c=1)
        availableMeshes = [pm.listRelatives(m, c=1, s=1)[0] for m in meshXforms]
        skinnedMeshes = pm.listConnections(self._rigRoot.meshes, sh=1)
        backupMeshes = [pm.listConnections(m.backupMesh, sh=1)[0] for m in skinnedMeshes]
        self._allMeshes.clear() # name : meshNode
        self._selectedAvailable = []
        for mesh in availableMeshes:
            if mesh in backupMeshes:
                continue
            name = mesh.shortName()
            self._allMeshes[name] = mesh
            pm.treeView(self.availableMeshes_tv, e=1, ai=(name, ''))
            if mesh in skinnedMeshes:
                pm.treeView(self.availableMeshes_tv, e=1, enl=(name, 0))

    def SelectedAvaiable(self):
        log.funcFileInfo()
        self._selectedAvailable = []
        names = pm.treeView(self.availableMeshes_tv, q=1, si=1)
        pm.menuItem(self.add_mi, e=1, en=bool(names))
        pm.menuItem(self.delete_mi, e=1, en=bool(names))
        if not names:
            pm.select(d=1)
            return
        self._selectedAvailable = [self._allMeshes[n] for n in names]
        for mesh in self._selectedAvailable:
            if mesh.hasAttr('rigRoot'):
                if pm.listConnections(mesh.rigRoot):
                    pm.menuItem(self.add_mi, e=1, en=0)
        pm.select(self._selectedAvailable)

    def Refresh(self, ignore):
        self.operation.InitSceneMeshes(self._rigRoot)
        self.PopulateAvailable()
        self.PopulateSkinned()

    def AddMeshes(self, ignore):
        log.funcFileInfo()
        vertCount = 0
        for mesh in self._selectedAvailable:
            vertCount += pm.polyEvaluate(mesh, v=1)
        limbCount = len(pm.listConnections(self._rigRoot.limbs))
        if limbCount * vertCount > 5000:
            msg = 'Adding meshes with a high vertex count to '
            msg += '\na rig with many limbs may take a few minutes.' 
            msg += '\n\nProceed?'
            result = pm.confirmDialog(t='"Add Mesh" may be Slow', 
                                icon='warning', 
                                m=msg, 
                                b=['No', 'Yes'], 
                                db='Yes', 
                                cb='No', 
                                ds='No')
            if result == 'No':
                return
        self.operation.AddMeshes(self._rigRoot, 
                                self._selectedAvailable)
        self.PopulateAvailable()
        self.PopulateSkinned()
        self._pfrsUI.EnableOperations()

    def DeleteMeshes(self, ignore):
        log.funcFileInfo()
        self.operation.DeleteMeshes(self._selectedAvailable)
        self._selectedAvailable = []
        self.PopulateAvailable()

    def RenameMesh(self, oldName, newName):
        log.funcFileInfo()
        if newName not in self._allMeshes:
            mesh = self._allMeshes[oldName]
            self.operation.RenameMesh(mesh, newName)
        self.PopulateAvailable()
        self.PopulateSkinned()
        return ''

#=========== SKINNED ====================================

    def CopyWeights(self, ignore):
        self._sourceSkin = self._selectedSkinned[0]
        label = 'Paste Weights (from %s)' % self._sourceSkin.shortName()
        pm.menuItem(self.paste_mi, e=1, l=label, en=1)

    def PasteWeights(self, ignore):
        pass

    def PopulateSkinned(self):
        pm.treeView(self._skinnedMeshes_tv, e=1, removeAll=1)
        meshes = pm.listConnections(self._rigRoot.meshes, sh=1)
        self._skinnedMeshes = {} # name : meshNode
        for mesh in meshes:
            name = mesh.shortName()
            self._skinnedMeshes[name] = mesh
            pm.treeView(self._skinnedMeshes_tv, e=1, ai=(name, ''))

    def SelectedSkinned(self):
        log.funcFileInfo()
        self._selectedSkinned = []
        names = pm.treeView(self._skinnedMeshes_tv, q=1, si=1)
        pm.menuItem(self.remove_mi, e=1, en=bool(names))
        pm.menuItem(self.removeDelete_mi, e=1, en=bool(names))
        pm.menuItem(self.rebuild_mi, e=1, en=bool(names))
        pm.menuItem(self.copy_mi, e=1, en=bool(names))
        isEnabled = (bool(names) and bool(self._sourceSkin))
        pm.menuItem(self.paste_mi, e=1, en=isEnabled)
        if not names:
            pm.select(d=1)
            return
        self._selectedSkinned = [self._allMeshes[n] for n in names]
        pm.select(self._selectedSkinned)

    def RemoveMeshes(self, ignore):
        log.funcFileInfo()
        self.operation.RemoveMeshes(self._rigRoot, self._selectedSkinned)
        self.PopulateAvailable()
        self.PopulateSkinned()
        self._pfrsUI.EnableOperations()
        if self._sourceSkin in self._selectedSkinned:
            pm.menuItem(self.paste_mi, e=1, en=0, l='Paste Weights (None)')
            self._sourceSkin = None
        pm.menuItem(self.copy_mi, e=1, en=0)
        self._selectedSkinned = []

    def RemoveDeleteMeshes(self, ignore):
        log.funcFileInfo()
        self.operation.RemoveMeshes(self._rigRoot, self._selectedSkinned)
        self.operation.DeleteMeshes(self._selectedSkinned)
        if self._sourceSkin in self._selectedSkinned:
            pm.menuItem(self.paste_mi, e=1, en=0, l='Paste Weights (None)')
            self._sourceSkin = None
        self._selectedSkinned = []
        self.PopulateAvailable()
        self.PopulateSkinned()

    def RebuildSkins(self, ignore):
        log.funcFileInfo()
        for mesh in self._selectedSkinned:
            self.operation.RebuildSkin(mesh)


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
