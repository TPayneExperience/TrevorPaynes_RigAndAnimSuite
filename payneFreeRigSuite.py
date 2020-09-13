
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
        self.rigRoot = None
        self.limbSetup = limbSetup.LimbSetup(   self.nameMng,
                                                self.fileMng,
                                                self.jsonMng)
        # self.rigSetup = rigSetup.RigSetup(self.nameMng, self.fileMng, self.limbSetup)
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
        pm.setAttr(self.rigRoot +'.prefix', prefix)

        # MESH LAYER
        self.meshLayer = pm.createDisplayLayer(n='Rig Mesh', e=True)
        pm.setAttr(self.meshLayer + '.displayType', 2)
        pm.select(d=True)
        self.meshGrp = pm.group(name='Mesh_GRP', em=True)
        pm.parent(self.meshGrp, self.rigRoot)
        self.UpdatePrefix()
        self.nameMng.NewRig(self.rigRoot, 
                            self.limbSetup.limbMng, 
                            self.limbSetup.jntMng)
        self.limbSetup.NewRig(self.rigRoot)

    def UpdatePrefix(self):
        self.rigRoot.rename('%s_ROOT' % self.rigRoot.prefix.get())

    def SetRig(self, rigRoot):
        self.rigRoot = rigRoot
        # missing: get mesh group, mesh layer?



# #============= DEPRICATED ============================
# #============= DEPRICATED ============================
# #============= DEPRICATED ============================

# import os
# import sys

# import pymel.core as pm

# import Common.File_Manager as fm
# reload(fm)
# import Common.Json_Manager as js
# reload(js)
# import RigSetup.Name_Manager as nm
# reload(nm)
# import LimbSetup.LimbSetup as limbSetup
# reload(limbSetup)
# import RigSetup.RigSetup as rigSetup
# reload(rigSetup)

# # import RigSetup.RIG_SaveLoad as slr
# # reload(slr)
# # import RigSetup.RIG_Scene_Manager as rigsm
# # reload(rigsm)

# class PayneFreeRigSuite():
#     def __init__(self):
#         self.fileMng = fm.File_Manager()
#         self.jsonMng = js.Json_Manager()
#         self.nameMng = nm.Name_Manager()
#         self.limbSetup = limbSetup.LimbSetup(   self.nameMng,
#                                                 self.fileMng,
#                                                 self.jsonMng)
#         self.rigSetup = rigSetup.RigSetup(self.nameMng, self.fileMng, self.limbSetup)
#        # self.saveLoadRig = slr.RIG_SaveLoad(self.nameMng,
#         #                                     self.fileMng,
#         #                                     self.jsonMng,
#         #                                     self.limbSetup.saveLoadSkel)
#         # self.rigSceneMng = rigsm.RIG_Scene_Manager(self.fileMng,
#         #                                             self.nameMng)

#     # def UpdateMeshes(self):
#     #     pm.select(d=1)
#     #     pm.delete(self.meshGrp)
#     #     self.meshGrp = pm.group(name='Mesh_GRP', em=True)
#     #     pm.parent(self.meshGrp, self.rigRoot)
#     #     self._Import_Meshes()
