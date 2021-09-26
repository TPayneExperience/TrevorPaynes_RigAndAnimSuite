
import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import SceneData.AttachPoint as ap
reload(ap)
import Utilities.General_Utilities as genUtil
reload(genUtil)
import Utilities.Logger as log
reload(log)
# import Data.Rig_Data as rigData
# reload(rigData)
# import Utilities.Skin_Utilities as skinUtil
# reload(skinUtil)
# import MeshSetup as ms
# reload(ms)
# import paintOp_Joints as jntOp
# reload(jntOp)
# import paintOp_Limbs as lmbOp
# reload(lmbOp)

class AttachPoints(absOp.Abstract_Operation):
    isRigBuilt = True
    applyBakedAnimations = False
    validRigStates = (0, 1)       # 0 = Setup, 1 = Anim
    requiredLicense = 0         # 0 = Free, 1 = Personal, 2 = Pro
    controlLayerState = (1, 0)  # isVis, isRef
    jointLayerState = (0, 1)    # isVis, isRef
    meshLayerState = (1, 0)     # isVis, isRef

    def AddAttachPoint(self, rigRoot, vertex):
        ap.AttachPoint.Add(rigRoot, vertex)

    def RemoveAttachPoint(self, attachPoint):
        ap.AttachPoint.Remove(attachPoint)

    def RenameAttachPoint(self, attachPoint, newName):
        if not genUtil.Name.IsValidCharacterLength(newName):
            log.error('Limb Name Must be 2 or more characters')
            return False
        if not genUtil.Name.DoesNotStartWithNumber(newName):
            log.error('Cannot start with number OR _')
            return False
        if not genUtil.Name.AreAllValidCharacters(newName):
            log.error('May only contain A-Z, a-z, 0-9, _')
            return False
        attachPoint.rename(newName)

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"