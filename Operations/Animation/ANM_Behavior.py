
import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Common.Logger as log
reload(log)
import Operations.Rigging.RIG_Behavior as bhv
reload(bhv)

class ANM_Behavior(absOp.Abstract_Operation):
    isRigBuilt = True
    validRigStates = (0, 1)     # 0 = Setup, 1 = Anim
    controlLayerState = (1, 0)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef
    meshLayerState = (1, 1)    # isVis, isRef
    def __init__(self):
        self._bhv = bhv.RIG_Behavior()

    def ApplyPreset(self, preset):
        log.funcFileDebug()
        self._bhv.ApplyPreset(preset)
