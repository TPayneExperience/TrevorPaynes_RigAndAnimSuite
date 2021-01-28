
import pymel.core as pm

class BHV_Group_Properties_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
        self.bhvMng = parent.bhvMng
        self.grpMng = parent.grpMng
        self.logger = parent.logger

        self.parentSub_at = None
        
        self.limbs = {} # limbName : limb
        self.limbOrder = [] # limbs

        self._Setup()
    
    def SetGroup(self, group):
        self.logger.debug('\tBhv_GroupProp > SetGroup')
        self.group = group
        if group.groupType.get() != 1: # Make sure is joint group
            pm.frameLayout(self.groupLayout, e=1, en=0)
            return
        pm.frameLayout(self.groupLayout, e=1, en=1)
        # DELETE OLD ATTRS
        if self.parentSub_at:
            pm.deleteUI(self.parentSub_at)
            self.parentSub_at = None
        joint = pm.listConnections(group.joint)[0]
        limb = pm.listConnections(joint.limb)[0]
        bhvType = limb.bhvType.get()
        pm.attrFieldSliderGrp(self.weight_sg, e=1, en=0)

        # CONSTRAINT
        if bhvType == 3: 
            pm.attrFieldSliderGrp(self.weight_sg, e=1, en=1, 
                                            at=self.group.weight)

        # IK CHAIN
        elif bhvType in self.bhvMng.ikChainTypeIndexes: 
            self.parentSub_at = pm.attrEnumOptionMenu(  l='Target Joint',
                                                at=self.group.targetJoint, 
                                                p=self.bhvGroupProp_cl)



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
        self.logger.info('\tGroupProp > Weight SET to %f' + value)

    def Depopulate(self):
        self.logger.debug('\tBhv_GroupProp > Depopulate')
        pm.frameLayout(self.groupLayout, e=1, en=0)
        self.group = None
        if self.parentSub_at:
            pm.deleteUI(self.parentSub_at)
            self.parentSub_at = None      














