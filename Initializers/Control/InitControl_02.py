
import imp

import Abstracts.Abstract_Initializer as absInit
import Utilities.Logger as log

class InitControl(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(control):
        log.funcFileDebug()
        if control.pfrsVersion.get() >= 110: # Beta
            return 
        control.pfrsVersion.set(110)

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"

        