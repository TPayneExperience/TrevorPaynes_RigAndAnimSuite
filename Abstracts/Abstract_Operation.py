
from abc import ABCMeta, abstractmethod, abstractproperty

import pymel.core as pm

import SceneData.Behavior_Manager as bhv
reload(bhv)

import SceneData.RigRoot as rrt
reload(rrt)
import Data.Rig_Data as rigData
reload(rigData)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)


class Abstract_Operation:
    __metaclass__ = ABCMeta
    requiredLicense = 0             # int | 0 = Free, 1 = Personal, 2 = Pro
    
    @abstractproperty
    def isRigBuilt(self):           # bool | False
        pass 

    @abstractproperty
    def validRigStates(self):       # tuple int | (0, 1)  # 0 = Setup, 1 = Anim
        pass 

    @abstractproperty
    def controlLayerState(self):    # tuple int | (0, 0)  # isVis, isRef
        pass

    @abstractproperty
    def jointLayerState(self):      # tuple int | (0, 0)  # isVis, isRef
        pass

    @abstractproperty
    def meshLayerState(self):       # tuple int | (0, 0)  # isVis, isRef
        pass

    def Setup(self, allRigRoots):
        toBeBuilt = self.isRigBuilt
        # TEARDOWN
        for rigRoot in allRigRoots:
            if not toBeBuilt:
                if rigRoot.isBuilt.get():
                    bhv.Behavior_Manager.Teardown_Rig(rigRoot)
            else:
                if not rigRoot.isBuilt.get():
                    bhv.Behavior_Manager.Setup_Rig(rigRoot)
            rigRoot.isBuilt.set(toBeBuilt)
        
        # LAYERS
        c = self.controlLayerState
        j = self.jointLayerState
        m = self.meshLayerState
        rigUtil.SetLayerState(rigData.CONTROLS_LAYER, c[0], c[1])
        rigUtil.SetLayerState(rigData.JOINTS_LAYER, j[0], j[1])
        rigUtil.SetLayerState(rigData.MESHES_LAYER, m[0], m[1])
    




















