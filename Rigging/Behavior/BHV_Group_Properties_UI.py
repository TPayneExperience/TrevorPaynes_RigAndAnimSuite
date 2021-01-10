
import pymel.core as pm

class BHV_Group_Properties_UI:
    def __init__(self, limbMng, jntMng, bhvMng, grpMng, parent):

        self.limbMng = limbMng
        self.jntMng = jntMng
        self.bhvMng = bhvMng
        self.grpMng = grpMng
        self.parent = parent
        self.logger = parent.logger

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
            with pm.columnLayout(adj=1) as self.bhvGroupProp_cl:
                self.weight_sg = pm.attrFieldSliderGrp( l='Cst Weight', 
                                                        min=0.0,
                                                        max=1.0,
                                                        adj=3,
                                                        pre=3,
                                                        cw=((1, 60), (2, 55), (3, 55)),
                                                        at='persp.translateX',
                                                        cc=self.LogCstWeight)
                
#========== UPDATE UI ===============================

    def LogCstWeight(self, ignore, value):
        self.logger.info('\t\tGroupProp > Weight SET to %f' + value)

    def Depopulate(self):
        pm.frameLayout(self.groupLayout, e=1, en=0)
        self.group = None
        if self.parentSub_at:
            pm.deleteUI(self.parentSub_at)
            self.parentSub_at = None      

    def UpdateUI(self):
        joint = pm.listConnections(self.group.joint)[0]
        limb = pm.listConnections(joint.limb)[0]
        bhvType = limb.bhvType.get()
        pm.attrFieldSliderGrp(self.weight_sg, e=1, en=0)
        # DELETE OLD ATTRS
        if self.parentSub_at:
            pm.deleteUI(self.parentSub_at)
            self.parentSub_at = None

        # CONSTRAINT
        if bhvType == 3: 
            pm.attrFieldSliderGrp(self.weight_sg, e=1, en=1, 
                                            at=self.group.weight)

        # IK CHAIN
        elif bhvType in self.bhvMng.ikChainTypeIndexes: 
            self.parentSub_at = pm.attrEnumOptionMenu(  l='Target Joint',
                                                at=self.group.targetJoint, 
                                                p=self.bhvGroupProp_cl)














