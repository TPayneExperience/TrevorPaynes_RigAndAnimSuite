
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
        self.fkikJoint_at = None
        self.limb = None
        self.limbs = {} # name : limb
        self.limbOrder = []

        self._Setup()
    
    def Populate(self):
        '''Called when Bhvs tab clicked, 
        populates Constraint Target Limbs option menu
        '''
        self.logger.debug('\tApp_LimbProp > Populate')
        pm.optionMenu(self.fkikTargetLimb_om, e=1, dai=1)
        self.limbs = {} # name : limb
        self.limbOrder = []
        pm.menuItem(l='None', p=self.fkikTargetLimb_om)
        for rootLimb in self.limbMng.GetRootLimbs():
            prefix = self.limbMng.GetLimbPrefix(rootLimb)
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                if (limb.bhvType.get() in self.bhvMng.fkikTypeIndexes):
                    if limb == self.limb:
                        continue
                    side = self.limbMng.GetLimbSide(limb)
                    name = '%s_%s_%s' % (prefix, limb.pfrsName.get(), side)
                    pm.menuItem(l=name, p=self.fkikTargetLimb_om)
                    self.limbs[name] = limb
                    self.limbOrder.append(name)

    def Depopulate(self):
        pm.frameLayout(self.prop_l, e=1, en=0)

#=========== SETUP UI ==============================================

    def _Setup(self):
        with pm.frameLayout('Limb Properties', bv=1, en=0) as self.prop_l:
            with pm.columnLayout(adj=1) as self.appLimbProp_cl:
                self.lockPos = pm.attrControlGrp(l='Lock + Hide Translate',
                                                a='perspShape.shakeEnabled')
                self.lockRot = pm.attrControlGrp(l='Lock + Hide Rotate',
                                                a='perspShape.shakeEnabled')
                self.lockScale = pm.attrControlGrp(l='Lock + Hide Scale',
                                                a='perspShape.shakeEnabled')
                self.fkikTargetLimb_om = pm.optionMenu( l='Target FKIK Limb',
                                                        cc=self.SetTargetFKIK)
                self.targetType = pm.attrEnumOptionMenu(at='perspShape.filmFit')
                self.ctrDist_cg = pm.attrControlGrp( l='Control Distance', a='persp.translateX')
                self.fkikJoint_at = pm.attrControlGrp(l='Lock + Hide Scale',
                                                a='perspShape.shakeEnabled')


