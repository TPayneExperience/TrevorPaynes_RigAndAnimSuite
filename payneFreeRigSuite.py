
import os
import sys

from maya import cmds

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

    def NewRig(self):
        # SCENE
        cmds.flushUndo()
        cmds.file(newFile=1, force=1)
        rootGrpName = '%s_ROOT' % self.nameMng.GetPrefix()
        self.rootGrp = cmds.group(name=rootGrpName, em=True)
        self.meshGrp = cmds.group(name='Mesh_GRP', em=True)
        cmds.parent(self.meshGrp, self.rootGrp)

        # MESH LAYER
        self.meshLayer = cmds.createDisplayLayer(n='Rig Mesh', e=True)
        cmds.setAttr(self.meshLayer + '.displayType', 2)
        cmds.select(d=True)
        self._Import_Meshes()
        self.limbSetup.NewRig(self.rootGrp)

    def _Import_Meshes(self):
        meshPath = self.fileMng.GetMeshPath()
        if(os.path.isfile(meshPath)):
            cmds.file(meshPath, i=True, f=True)
            meshShapes = cmds.ls(type='mesh')
            meshes = cmds.listRelatives(meshShapes, p=1)
            cmds.parent(meshes, self.meshGrp)
            cmds.editDisplayLayerMembers(self.meshLayer, meshes)
    
    def UpdatePrefix(self):
        rootGrpName = '%s_ROOT' % self.nameMng.GetPrefix()
        self.rootGrp = cmds.rename(self.rootGrp, rootGrpName)

    def UpdateMeshes(self):
        cmds.select(d=1)
        cmds.delete(self.meshGrp)
        self.meshGrp = cmds.group(name='Mesh_GRP', em=True)
        cmds.parent(self.meshGrp, self.rootGrp)
        self._Import_Meshes()