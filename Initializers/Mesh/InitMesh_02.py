
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
reload(absInit)
import Data.General_Data as genData
reload(genData)
import Data.Rig_Data as rigData
reload(rigData)
import Utilities.Logger as log
reload(log)

class InitMesh(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(mesh):
        log.funcFileDebug()
        if mesh.pfrsVersion.get() > 100:
            return 
        mesh.pfrsVersion.set(110)
        #============= ATTRS ============================

        hide = genData.HIDE_ATTRS
        pm.addAttr(mesh, ln='pfrsSkinCluster', dt='string', h=hide)

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
