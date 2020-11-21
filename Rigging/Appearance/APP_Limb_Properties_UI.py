
import pymel.core as pm

class APP_Limb_Properties_UI:
    def __init__(self, limbMng, grpMng, bhvMng, ctrMng, parent):
        self.limbMng = limbMng
        self.grpMng = grpMng
        self.bhvMng = bhvMng
        self.ctrMng = ctrMng
        self.parent = parent

        self.ctrAxis_at = None
        self.limbs = {} # name : limb
        self.limbOrder = []

        self._Setup()
    
    def SetLimb(self, limbID):
        pm.frameLayout(self.prop_l, e=1, en=1)
        self.limb = self.limbMng.GetLimb(limbID)
        bhvType = self.limb.bhvType.get()
        pm.deleteUI(self.targetType)
        pm.deleteUI(self.ctrType)

        self.targetType = pm.attrEnumOptionMenu(l='FK or IK',
                                                at=self.limb.appTargetFKIKType,
                                                p=self.appLimbProp_cl)
        self.ctrType = pm.attrEnumOptionMenu(   l='Control Type',
                                                at=self.limb.appControlType,
                                                p=self.appLimbProp_cl,
                                                cc=self.SetControlType)
        pm.attrControlGrp(self.lockPos, e=1, a=self.limb.appLockHidePos)
        pm.attrControlGrp(self.lockRot, e=1, a=self.limb.appLockHideRot)
        pm.attrControlGrp(self.lockScale, e=1, a=self.limb.appLockHideScale)
        
        isFK = (bhvType in self.bhvMng.fkTypeIndexes)
        pm.optionMenu(self.fkikTargetLimb_om, e=1, en=isFK)
        self.GetTargetFKIK()
        
        # CONTROL DISTANCE
        isDist = bhvType in self.bhvMng.distanceIndexes
        pm.frameLayout(self.ctrLayout, e=1, en=isDist)
        if not isDist:
            return
        if self.ctrAxis_at:
            pm.deleteUI(self.ctrAxis_at)
            self.ctrAxis_at = None
        group = pm.listConnections(self.limb.bhvDistanceGroup)[0]
        pm.attrControlGrp(  self.ctrDist_cg, e=1, en=1, 
                            a=group.distance,
                            cc=pm.Callback(self.UpdateGroupDistance, 1))
        self.ctrAxis_at = pm.attrEnumOptionMenu(l='Position Axis',
                                                at=group.axis,
                                                p=self.ctrProp_cl,
                                                cc=self.UpdateGroupDistance)


    def Populate(self):
        '''Called when Bhvs tab clicked, 
        populates Constraint Target Limbs option menu
        '''
        pm.optionMenu(self.fkikTargetLimb_om, e=1, dai=1)
        self.limbs = {} # name : limb
        self.limbOrder = []
        pm.menuItem(l='None', p=self.fkikTargetLimb_om)
        for rootLimb in self.limbMng.GetRootLimbs():
            if (rootLimb.bhvType.get() == 2): # FK / IK
                prefix = self.limbMng.GetLimbPrefix(rootLimb)
                for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                    side = self.limbMng.GetLimbSide(limb)
                    name = '%s_%s_%s' % (prefix, limb.pfrsName.get(), side)
                    pm.menuItem(l=name, p=self.fkikTargetLimb_om)
                    self.limbs[name] = limb
                    self.limbOrder.append(name)

    def Depopulate(self):
        pm.frameLayout(self.prop_l, e=1, en=0)
        pm.frameLayout(self.ctrLayout, e=1, en=0)

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
                self.fkikTargetLimb_om = pm.optionMenu( l='Target FK / IK Limb',
                                                        cc=self.SetTargetFKIK)
                self.targetType = pm.attrEnumOptionMenu(at='perspShape.filmFit')
                self.ctrType = pm.attrEnumOptionMenu(at='perspShape.filmFit')

        with pm.frameLayout('IKPV / LookAt CONTROL Position', bv=1, en=0) as self.ctrLayout:
            with pm.columnLayout(adj=1) as self.ctrProp_cl:
                self.ctrDist_cg = pm.attrControlGrp( l='Control Distance', a='persp.translateX')


#=========== FUNCTIONALITY ==============================================

    def SetTargetFKIK(self, limbName):
        isEnabled = (limbName != 'None')
        pm.attrEnumOptionMenu(self.targetType, e=1, en=isEnabled)
        pm.disconnectAttr(self.limb.appTargetFKIKLimb)
        if (limbName != 'None'):
            limb = self.limbs[limbName]
            pm.connectAttr(limb.appSourceFKIKLimb, self.limb.appTargetFKIKLimb)
    
    def GetTargetFKIK(self):
        limbs = pm.listConnections(self.limb.appTargetFKIKLimb)
        if limbs:
            limb = limbs[0]
            prefix = self.limbMng.GetLimbPrefix(limb)
            side = self.limbMng.GetLimbSide(limb)
            name = '%s_%s_%s' % (prefix, limb.pfrsName.get(), side)
            index = self.limbOrder.index(name)
            pm.optionMenu(self.fkikTargetLimb_om, e=1, sl=index)
            pm.attrEnumOptionMenu(self.targetType, e=1, en=1)
        else:
            pm.optionMenu(self.fkikTargetLimb_om, e=1, sl=1)
            pm.attrEnumOptionMenu(self.targetType, e=1, en=0)

    def SetControlType(self, ctrType):
        for group in self.grpMng.GetLimbGroups(self.limb):
            control = pm.listConnections(group.control)[0]
            self.ctrMng.SetType(control, ctrType)
        self.parent.ControlTypeChanged()
        # print ctrType
        # for group in self.grpMng.GetLimbGroups(self.limb):
        #     if group.groupType.get() in [0, 2, 4, 5]: # Skip IK / Constraint
        #         controls = self.ctrMng.GetGroupControl(group)
        #         if controls:
        #             control = controls[0]
        #             self.ctrMng.SetType(control, ctrType)


#=========== CONTROL DISTANCE ==============================================

    def UpdateGroupDistance(self, ignore):
        group = pm.listConnections(self.limb.bhvDistanceGroup)[0]
        self.grpMng.UpdateGroupDistance(group)

    # def PopulateControlFrame(self, bhvType):
    #     isDist = bhvType in self.bhvMng.distanceIndexes
    #     pm.frameLayout(self.ctrLayout, e=1, en=isDist)
    #     if not isDist:
    #         return
    #     if self.ctrAxis_at:
    #         pm.deleteUI(self.ctrAxis_at)
    #         self.ctrAxis_at = None
    #     group = pm.listConnections(self.limb.bhvDistanceGroup)[0]
    #     pm.attrControlGrp(  self.ctrDist_cg, e=1, en=1, 
    #                         a=group.distance,
    #                         cc=pm.Callback(self.UpdateGroupDistance, 1))
    #     self.ctrAxis_at = pm.attrEnumOptionMenu(l='Position Axis',
    #                                             at=group.axis,
    #                                             p=self.ctrProp_cl,
    #                                             cc=self.UpdateGroupDistance)






