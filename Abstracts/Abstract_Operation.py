
from abc import ABCMeta, abstractmethod, abstractproperty
import os

import pymel.core as pm

import SceneData.RigRoot as rrt
reload(rrt)
import Data.Rig_Data as rigData
reload(rigData)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import Utilities.General_Utilities as genUtil
reload(genUtil)
import Utilities.Anim_Utilities as animUtil
reload(animUtil)


class Abstract_Operation:
    __metaclass__ = ABCMeta
    requiredLicense = 0             # int | 0 = Free, 1 = Personal, 2 = Pro
    bhvMng = None
    
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
        folder = os.path.dirname(__file__)
        folder = os.path.dirname(folder)
        folder = os.path.join(folder, 'Data')
        filePath = os.path.join(folder, 'Config.json')
        config = genUtil.Json.Load(filePath)
        scl = config['useScaleConstraints']
        
        toBeBuilt = self.isRigBuilt
        limbs = []
        for rigRoot in allRigRoots:
            limbs += pm.listConnections(rigRoot.limbs)
        if not toBeBuilt and rigRoot.isBuilt.get():
            if rigRoot.rigMode.get() == 1: # Anim Mode
                self.bhvMng.SetupAnimJoints(rigRoot)
            for rigRoot in allRigRoots:
                self.bhvMng.Teardown_Rig(rigRoot)
        elif toBeBuilt and not rigRoot.isBuilt.get():
            for rigRoot in allRigRoots:
                self.bhvMng.Setup_Rig(rigRoot)
            if rigRoot.rigMode.get() == 1: # Anim Mode
                self.bhvMng.ApplyAnimJoints(limbs, 1, 1, scl)
                for limb in limbs:
                    self.bhvMng.TeardownAnimJoints(limb)
        
        # LAYERS
        c = self.controlLayerState
        j = self.jointLayerState
        m = self.meshLayerState
        rigUtil.SetLayerState(rigData.CONTROL_DISP_LAYER, c[0], c[1])
        rigUtil.SetLayerState(rigData.JOINTS_DISP_LAYER, j[0], j[1])
        rigUtil.SetLayerState(rigData.MESHES_DISP_LAYER, m[0], m[1])
    




















