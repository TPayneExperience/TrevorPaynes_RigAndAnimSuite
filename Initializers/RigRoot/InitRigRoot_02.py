
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
reload(absInit)
import Data.General_Data as genData
reload(genData)
import Utilities.Logger as log
reload(log)

class InitRigRoot(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(rigRoot):
        log.funcFileDebug()
        if rigRoot.pfrsVersion.get() > 100:
            return

        # New Stuff
        hide = genData.HIDE_ATTRS
        pm.addAttr(rigRoot, ln='paintWeightsUseAnimJoints', at='bool', h=hide)


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
