
import pymel.core as pm

class Mesh_Manager:
    def __init__(self, parent):
        self._meshes = {} # meshID: meshNode
        self.logger = parent.logger
        self.pfrs = parent

#============= ROOT ============================

    def NewRoot(self):
        root = self.pfrs.root
        pm.select(d=True)
        self.meshGroup = pm.group(name='MESHES', em=True, p=root)

    def LoadRoot(self):
        root = self.pfrs.root
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

    def InitMesh(self, mesh):
        pm.addAttr(mesh, ln='ID', at='short')
        pm.addAttr(mesh, ln='root', dt='string')

        meshID = self.pfrs.root.nextMeshID.get()
        self.pfrs.root.nextMeshID.set(meshID + 1)
        mesh.ID.set(meshID)

    def AddMesh(self, mesh):
        pm.connectAttr(self.pfrs.root.meshes, mesh.root)

    def RemoveMesh(self, mesh):
        pm.disconnectAttr(mesh.root)












