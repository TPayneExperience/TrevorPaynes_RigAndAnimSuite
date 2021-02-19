
import pymel.core as pm

class Mesh_Manager:
    def __init__(self):
        self._meshes = {} # meshID: meshNode

    def NewRig(self, rigRoot):
        self._meshes = {}
        self.rigRoot = rigRoot
        pm.addAttr(rigRoot, ln='nextMeshID', at='short', dv=1)
        pm.addAttr(rigRoot, ln='meshes', dt='string')
        self.meshLayer = pm.createDisplayLayer(n='Meshes', e=True)
        self.meshLayer.displayType.set(2)

#============= ??? ============================

    def GetMesh(self, meshID):
        return self._meshes[meshID]
    
    def GetAllMeshes(self):
        return list(self._meshes.values())
    
    def AddMesh(self, mesh):
        if (not mesh.hasAttr('ID')):
            pm.addAttr(mesh, ln='ID', at='short')
            pm.addAttr(mesh, ln='rigRoot', dt='string')

            meshID = self.rigRoot.nextMeshID.get()
            self.rigRoot.nextMeshID.set(meshID + 1)
            mesh.ID.set(meshID)
            
        pm.connectAttr(self.rigRoot.meshes, mesh.rigRoot)
        if mesh.ID.get() not in self._meshes:
            self._meshes[mesh.ID.get()] = mesh

    def RemoveMesh(self, mesh):
        pm.disconnectAttr(mesh.rigRoot)
        del(self._meshes[mesh.ID.get()])













