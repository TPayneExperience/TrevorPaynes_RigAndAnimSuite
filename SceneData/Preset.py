
import imp

import pymel.core as pm

import Data.General_Data as genData
#imp.reload(genData)
import Utilities.Logger as log
#imp.reload(log)
import Utilities.General_Utilities as genUtil
#imp.reload(genUtil)

class Preset:
    @staticmethod
    def Add(rigRoot, limbs, presetName):
        log.funcFileDebug()
        presetID = rigRoot.nextPresetID.get()
        rigRoot.nextPresetID.set(presetID + 1)
        for limb in limbs:
            preset = Preset._AddPreset(limb)
            Preset._CopyLimbToPreset(limb, preset)
            preset.ID.set(presetID)
            preset.presetName.set(presetName)
            pm.connectAttr(rigRoot.presets, preset.rigRoot)
        return presetID

    @staticmethod
    def Remove(preset):
        log.funcFileDebug()
        pm.delete(preset)

    @staticmethod
    def _AddPreset(limb):
        log.funcFileDebug()
        name = 'LimbPreset_%s_#' % limb.pfrsName.get()
        preset = pm.createNode('network', n=name)
        genUtil.AbstractInitializer(preset, 'Preset')
        pm.connectAttr(limb.presets, preset.limb)
        return preset
    
    @staticmethod
    def _CopyLimbToPreset(limb, preset):
        preset.bhvFile.set(limb.bhvFile.get())
        preset.enableLimb.set(limb.enableLimb.get())
        preset.limbParentJoint.set(limb.limbParentJoint.get())
        limbParent = pm.listConnections(limb.limbParent)
        if limbParent:
            parent = limbParent[0]
            pm.connectAttr(parent.presetLimbChildren, preset.limbParent)


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"