#=========== FUNCTIONALITY ==============================================

    def LogLockPos(self, ignore):
        value = str(self.limb.appLockHidePos.get())
        msg = '\tLimbProp > SET LOCK POSITION to "%s"' % value
        self.logger.info(msg)

    def LogLockRot(self, ignore):
        value = str(self.limb.appLockHideRot.get())
        msg = '\tLimbProp > SET LOCK ROTATION to "%s"' % value
        self.logger.info(msg)

    def LogLockScale(self, ignore):
        value = str(self.limb.appLockHideScale.get())
        msg = '\tLimbProp > SET LOCK SCALE to "%s"' % value
        self.logger.info(msg)

    def SetLimb(self, limb):
        self.logger.debug('\tApp_LimbProp > SetLimb')
        self.limb = limb
        if not limb:
            pm.frameLayout(self.prop_l, e=1, en=0)
            return
        pm.frameLayout(self.prop_l, e=1, en=1)
        bhvType = self.limb.bhvType.get()

        # CONTROL DISTANCE
        if self.ctrAxis_at:
            pm.deleteUI(self.ctrAxis_at)
            self.ctrAxis_at = None
        if bhvType in self.bhvMng.distanceIndexes:
            pm.attrControlGrp(  self.ctrDist_cg, e=1, en=1, 
                                a=self.limb.bhvDistance,
                                cc=pm.Callback(self.UpdateDistGroupPos, 1))
            self.ctrAxis_at = pm.attrEnumOptionMenu(l='Control Position Axis',
                                                    at=limb.bhvAxis,
                                                    p=self.appLimbProp_cl,
                                                    cc=self.UpdateDistGroupPos)
        else:
            pm.attrControlGrp(self.ctrDist_cg, e=1, en=0)

        # TARGET TYPE
        pm.deleteUI(self.targetType)
        self.targetType = pm.attrEnumOptionMenu(l='FK or IK?',
                                                at=self.limb.appTargetFKIKType,
                                                p=self.appLimbProp_cl,
                                                cc=self.LogSelectFKIK)
        if self.ikpvCtrJoint_at:
            pm.deleteUI(self.ikpvCtrJoint_at)
            self.ikpvCtrJoint_at = None
        if bhvType in self.bhvMng.ikPVTypeIndexes:
            self.ikpvCtrJoint_at = pm.attrEnumOptionMenu(l='IK PV Control Joint',
                                                    at=self.limb.bhvIKPVCtrJoint,
                                                    p=self.appLimbProp_cl,
                                                    cc=self.UpdateDistGroupPos)
        pm.attrControlGrp(self.lockPos, e=1, a=self.limb.appLockHidePos,
                                        cc=pm.Callback(self.LogLockPos, 1))
        pm.attrControlGrp(self.lockRot, e=1, a=self.limb.appLockHideRot,
                                        cc=pm.Callback(self.LogLockRot, 1))
        pm.attrControlGrp(self.lockScale, e=1, a=self.limb.appLockHideScale,
                                        cc=pm.Callback(self.LogLockScale, 1))
        
        # FKIK SWITCH 
        if self.fkikJoint_at:
            pm.deleteUI(self.fkikJoint_at)
            self.fkikJoint_at = None
        if bhvType in self.bhvMng.fkikTypeIndexes: # FKIK
            self.fkikJoint_at = pm.attrEnumOptionMenu(  l='FKIK Switch Parent Joint',
                                                        at=limb.bhvFKIKSwitchParentJoint, 
                                                        p=self.appLimbProp_cl,
                                                        cc=self.UpdateFKIKSwitchParentJoint)


        isFK = (bhvType in self.bhvMng.fkTypeIndexes)
        pm.optionMenu(self.fkikTargetLimb_om, e=1, en=isFK)
        self.Populate()
        self.PopulateFKIKVisParent()
        

    def SetTargetFKIK(self, limbName):
        self.logger.info('\tLimbProp > SET FKIK Vis Parent to ' + limbName)
        pm.disconnectAttr(self.limb.appFKIKVisParent)
        if limbName == 'None':
            return
        limb = self.limbs[limbName]
        pm.connectAttr(limb.appFKIKVisChildren, self.limb.appFKIKVisParent)
                
    def PopulateFKIKVisParent(self):
        self.logger.debug('\tApp_LimbProp > PopulateFKIKVisParent')
        pm.attrEnumOptionMenu(self.targetType, e=1, en=0)
        parent = pm.listConnections(self.limb.appFKIKVisParent)
        if not parent:
            pm.optionMenu(self.fkikTargetLimb_om, e=1, sl=1)
            return
        parent = parent[0]
        prefix = self.limbMng.GetLimbPrefix(parent)
        side = self.limbMng.GetLimbSide(parent)
        name = '%s_%s_%s' % (prefix, parent.pfrsName.get(), side)
        index = self.limbOrder.index(name) + 2 # start index 1 + (none = 1)
        pm.optionMenu(self.fkikTargetLimb_om, e=1, sl=index)

    def UpdateFKIKSwitchParentJoint(self, jointStr):
        msg = '\tApp_LimbProp > FKIK SwitchParentJOINT to "%s"' % jointStr
        self.logger.info(msg)
        self.bhvMng.UpdateFKIKSwitchParentJoint(self.limb)
        

    # def SetControlType(self, ctrType):
    #     msg = '\tLimbProp > SET CONTROL TYPE to "%s"' % ctrType
    #     self.logger.info(msg)
    #     for group in self.grpMng.GetLimbGroups(self.limb):
    #         control = pm.listConnections(group.control)[0]
    #         self.ctrMng.SetType(control, ctrType)
    #     self.parent.ControlTypeChanged()


#=========== CONTROL DISTANCE ==============================================

    def LogSelectFKIK(self, fkikType):
        msg = '\tLimbProp > SELECT FKIK TYPE to "%s"' % fkikType
        self.logger.info(msg)

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






