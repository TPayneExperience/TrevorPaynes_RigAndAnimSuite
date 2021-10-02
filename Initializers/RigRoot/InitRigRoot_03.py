
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
reload(absInit)
import Data.General_Data as genData
reload(genData)
import Data.Rig_Data as rigData
reload(rigData)
import Utilities.Logger as log
reload(log)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)

class InitRigRoot(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(rigRoot):
        log.funcFileDebug()
        if rigRoot.pfrsVersion.get() > 120:
            return
        rigRoot.pfrsVersion.set(120)

        #============= ATTRS ============================

        hide = genData.HIDE_ATTRS
        if rigRoot.hasAttr('posesFolderPath'):
            rigRoot.deleteAttr('posesFolderPath')

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
