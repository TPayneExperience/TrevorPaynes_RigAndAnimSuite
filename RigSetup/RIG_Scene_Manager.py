
# import os

# from maya import cmds



# class RIG_Scene_Manager():
#     def __init__(self, fileMng, nameMng):
#         self.fileMng = fileMng
#         self.nameMng = nameMng

#         # self.NewRig()

#     def NewRig(self):
#         # SCENE
#         cmds.flushUndo()
#         cmds.file(newFile=1, force=1)
#         rootGrpName = '%s_ROOT' % self.nameMng.GetPrefix()
#         self.rootGrp = cmds.group(name=rootGrpName, em=True)
#         self.meshGrp = cmds.group(name='Mesh_GRP', em=True)
#         cmds.parent(self.meshGrp, self.rootGrp)

#         # MESH LAYER
#         self.meshLayer = cmds.createDisplayLayer(n='Rig Mesh', e=True)
#         cmds.setAttr(self.meshLayer + '.displayType', 2)
#         cmds.select(d=True)
#         self._Import_Meshes()

#     def _Import_Meshes(self):
#         meshPath = self.fileMng.GetMeshPath()
#         if(os.path.isfile(meshPath)):
#             cmds.file(meshPath, i=True, f=True)
#             meshShapes = cmds.ls(type='mesh')
#             meshes = cmds.listRelatives(meshShapes, p=1)
#             cmds.parent(meshes, self.meshGrp)
#             cmds.editDisplayLayerMembers(self.meshLayer, meshes)
    
#     def UpdatePrefix(self):
#         rootGrpName = '%s_ROOT' % self.nameMng.GetPrefix()
#         self.rootGrp = cmds.rename(self.rootGrp, rootGrpName)

#     def UpdateMeshes(self):
#         cmds.select(d=1)
#         cmds.delete(self.meshGrp)
#         self.meshGrp = cmds.group(name='Mesh_GRP', em=True)
#         cmds.parent(self.meshGrp, self.rootGrp)
#         self._Import_Meshes()

























