
from abc import ABCMeta, abstractmethod

class Abstract_Operation:
    __metaclass__ = ABCMeta
    isRigBuilt = False
    validRigStates = () # 0 = Setup, 1 = Anim
    requiredLicense = 99 # 0 = Free, 1 = Personal, 2 = Pro
    controlLayerState = (0, 0)  # isVis, isRef
    jointLayerState = (0, 0)    # isVis, isRef





















