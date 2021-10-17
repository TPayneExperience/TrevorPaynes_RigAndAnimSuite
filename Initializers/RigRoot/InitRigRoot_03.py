
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
import Data.General_Data as genData
import Utilities.Logger as log

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
