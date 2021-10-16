
import imp

import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
#imp.reload(absInit)
import Data.General_Data as genData
#imp.reload(genData)
import Data.Rig_Data as rigData
#imp.reload(rigData)
import Utilities.Logger as log
#imp.reload(log)

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
