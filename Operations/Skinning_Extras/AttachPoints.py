
import imp

import Abstracts.Abstract_Operation as absOp
import SceneData.AttachPoint as ap
import Utilities.General_Utilities as genUtil
import Utilities.Logger as log

class AttachPoints(absOp.Abstract_Operation):
    isRigBuilt = True
    applyBakedAnimations = False
    areLimbsRequired = False
    areMeshesRequired = False
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
