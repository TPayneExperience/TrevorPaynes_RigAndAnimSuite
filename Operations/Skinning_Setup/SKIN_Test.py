

import Abstracts.Abstract_Operation as absOp

class Test(absOp.Abstract_Operation):
    isRigBuilt = True
    applyBakedAnimations = False
    areLimbsRequired = False
    areMeshesRequired = False
    validRigStates = (0,)       # 0 = Setup, 1 = Anim
    requiredLicense = 0         # 0 = Free, 1 = Personal, 2 = Pro
    controlLayerState = (1, 0)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef
    meshLayerState = (1, 1)     # isVis, isRef



# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
