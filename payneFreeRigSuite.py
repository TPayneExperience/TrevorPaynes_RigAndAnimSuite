
import os
import sys

# import RigAndAnim_Manager as rig
# reload(rig)

import Utils.File_Manager as fm
reload(fm)
import Utils.Json_Manager as js
reload(js)
import RigSetup.Name_Manager as nm
reload(nm)
import RigSetup.RIG_SaveLoad as slr
reload(slr)
import LimbSetup.LimbSetup as limbSetup
reload(limbSetup)
import RigSetup.RIG_Scene_Manager as rigsm
reload(rigsm)

class PayneFreeRigSuite():
    def __init__(self):
        self.fileMng = fm.File_Manager()
        self.jsonMng = js.Json_Manager()
        self.nameMng = nm.Name_Manager()
        self.limbSetup = limbSetup.LimbSetup(   self.nameMng,
                                                self.fileMng,
                                                self.jsonMng)
        self.saveLoadRig = slr.RIG_SaveLoad(self.nameMng,
                                            self.fileMng,
                                            self.jsonMng,
                                            self.limbSetup.saveLoadSkel)
        self.rigSceneMng = rigsm.RIG_Scene_Manager(self.fileMng,
                                                    self.nameMng)
        # self.rigMng = rig.RigAndAnim_Manager()
        # self.saveLoadMng = slm.SaveLoad_Manager(
        #                         self.jsonMng,
        #                         self.rigMng.skel.saveLoadSkel,
        #                         None,
        #                         None, 
        #                         None)

