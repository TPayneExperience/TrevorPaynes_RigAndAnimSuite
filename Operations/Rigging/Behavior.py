
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
    requiredLicense = 0         # 0 = Free, 1 = Personal, 2 = Pro
    controlLayerState = (1, 1)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef

    @staticmethod
    def AddEmptyLimb(rigRoot):
        log.funcFileDebug()
        limb = lmb.Limb.AddEmpty(rigRoot)
        ls.LimbSetup._InitBehavior(limb)
        return limb

    @staticmethod
    def RemoveEmptyLimb(limb):
        log.funcFileDebug()
        lmb.Limb.Remove(limb)

    @staticmethod
    def ReparentLimb(childLimb, parentLimb):
        log.funcFileDebug()
        ls.LimbSetup._ReparentLimb(childLimb, parentLimb)
    
    @staticmethod
    def RenameLimb(limb, newName):
        return ls.LimbSetup.RenameLimb(limb, newName)

    @staticmethod
    def LoadSkeletalHierarchy(rigRoot):
        log.funcFileDebug()
        ls.LimbSetup._LoadSkeletalHierarchy(rigRoot)
    
    @staticmethod
    def EnableLimb(limb, isEnabled):
        log.funcFileDebug()
        limb.enableLimb.set(isEnabled)
    
    @staticmethod
    def EnableControl(control, isEnabled):
        log.funcFileDebug()
        if control.hasAttr('control'):
            group = control
        else:
            group = pm.listConnections(control.group)[0]
        group.enableGroup.set(isEnabled)
        Behavior._EnableControl(group, isEnabled)
    
    @staticmethod
    def _EnableControl(group, isEnabled):
        group.v.set(isEnabled)