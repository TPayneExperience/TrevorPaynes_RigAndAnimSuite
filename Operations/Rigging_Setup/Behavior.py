

import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
import Utilities.Logger as log
import Utilities.Rig_Utilities as rigUtil
import SceneData.Group as grp
import Operations.Rigging_Setup.LimbSetup as ls
import SceneData.Preset as pst

class Behavior(absOp.Abstract_Operation):
    isRigBuilt = False
    applyBakedAnimations = False
    areLimbsRequired = True
    areMeshesRequired = False
    validRigStates = (0, 1)     # 0 = Setup, 1 = Anim
    controlLayerState = (1, 1)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef
    meshLayerState = (1, 1)    # isVis, isRef
    
    def __init__(self):
        self._ls = ls.LimbSetup()

#=========== LIMB SETUP WRAPPERS ====================================

    def ReparentLimb(self, childLimb, parentLimb):
        log.funcFileDebug()
        self._ls._ReparentLimb(childLimb, parentLimb)
    
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

    def FreezeGroupXformsForLimb(self, limb):
        groups = pm.listConnections(limb.limbGroups)
        groups += pm.listConnections(limb.jointGroups)
        for group in groups:
            pm.makeIdentity(group, a=1, t=1, r=1, s=1)

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
        self.TeardownBhvOp(limb)
        newBhv = self.bhvMng.SetBehavior(limb, bhvFile)
        self.SetupBhvOp(limb)
        self.UpdateToBeBaked(limb)
        return newBhv

    def SetupBhvOp(self, limb):
        bhvFile = limb.bhvFile.get()
        bhv = self.bhvMng.bhvs[bhvFile]
        bhv.Setup_ForBhvOp(limb)

    def TeardownBhvOp(self, limb):
        bhvFile = limb.bhvFile.get()
        bhv = self.bhvMng.bhvs[bhvFile]
        bhv.Teardown_ForBhvOp(limb)

    def UpdateToBeBaked(self, limb):
        if pm.listConnections(limb.animJoints):
            limb.toBeBaked.set(1)


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
