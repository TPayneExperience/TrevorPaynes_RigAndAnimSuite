
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
        pm.addAttr(joint, ln='pfrsName', dt='string', h=hide)
        pm.addAttr(joint, ln='group', dt='string', h=hide)
        
        # Store pos/rot for Setup/Teardown Rig
        pm.addAttr(joint, ln='startPos', at='double3', h=hide)
        pm.addAttr(joint, ln='startPosX', at='double', p='startPos', h=hide)
        pm.addAttr(joint, ln='startPosY', at='double', p='startPos', h=hide)
        pm.addAttr(joint, ln='startPosZ', at='double', p='startPos', h=hide)
        pm.addAttr(joint, ln='startRot', at='double3', h=hide)
        pm.addAttr(joint, ln='startRotX', at='double', p='startRot', h=hide)
        pm.addAttr(joint, ln='startRotY', at='double', p='startRot', h=hide)
        pm.addAttr(joint, ln='startRotZ', at='double', p='startRot', h=hide)
        
        # SKIN ATTRS
        pm.addAttr(joint, ln='skinAnimStart', at='float', h=hide)
        pm.addAttr(joint, ln='skinAnimEnd', at='float', h=hide)
        pm.addAttr(joint, ln='jointColor', at='float3', h=hide)
        pm.addAttr(joint, ln='jointColorR', at='float', p='jointColor', h=hide)
        pm.addAttr(joint, ln='jointColorG', at='float', p='jointColor', h=hide)
        pm.addAttr(joint, ln='jointColorB', at='float', p='jointColor', h=hide)

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
