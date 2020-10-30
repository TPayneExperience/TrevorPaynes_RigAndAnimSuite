
import pymel.core as pm

class BHV_Group_Properties_UI:
    def __init__(self, limbMng, jntMng, grpMng, parent):

        self.limbMng = limbMng
        self.jntMng = jntMng
        self.grpMng = grpMng
        self.parent = parent

        self.distance_cg = None
        self.weight_at = None
        self.parentSub_at = None
        self.pfrsAxis_om = None
        self.limbs = {} # limbName : limb
        self.limbOrder = [] # limbs

        self._Setup()
    
    # def SetLimb(self):
    #     pm.frameLayout(self.groupLayout, e=1, en=0)

    def SetGroup(self, group):
        self.group = group
        pm.frameLayout(self.groupLayout, e=1, en=1)
        self.UpdateUI()


#========== SETUP ===============================

    def _Setup(self):
        with pm.frameLayout('Group Properties', bv=1, en=0) as self.groupLayout:
            with pm.columnLayout(adj=1) as self.bhvGrpProp_cl:
                self.distance_cg = pm.attrControlGrp( l='Distance', a='persp.translateX')
                self.weight_sg = pm.attrFieldSliderGrp( l='Constraint Weight', 
                                                        min=0.0,
                                                        max=1.0,
                                                        at='persp.translateX')
                          
#========== UPDATE UI ===============================

    def Depopulate(self):
        pm.frameLayout(self.groupLayout, e=1, en=0)
        self.group = None
        if self.weight_at:
            pm.deleteUI(self.weight_at)
            self.weight_at = None
        if self.parentSub_at:
            pm.deleteUI(self.parentSub_at)
            self.parentSub_at = None
        if self.pfrsAxis_om:
            pm.deleteUI(self.pfrsAxis_om)
            self.pfrsAxis_om = None

    def UpdateGroupPosition(self, ignore):
        self.grpMng.UpdateIKGroupPosition(self.group)
                                  
    def UpdateUI(self):
        group = self.group
        groupType = group.groupType.get()
        pm.attrControlGrp(self.distance_cg, e=1, en=0)
        pm.attrFieldSliderGrp(self.weight_sg, e=1, en=0)
        # DELETE OLD ATTRS
        if self.weight_at:
            pm.deleteUI(self.weight_at)
            self.weight_at = None
        if self.parentSub_at:
            pm.deleteUI(self.parentSub_at)
            self.parentSub_at = None
        if self.pfrsAxis_om:
            pm.deleteUI(self.pfrsAxis_om)
            self.pfrsAxis_om = None

        # IK Pole Vector + Look At parent
        if groupType in [1,4]:
            pm.attrControlGrp(self.distance_cg, e=1, en=1, a=group.distance,
                                                    cc=pm.Callback(self.UpdateGroupPosition, 1))
            self.pfrsAxis_om = pm.attrEnumOptionMenu(l='Axis Direction',
                                                at=self.group.pfrsAxis,
                                                p=self.bhvGrpProp_cl,
                                                cc=self.UpdateGroupPosition)
        # IK PV + Chain Parenting
        if groupType in [1, 6]:
            self.parentSub_at = pm.attrEnumOptionMenu(  l='Parent Group',
                                                        at=group.IKTargetGroup, 
                                                        p=self.bhvGrpProp_cl)

        # FK IK switch
        if groupType == 2:
            self.parentSub_at = pm.attrEnumOptionMenu(  l='Parent Joint',
                                                        at=group.parentGroup, 
                                                        p=self.bhvGrpProp_cl)

        # Cst Weight attr
        if groupType == 3:
            pm.attrFieldSliderGrp(self.weight_sg, e=1, en=1, at=group.weight)














