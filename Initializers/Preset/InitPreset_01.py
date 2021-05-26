
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
reload(absInit)
import Data.General_Data as genData
reload(genData)
import Data.Rig_Data as rigData
reload(rigData)
import Utilities.Logger as log
reload(log)

class InitPreset(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(preset):
        log.funcFileDebug()
        if preset.hasAttr('presetParent'):
            return
            
        hide = genData.HIDE_ATTRS

        pm.addAttr(preset, ln='presetParent', dt='string', h=hide)
        pm.addAttr(preset, ln='ID', at='long', h=hide)
        pm.addAttr(preset, ln='presetName', dt='string', h=hide)
        pm.addAttr(preset, ln='rigRoot', dt='string', h=hide)
        pm.addAttr(preset, ln='limb', dt='string', h=hide)
        pm.addAttr(preset, ln='limbParent', dt='string', h=hide)
        pm.addAttr(preset, ln='limbParentJoint', at='short',h=hide)
        pm.addAttr(preset, ln='bhvFile', dt='string', h=hide)
        pm.addAttr(preset, ln='bhvType', dt='string', h=hide)
        pm.addAttr(preset, ln='enableLimb', at='bool', h=hide)