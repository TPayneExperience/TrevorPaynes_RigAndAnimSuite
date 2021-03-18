
import pymel.core as pm

class Mesh_Manager:
    def __init__(self, parent):
        self._meshes = {} # meshID: meshNode
        self.logger = parent.logger
        self.pfrs = parent

#============= ROOT ============================

    def NewRoot(self):
        self.logger.debug('\tMeshMng > NewRoot')
        root = self.pfrs.root
        pm.select(d=True)
        self.meshGroup = pm.group(name='MESHES', em=True, p=root)

    def LoadRoot(self):
        self.logger.debug('\tMeshMng > LoadRoot')
        self.meshGroup = None
        for child in pm.listRelatives(self.pfrs.root, c=1):
            if child.shortName() == 'MESHES':
                self.meshGroup = child
                break

#============= SCENE ============================

    def NewScene(self):
        self.meshLayer = pm.createDisplayLayer(n='Meshes', e=True)
        self.meshLayer.displayType.set(2)
    
    def LoadScene(self):
        self.meshLayer = pm.ls('Meshes', type='displayLayer')[0]

    def SetLayerState(self, isVisible, isReference):
        self.logger.debug('\tCtrMng > SetLayerState')
        # Maya Bug: Layer Editor won't refresh buttons
        if isReference:
            self.meshLayer.displayType.set(2) # 2 = reference, 0 = default
        else:
            self.meshLayer.displayType.set(0)
        self.meshLayer.visibility.set(isVisible) # 0 = off, 1 = on

    def InitSceneMeshes(self):
        self.logger.debug('\tMeshMng > InitSceneMeshes')
        for mesh in pm.ls(type='mesh'):
            if not mesh.hasAttr('ID'):
                pm.addAttr(mesh, ln='ID', at='short')
                pm.addAttr(mesh, ln='root', dt='string')
                meshID = self.pfrs.root.nextMeshID.get()
                self.pfrs.root.nextMeshID.set(meshID + 1)
                mesh.ID.set(meshID)
            xform = pm.listRelatives(mesh, p=1)[0]
            parent = pm.listRelatives(xform, p=1)
            if not parent:
                pm.parent(mesh, self.meshGroup) 
                return
            parent = parent[0]
            if parent != self.meshGroup:
                name = xform.shortName()
                if 'PFRSCTR_' not in name and 'CTR' not in name:
                    pm.parent(xform, self.meshGroup) 

#============= ??? ============================

    def AddMesh(self, mesh):
        pm.connectAttr(self.pfrs.root.meshes, mesh.root)

    def RemoveMesh(self, mesh):
        pm.disconnectAttr(mesh.root)












