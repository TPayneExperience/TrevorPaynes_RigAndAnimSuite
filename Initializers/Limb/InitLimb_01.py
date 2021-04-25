
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
reload(absInit)
import Data.General_Data as genData
reload(genData)
import Data.Rig_Data as rigData
reload(rigData)
import Common.Logger as log
reload(log)

class InitLimb(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(limb):
        log.funcFileDebug()
        if limb.hasAttr('limbType'):
            return
            
        #============= ATTRS ============================

        hide = genData.HIDE_ATTRS
        limbTypes = ':'.join(rigData.LIMB_TYPES)
        limbSides = ':'.join(rigData.LIMB_SIDES)
        
        pm.addAttr(limb, ln='rigRoot', dt='string', h=hide)
        pm.addAttr(limb, ln='ID', at='long', h=hide)
        pm.addAttr(limb, ln='pfrsName', dt='string', h=hide)
        pm.addAttr(limb, ln='limbType', at='enum', en=limbTypes, h=hide)
        pm.addAttr(limb, ln='side', at='enum', en=limbSides, h=hide)
        pm.addAttr(limb, ln='joints', dt='string', h=hide)
        pm.addAttr(limb, ln='enableLimb', at='bool', dv=1, h=hide)

        # LIMB PARENTING
        pm.addAttr(limb, ln='limbParent', dt='string', h=hide)
        pm.addAttr(limb, ln='limbChildren', dt='string', h=hide)
        pm.addAttr(limb, ln='limbParentControl', at='enum', en='None', 
                                        h=hide)
        pm.addAttr(limb, ln='parentableGroups', dt='string', h=hide)
        pm.addAttr(limb, ln='mirrorLimb', at='long', h=hide)

        # BEHAVIORS
        pm.addAttr(limb, ln='bhvFile', dt='string', h=hide)
        pm.addAttr(limb, ln='limbGroups', dt='string', h=hide)
            #>>> TO IMPLEMENT!
        pm.addAttr(limb, ln='usedGroups', dt='string', h=hide)
        # pm.addAttr(limb, ln='rebuildBhvDep', at='bool', h=hide)

        # CHANNEL BOX
        pm.addAttr(limb, ln='channelBoxJointCtrPos', at='bool', dv=1, h=hide)
        pm.addAttr(limb, ln='channelBoxJointCtrRot', at='bool', dv=1, h=hide)
        pm.addAttr(limb, ln='channelBoxJointCtrScale', at='bool', dv=1, h=hide)
        pm.addAttr(limb, ln='channelBoxLimbCtrPos', at='bool', dv=1, h=hide)
        pm.addAttr(limb, ln='channelBoxLimbCtrRot', at='bool', dv=1, h=hide)
        pm.addAttr(limb, ln='channelBoxLimbCtrScale', at='bool', dv=1, h=hide)
        
        pm.addAttr(limb, ln='presets', dt='string', h=hide)

        # SHOULD BE HANDLED BY BEHAVIOERS INSTEAD!!!
        # # CST
        # pm.addAttr(limb, ln='bhvChildren', dt='string', h=hide) 
        # pm.addAttr(limb, ln='bhvParent', dt='string', h=hide) 
        # pm.addAttr(limb, ln='bhvParentJoint', at='enum', en='None', h=hide)
        # pm.addAttr(limb, ln='bhvCstType', at='enum', en=bhvCstTypes, h=hide)
        # pm.addAttr(limb, ln='cstPosX', at='bool', dv=1, h=hide)
        # pm.addAttr(limb, ln='cstPosY', at='bool', dv=1, h=hide)
        # pm.addAttr(limb, ln='cstPosZ', at='bool', dv=1, h=hide)
        # pm.addAttr(limb, ln='cstRotX', at='bool', dv=1, h=hide)
        # pm.addAttr(limb, ln='cstRotY', at='bool', dv=1, h=hide)
        # pm.addAttr(limb, ln='cstRotZ', at='bool', dv=1, h=hide)

        # # IK PV + Look At
        # pm.addAttr(limb, ln='bhvLookAtAxis', at='enum', en=axes) # IKPV, LookAt
        # pm.addAttr(limb, ln='bhvLookAtDistance', at='float', min=0, dv=1) # IKPV, LookAt
        # pm.addAttr(limb, ln='bhvIKPVDistance', at='float', min=0, dv=1) # IKPV, LookAt
        
        