

import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
import Data.General_Data as genData
import Utilities.Logger as log

class InitMesh(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(mesh):
        log.funcFileDebug()
        if mesh.hasAttr('pfrsVersion'):
            return

        #============= ATTRS ============================

        hide = genData.HIDE_ATTRS
        
        pm.addAttr(mesh, ln='pfrsVersion', at='short', dv=100, h=hide)
        pm.addAttr(mesh, ln='ID', at='long', dv=1, h=hide)
        pm.addAttr(mesh, ln='rigRoot', dt='string')
        pm.addAttr(mesh, ln='backupMesh', dt='string')

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
