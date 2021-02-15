
import pymel.core as pm

class APP_Global_Properties_UI:
    def __init__(self, parent):
        self.parent = parent
        self.grpMng = parent.grpMng
        self.ctrMng = parent.ctrMng
        self.logger = parent.logger

        self._Setup()
    
    # def Populate(self):
    #     '''Called when Bhvs tab clicked, 
    #     populates Constraint Target Limbs option menu
    #     '''
    #     self.logger.debug('\tApp_LimbProp > Populate')
    #     pm.optionMenu(self.fkikTargetLimb_om, e=1, dai=1)
    #     self.limbs = {} # name : limb
    #     self.limbOrder = []
    #     pm.menuItem(l='None', p=self.fkikTargetLimb_om)
    #     for rootLimb in self.limbMng.GetRootLimbs():
    #         prefix = self.limbMng.GetLimbPrefix(rootLimb)
    #         for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
    #             if (limb.bhvType.get() in self.bhvMng.fkikTypeIndexes):
    #                 if limb == self.limb:
    #                     continue
    #                 side = self.limbMng.GetLimbSide(limb)
    #                 name = '%s_%s_%s' % (prefix, limb.pfrsName.get(), side)
    #                 pm.menuItem(l=name, p=self.fkikTargetLimb_om)
    #                 self.limbs[name] = limb
    #                 self.limbOrder.append(name)

    # def Depopulate(self):
    #     pm.frameLayout(self.prop_l, e=1, en=0)
    #     pm.frameLayout(self.ctrLayout, e=1, en=0)

    def Populate(self):
        self.logger.debug('\tApp_GlobalProp > Populate')
        rigRoot = self.ctrMng.rigRoot
        pm.deleteUI(self.empty_at)
        pm.deleteUI(self.joint_at)
        pm.deleteUI(self.ikpv_at)
        pm.deleteUI(self.lookAt_at)
        self.empty_at = pm.attrEnumOptionMenu(  l='Empty',
                                                p=self.prop_cl,
                                                cc=self.UpdateEmptyShapes,
                                                at=rigRoot.appEmptyCtrShape)
        self.joint_at = pm.attrEnumOptionMenu(  l='FK',
                                                p=self.prop_cl,
                                                cc=self.UpdateJointShapes,
                                                at=rigRoot.appJointCtrShape)
        self.ikpv_at = pm.attrEnumOptionMenu(   l='IKPV',
                                                p=self.prop_cl,
                                                cc=self.UpdateIKPVShapes,
                                                at=rigRoot.appIKPVCtrShape)
        self.lookAt_at = pm.attrEnumOptionMenu( l='LookAt',
                                                p=self.prop_cl,
                                                cc=self.UpdateLookAtShapes,
                                                at=rigRoot.appLookAtCtrShape)

#=========== SETUP UI ==============================================

    def _Setup(self):
        with pm.frameLayout('Global Control Shapes', bv=1) as self.prop_fl:
            with pm.columnLayout(adj=1) as self.prop_cl:
                self.empty_at = pm.attrEnumOptionMenu(at='perspShape.filmFit')
                self.joint_at = pm.attrEnumOptionMenu(at='perspShape.filmFit')
                self.ikpv_at = pm.attrEnumOptionMenu(at='perspShape.filmFit')
                self.lookAt_at = pm.attrEnumOptionMenu(at='perspShape.filmFit')

#=========== FUNCTIONALITY ==============================================

    def UpdateEmptyShapes(self, shape):
        self.logger.info('\tApp_GlobalProp > UpdateEmptyShapes')
        self._UpdateShapes(0, shape)

    def UpdateJointShapes(self, shape):
        self.logger.info('\tApp_GlobalProp > UpdateJointShapes')
        self._UpdateShapes(1, shape)

    def UpdateIKPVShapes(self, shape):
        self.logger.info('\tApp_GlobalProp > UpdateIKPVShapes')
        self._UpdateShapes(2, shape)

    def UpdateLookAtShapes(self, shape):
        self.logger.info('\tApp_GlobalProp > UpdateLookAtShapes')
        self._UpdateShapes(4, shape)

    def _UpdateShapes(self, groupType, shape):
        names = self.ctrMng.GetControlNames()
        index = names.index(shape)
        for group in self.grpMng.GetAllGroups():
            if group.groupType.get() != groupType:
                continue
            self.ctrMng.SetShape(group, index)


