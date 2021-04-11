
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
reload(absInit)
# import Data.General_Data as genData
# reload(genData)
# import Data.Rig_Data as rigData
# reload(rigData)
import Common.Logger as log
reload(log)

class InitJoint(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(joint):
        log.funcFileDebug()
        if joint.hasAttr('group'):
            return 
        # pm.addAttr(joint, ln='ID', at='short')
        pm.addAttr(joint, ln='limb', dt='string')
        # pm.addAttr(joint, ln='jointIndex', at='short')
        pm.addAttr(joint, ln='pfrsName', dt='string')
        pm.addAttr(joint, ln='group', dt='string')
        
        # SKIN ATTRS
        pm.addAttr(joint, ln='skinAnimStart', at='float')
        pm.addAttr(joint, ln='skinAnimEnd', at='float')
        pm.addAttr(joint, ln='jointColor', at='float3')
        pm.addAttr(joint, ln='jointColorR', at='float', p='jointColor')
        pm.addAttr(joint, ln='jointColorG', at='float', p='jointColor')
        pm.addAttr(joint, ln='jointColorB', at='float', p='jointColor')
        # joint.jointColor.set((colors))
        # colors = list(rigData.JOINT_COLORS[self.colorIndex])
        # self.colorIndex = (self.colorIndex + 1) % len(rigData.JOINT_COLORS)
        # shuffle(colors)
        