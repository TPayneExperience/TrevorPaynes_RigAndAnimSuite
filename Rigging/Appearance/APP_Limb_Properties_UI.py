
import pymel.core as pm

class APP_Limb_Properties_UI:
    def __init__(self, limbMng, grpMng, ctrMng, parent):
        self.limbMng = limbMng
        self.grpMng = grpMng
        self.ctrMng = ctrMng
        self.parent = parent

        self.limbs = {} # name : limb
        self.limbOrder = []

        self._Setup()
    
    def SetLimb(self, limbID):
        self.limb = self.limbMng.GetLimb(limbID)
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
        
        isFK = (self.limb.bhvType.get() in [0, 6, 8])
        pm.optionMenu(self.fkikTargetLimb_om, e=1, en=isFK)
        self.GetTargetFKIK()

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


#=========== SETUP UI ==============================================

    def _Setup(self):
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







