
import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import SceneData.Ghost as gst
reload(gst)
import Utilities.General_Utilities as genUtil
reload(genUtil)
import Utilities.Logger as log
reload(log)

class Ghosts(absOp.Abstract_Operation):
    isRigBuilt = True
    applyBakedAnimations = True
    areLimbsRequired = True
    areMeshesRequired = True
    validRigStates = (1,)       # 0 = Setup, 1 = Anim
    requiredLicense = 0         # 0 = Free, 1 = Personal, 2 = Pro
    controlLayerState = (1, 0)  # isVis, isRef
    jointLayerState = (0, 1)    # isVis, isRef
    meshLayerState = (1, 1)     # isVis, isRef

    def AddGhost(self, rigRoot):
        gst.Ghost.Add(rigRoot)

    def RemoveGhost(self, ghost):
        gst.Ghost.Remove(ghost)

    def RenameGhost(self, ghost, newName):
        if not genUtil.Name.IsValidCharacterLength(newName):
            log.error('Limb Name Must be 2 or more characters')
            return False
        if not genUtil.Name.DoesNotStartWithNumber(newName):
            log.error('Cannot start with number OR _')
            return False
        if not genUtil.Name.AreAllValidCharacters(newName):
            log.error('May only contain A-Z, a-z, 0-9, _')
            return False
        ghost.rename(newName)

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
