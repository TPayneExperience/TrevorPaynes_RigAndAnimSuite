
# import Data.Joint_Manager as jm
# import Data.Limb_Manager as lm
# reload(jm)
# reload(lm)

# import Data.SaveLoad_Skeleton as sls
# reload(sls)

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
    # def __init__(self, nameMng, fileMng, jntMng, limbMng):
    def __init__(self, nameMng, jntMng, limbMng):
        # self.jntMng = jm.Joint_Manager()
        # self.limbMng = lm.Limb_Manager()
        self.nameMng = nameMng
        # self.fileMng = fileMng
        self.jntMng = jntMng
        self.limbMng = limbMng
        self.jntProp = jp.Joint_Properties(limbMng, jntMng)
        self.limbProp = lp.Limb_Properties(limbMng, jntMng)
        self.jntHier = jh.Joint_Hierarchy(limbMng, jntMng, nameMng)
        self.limbHier = lh.Limb_Hierarchy(limbMng,jntMng, nameMng)
        self.sceneMng = sm.Scene_Manager(limbMng, jntMng, nameMng, self)
        # self.saveLoadSkel = sls.SaveLoad_Skeleton(limbMng, jntMng)
        # self.parent = None # set to skel ui later


















