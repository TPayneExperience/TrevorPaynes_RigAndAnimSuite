
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
reload(absInit)
import Data.General_Data as genData
reload(genData)
import Data.Rig_Data as rigData
reload(rigData)
import Common.Logger as log
reload(log)

class InitLimbPreset(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(limbPreset):
        log.funcFileDebug()
        if limbPreset.hasAttr('presetParent'):
            return
            
        hide = genData.HIDE_ATTRS

        pm.addAttr(limbPreset, ln='presetParent', dt='string', h=hide)
        pm.addAttr(limbPreset, ln='limb', dt='string', h=hide)
        pm.addAttr(limbPreset, ln='limbParent', dt='string', h=hide)
        pm.addAttr(limbPreset, ln='limbParentControl', at='short',h=hide)
        pm.addAttr(limbPreset, ln='bhvFile', dt='string', h=hide)
        pm.addAttr(limbPreset, ln='enableLimb', at='bool', h=hide)
