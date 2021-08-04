
import pymel.core as pm
from maya import mel

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Utilities.Logger as log
reload(log)

class PaintWeights(absOp.Abstract_Operation):
    isRigBuilt = True
    applyBakedAnimations = False
    validRigStates = (0,)       # 0 = Setup, 1 = Anim
    requiredLicense = 0         # 0 = Free, 1 = Personal, 2 = Pro
    controlLayerState = (0, 0)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef
    meshLayerState = (1, 0)     # isVis, isRef

    def PaintBrush(self):
        pass

    def FloodAdd(self, mesh, weight):
        pass
    
    def FloodReplace(self, mesh, weight):
        pass
    
    def SetPaintModeAdd(self):
        pass
        # mel.eval('artAttrPaintOperation artUserPaintCtx Add;')

    def SetPaintModeReplace(self):
        pass
        # mel.eval('artAttrPaintOperation artUserPaintCtx Replace;')


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
