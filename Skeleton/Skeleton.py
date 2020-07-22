
import Data.Joint_Manager as jm
import Data.Limb_Manager as lm
import Data.SaveLoad_Manager as slm
reload(jm)
reload(lm)
reload(slm)

import Properties.Joint_Properties as jp
import Properties.Limb_Properties as lp
reload(jp)
reload(lp)

import Hierarchies.Joint_Hierarchy as jh
import Hierarchies.Limb_Hierarchy as lh
reload(jh)
reload(lh)

import Scene.Scene_Manager as sm
reload(sm)


# MISSING TEMPLATE STUFF

class Skeleton():
    def __init__(self, nameManager):
        self.jntMng = jm.Joint_Manager()
        self.limbMng = lm.Limb_Manager()
        self.jntProp = jp.Joint_Properties(self.limbMng, self.jntMng)
        self.limbProp = lp.Limb_Properties(self.limbMng, self.jntMng)
        self.jntHier = jh.Joint_Hierarchy(self.limbMng, self.jntMng, nameManager)
        self.limbHier = lh.Limb_Hierarchy(self.limbMng,self.jntMng, nameManager)
        self.sceneMng = sm.Scene_Manager(self.limbMng, self.jntMng, nameManager)
        self.saveLoadMng = slm.SaveLoad_Manager(self.limbMng, self.jntMng)


















