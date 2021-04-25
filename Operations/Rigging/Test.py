
import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Common.Logger as log
reload(log)
# import Data.Rig_Data as rigData
# reload(rigData)
# import SceneData.Limb as lmb
# reload(lmb)
# import Common.General_Utilities as genUtil
# reload(genUtil)
# import SceneData.RigRoot as rrt
# reload(rrt)

class Test(absOp.Abstract_Operation):
    isRigBuilt = True
    validRigStates = (0, 1)     # 0 = Setup, 1 = Anim
    requiredLicense = 0         # 0 = Free, 1 = Personal, 2 = Pro
    controlLayerState = (1, 0)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef
    meshLayerState = (1, 1)    # isVis, isRef


