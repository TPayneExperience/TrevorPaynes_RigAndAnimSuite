
import os
import sys

# import RigAndAnim_Manager as rig
# reload(rig)

import Utils.File_Manager as fm
import Utils.Json_Manager as js
# import Utils.Name_Manager as nm
import RigSetup.Name_Manager as nm
reload(fm)
reload(js)
reload(nm)


class PayneFreeRigSuite():
    def __init__(self):
        self.fileMng = fm.File_Manager()
        self.jsonMng = js.Json_Manager()
        self.nameMng = nm.Name_Manager()
        # self.rigMng = rig.RigAndAnim_Manager()
        # self.saveLoadMng = slm.SaveLoad_Manager(
        #                         self.jsonMng,
        #                         self.rigMng.skel.saveLoadSkel,
        #                         None,
        #                         None, 
        #                         None)

