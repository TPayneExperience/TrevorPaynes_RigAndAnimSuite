
from abc import ABCMeta, abstractproperty
import imp
import os

import pymel.core as pm

import SceneData.RigRoot as rrt
#imp.reload(rrt)
import Data.Rig_Data as rigData
#imp.reload(rigData)
import Utilities.Rig_Utilities as rigUtil
#imp.reload(rigUtil)
import Utilities.General_Utilities as genUtil
#imp.reload(genUtil)


class Abstract_Operation:
    __metaclass__ = ABCMeta
    requiredLicense = 0             # int | 0 = Free, 1 = Personal, 2 = Pro
    bhvMng = None
    
    @abstractproperty
    def isRigBuilt(self):           # bool | False
        pass 

    @abstractproperty
    def applyBakedAnimations(self): # bool | False
        pass 

    @abstractproperty
    def areLimbsRequired(self):     # bool | False
        pass 

    @abstractproperty
    def areMeshesRequired(self):    # bool | False
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
        aRigRoot = allRigRoots[0]
        if not toBeBuilt and aRigRoot.isBuilt.get():
            # Setup Anim Joints
            for rigRoot in allRigRoots:
                if rigRoot.rigMode.get() != 1: # Anim Mode
                    continue
                if rigRoot.hasAnimJoints.get():
                    continue
                self.bhvMng.SetupAnimJoints(rigRoot)
                rigRoot.hasAnimJoints.set(1)
            # Teardown Rig
            for rigRoot in allRigRoots:
                self.bhvMng.Teardown_Rig(rigRoot)

        elif toBeBuilt and not aRigRoot.isBuilt.get():
            # Setup Rig
            for rigRoot in allRigRoots:
                self.bhvMng.Setup_Rig(rigRoot)
            # Apply Anim Joints
            for rigRoot in allRigRoots:
                if rigRoot.rigMode.get() != 1: # Anim Mode
                    continue
                if not rigRoot.hasAnimJoints.get():
                    continue
                if not self.applyBakedAnimations:
                    continue
                limbs = pm.listConnections(rigRoot.limbs)
                self.bhvMng.ApplyAnimJoints(limbs, 1, 1, scl)
                for limb in limbs:
                    self.bhvMng.TeardownAnimJoints(limb)
                rigRoot.hasAnimJoints.set(0)
        
        # LAYERS
        c = self.controlLayerState
        j = self.jointLayerState
        m = self.meshLayerState
        rigUtil.SetLayerState(rigData.CONTROL_DISP_LAYER, c[0], c[1])
        rigUtil.SetLayerState(rigData.JOINTS_DISP_LAYER, j[0], j[1])
        rigUtil.SetLayerState(rigData.MESHES_DISP_LAYER, m[0], m[1])
    

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"




















