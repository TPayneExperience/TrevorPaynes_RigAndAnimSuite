
import Data.Joint_Manager as jm
import Data.Limb_Manager as lm
reload(jm)
reload(lm)

# import Skeleton.Skeleton_UI as skel_ui
# reload(skel_ui)
import Skeleton.Skeleton as skel


class LimbSetup():
    def __init__(self, nameMng, fileMng, jsonMng):
        # self.namgMng = nameMng
        # self.fileMng = fileMng
        # self.jsonMng = jsonMng
        self.jntMng = jm.Joint_Manager()
        self.limbMng = lm.Limb_Manager()
        self.skel = skel.Skeleton(  nameMng, 
                                    fileMng, 
                                    self.jntMng, 
                                    self.limbMng)










