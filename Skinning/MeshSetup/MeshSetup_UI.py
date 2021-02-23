import pymel.core as pm

class MeshSetup_UI:
    def __init__(self, parent):
        self.parent = parent
        self.rigBHV = parent.rigBHV
        self.meshMng = parent.meshMng
        self.skinMng = parent.skinMng
        self.pfrs = parent.pfrs

        self._Setup()

    def Populate(self):
        pm.treeView(self.availableMeshes_tv, e=1, removeAll=1)
        pm.treeView(self.skinnedMeshes_tv, e=1, removeAll=1)
        skinnedMeshes = pm.listConnections(self.pfrs.root.meshes)
        self.allMeshes = {} # longName : meshNode

        for mesh in pm.ls(type='mesh'):
            longName = mesh.longName()
            self.allMeshes[longName] = mesh
            parent = pm.listRelatives(mesh, p=1)[0]
            name = parent.shortName()
            pm.treeView(self.availableMeshes_tv, e=1, ai=(longName, ''))
            pm.treeView(self.availableMeshes_tv, e=1, dl=(longName, name))
            if mesh in skinnedMeshes:
                pm.treeView(self.availableMeshes_tv, e=1, enl=(longName, 0))
                pm.treeView(self.skinnedMeshes_tv, e=1, ai=(longName, ''))
                pm.treeView(self.skinnedMeshes_tv, e=1, dl=(longName, name))

#=========== SETUP ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Available Meshes', bv=1):
                self.availableMeshes_tv = pm.treeView(adr=0, arp=0,
                                                scc=self.AvailableSelectionChanged,
                                                elc=lambda x,y: '')
        
        with pm.verticalLayout():
            with pm.frameLayout('Skinned Meshes', bv=1):
                tt = 'RMB to modify meshes, Double LMB to rename'
                self.skinnedMeshes_tv = pm.treeView(adr=0, arp=0, ann=tt)
                pm.treeView(self.skinnedMeshes_tv, e=1,
                                                scc=self.SkinnedSelectionChanged,
                                                elc=lambda x,y: '')
                with pm.popupMenu():
                    self.add_mi = pm.menuItem(l='Add Meshes', en=0, 
                                                            c=self.AddMeshes)
                    self.replace_mi = pm.menuItem(l='Replace Meshes', en=0, 
                                                            c=self.ReplaceMeshes)
                    self.remove_mi = pm.menuItem(l='Remove Meshes', en=0, 
                                                            c=self.RemoveMeshes)

#=========== TABS ====================================

    def Setup_Editable(self):
        print ('mesh, setup')
        self.Populate()

    def Teardown_Editable(self):
        print ('mesh, teardown')
        self.rigBHV.RebuildLimbs()
    
#=========== ACCESSORS ====================================

    def GetSelectedAvailable(self):
        names = pm.treeView(self.availableMeshes_tv, q=1, si=1)
        if not names:
            return []
        return [self.allMeshes[name] for name in names]

    def GetSelectedSkinned(self):
        names = pm.treeView(self.skinnedMeshes_tv, q=1, si=1)
        if not names:
            return []
        return [self.allMeshes[name] for name in names]

#=========== UI FUNCTIONALITY ====================================

    def AvailableSelectionChanged(self):
        meshes = self.GetSelectedAvailable()
        skinnedMeshes = pm.listConnections(self.pfrs.root.meshes)
        newMeshes = [mesh for mesh in meshes if mesh not in skinnedMeshes]
        hasNewMeshes = bool(newMeshes)
        pm.menuItem(self.add_mi, e=1, en=hasNewMeshes)
        pm.menuItem(self.replace_mi, e=1, en=hasNewMeshes)

    def SkinnedSelectionChanged(self):
        isEnabled = bool(self.GetSelectedSkinned())
        pm.menuItem(self.remove_mi, e=1, en=isEnabled)

    def AddMeshes(self, ignore):
        for mesh in self.GetSelectedAvailable():
            self.meshMng.AddMesh(mesh)
            self.skinMng.AddSkinAttrs(mesh)
        self.Populate()

    def ReplaceMeshes(self, ignore):
        meshes = self.GetSelectedAvailable()
        skinnedMeshes = pm.listConnections(self.pfrs.root.meshes)
        newMeshes = [m for m in meshes if m not in skinnedMeshes]
        oldMeshes = [m for m in skinnedMeshes if m not in meshes]
        for mesh in newMeshes:
            self.meshMng.AddMesh(mesh)
        # Copy Skin Weights
        for mesh in oldMeshes:
            self.meshMng.RemoveMesh(mesh)
        self.Populate()

    def RemoveMeshes(self, ignore):
        for mesh in self.GetSelectedSkinned():
            self.meshMng.RemoveMesh(mesh)
        self.Populate()
