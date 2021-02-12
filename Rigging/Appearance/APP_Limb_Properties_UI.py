
import pymel.core as pm

class APP_Limb_Properties_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.grpMng = parent.grpMng
        self.bhvMng = parent.bhvMng
        self.ctrMng = parent.ctrMng
        self.logger = parent.logger

        self.ctrAxis_at = None
        self.ikpvCtrJoint_at = None
        # self.fkikJoint_at = None
        self.limb = None
        self.limbs = {} # name : limb
        self.limbOrder = []

        self._Setup()
    
    def Populate(self):
        '''When limb selected, populate vis targets'''
        self.logger.debug('\tApp_LimbProp > Populate')
        pm.optionMenu(self.visParentLimb_om, e=1, dai=1)
        self.limbs = {} # name : limb
        self.limbOrder = []
        # POPULATE COMBO BOX
        pm.menuItem(l='None', p=self.visParentLimb_om)
        for rootLimb in self.limbMng.GetRootLimbs():
            prefix = self.limbMng.GetLimbPrefix(rootLimb)
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                if limb == self.limb:
                    continue
                side = self.limbMng.GetLimbSide(limb)
                name = '%s_%s_%s' % (prefix, limb.pfrsName.get(), side)
                pm.menuItem(l=name, p=self.visParentLimb_om)
                self.limbs[name] = limb
                self.limbOrder.append(name)

        # LOAD SOURCE LIMB
        pm.attrEnumOptionMenu(self.visParentBhvType, e=1, en=0)
        if not self.limb:
            return
        parent = pm.listConnections(self.limb.appVisParentLimb)
        if not parent:
            pm.optionMenu(self.visParentLimb_om, e=1, sl=1)
            return
        parent = parent[0]
        prefix = self.limbMng.GetLimbPrefix(parent)
        side = self.limbMng.GetLimbSide(parent)
        name = '%s_%s_%s' % (prefix, parent.pfrsName.get(), side)
        index = self.limbOrder.index(name) + 2 # start index 1 + (none = 1)
        pm.optionMenu(self.visParentLimb_om, e=1, sl=index)

    def Depopulate(self):
        pm.frameLayout(self.prop_l, e=1, en=0)

#=========== SETUP UI ==============================================

    def _Setup(self):
        with pm.frameLayout('Limb Properties', bv=1, en=0) as self.prop_l:
            with pm.columnLayout(adj=1) as self.appLimbProp_cl:
                self.ctrDist_cg = pm.attrControlGrp( l='Control Distance', a='persp.translateX')
                self.visParentLimb_om = pm.optionMenu( l='Vis Parent Limb',
                                                        cc=self.SetVisParentLimb)
                self.visParentBhvType = pm.attrEnumOptionMenu(at='perspShape.filmFit')
                # self.fkikJoint_at = pm.attrControlGrp(l='Lock + Hide Scale',
                #                                 a='perspShape.shakeEnabled')
        with pm.frameLayout('Lock + Hide Controls', bv=1, en=0) as self.lockHide_l:
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
                self.limbScale = pm.attrControlGrp(l='MISC Scale', ann=msg,
                                                a='perspShape.shakeEnabled')


