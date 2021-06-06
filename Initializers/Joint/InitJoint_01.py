
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
reload(absInit)
import Data.General_Data as genData
reload(genData)
# import Data.Rig_Data as rigData
# reload(rigData)
import Utilities.Logger as log
reload(log)

class InitJoint(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(joint):
        log.funcFileDebug()
        if joint.hasAttr('pfrsVersion'):
            return 

        hide = genData.HIDE_ATTRS
        pm.addAttr(joint, ln='pfrsVersion', at='short', dv=100, h=hide)
        pm.addAttr(joint, ln='ID', at='long', h=hide) # needed for skinning
        pm.addAttr(joint, ln='limb', dt='string', h=hide)
        pm.addAttr(joint, ln='loc', dt='string', h=hide)
        pm.addAttr(joint, ln='pfrsName', dt='string', h=hide)
        pm.addAttr(joint, ln='group', dt='string', h=hide)
        
        # SKIN ATTRS
        pm.addAttr(joint, ln='skinAnimStart', at='float', h=hide)
        pm.addAttr(joint, ln='skinAnimEnd', at='float', h=hide)
        pm.addAttr(joint, ln='jointColor', at='float3', h=hide)
        pm.addAttr(joint, ln='jointColorR', at='float', p='jointColor', h=hide)
        pm.addAttr(joint, ln='jointColorG', at='float', p='jointColor', h=hide)
        pm.addAttr(joint, ln='jointColorB', at='float', p='jointColor', h=hide)
        # joint.jointColor.set((colors))
        # colors = list(rigData.JOINT_COLORS[self.colorIndex])
        # self.colorIndex = (self.colorIndex + 1) % len(rigData.JOINT_COLORS)
        # shuffle(colors)
        