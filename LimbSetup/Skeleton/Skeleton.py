
import Properties.SKEL_Joint_Properties as jp
reload(jp)
import Properties.SKEL_Limb_Properties as lp
reload(lp)

import Hierarchies.SKEL_Joint_Hierarchy as jh
reload(jh)
import Hierarchies.SKEL_Limb_Hierarchy as lh
reload(lh)

import Scene.SKEL_Scene_Manager as sm
reload(sm)


class Skeleton():
    def __init__(self, nameMng, jntMng, limbMng):
        self.nameMng = nameMng
        self.jntMng = jntMng
        self.limbMng = limbMng
        self.jntProp = jp.SKEL_Joint_Properties(limbMng, jntMng)
        self.limbProp = lp.SKEL_Limb_Properties(limbMng, jntMng)
        self.jntHier = jh.SKEL_Joint_Hierarchy(limbMng, jntMng, nameMng)
        self.limbHier = lh.SKEL_Limb_Hierarchy(limbMng,jntMng, nameMng)
        self.sceneMng = sm.SKEL_Scene_Manager(limbMng, jntMng, nameMng, self)


















