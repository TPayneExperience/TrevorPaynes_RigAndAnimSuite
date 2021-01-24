
import pymel.core as pm

class PW_Meshes_Hierarchy_UI:
    def __init__(self, parent):
        self.meshMng = parent.meshMng
        self.parent = parent

        self._meshes = {} # MeshName : meshNode

        self._Setup()
        
    def Populate(self):
        pm.treeView(self.widget, e=1, removeAll=1)
        for mesh in self.meshMng.GetAllMeshes():
            meshID = mesh.ID.get()
            name = mesh.shortName()
            pm.treeView(self.widget, e=1, ai=(meshID, ''))
            pm.treeView(self.widget, e=1, dl=(meshID, name))
            self._meshes[meshID] = mesh
#         for limb in limbCreationOrder[::-1]:
#             limbID = limb.ID.get()
#             name = '%s_%s' % (prefix, limb.pfrsName.get())
#             parent = limbParents[limb]
#             parentID = ''
#             if parent:
#                 parentID = str(parent.ID.get())
#             pm.treeView(self.widget, e=1, ai=(limbID, parentID))
#             pm.treeView(self.widget, e=1, dl=(limbID, name))
#             side = self.limbMng.GetLimbSide(limb)
#             if (side == 'L' or side == 'R'):
#                 pm.treeView(self.widget, e=1, bti=(limbID, 1, side))
#             else:
#                 pm.treeView(self.widget, e=1, bvf=(limbID, 1, 0))
    
#=========== SETUP ====================================

    def _Setup(self):
        self.widget = pm.treeView(ams=0, adr=0, arp=0)
        pm.treeView(self.widget, e=1, scc=self.SelectionChanged)

#=========== FUNCTIONS ====================================

    def SelectionChanged(self):
        meshIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if meshIDStrs:
            mesh = self._meshes[int(meshIDStrs[0])]
            self.parent.MeshSelected(mesh)
        else:
            pm.select(d=1)
            self.parent.MeshSelected(None)
    