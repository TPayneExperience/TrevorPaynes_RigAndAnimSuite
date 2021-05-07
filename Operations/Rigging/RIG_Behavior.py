
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
import SceneData.Preset as pst
reload(pst)
import SceneData.Behavior_Manager as bhvMng
reload(bhvMng)

class RIG_Behavior(absOp.Abstract_Operation):
    isRigBuilt = False
    validRigStates = (0, 1)     # 0 = Setup, 1 = Anim
    controlLayerState = (1, 1)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef
    meshLayerState = (1, 1)    # isVis, isRef
    def __init__(self):
        self._ls = ls.LimbSetup()

#=========== LIMB SETUP WRAPPERS ====================================

    def AddEmptyLimb(self, rigRoot):
        log.funcFileDebug()
        limb = lmb.Limb.AddEmpty(rigRoot)
        self._ls._InitBehavior(rigRoot, limb)
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
    
#=========== PRESETS ====================================

    def SavePreset(self, presetName, rigRoot, limbs):
        log.funcFileDebug()
        preset = pst.Preset.Add(presetName, rigRoot, limbs)
        self._UpdatePresetName(preset, rigRoot)
        return preset

    def ApplyPreset(self, preset):
        log.funcFileDebug()
        for limbPreset in pm.listConnections(preset.limbPresets):
            self._ApplyLimbPreset_Bhv(limbPreset)
            self._ApplyLimbPreset_Parent(limbPreset)
            self._ApplyLimbPreset_Enable(limbPreset)

    def DeletePreset(self, preset):
        log.funcFileDebug()
        limbPresets = pm.listConnections(preset.limbPresets)
        pm.delete(preset)
        pm.delete(limbPresets)
    
    def RenamePreset(self, preset, newName, rigRoot):
        log.funcFileDebug()
        preset.presetName.set(newName)
        self._UpdatePresetName(preset, rigRoot)

    def _UpdatePresetName(self, preset, rigRoot):
        presetName = preset.presetName.get()
        name = '%s_%s_Preset_#' % (rigRoot.pfrsName.get(), presetName)
        preset.rename(name)

    def _ApplyLimbPreset_Bhv(self, limbPreset):
        limb = pm.listConnections(limbPreset.limb)[0]
        # Check Behavior
        newBhvFile = limbPreset.bhvFile.get()
        oldBhvFile = limb.bhvFile.get()
        if oldBhvFile != newBhvFile:
            self.SetLimbBehaviorFile(limb, newBhvFile)
        return oldBhvFile != newBhvFile
    
    def _ApplyLimbPreset_Parent(self, limbPreset):
        limb = pm.listConnections(limbPreset.limb)[0]
        oldLimbParent = pm.listConnections(limb.limbParent)
        newLimbParent = pm.listConnections(limbPreset.limbParent)
        parentChanged = False
        if oldLimbParent != newLimbParent:
            parentChanged = True
            if newLimbParent:
                self.ReparentLimb(limb, newLimbParent[0])
            else:
                self.ReparentLimb(limb, None)
            self._ls._UpdateParentControlEnum(limb)
        oldIndex = limb.limbParentJoint.get()
        newIndex = limbPreset.limbParentJoint.get()
        if oldIndex != newLimbParent:
            parentChanged = True
            limb.limbParentJoint.set(newIndex)
        return parentChanged
        
    def _ApplyLimbPreset_Enable(self, limbPreset):
        limb = pm.listConnections(limbPreset.limb)[0]
        oldEnable = limb.enableLimb.get()
        newEnable = limbPreset.enableLimb.get()
        if oldEnable != newEnable:
            limb.enableLimb.set(newEnable)
        return oldEnable != newEnable

    # def _ApplyLimbPreset(self, limbPreset):
    #     limb = pm.listConnections(limbPreset.limb)[0]
    #     # Check Behavior
    #     newBhvFile = limbPreset.bhvFile.get()
    #     oldBhvFile = limb.bhvFile.get()
    #     if oldBhvFile != newBhvFile:
    #         self.SetLimbBehaviorFile(limb, newBhvFile)
    #     # Check Parent
    #     oldLimbParent = pm.listConnections(limb.limbParent)
    #     newLimbParent = pm.listConnections(limbPreset.limbParent)
    #     if oldLimbParent != newLimbParent:
    #         if newLimbParent:
    #             self.ReparentLimb(limb, newLimbParent[0])
    #         else:
    #             self.ReparentLimb(limb, None)
    #         self._ls._UpdateParentControlEnum(limb)
    #     limb.limbParentJoint.set(limbPreset.limbParentJoint.get())
    #     limb.enableLimb.set(limbPreset.enableLimb.get())

#=========== MISC ====================================

    def EnableLimb(self, limb, isEnabled):
        log.funcFileDebug()
        limb.enableLimb.set(isEnabled)
    
    def SetLimbBehaviorType(self, limb, bhvType):
        log.funcFileDebug()
        bhvFile = bhvMng.Behavior_Manager.bhvFiles[bhvType][-1]
        return self.SetLimbBehaviorFile(limb, bhvFile)

    def SetLimbBehaviorFile(self, limb, bhvFile):
        log.funcFileDebug()
        return bhvMng.Behavior_Manager.SetBehavior(limb, bhvFile)
