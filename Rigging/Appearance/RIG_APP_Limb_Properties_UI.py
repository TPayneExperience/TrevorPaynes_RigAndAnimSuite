
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

class RIG_APP_Limb_Properties_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.grpMng = parent.grpMng
        self.rigBHV = parent.rigBHV
        self.ctrMng = parent.ctrMng
        self.logger = parent.logger
        self.pfrs = parent.pfrs

        self.ctrAxis_at = None
        self.limb = None
        self._limbs = {} # name : limb
        self.limbOrder = []

        self._Setup()
    
#=========== SETUP UI ==============================================

    def _Setup(self):
        with pm.frameLayout('Limb Properties', bv=1, en=0) as self.prop_l:
            with pm.columnLayout(adj=1) as self.appLimbProp_cl:
                self.ctrDist_cg = pm.attrControlGrp( l='Control Distance', a='persp.translateX')
        with pm.frameLayout('Channel Box Controls', bv=1, en=0) as self.lockHide_l:
            with pm.columnLayout(co=('left', -100)) as self.appLimbLockHide_cl:
                msg = 'FK = Joint FK, Empty'
                self.jointPos = pm.attrControlGrp(l='FK Translate', ann=msg,
                                                a='perspShape.shakeEnabled')
                self.jointRot = pm.attrControlGrp(l='FK Rotate', ann=msg,
                                                a='perspShape.shakeEnabled')
                self.jointScale = pm.attrControlGrp(l='FK Scale', ann=msg,
                                                a='perspShape.shakeEnabled')
                msg = 'Misc = Look At, IK Pole Vector'
                self.limbPos = pm.attrControlGrp(l='MISC Translate', ann=msg,
                                                a='perspShape.shakeEnabled')
                self.limbRot = pm.attrControlGrp(l='MISC Rotate', ann=msg,
                                                a='perspShape.shakeEnabled')
                self._limbscale = pm.attrControlGrp(l='MISC Scale', ann=msg,
                                                a='perspShape.shakeEnabled')


#=========== FUNCTIONALITY ==============================================

    def SetLimb(self, limb):
        self.logger.debug('\tApp_LimbProp > SetLimb')
        self.limb = limb
        pm.frameLayout(self.prop_l, e=1, en=bool(limb))
        pm.frameLayout(self.lockHide_l, e=1, en=bool(limb))
        if not limb:
            return
        self.PopulateLimbProperties()
        self.PopulateChannelBoxControls()

    def PopulateLimbProperties(self):
        self.logger.debug('\tApp_LimbProp > PopulateLimbProperties')
        self.PopulateControlDist()

    def PopulateControlDist(self):
        self.logger.debug('\tApp_LimbProp > PopulateControlDist')
        pm.attrControlGrp(self.ctrDist_cg, e=1, en=0)
        bhvType = self.limb.bhvType.get()
        if self.ctrAxis_at:
            pm.deleteUI(self.ctrAxis_at)
            self.ctrAxis_at = None
        if bhvType in rigData.IK_PV_BHV_INDEXES:
            pm.attrControlGrp(  self.ctrDist_cg, e=1, en=1, 
                                a=self.limb.bhvIKPVDistance,
                                cc=pm.Callback(self.UpdateIKPVCtr, 1))
        if bhvType in rigData.LOOK_AT_BHV_INDEXES:
            pm.attrControlGrp(  self.ctrDist_cg, e=1, en=1, 
                                a=self.limb.bhvLookAtDistance,
                                cc=pm.Callback(self.UpdateLookAtCtr, 1))
            self.ctrAxis_at = pm.attrEnumOptionMenu(l='Control Position Axis',
                                                    at=self.limb.bhvLookAtAxis,
                                                    p=self.appLimbProp_cl,
                                                    cc=self.InitLookAtCtr)

    def PopulateChannelBoxControls(self):
        self.logger.debug('\tApp_LimbProp > PopulateChannelBoxControls')
        pm.attrControlGrp(self.jointPos, e=1, a=self.limb.channelBoxJointCtrPos,
                                        cc=pm.Callback(self.LogJointPos, 1))
        pm.attrControlGrp(self.jointRot, e=1, a=self.limb.channelBoxJointCtrRot,
                                        cc=pm.Callback(self.LogJointRot, 1))
        pm.attrControlGrp(self.jointScale, e=1, a=self.limb.channelBoxJointCtrScale,
                                        cc=pm.Callback(self.LogJointScale, 1))
        pm.attrControlGrp(self.limbPos, e=1, a=self.limb.channelBoxLimbCtrPos,
                                        cc=pm.Callback(self.LogLimbPos, 1))
        pm.attrControlGrp(self.limbRot, e=1, a=self.limb.channelBoxLimbCtrRot,
                                        cc=pm.Callback(self.LogLimbRot, 1))
        pm.attrControlGrp(self._limbscale, e=1, a=self.limb.channelBoxLimbCtrScale,
                                        cc=pm.Callback(self.LogLimbScale, 1))
        

#=========== LOGGING ==============================================

    def LogSetVisParentBhvType(self, visBhvType):
        msg = '\tLimbProp > LogSetVisParentBhvType to "%s"' % visBhvType
        self.logger.info(msg)

    def LogJointPos(self, ignore):
        value = str(self.limb.channelBoxJointCtrPos.get())
        msg = '\tLimbProp > SET ChannelBox JOINT POS to "%s"' % value
        self.logger.info(msg)

    def LogJointRot(self, ignore):
        value = str(self.limb.channelBoxJointCtrRot.get())
        msg = '\tLimbProp > SET ChannelBox JOINT ROT to "%s"' % value
        self.logger.info(msg)

    def LogJointScale(self, ignore):
        value = str(self.limb.channelBoxJointCtrScale.get())
        msg = '\tLimbProp > SET ChannelBox JOINT SCALE to "%s"' % value
        self.logger.info(msg)

    def LogLimbPos(self, ignore):
        value = str(self.limb.channelBoxLimbCtrPos.get())
        msg = '\tLimbProp > SET ChannelBox LIMB POS to "%s"' % value
        self.logger.info(msg)

    def LogLimbRot(self, ignore):
        value = str(self.limb.channelBoxLimbCtrRot.get())
        msg = '\tLimbProp > SET ChannelBox LIMB ROT to "%s"' % value
        self.logger.info(msg)

    def LogLimbScale(self, ignore):
        value = str(self.limb.channelBoxLimbCtrScale.get())
        msg = '\tLimbProp > SET ChannelBox LIMB SCALE to "%s"' % value
        self.logger.info(msg)



#=========== CONTROL DISTANCE ==============================================

    def UpdateIKPVCtr(self, ignore):
        self.logger.debug('\tApp_LimbProp > UpdateLookAtCtr')
        self.grpMng.UpdateIKPVCtr(self.limb)

    def UpdateLookAtCtr(self, ignore):
        self.logger.debug('\tApp_LimbProp > UpdateLookAtCtr')
        self.grpMng.UpdateLookAtCtr(self.limb)

    def InitLookAtCtr(self, ignore):
        self.logger.debug('\tApp_LimbProp > InitLookAtCtr')
        self.grpMng.InitLookAtGroup(self.limb)




