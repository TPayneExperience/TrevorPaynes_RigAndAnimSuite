
from maya import cmds

import LimbSetup.Skeleton.Skeleton as skel
import RigSetup.RigSetup as rs
import Name_Manager as nm

reload(nm)
reload(skel)
reload(rs)

class RigAndAnim_Manager():
    def __init__(self, fileManager):
        self.nameMng = nm.Name_Manager()
        self.fileMng = fileManager
        self.rigSetup = rs.RigSetup(self.nameMng)
        self.skel = skel.Skeleton(self.rigSetup.nameMng, self.fileMng)

        self.rootGrp = cmds.group(n='ROOT', em=1)
        cmds.parent(self.skel.sceneMng.rootJntGrp, self.rootGrp)
        cmds.parent(self.skel.sceneMng.rootCtrGrp, self.rootGrp)
    
    
























