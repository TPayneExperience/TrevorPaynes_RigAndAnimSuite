
# import Properties.BHV_Behavior_Properties as jp
# import Properties.BHV_Limb_Properties as lp
# reload(jp)
# reload(lp)

# import Hierarchies.BHV_Behavior_Hierarchy as jh
# import Hierarchies.BHV_Limb_Hierarchy as lh
# reload(jh)
# reload(lh)

# import Scene.Scene_Manager as sm
# reload(sm)

import Data.BHV_Group_Manager as grpMng
reload(grpMng)

class Behavior():
    def __init__(self, nameMng, fileMng, jntMng, limbMng):
        self.namgMng = nameMng
        self.fileMng = fileMng
        self.jntMng = jntMng
        self.limbMng = limbMng
        self.grpMng = grpMng.BHV_Group_Manager(limbMng)
        # self.jntProp = jp.BHV_Behavior_Properties(limbMng, jntMng)
        # self.limbProp = lp.Limb_Properties(limbMng, jntMng)
        # self.jntHier = jh.BHV_Behavior_Hierarchy(limbMng, jntMng, nameMng)
        # self.limbHier = lh.Limb_Hierarchy(limbMng,jntMng, nameMng)
        # self.sceneMng = sm.Scene_Manager(limbMng, jntMng, nameMng, self)


