#=========== FUNCTIONALITY ==============================================

    def SetLimb(self, limb):
        self.logger.debug('\tApp_LimbProp > SetLimb')
        self.limb = limb
        pm.frameLayout(self.prop_l, e=1, en=bool(limb))
        pm.frameLayout(self.lockHide_l, e=1, en=bool(limb))
        if not limb:
            return
        self.PopulateControlDist()
        self.PopulateVisParent()
        self.PopulateLockHide()
        self.Populate()
        self.UpdateVisParentBhvTypeEnable()

    def PopulateControlDist(self):
        bhvType = self.limb.bhvType.get()
        if self.ctrAxis_at:
            pm.deleteUI(self.ctrAxis_at)
            self.ctrAxis_at = None
        bhvFilter = self.bhvMng.ikPVTypeIndexes
        bhvFilter += self.bhvMng.lookAtTypeIndexes
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

    def PopulateVisParent(self):
        bhvType = self.limb.bhvType.get()
        pm.deleteUI(self.visParentBhvType)
        self.visParentBhvType = pm.attrEnumOptionMenu(l='Vis Parent Bhv Type',
                                                at=self.limb.appVisParentBhvType,
                                                p=self.appLimbProp_cl,
                                                cc=self.LogSetVisParentBhvType)
        if self.ikpvCtrJoint_at:
            pm.deleteUI(self.ikpvCtrJoint_at)
            self.ikpvCtrJoint_at = None
        if bhvType in self.bhvMng.ikPVTypeIndexes:
            self.ikpvCtrJoint_at = pm.attrEnumOptionMenu(l='IK PV Control Joint',
                                                    at=self.limb.bhvIKPVCtrJoint,
                                                    p=self.appLimbProp_cl,
                                                    cc=self.UpdateDistGroupPos)
    
    def PopulateLockHide(self):
        pm.attrControlGrp(self.jointPos, e=1, a=self.limb.appLockHideJointPos,
                                        cc=pm.Callback(self.LogJointPos, 1))
        pm.attrControlGrp(self.jointRot, e=1, a=self.limb.appLockHideJointRot,
                                        cc=pm.Callback(self.LogJointRot, 1))
        pm.attrControlGrp(self.jointScale, e=1, a=self.limb.appLockHideJointScale,
                                        cc=pm.Callback(self.LogJointScale, 1))
        pm.attrControlGrp(self.limbPos, e=1, a=self.limb.appLockHideLimbPos,
                                        cc=pm.Callback(self.LogLimbPos, 1))
        pm.attrControlGrp(self.limbRot, e=1, a=self.limb.appLockHideLimbRot,
                                        cc=pm.Callback(self.LogLimbRot, 1))
        pm.attrControlGrp(self.limbScale, e=1, a=self.limb.appLockHideLimbScale,
                                        cc=pm.Callback(self.LogLimbScale, 1))
        
        # isFK = (bhvType in self.bhvMng.fkTypeIndexes)
        # pm.optionMenu(self.visParentLimb_om, e=1, en=isFK)
        
    def SetVisParentLimb(self, limbName):
        self.logger.info('\tLimbProp > SetVisParentLimb to ' + limbName)
        pm.disconnectAttr(self.limb.appVisParentLimb)
        if limbName == 'None':
            self.UpdateVisParentBhvTypeEnable()
            return
        limb = self.limbs[limbName]
        pm.connectAttr(limb.appVisChildrenLimbs, self.limb.appVisParentLimb)
        self.UpdateVisParentBhvTypeEnable()
                
    # def UpdateFKIKSwitchParentJoint(self, jointStr):
    #     msg = '\tApp_LimbProp > FKIK SwitchParentJOINT to "%s"' % jointStr
    #     self.logger.info(msg)
    #     self.bhvMng.UpdateFKIKSwitchParentJoint(self.limb)
        

    # def SetControlType(self, ctrType):
    #     msg = '\tLimbProp > SET CONTROL TYPE to "%s"' % ctrType
    #     self.logger.info(msg)
    #     for group in self.grpMng.GetLimbGroups(self.limb):
    #         control = pm.listConnections(group.control)[0]
    #         self.ctrMng.SetType(control, ctrType)
    #     self.parent.ControlTypeChanged()


#=========== LOGGING ==============================================

    def LogSetVisParentBhvType(self, visBhvType):
        msg = '\tLimbProp > LogSetVisParentBhvType to "%s"' % visBhvType
        self.logger.info(msg)

    def LogJointPos(self, ignore):
        value = str(self.limb.appLockHideJointPos.get())
        msg = '\tLimbProp > SET LOCK JOINT POS to "%s"' % value
        self.logger.info(msg)

    def LogJointRot(self, ignore):
        value = str(self.limb.appLockHideJointRot.get())
        msg = '\tLimbProp > SET LOCK JOINT ROT to "%s"' % value
        self.logger.info(msg)

    def LogJointScale(self, ignore):
        value = str(self.limb.appLockHideJointScale.get())
        msg = '\tLimbProp > SET LOCK JOINT SCALE to "%s"' % value
        self.logger.info(msg)

    def LogLimbPos(self, ignore):
        value = str(self.limb.appLockHideLimbPos.get())
        msg = '\tLimbProp > SET LOCK LIMB POS to "%s"' % value
        self.logger.info(msg)

    def LogLimbRot(self, ignore):
        value = str(self.limb.appLockHideLimbRot.get())
        msg = '\tLimbProp > SET LOCK LIMB ROT to "%s"' % value
        self.logger.info(msg)

    def LogLimbScale(self, ignore):
        value = str(self.limb.appLockHideLimbScale.get())
        msg = '\tLimbProp > SET LOCK LIMB SCALE to "%s"' % value
        self.logger.info(msg)



#=========== CONTROL DISTANCE ==============================================

    def UpdateDistGroupPos(self, ignore):
        self.logger.debug('\tApp_LimbProp > UpdateDistGroupPos')
        dist = str(self.limb.bhvDistance.get())
        axis = self.bhvMng.axesNames[self.limb.bhvAxis.get()]
        msg1 = '\tLimbProp > SET CONTROL DISTANCE to "%s"' % dist
        msg2 = '\tLimbProp > SET CONTROL AXIS to "%s"' % axis
        self.logger.info(msg1)
        self.logger.info(msg2)
        self.bhvMng.UpdateDistGroupPos(self.limb)

    def UpdateIKPVCtrJointParent(self, ignore):
        self.logger.debug('\tApp_LimbProp > UpdateIKPVCtrJointParent')

    def UpdateVisParentBhvTypeEnable(self):
        self.logger.debug('\tApp_LimbProp > UpdateVisParentBhvTypeEnable')
        enable = bool(pm.listConnections(self.limb.appVisParentLimb))
        pm.attrEnumOptionMenu(self.visParentBhvType, e=1, en=enable)




