
import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Common.Logger as log
reload(log)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)
# import Data.Rig_Data as rigData
# reload(rigData)
import SceneData.Limb as lmb
reload(lmb)
import LimbSetup as ls
reload(ls)
import Common.General_Utilities as genUtil
reload(genUtil)
# import SceneData.RigRoot as rrt
# reload(rrt)

class Behavior(absOp.Abstract_Operation):
    isRigBuilt = False
    validRigStates = (0, 1)     # 0 = Setup, 1 = Anim
    controlLayerState = (1, 1)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef
    meshLayerState = (1, 1)    # isVis, isRef
    def __init__(self):
        self._ls = ls.LimbSetup()

    def AddEmptyLimb(self, rigRoot):
        log.funcFileDebug()
        limb = lmb.Limb.AddEmpty(rigRoot)
        self._ls._InitBehavior(limb)
        return limb

    def RemoveEmptyLimb(self, limb):
        log.funcFileDebug()
        lmb.Limb.Remove(limb)

    def ReparentLimb(self, childLimb, parentLimb):
        log.funcFileDebug()
        self._ls._ReparentLimb(childLimb, parentLimb)
    
    def RenameLimb(self, limb, newName):
        return self._ls.RenameLimb(limb, newName)

    def LoadSkeletalHierarchy(self, rigRoot):
        log.funcFileDebug()
        self._ls._LoadSkeletalHierarchy(rigRoot)
    
    def EnableLimb(self, limb, isEnabled):
        log.funcFileDebug()
        limb.enableLimb.set(isEnabled)
    
    def EnableControl(self, control, isEnabled):
        log.funcFileDebug()
        if control.hasAttr('control'):
            group = control
        else:
            group = pm.listConnections(control.group)[0]
        group.enableGroup.set(isEnabled)
        self._EnableControl(group, isEnabled)
    
    def _EnableControl(self, group, isEnabled):
        group.v.set(isEnabled)