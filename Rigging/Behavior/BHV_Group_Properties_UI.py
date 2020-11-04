
import pymel.core as pm

class BHV_Group_Properties_UI:
    def __init__(self, limbMng, jntMng, grpMng, parent):

        self.limbMng = limbMng
        self.jntMng = jntMng
        self.grpMng = grpMng
        self.parent = parent

        self.parentSub_at = None
        
        self.limbs = {} # limbName : limb
        self.limbOrder = [] # limbs

        self._Setup()
    
    def SetGroup(self, group):
        self.group = group
        pm.frameLayout(self.groupLayout, e=1, en=1)
        self.UpdateUI()


#========== SETUP ===============================

    def _Setup(self):
        with pm.frameLayout('Group Properties', bv=1, en=0) as self.groupLayout:
            with pm.columnLayout(adj=1) as self.bhvGrpProp_cl:
                self.weight_sg = pm.attrFieldSliderGrp( l='Constraint Weight', 
                                                        min=0.0,
                                                        max=1.0,
                                                        at='persp.translateX')
                          
#========== UPDATE UI ===============================

    def Depopulate(self):
        pm.frameLayout(self.groupLayout, e=1, en=0)
        self.group = None
        if self.parentSub_at:
            pm.deleteUI(self.parentSub_at)
            self.parentSub_at = None      

    def UpdateUI(self):
        group = self.group
        groupType = group.groupType.get()
        pm.attrFieldSliderGrp(self.weight_sg, e=1, en=0)
        # DELETE OLD ATTRS
        if self.parentSub_at:
            pm.deleteUI(self.parentSub_at)
            self.parentSub_at = None

        # IK PV + Chain Parenting
        if groupType in [1, 6]:
            self.parentSub_at = pm.attrEnumOptionMenu(  l='Parent Group',
                                                        at=group.IKTargetGroup, 
                                                        p=self.bhvGrpProp_cl)

        # Cst Weight attr
        if groupType == 3:
            pm.attrFieldSliderGrp(self.weight_sg, e=1, en=1, at=group.weight)














