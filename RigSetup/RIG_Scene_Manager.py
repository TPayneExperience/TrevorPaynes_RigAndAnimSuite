

    # Hold prefix data
    # hold naming order
    # create group
    # create outputs for connecting to:
    #       limbs, joints, controllers
    # track last rig root selection
    # listen for every selection
    #   if does not match last rigRoot
    #       update all data/ui
    # 
















# #============= DEPRICATED ============================

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
#         rootGroupName = '%s_ROOT' % self.nameMng.GetPrefix()
#         self.rootGroup = cmds.group(name=rootGroupName, em=True)
#         self.meshGroup = cmds.group(name='Mesh_GRP', em=True)
#         cmds.parent(self.meshGroup, self.rootGroup)

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
#             cmds.parent(meshes, self.meshGroup)
#             cmds.editDisplayLayerMembers(self.meshLayer, meshes)
    
#     def UpdatePrefix(self):
#         rootGroupName = '%s_ROOT' % self.nameMng.GetPrefix()
#         self.rootGroup = cmds.rename(self.rootGroup, rootGroupName)

#     def UpdateMeshes(self):
#         cmds.select(d=1)
#         cmds.delete(self.meshGroup)
#         self.meshGroup = cmds.group(name='Mesh_GRP', em=True)
#         cmds.parent(self.meshGroup, self.rootGroup)
#         self._Import_Meshes()

























