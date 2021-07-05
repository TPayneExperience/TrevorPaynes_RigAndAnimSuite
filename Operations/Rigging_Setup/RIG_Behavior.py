
import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Utilities.Logger as log
reload(log)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
# import Data.Rig_Data as rigData
# reload(rigData)
import SceneData.Limb as lmb
reload(lmb)
import SceneData.Group as grp
reload(grp)
import LimbSetup as ls
reload(ls)
import Utilities.General_Utilities as genUtil
reload(genUtil)
import SceneData.Preset as pst
reload(pst)

class RIG_Behavior(absOp.Abstract_Operation):
    isRigBuilt = False
    applyBakedAnimations = False
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
        self._ls.bhvMng = self.bhvMng
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

    def ResetToDefaultParent(self, limbs):
        log.funcFileDebug()
        self._ls._ResetToDefaultParent(limbs)
    
#=========== PRESETS ====================================

    def SavePreset(self, rigRoot, limbs, presetName):
        log.funcFileDebug()
        return pst.Preset.Add(rigRoot, limbs, presetName)

    def ApplyPreset(self, rigRoot, presetID):
        log.funcFileDebug()
        allPresets = pm.listConnections(rigRoot.presets)
        presets = [p for p in allPresets if p.ID.get() == presetID]
        for preset in presets:
            self._ApplyLimbPreset_Bhv(preset)
            self._ApplyLimbPreset_Parent(preset)
            self._ApplyLimbPreset_Enable(preset)

    def DeletePreset(self, rigRoot, presetID):
        log.funcFileDebug()
        allPresets = pm.listConnections(rigRoot.presets)
        presets = [p for p in allPresets if p.ID.get() == presetID]
        for preset in presets:
            pst.Preset.Remove(preset)
    
    def RenamePreset(self, rigRoot, presetID, newName):
        log.funcFileDebug()
        allPresets = pm.listConnections(rigRoot.presets)
        presets = [p for p in allPresets if p.ID.get() == presetID]
        for preset in presets:
            preset.presetName.set(newName)

    def _ApplyLimbPreset_Bhv(self, preset):
        limb = pm.listConnections(preset.limb)[0]
        newBhvFile = preset.bhvFile.get()
        oldBhvFile = limb.bhvFile.get()
        if oldBhvFile != newBhvFile:
            self.SetLimbBehaviorFile(limb, newBhvFile)
        return oldBhvFile != newBhvFile
    
    def _ApplyLimbPreset_Parent(self, preset):
        limb = pm.listConnections(preset.limb)[0]
        oldLimbParent = pm.listConnections(limb.limbParent)
        newLimbParent = pm.listConnections(preset.limbParent)
        parentChanged = False
        if oldLimbParent != newLimbParent:
            parentChanged = True
            if newLimbParent:
                self.ReparentLimb(limb, newLimbParent[0])
            else:
                self.ReparentLimb(limb, None)
            self._ls._UpdateParentControlEnum(limb)
        oldIndex = limb.limbParentJoint.get()
        newIndex = preset.limbParentJoint.get()
        if oldIndex != newLimbParent:
            parentChanged = True
            limb.limbParentJoint.set(newIndex)
        return parentChanged
        
    def _ApplyLimbPreset_Enable(self, preset):
        limb = pm.listConnections(preset.limb)[0]
        oldEnable = limb.enableLimb.get()
        newEnable = preset.enableLimb.get()
        if oldEnable != newEnable:
            limb.enableLimb.set(newEnable)
        return oldEnable != newEnable

#=========== MISC ====================================

    def ResetControlTransforms(self, limb):
        self._ls.ResetControlTransforms(limb)

    def RemoveUnusedGroups(self, limb):
        usedGroups = set(pm.listConnections(limb.usedGroups))
        for preset in pm.listConnections(limb.presets):
            bhv = self.bhvMng.bhvs[preset.bhvFile.get()]
            for g in rigUtil.GetLimbGroups(limb, bhv.groupType):
                usedGroups.add(g)
        for group in pm.listConnections(limb.limbGroups):
            if group not in usedGroups:
                grp.Group.Remove(group)

    def EnableLimb(self, limb, isEnabled):
        log.funcFileDebug()
        limb.enableLimb.set(isEnabled)
    
    def SetLimbBehaviorType(self, limb, bhvType):
        log.funcFileDebug()
        bhvFile = self.bhvMng.bhvFiles[bhvType][-1]
        return self.SetLimbBehaviorFile(limb, bhvFile)

    def SetLimbBehaviorFile(self, limb, bhvFile):
        log.funcFileDebug()
        return self.bhvMng.SetBehavior(limb, bhvFile)
