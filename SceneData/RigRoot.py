
import os

import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)
import Common.Logger as log
reload(log)
import Common.General_Utilities as genUtil
reload(genUtil)

class RigRoot:
    @staticmethod
    def Add():
        log.funcFileDebug()
        rigRoot = pm.group(name='ROOT_tempName', em=True)
        genUtil.AbstractInitializer(rigRoot, 'RigRoot')
        rigRoot.pfrsName.set('TEMP')
        rigRoot.category.set('Rigging')
        rigRoot.operation.set('Limb Setup')

        return rigRoot

    @staticmethod
    def Remove(rigRoot):
        log.funcFileDebug()
        pm.delete(rigRoot)














