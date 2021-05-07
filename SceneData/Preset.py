
import os

import pymel.core as pm

import Data.General_Data as genData
reload(genData)
import Common.Logger as log
reload(log)
import Common.General_Utilities as genUtil
reload(genUtil)

class Preset:
    @staticmethod
    def Add(presetName, rigRoot, limbs):
        log.funcFileDebug()
        hide = genData.HIDE_ATTRS
        presetParent = pm.createNode('network')
        pm.addAttr(presetParent, ln='limbPresets', dt='string', h=hide)
        pm.addAttr(presetParent, ln='presetName', dt='string', h=hide)
        pm.addAttr(presetParent, ln='rigRoot', dt='string', h=hide)
        presetParent.presetName.set(presetName)
        for limb in limbs:
            preset = Preset._AddLimbPreset(limb)
            pm.connectAttr(presetParent.limbPresets, preset.presetParent)
        pm.connectAttr(rigRoot.presets, presetParent.rigRoot)
        return presetParent

    @staticmethod
    def Remove(preset):
        log.funcFileDebug()
        # pm.delete(rigRoot)

    @staticmethod
    def _AddLimbPreset(limb):
        log.funcFileDebug()
        name = 'LimbPreset_%s_#' % limb.pfrsName.get()
        limbPreset = pm.createNode('network', n=name)
        genUtil.AbstractInitializer(limbPreset, 'LimbPreset')

        # Copy Values
        pm.connectAttr(limb.presets, limbPreset.limb)
        limbPreset.bhvFile.set(limb.bhvFile.get())
        limbPreset.enableLimb.set(limb.enableLimb.get())
        limbPreset.limbParentJoint.set(limb.limbParentJoint.get())

        # Connect parent
        limbParent = pm.listConnections(limb.limbParent)
        if limbParent:
            pm.connectAttr(limbParent[0].presets, limbPreset.limbParent)

        return limbPreset














