
import os

import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
reload(absOp)
# import Utilities.Logger as log
# reload(log)
# import SceneData.Control as ctr
# reload(ctr)
# import Utilities.Rig_Utilities as rigUtil
# reload(rigUtil)
# import Data.Rig_Data as rigData
# reload(rigData)
# import Utilities.General_Utilities as genUtil
# reload(genUtil)

class SetDrivenKeys(absOp.Abstract_Operation):
    isRigBuilt = False
    applyBakedAnimations = False
    validRigStates = (0,)     # 0 = Setup, 1 = Anim
    controlLayerState = (1, 0)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef
    meshLayerState = (1, 1)    # isVis, isRef


        
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
