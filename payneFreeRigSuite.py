
import os
import sys

#from maya import cmds
import pymel.core as pm

import Common.File_Manager as fm
reload(fm)
import Common.Json_Manager as js
reload(js)
import RigSetup.Name_Manager as nm
reload(nm)
import LimbSetup.LimbSetup as limbSetup
reload(limbSetup)
# import RigSetup.RIG_SaveLoad as slr
# reload(slr)
# import RigSetup.RIG_Scene_Manager as rigsm
# reload(rigsm)

class PayneFreeRigSuite():
    def __init__(self):
        self.fileMng = fm.File_Manager()
        self.jsonMng = js.Json_Manager()
        self.nameMng = nm.Name_Manager()
        self.limbSetup = limbSetup.LimbSetup(   self.nameMng,
                                                self.fileMng,
                                                self.jsonMng)
        # self.saveLoadRig = slr.RIG_SaveLoad(self.nameMng,
        #                                     self.fileMng,
        #                                     self.jsonMng,
        #                                     self.limbSetup.saveLoadSkel)
        # self.rigSceneMng = rigsm.RIG_Scene_Manager(self.fileMng,
        #                                             self.nameMng)

    def NewRig(self, prefix, nameOrder, showPrefix):
        pm.flushUndo()
        pm.newFile(newFile=1, force=1)
        self.rigRoot = pm.group(name='temp', em=True)

        # NAMING
        pm.addAttr(self.rigRoot, ln='prefixIndex', at='short', dv=nameOrder[0])
        pm.addAttr(self.rigRoot, ln='limbIndex', at='short', dv=nameOrder[1])
        pm.addAttr(self.rigRoot, ln='jointIndex', at='short', dv=nameOrder[2])
        pm.addAttr(self.rigRoot, ln='sideIndex', at='short', dv=nameOrder[3])
        pm.addAttr(self.rigRoot, ln='typeIndex', at='short', dv=nameOrder[4])
        pm.addAttr(self.rigRoot, ln='showPrefix', at='bool', dv=showPrefix)
        pm.addAttr(self.rigRoot, ln='prefix', dt='string')
        self.rigRoot.prefix.set(prefix)

        # self.nameMng.NewRig(self.rigRoot, self.limbSetup.limbMng, self.limbSetup.jntMng)
        self.meshGrp = pm.group(name='Meshes', em=True)
        pm.parent(self.meshGrp, self.rigRoot)

        # MESH LAYER
        self.meshLayer = pm.createDisplayLayer(n='Rig Mesh', e=True)
        pm.setAttr(self.meshLayer + '.displayType', 2)
        pm.select(d=True)
        # self._Import_Meshes()
        self.UpdatePrefix()
        self.limbSetup.NewRig(self.rigRoot)

    # def _Import_Meshes(self):
    #     meshPath = self.fileMng.GetMeshPath()
    #     if(os.path.isfile(meshPath)):
    #         pm.file(meshPath, i=True, f=True)
    #         meshShapes = pm.ls(type='mesh')
    #         meshes = pm.listRelatives(meshShapes, p=1)
    #         pm.parent(meshes, self.meshGrp)
    #         pm.editDisplayLayerMembers(self.meshLayer, meshes)
    
    def UpdatePrefix(self):
        self.rigRoot.rename('%s_ROOT' % self.rigRoot.prefix.get())

    # def UpdateMeshes(self):
    #     pm.select(d=1)
    #     pm.delete(self.meshGrp)
    #     self.meshGrp = pm.group(name='Mesh_GRP', em=True)
    #     pm.parent(self.meshGrp, self.rigRoot)
    #     self._Import_Meshes()

# #============= DEPRICATED ============================

    # def NewRig(self):
    #      SCENE
    #     cmds.flushUndo()
    #     cmds.file(newFile=1, force=1)
    #     rootName = '%s_ROOT' % self.nameMng.GetPrefix()
    #     self.rigRoot = cmds.group(name=rootName, em=True)
    #     self.meshGrp = cmds.group(name='Mesh_GRP', em=True)
    #     cmds.parent(self.meshGrp, self.rigRoot)

    #     # MESH LAYER
    #     self.meshLayer = cmds.createDisplayLayer(n='Rig Mesh', e=True)
    #     cmds.setAttr(self.meshLayer + '.displayType', 2)
    #     cmds.select(d=True)
    #     self._Import_Meshes()
    #     self.limbSetup.NewRig(self.rigRoot)

    # def _Import_Meshes(self):
    #     meshPath = self.fileMng.GetMeshPath()
    #     if(os.path.isfile(meshPath)):
    #         cmds.file(meshPath, i=True, f=True)
    #         meshShapes = cmds.ls(type='mesh')
    #         meshes = cmds.listRelatives(meshShapes, p=1)
    #         cmds.parent(meshes, self.meshGrp)
    #         cmds.editDisplayLayerMembers(self.meshLayer, meshes)
    
    # def UpdatePrefix(self):
    #     rigRootName = '%s_ROOT' % self.nameMng.GetPrefix()
    #     self.rigRoot = cmds.rename(self.rigRoot, rigRootName)

    # def UpdateMeshes(self):
    #     cmds.select(d=1)
    #     cmds.delete(self.meshGrp)
    #     self.meshGrp = cmds.group(name='Mesh_GRP', em=True)
    #     cmds.parent(self.meshGrp, self.rigRoot)
    #     self._Import_Meshes()