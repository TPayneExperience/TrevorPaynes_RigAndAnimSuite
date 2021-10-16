
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
#imp.reload(absInit)
import Data.General_Data as genData
#imp.reload(genData)
import Data.Rig_Data as rigData
#imp.reload(rigData)
import Utilities.Logger as log
#imp.reload(log)
import Utilities.Rig_Utilities as rigUtil
#imp.reload(rigUtil)

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
        if rigRoot.hasAttr('animationFolderPath'):
            rigRoot.deleteAttr('animationFolderPath')

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
