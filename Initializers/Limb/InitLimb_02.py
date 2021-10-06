
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
reload(absInit)
import Data.General_Data as genData
reload(genData)
import Data.Rig_Data as rigData
reload(rigData)
import Utilities.Logger as log
reload(log)

class InitLimb(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(limb):
        log.funcFileDebug()
        if limb.pfrsVersion.get() >= 110: # Beta:
            return

        limb.pfrsVersion.set(110)
        hide = genData.HIDE_ATTRS
        
        pm.addAttr(limb, ln='setDrivenGroups', dt='string', h=hide)
        
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
