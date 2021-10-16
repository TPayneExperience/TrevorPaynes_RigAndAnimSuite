
import imp

import pymel.core as pm

import Data.Rig_Data as rigData
#imp.reload(rigData)
import Utilities.Logger as log
#imp.reload(log)
import Utilities.General_Utilities as genUtil
#imp.reload(genUtil)

class RigRoot:
    @staticmethod
    def Add():
        log.funcFileDebug()
        rigRoot = pm.group(name='ROOT_tempName', em=True)
        genUtil.AbstractInitializer(rigRoot, 'RigRoot')
        rigRoot.pfrsName.set('TEMP')
        rigRoot.category.set('Rigging_Setup')
        rigRoot.operation.set('Limb Setup')

        return rigRoot

    @staticmethod
    def Remove(rigRoot):
        log.funcFileDebug()
        pm.delete(rigRoot)


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"













