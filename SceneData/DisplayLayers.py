
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)
import Utilities.Logger as log
reload(log)

class DisplayLayers:
    @staticmethod
    def Add():
        controlDL = pm.createDisplayLayer(n=rigData.CONTROL_DISP_LAYER, empty=1)
        jointDL = pm.createDisplayLayer(n=rigData.JOINTS_DISP_LAYER, empty=1)
        meshDL = pm.createDisplayLayer(n=rigData.MESHES_DISP_LAYER, empty=1)
        controlDL.visibility.set(0)
        controlDL.displayType.set(2)
        jointDL.displayType.set(2)
        meshDL.displayType.set(2)

    @staticmethod
    def Remove():
        log.funcFileDebug()
        pm.delete(rigData.CONTROL_DISP_LAYER)
        pm.delete(rigData.JOINTS_DISP_LAYER)
        pm.delete(rigData.MESHES_DISP_LAYER)














