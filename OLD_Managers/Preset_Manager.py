
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

class Preset_Manager:
    def __init__(self, parent):
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
        self.logger = parent.logger

    def SavePreset(self, presetName, limbs):
        self.logger.debug('\tPstMng > SavePreset')
        hide = rigData.HIDE_ATTRS
        root = pm.listConnections(limbs[0].rigRoot)[0]
        presetParent = pm.createNode('network')
        pm.addAttr(presetParent, ln='limbPresets', dt='string', h=hide)
        pm.addAttr(presetParent, ln='presetName', dt='string', h=hide)
        pm.addAttr(presetParent, ln='rigRoot', dt='string', h=hide)
        presetParent.presetName.set(presetName)
        for limb in limbs:
            preset = self._AddLimbPreset(limb)
            pm.connectAttr(presetParent.limbPresets, preset.presetParent)
        pm.connectAttr(root.presets, presetParent.rigRoot)
        self.UpdatePresetName(presetParent)
        return presetParent

    def DeletePreset(self, preset):
        self.logger.debug('\tPstMng > DeletePreset')
        limbPresets = pm.listConnections(preset.limbPresets)
        pm.delete(preset)
        pm.delete(limbPresets)

    def UpdatePresetName(self, presetParent):
        presetName = presetParent.presetName.get()
        root = pm.listConnections(presetParent.rigRoot)[0]
        name = '%s_%s_Preset_#' % (root.prefix.get(), presetName)
        presetParent.rename(name)

    def ApplyPreset(self, preset):
        self.logger.debug('\tPstMng > ApplyPreset')
        for limbPreset in pm.listConnections(preset.limbPresets):
            limb = pm.listConnections(limbPreset.limb)[0]
            newBhvType = limbPreset.bhvType.get()
            oldBhvType = limb.bhvType.get()
            if oldBhvType != newBhvType:
                self.limbMng.SetBhvType(limb, newBhvType)
            newLimbParent = pm.listConnections(limbPreset.limbParent)
            if newLimbParent:
                self.limbMng.ReparentLimb(limb, newLimbParent[0])
            else:
                self.limbMng.ReparentLimb(limb, None)
            # self.jntMng.UpdateLimbParentJoint(limb)
            newBhvParent = pm.listConnections(limbPreset.bhvParent)
            if newBhvParent:
                self.limbMng.SetBhvParentLimb(limb, newBhvParent[0])
            else:
                self.limbMng.SetBhvParentLimb(limb, None)
            limb.limbParentJoint.set(limbPreset.limbParentJoint.get())

    def _AddLimbPreset(self, limb):
        self.logger.debug('\tPstMng > _AddLimbPreset')
        hide = rigData.HIDE_ATTRS
        name = 'LimbPreset_%s_#' % limb.pfrsName.get()
        preset = pm.createNode('network', n=name)
        pm.addAttr(preset, ln='presetParent', dt='string', h=hide)
        pm.addAttr(preset, ln='limb', dt='string', h=hide)
        pm.addAttr(preset, ln='limbParent', dt='string', h=hide)
        pm.addAttr(preset, ln='enableLimb', at='bool', h=hide)
        pm.addAttr(preset, ln='limbParentJoint', at='short',h=hide)
        pm.addAttr(preset, ln='bhvType', at='short', h=hide)
        pm.addAttr(preset, ln='bhvParent', dt='string', h=hide)
        pm.addAttr(preset, ln='bhvParentJoint', at='short', h=hide)

        pm.connectAttr(limb.presets, preset.limb)
        preset.bhvType.set(limb.bhvType.get())
        preset.enableLimb.set(limb.enableLimb.get())
        preset.limbParentJoint.set(limb.limbParentJoint.get())
        preset.bhvParentJoint.set(limb.bhvParentJoint.get())

        # PARENTS
        limbParent = pm.listConnections(limb.limbParent)
        if limbParent:
            pm.connectAttr(limbParent[0].presets, preset.limbParent)
        bhvParent = pm.listConnections(limb.bhvParent)
        if bhvParent:
            pm.connectAttr(bhvParent[0].presets, preset.bhvParent)

        return preset





















