
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

class Behavior(absOp.Abstract_Operation):
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
    
#=========== PRESETS ====================================

    def SavePreset(self, presetName, rigRoot, limbs):
        log.funcFileDebug()
        preset = pst.Preset.Add(presetName, rigRoot, limbs)
        self._UpdatePresetName(preset, rigRoot)
        return preset

    def ApplyPreset(self, preset):
        log.funcFileDebug()
        for limbPreset in pm.listConnections(preset.limbPresets):
            limb = pm.listConnections(limbPreset.limb)[0]
            newBhvFile = limbPreset.bhvFile.get()
            oldBhvFile = limb.bhvFile.get()
            if oldBhvFile != newBhvFile:
                self.SetLimbBehaviorFile(limb, newBhvFile)
            newLimbParent = pm.listConnections(limbPreset.limbParent)
            if newLimbParent:
                self.ReparentLimb(limb, newLimbParent[0])
            else:
                self.ReparentLimb(limb, None)
            self._ls._UpdateParentControlEnum(limb)
            limb.limbParentControl.set(limbPreset.limbParentControl.get())
            limb.enableLimb.set(limbPreset.enableLimb.get())

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
        name = '%s_%s_Preset_#' % (rigRoot.prefix.get(), presetName)
        preset.rename(name)


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
