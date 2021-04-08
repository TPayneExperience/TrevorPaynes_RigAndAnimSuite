
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
reload(absInit)
# import Data.General_Data as genData
# reload(genData)
# import Data.Rig_Data as rigData
# reload(rigData)
import Common.Logger as log
reload(log)

class InitControl(absInit.Abstract_Initializer):
    @staticmethod
    @log.static_decorator
    def Initialize(control):
        if control.hasAttr('group'):
            return 
            
        # hide = genData.HIDE_ATTRS
        pm.addAttr(control, ln='group', dt='string')
        # pm.addAttr(control, ln='limb', dt='string')


        