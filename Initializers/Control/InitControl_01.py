

import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
import Data.General_Data as genData
import Utilities.Logger as log

class InitControl(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(control):
        log.funcFileDebug()
        if control.hasAttr('pfrsVersion'):
            return 
            
        hide = genData.HIDE_ATTRS
        pm.addAttr(control, ln='pfrsVersion', at='short', dv=100, h=hide)
        pm.addAttr(control, ln='group', dt='string', h=hide)


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"

        