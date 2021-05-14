
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
reload(absInit)
import Data.General_Data as genData
reload(genData)
# import Data.Rig_Data as rigData
# reload(rigData)
import Common.Logger as log
reload(log)

class InitConfig(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(temp):
        log.funcFileDebug()
        if temp.data:
            return 
        temp.data = {
                'version': 100,
                'windowPos': [200, 200],
                'jointRotOrder': 0,

                # Joint Aim/Up axes, rigData.JOINT_AIM_UP_AXES
                'jointAimAxis': 0,
                'jointUpAxis': 2, 
                'mirrorAimAxis': 1,
                'mirrorUpAxis': 3, 

                # RigRoot naming
                'showRootName': False,
                'rigRootName': 'TEMP',
                'rigRootIndex': 0,
                'limbIndex': 1,
                'jointIndex': 2,
                'sideIndex': 3,
                'typeIndex': 4,
                
                # Paths
                'templateFolderPath': '',
                'controlShapesFilePath': '',

                # Control Colors
                'lControlColor': (0, 0, 1),
                'mControlColor': (1, 1, 0),
                'rControlColor': (1, 0, 0),
                'lControlTransparency': 0.8,
                'mControlTransparency': 0.8,
                'rControlTransparency': 0.8,

                # Control Shapes
                'ControlShape_Joint': 'Cube_Poly'
                }


        