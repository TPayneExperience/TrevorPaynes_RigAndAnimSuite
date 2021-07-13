
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
reload(absInit)
import Data.General_Data as genData
reload(genData)
import Data.Rig_Data as rigData
reload(rigData)
import Utilities.Logger as log
reload(log)
# import Utilities.Rig_Utilities as rigUtil
# reload(rigUtil)

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
