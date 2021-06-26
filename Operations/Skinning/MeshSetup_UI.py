import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import Utilities.Logger as log
reload(log)
import MeshSetup as msh
reload(msh)

class MeshSetup_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Mesh Setup'
    uiOrderIndex = 110
    operation = msh.MeshSetup()
    def __init__(self):
        self.allMeshes = {} # name : meshNode
        self.skinnedMeshes = {} # name : meshNode
        self._selectedAvailable = []
        self._selectedSkinned = []

    def Setup_UI(self, rigRoot, allRigRoots): 
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._Setup()
        self.Refresh(0)
        
    def Teardown_UI(self, rigRoot, allRigRoots):
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
        
        with pm.verticalLayout():
            with pm.frameLayout('Skinned Meshes', bv=1):
                tt = 'RMB to modify meshes, Double LMB to rename'
                self.skinnedMeshes_tv = pm.treeView(adr=0, arp=0, ann=tt)
                pm.treeView(self.skinnedMeshes_tv, e=1,
                                                scc=self.SelectedSkinned,
                                                elc=self.RenameMesh)
                with pm.popupMenu():
                    self.remove_mi = pm.menuItem(l='Remove Meshes', en=0, 
                                                            c=self.RemoveMeshes)

#=========== AVAILABLE ====================================

    def PopulateAvailable(self):
        pm.treeView(self.availableMeshes_tv, e=1, removeAll=1)
        meshGroup = pm.listConnections(self._rigRoot.meshesParentGroup)[0]
        availableMeshes = pm.listRelatives(meshGroup, c=1)
        skinnedMeshes = pm.listConnections(self._rigRoot.meshes)
        self.allMeshes = {} # name : meshNode
        self._selectedAvailable = []
        for mesh in availableMeshes:
            name = mesh.shortName()
            self.allMeshes[name] = mesh
            pm.treeView(self.availableMeshes_tv, e=1, ai=(name, ''))
            if mesh in skinnedMeshes:
                pm.treeView(self.availableMeshes_tv, e=1, enl=(name, 0))

    def SelectedAvaiable(self):
        log.funcFileInfo()
        pm.menuItem(self.add_mi, e=1, en=0)
        self._selectedAvailable = []
        names = pm.treeView(self.availableMeshes_tv, q=1, si=1)
        if not names:
            pm.select(d=1)
            return
        self._selectedAvailable = [self.allMeshes[n] for n in names]
        pm.menuItem(self.add_mi, e=1, en=1)
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
        self.operation.AddMeshes(self._rigRoot, self._selectedAvailable)
        self.PopulateAvailable()
        self.PopulateSkinned()

    def RenameMesh(self, oldName, newName):
        log.funcFileInfo()
        if newName not in self.allMeshes:
            mesh = self.allMeshes[oldName]
            self.operation.RenameMesh(mesh, newName)
        self.PopulateAvailable()
        self.PopulateSkinned()
        return ''

#=========== SKINNED ====================================

    def PopulateSkinned(self):
        pm.treeView(self.skinnedMeshes_tv, e=1, removeAll=1)
        meshes = pm.listConnections(self._rigRoot.meshes)
        self.skinnedMeshes = {} # name : meshNode
        for mesh in meshes:
            name = mesh.shortName()
            self.skinnedMeshes[name] = mesh
            pm.treeView(self.skinnedMeshes_tv, e=1, ai=(name, ''))

    def SelectedSkinned(self):
        log.funcFileInfo()
        pm.menuItem(self.remove_mi, e=1, en=0)
        self._selectedSkinned = []
        names = pm.treeView(self.skinnedMeshes_tv, q=1, si=1)
        if not names:
            pm.select(d=1)
            return
        self._selectedSkinned = [self.allMeshes[n] for n in names]
        pm.menuItem(self.remove_mi, e=1, en=1)
        pm.select(self._selectedSkinned)

    def RemoveMeshes(self, ignore):
        log.funcFileInfo()
        self.operation.RemoveMeshes(self._selectedSkinned)
        self.PopulateAvailable()
        self.PopulateSkinned()