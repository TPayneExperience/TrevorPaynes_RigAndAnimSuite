
import os
import sys

import pymel.core as pm

import Common.File_Manager as fm
reload(fm)
import Common.Json_Manager as js
reload(js)
import RigSetup.Name_Manager as nm
reload(nm)
import LimbSetup.LimbSetup as limbSetup
reload(limbSetup)
import RigSetup.RigSetup as rigSetup
reload(rigSetup)

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
        self.rigSetup = rigSetup.RigSetup(self.nameMng, self.fileMng, self.limbSetup)
       # self.saveLoadRig = slr.RIG_SaveLoad(self.nameMng,
        #                                     self.fileMng,
        #                                     self.jsonMng,
        #                                     self.limbSetup.saveLoadSkel)
        # self.rigSceneMng = rigsm.RIG_Scene_Manager(self.fileMng,
        #                                             self.nameMng)

    # def NewRig(self, prefix, nameOrder, showPrefix):
    #     # self.rigRoot = pm.group(name='temp', em=True)

    #     # # NAMING
    #     # pm.addAttr(self.rigRoot, ln='prefixIndex', at='short', dv=nameOrder[0])
    #     # pm.addAttr(self.rigRoot, ln='limbIndex', at='short', dv=nameOrder[1])
    #     # pm.addAttr(self.rigRoot, ln='jointIndex', at='short', dv=nameOrder[2])
    #     # pm.addAttr(self.rigRoot, ln='sideIndex', at='short', dv=nameOrder[3])
    #     # pm.addAttr(self.rigRoot, ln='typeIndex', at='short', dv=nameOrder[4])
    #     # pm.addAttr(self.rigRoot, ln='showPrefix', at='bool', dv=showPrefix)
    #     # pm.addAttr(self.rigRoot, ln='prefix', dt='string')
    #     # self.rigRoot.prefix.set(prefix)

    #     # self.nameMng.NewRig(self.rigRoot, self.limbSetup.limbMng, self.limbSetup.jntMng)
    #     self.meshGrp = pm.group(name='Meshes', em=True)
    #     pm.parent(self.meshGrp, self.rigRoot)

    #     # MESH LAYER
    #     self.meshLayer = pm.createDisplayLayer(n='Rig Mesh', e=True)
    #     pm.setAttr(self.meshLayer + '.displayType', 2)
    #     pm.select(d=True)
    #     # self._Import_Meshes()
    #     self.UpdatePrefix()
    #     self.nameMng.NewRig(self.rigRoot, 
    #                         self.limbSetup.limbMng, 
    #                         self.limbSetup.jntMng)
    #     self.limbSetup.NewRig(self.rigRoot)

    # # def _Import_Meshes(self):
    # #     meshPath = self.fileMng.GetMeshPath()
    # #     if(os.path.isfile(meshPath)):
    # #         pm.file(meshPath, i=True, f=True)
    # #         meshShapes = pm.ls(type='mesh')
    # #         meshes = pm.listRelatives(meshShapes, p=1)
    # #         pm.parent(meshes, self.meshGrp)
    # #         pm.editDisplayLayerMembers(self.meshLayer, meshes)
    
    # def UpdatePrefix(self):
    #     self.rigRoot.rename('%s_ROOT' % self.rigRoot.prefix.get())

    # def UpdateMeshes(self):
    #     pm.select(d=1)
    #     pm.delete(self.meshGrp)
    #     self.meshGrp = pm.group(name='Mesh_GRP', em=True)
    #     pm.parent(self.meshGrp, self.rigRoot)
    #     self._Import_Meshes()
