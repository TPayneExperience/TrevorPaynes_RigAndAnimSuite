
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
        self.ikpvCtrJoint_at = None
        self.limb = None
        self._limbs = {} # name : limb
        self.limbOrder = []

        self._Setup()
    
#=========== SETUP UI ==============================================

    def _Setup(self):
        with pm.frameLayout('Limb Properties', bv=1, en=0) as self.prop_l:
            with pm.columnLayout(adj=1) as self.appLimbProp_cl:
                self.ctrDist_cg = pm.attrControlGrp( l='Control Distance', a='persp.translateX')
                self.visParentLimb_om = pm.optionMenu( l='Vis Parent Limb',
                                                        cc=self.SetVisParentLimb)
                self.visParentBhvType = pm.attrEnumOptionMenu(at='perspShape.filmFit')
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
        self.UpdateVisParentBhvTypeEnable()

    def PopulateLimbProperties(self):
        self.logger.debug('\tApp_LimbProp > PopulateLimbProperties')
        self.PopulateControlDist()
        self.PopulateVisParentCB()
        self.PopulateVisParentBhvType()
        self.PopulateIKPVJoint()

    def PopulateVisParentCB(self):
        self.logger.debug('\tApp_LimbProp > PopulateVisParentCB')
        pm.optionMenu(self.visParentLimb_om, e=1, dai=1)
        self._limbs = {} # name : limb
        self.limbOrder = []
        # POPULATE VIS PARENT COMBO BOX
        pm.menuItem(l='None', p=self.visParentLimb_om)
        for rootLimb in self.limbMng.GetRootLimbs(self.pfrs.root):
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                if limb == self.limb:
                    continue
                # side = self.limbMng.GetLimbSide(limb)
                side = rigData.LIMB_SIDES[limb.side.get()]
                name = '%s_%s' % (limb.pfrsName.get(), side)
                pm.menuItem(l=name, p=self.visParentLimb_om)
                self._limbs[name] = limb
                self.limbOrder.append(name)

        # LOAD SOURCE LIMB
        pm.attrEnumOptionMenu(self.visParentBhvType, e=1, en=0)
        if not self.limb:
            return
        parent = pm.listConnections(self.limb.visParent)
        if not parent:
            pm.optionMenu(self.visParentLimb_om, e=1, sl=1)
            return
        parent = parent[0]
        side = rigData.LIMB_SIDES[parent.side.get()]
        name = '%s_%s' % (parent.pfrsName.get(), side)
        index = self.limbOrder.index(name) + 2 # start index 1 + (none = 1)
        pm.optionMenu(self.visParentLimb_om, e=1, sl=index)

    def PopulateControlDist(self):
        self.logger.debug('\tApp_LimbProp > PopulateControlDist')
        bhvType = self.limb.bhvType.get()
        if self.ctrAxis_at:
            pm.deleteUI(self.ctrAxis_at)
            self.ctrAxis_at = None
        bhvFilter = rigData.IK_PV_BHV_INDEXES
        bhvFilter += rigData.LOOK_AT_BHV_INDEXES
        if bhvType in bhvFilter:
            pm.attrControlGrp(  self.ctrDist_cg, e=1, en=1, 
                                a=self.limb.bhvDistance,
                                cc=pm.Callback(self.UpdateDistGroupPos, 1))
            self.ctrAxis_at = pm.attrEnumOptionMenu(l='Control Position Axis',
                                                    at=self.limb.bhvAxis,
                                                    p=self.appLimbProp_cl,
                                                    cc=self.UpdateDistGroupPos)
        else:
            pm.attrControlGrp(self.ctrDist_cg, e=1, en=0)

    def PopulateVisParentBhvType(self):
        self.logger.debug('\tApp_LimbProp > PopulateVisParentBhvType')
        pm.deleteUI(self.visParentBhvType)
        self.visParentBhvType = pm.attrEnumOptionMenu(l='Vis Parent Bhv Type',
                                                at=self.limb.visParentBhvType,
                                                p=self.appLimbProp_cl,
                                                cc=self.LogSetVisParentBhvType)
    
    # REMOVE LATER
    def PopulateIKPVJoint(self):
        self.logger.debug('\tApp_LimbProp > PopulateIKPVJoint')
        bhvType = self.limb.bhvType.get()
        if self.ikpvCtrJoint_at:
            pm.deleteUI(self.ikpvCtrJoint_at)
            self.ikpvCtrJoint_at = None
        if bhvType in rigData.IK_PV_BHV_INDEXES:
            self.ikpvCtrJoint_at = pm.attrEnumOptionMenu(l='IK PV Control Joint',
                                                    at=self.limb.bhvIKPVCtrJoint,
                                                    p=self.appLimbProp_cl,
                                                    cc=self.UpdateDistGroupPos)
    
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
        
    def SetVisParentLimb(self, limbName):
        self.logger.info('\tLimbProp > SetVisParentLimb to ' + limbName)
        pm.disconnectAttr(self.limb.visParent)
        if limbName == 'None':
            self.UpdateVisParentBhvTypeEnable()
            return
        limb = self._limbs[limbName]
        pm.connectAttr(limb.visChildren, self.limb.visParent)
        self.UpdateVisParentBhvTypeEnable()
                

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

    def UpdateDistGroupPos(self, ignore):
        self.logger.debug('\tApp_LimbProp > UpdateDistGroupPos')
        dist = str(self.limb.bhvDistance.get())
        # axis = self.rigBHV.axesNames[self.limb.bhvAxis.get()]
        axis = rigData.AXES_NAMES[self.limb.bhvAxis.get()]
        msg1 = '\tLimbProp > SET CONTROL DISTANCE to "%s"' % dist
        msg2 = '\tLimbProp > SET CONTROL AXIS to "%s"' % axis
        self.logger.info(msg1)
        self.logger.info(msg2)
        self.grpMng.UpdateDistGroupPos(self.limb)

    def UpdateIKPVCtrJointParent(self, ignore):
        self.logger.debug('\tApp_LimbProp > UpdateIKPVCtrJointParent')

    def UpdateVisParentBhvTypeEnable(self):
        self.logger.debug('\tApp_LimbProp > UpdateVisParentBhvTypeEnable')
        enable = bool(pm.listConnections(self.limb.visParent))
        pm.attrEnumOptionMenu(self.visParentBhvType, e=1, en=enable)



