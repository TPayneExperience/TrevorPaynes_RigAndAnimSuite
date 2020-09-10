

from maya import cmds

import Data.Joint_Manager as jm
reload(jm)
import Data.Limb_Manager as lm
reload(lm)
import Data.SaveLoad_Skeleton as saveLoadSkel
reload(saveLoadSkel)

import Skeleton.Skeleton as skel
reload(skel)
import Behavior.Behavior as bhv
reload(bhv)


class LimbSetup:
    def __init__(self, nameMng, fileMng, jsonMng):
        self.nameMng = nameMng
        self.jsonMng = jsonMng
        self.fileMng = fileMng
        self.limbMng = lm.Limb_Manager(nameMng)
        self.jntMng = jm.Joint_Manager(nameMng, self.limbMng)
        self.skel = skel.Skeleton(  nameMng, 
                                    self.jntMng, 
                                    self.limbMng)
        self.bhv = bhv.Behavior(nameMng, fileMng, self.jntMng, self.limbMng)
        self.saveLoadSkel = saveLoadSkel.SaveLoad_Skeleton( self.limbMng, 
                                                            self.jntMng)
    
    def NewRig(self, rigRoot):
        self.limbMng.NewRig(rigRoot)
        self.skel.NewRig(rigRoot)
        # cmds.select(d=1)
        # name = '%s_LimbSetup_GRP' % self.nameMng.GetPrefix()
        # self.limbSetupGrp = cmds.group(name=name, em=1)
        # cmds.parent(self.limbSetupGrp, rootGrp)
        # self.jntMng.NewRig(self.limbSetupGrp)

