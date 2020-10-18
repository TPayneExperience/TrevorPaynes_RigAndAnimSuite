
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
    
    def SetLimb(self):
        pm.frameLayout(self.groupLayout, e=1, en=0)

    def SetGroup(self, group):
        self.group = group
        pm.frameLayout(self.groupLayout, e=1, en=1)
        pm.optionMenu(self.ikTargetLimb_om, e=1, en=0)
        self.UpdateUI()

    def Populate(self):
        '''Called when Bhvs tab clicked, 
        populates IK Target Limbs option menu
        '''
        pm.optionMenu(self.ikTargetLimb_om, e=1, dai=1)
        self.limbs = {}
        self.limbOrder = []
        for rootLimb in self.limbMng.GetRootLimbs():
            prefix = self.limbMng.GetLimbPrefix(rootLimb)
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                side = self.limbMng.GetLimbSide(limb)
                name =  '%s_%s_%s' % (prefix, limb.pfrsName.get(), side)
                pm.menuItem(l=name, p=self.ikTargetLimb_om)
                self.limbs[name] = limb
                self.limbOrder.append(limb)


#========== SETUP ===============================

    def _Setup(self):
        with pm.frameLayout('Group Properties', bv=1, en=0) as self.groupLayout:
            with pm.columnLayout(adj=1) as self.bhvGrpProp_cl:
                self.distance_cg = pm.attrControlGrp( l='Distance', a='persp.translateX')
                self.weight_sg = pm.attrFieldSliderGrp( l='Constraint Weight', 
                                                        min=0.0,
                                                        max=1.0,
                                                        at='persp.translateX')
                self.ikTargetLimb_om = pm.optionMenu(   l='IK Target Limb', 
                                                        cc=self.SetIKTargetLimb)

                                                        
#========== FUNCTIONALITY ===============================

    def UpdateGroupPosition(self, ignore):
        self.grpMng.UpdateLockedGroupPosition(self.group)

    def SetIKTargetLimb(self, limbName):
        limb = self.limbs[limbName]
        pm.disconnectAttr(self.group.IKTargetLimb)
        pm.connectAttr(limb.bhvIKSourceLimb, self.group.IKTargetLimb)
        groups = self.grpMng.GetLimbGroups(limb)
        groupNames = []
        for group in groups:
            if (group.groupType.get() == 0):
                if (pm.listConnections(group.joint)):
                    groupNames.append(self.grpMng.GetJointGroupName(group))
                else:
                    groupNames.append(self.grpMng.GetLimbGroupName(group))
        if groupNames:
            pm.addAttr(self.group.IKTargetGroup, e=1, en=':'.join(groupNames))
        else:
            pm.addAttr(self.group.IKTargetGroup, e=1, en='None')
        self.UpdateUI()
                                                   
#========== UPDATE UI ===============================

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
        # FK IK switch
        if groupType == 2:
            self.parentSub_at = pm.attrEnumOptionMenu(  l='Parent Joint',
                                                        at=group.parentGrp, 
                                                        p=self.bhvGrpProp_cl)

        # Cst Weight attr
        if groupType == 3:
            pm.attrFieldSliderGrp(self.weight_sg, e=1, en=1, at=group.weight)














