
import pymel.core as pm

class BHV_Group_Properties_UI:
    def __init__(self, limbMng, jntMng, grpMng, parent):

        self.limbMng = limbMng
        self.jntMng = jntMng
        self.grpMng = grpMng
        self.parent = parent

        self.float_ct = None
        self.weight_at = None
        self.parentSub_at = None
        self.limbs = {} # limbName : limb
        self.limbOrder = [] # limbs
        self.axes = {   'X':    [1,0,0],
                        '-X':   [-1,0,0],
                        'Y':    [0,1,0],
                        '-Y':   [0,-1,0],
                        'Z':    [0,0,1],
                        '-Z':   [0,0,-1]}

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
        '''Create frame layouts here because we have limb + cst frames'''
        with pm.frameLayout('Group Properties', bv=1, en=0) as self.groupLayout:
            with pm.columnLayout(adj=1) as self.bhvGrpProp_cl:
                self.float_ct = pm.attrControlGrp( l='Distance / Weight', a='persp.translateX')
                self.ikTargetLimb_om = pm.optionMenu(   l='IK Target Limb', 
                                                        cc=self.SetIKTargetLimb)
                self.lookAtAxis_om = pm.optionMenu(   l='Look At Axis', 
                                                        cc=self.SelectedLookAtAxis)
                for axis in list(self.axes.keys()):
                    pm.menuItem(l=axis)
                                                        
#========== FUNCTIONALITY ===============================

    def SelectedLookAtAxis(self, axis):
        print axis
    
    def ChangedLookAtDistance(self, amount):
        print amount


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
        pm.attrControlGrp(self.float_ct, e=1, en=0)
        # DELETE OLD ATTRS
        if self.weight_at:
            pm.deleteUI(self.weight_at)
            self.weight_at = None
        if self.parentSub_at:
            pm.deleteUI(self.parentSub_at)
            self.parentSub_at = None

        # IK Handle parent
        if groupType == 1:
            pm.optionMenu(self.ikTargetLimb_om, e=1, en=1)
            pm.attrControlGrp(self.float_ct, e=1, en=1, a=group.distance)
            tt = 'IK groups must be parented to an FK group.'
            self.parentSub_at = pm.attrEnumOptionMenu(  l='IK Target FK Group',
                                                        at=group.IKTargetGroup, 
                                                        p=self.bhvGrpProp_cl,
                                                        ann=tt)
        # FK IK switch
        if groupType == 2:
            self.parentSub_at = pm.attrEnumOptionMenu(  l='Parent Joint',
                                                        at=group.parentGrp, 
                                                        p=self.bhvGrpProp_cl)
        # Cst Weight attr
        if groupType == 3:
            pm.attrControlGrp(self.float_ct, e=1, en=1, a=group.weight)
        # Look At
        if groupType == 4:
            joints = pm.listConnections(group.joint) 
            joints += pm.listConnections(group.joint2)
            if len(self.jntMng.GetJointChain(joints)) > 2:
                pm.attrControlGrp(self.float_ct, e=1, en=1,  a=group.distance)
   














