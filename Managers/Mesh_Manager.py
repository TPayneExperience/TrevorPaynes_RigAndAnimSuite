
import pymel.core as pm

class Mesh_Manager:
    def __init__(self, parent):
        self._meshes = {} # meshID: meshNode
        self.logger = parent.logger

#============= ROOT ============================

    def NewRoot(self, root):
        self.root = root
        pm.select(d=True)
        self.meshGroup = pm.group(name='MESHES', em=True, p=root)

    def SetRoot(self, root):
        self.root = root
        self.meshGroup = None
        for child in pm.listRelatives(root, c=1):
            if child.shortName() == 'MESHES':
                self.meshGroup = child
                break

#============= SCENE ============================

    def NewScene(self):
        self.meshLayer = pm.createDisplayLayer(n='Meshes', e=True)
        self.meshLayer.displayType.set(2)
    
    def LoadScene(self):
        self.meshLayer = pm.ls('Meshes', type='displayLayer')

    def SetLayerState(self, isVisible, isReference):
        self.logger.debug('\tCtrMng > SetLayerState')
        # Maya Bug: Layer Editor won't refresh buttons
        if isReference:
            self.meshLayer.displayType.set(2) # 2 = reference, 0 = default
        else:
            self.meshLayer.displayType.set(0)
        self.meshLayer.visibility.set(isVisible) # 0 = off, 1 = on

#============= ??? ============================

    def GetMesh(self, meshID):
        return self._meshes[meshID]
    
    def GetAllMeshes(self):
        return list(self._meshes.values())
    
    def AddMesh(self, mesh):
        if (not mesh.hasAttr('ID')):
            pm.addAttr(mesh, ln='ID', at='short')
            pm.addAttr(mesh, ln='root', dt='string')

            meshID = self.root.nextMeshID.get()
            self.root.nextMeshID.set(meshID + 1)
            mesh.ID.set(meshID)
            
        pm.connectAttr(self.root.meshes, mesh.root)
        if mesh.ID.get() not in self._meshes:
            self._meshes[mesh.ID.get()] = mesh

    def RemoveMesh(self, mesh):
        pm.disconnectAttr(mesh.root)
        del(self._meshes[mesh.ID.get()])












