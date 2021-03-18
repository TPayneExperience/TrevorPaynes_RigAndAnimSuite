
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

class RIG_BHV_Group_Properties_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.pfrs.limbMng
        self.jntMng = parent.pfrs.jntMng
        self.rigBHV = parent.pfrs.rigBHV
        self.grpMng = parent.pfrs.grpMng
        self.logger = parent.pfrs.logger

        # self.parentSub_at = None
        
        self.limbOrder = [] # limbs

        self._Setup()
    
    def SetGroup(self, group):
        self.logger.debug('\tBhv_GroupProp > SetGroup')
        pm.frameLayout(self.groupLayout, e=1, en=0)
        if not group or group.groupType.get() != 1: # Make sure is joint group
            return
        self.group = group
        pm.frameLayout(self.groupLayout, e=1, en=1)
        joint = pm.listConnections(group.joint)[0]
        limb = pm.listConnections(joint.limb)[0]
        bhvType = limb.bhvType.get()
        pm.attrFieldSliderGrp(self.weight_sg, e=1, en=0)

        pm.attrControlGrp(  self.enableGroup_cg, e=1, 
                                a=group.enableGroup,
                                cc=pm.Callback(self.SetEnableGroup, 1))
        # CONSTRAINT
        if bhvType == 3: 
            pm.attrFieldSliderGrp(self.weight_sg, e=1, en=1, 
                                            at=self.group.weight)
        


#========== SETUP ===============================

    def _Setup(self):
        with pm.frameLayout('Group Properties', bv=1, en=0) as self.groupLayout:
            with pm.columnLayout(adj=1) as self.bhvGroupProp_cl:
                with pm.columnLayout(co=('left', -100)) as self.appLimbLockHide_cl:
                    self.enableGroup_cg = pm.attrControlGrp(l='Enable Control',
                                                    a='perspShape.shakeEnabled')
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
        self.logger.info('\tGroupProp > Weight SET to %f' % value)


    def SetEnableGroup(self, ignore):
        self.logger.debug('\tGroupProp > SetEnableGroup')
        enabled = self.group.enableGroup.get()
        self.group.v.set(enabled)











