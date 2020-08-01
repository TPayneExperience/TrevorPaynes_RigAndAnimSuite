
import Data.Joint_Manager as jm
import Data.Limb_Manager as lm
import Data.SaveLoad_Skeleton as saveLoadSkel
reload(jm)
reload(lm)
reload(saveLoadSkel)

# import Skeleton.Skeleton_UI as skel_ui
# reload(skel_ui)
import Skeleton.Skeleton as skel
reload(skel)


class LimbSetup():
    def __init__(self, nameMng, fileMng, jsonMng):
        self.nameMng = nameMng
        self.jsonMng = jsonMng
        self.fileMng = fileMng
        self.jntMng = jm.Joint_Manager()
        self.limbMng = lm.Limb_Manager()
        self.skel = skel.Skeleton(  nameMng, 
                                    # fileMng, 
                                    self.jntMng, 
                                    self.limbMng)
        self.saveLoadSkel = saveLoadSkel.SaveLoad_Skeleton( self.limbMng, 
                                                            self.jntMng)

