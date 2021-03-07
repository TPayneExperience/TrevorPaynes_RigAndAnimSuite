
import pymel.core as pm

import Common.Utilities as util
reload(util)

import Data.Rig_Data as rigData
reload(rigData)

class Group_Manager:
    def __init__(self, parent):
        self.nameMng = parent.nameMng
        self.ctrMng = parent.ctrMng
        self.logger = parent.logger
        self.pfrs = parent

#============= ACCESSORS  ============================

    def GetLimbGroups(self, limb):
        self.logger.debug('\tGrpMng > GetLimbGroups')
        groups = []
        bhvType = limb.bhvType.get()
        # IK PV
        if bhvType in rigData.IK_PV_BHV_INDEXES:
            groups += pm.listConnections(limb.bhvIKPVGroup)
        # Look At
        if bhvType in rigData.LOOK_AT_BHV_INDEXES:
            groups += pm.listConnections(limb.bhvLookAtGroup)
        return groups

    def GetJointGroups(self, limb):
        self.logger.debug('\tGrpMng > GetJointGroups')
        bhvType = limb.bhvType.get()
        if bhvType in rigData.EMPTY_BHV_INDEXES:
            return pm.listConnections(limb.bhvEmptyGroup)
        groups = []
        for joint in util.GetSortedLimbJoints(limb):
            groups += pm.listConnections(joint.group)
        return groups
        
#============= ADD + REMOVE ============================

    def _AddGroup(self):
        groupID = self.pfrs.root.nextGroupID.get()
        self.pfrs.root.nextGroupID.set(groupID + 1)
        
        # groupTypes = ':'.join(self.grpTypes)
        groupTypes = ':'.join(rigData.GROUP_TYPES)

        group = pm.group(em=1, w=1)
        pm.addAttr(group, ln='ID', at='long', dv=groupID)
        pm.addAttr(group, ln='control', dt='string')
        pm.addAttr(group, ln='groupType', at='enum', en=groupTypes) # IKPV, LookAt
        # util.ChannelBoxAttrs(group, 1, 1, 1, 1)
        group.v.set(0)

        return group

    # EMPTY
    # Called from Rigging > SetupEditable_Limbs()
    def AddEmptyGroup(self, limb):
        self.logger.debug('\tGrpMng > AddEmptyGroup')
        group = self._AddGroup()
        pm.addAttr(group, ln='limb', dt='string')
        pm.connectAttr(limb.bhvEmptyGroup, group.limb)
        self.ctrMng.AddEmptyControl(group)
        pm.parent(group, limb)
        group.v.set(1)
        return group

    # FK, CST, IK Chain
    # Called from Limb Setup > AutoBuild OR RMB > Add Limb
    def AddJointGroup(self, joint): 
        self.logger.debug('\tGrpMng > AddJointGroup')
        group = self._AddGroup()
        group.groupType.set(1)
        pm.addAttr(group, ln='targetJoint', at='enum', en='None') # IK Chain
        pm.addAttr(group, ln='joint', dt='string')
        pm.addAttr(group, ln='weight', at='float', dv=0.5, min=0, max=1) # Cst

        pm.connectAttr(joint.group, group.joint)
        
        self.ctrMng.AddJointControl(group)
        pm.parent(group, joint)
        pm.xform(group, t=(0,0,0), ro=(0,0,0), s=(1,1,1))
        return group

    def AddIKPVGroup(self, limb):
        self.logger.debug('\tGrpMng > AddIKPVGroup')
        group = self._AddGroup()
        group.groupType.set(2)
        pm.addAttr(group, ln='limb', dt='string')
        pm.connectAttr(limb.bhvIKPVGroup, group.limb)
        pm.parent(group, limb)
        self.ctrMng.AddIKPVControl(group)
        self.UpdateGroupName(group)
        return group

    def AddLookAtGroup(self, limb):
        self.logger.debug('\tGrpMng > AddLookAtGroup')
        group = self._AddGroup()
        group.groupType.set(4)
        pm.addAttr(group, ln='limb', dt='string')
        pm.connectAttr(limb.bhvLookAtGroup, group.limb)
        pm.parent(group, limb)
        self.ctrMng.AddLookAtControl(group)
        self.UpdateGroupName(group)
        return group

    def Remove(self, group):
        self.logger.debug('\tGrpMng > Remove')
        control = pm.listConnections(group.control)[0]
        self.ctrMng.Remove(control)
        pm.delete(group)


#============= GROUP VISIBILITY ============================

    def Setup_LimbGroupVisibility(self, limb):
        self.logger.debug('\tGrpMng > Setup_LimbGroupVisibility')
        bhvType = limb.bhvType.get()
        bhvFilter = rigData.FK_CHAIN_BHV_INDEXES
        bhvFilter += rigData.FK_BRANCH_BHV_INDEXES
        if bhvType in bhvFilter:
            groups = self.GetJointGroups(limb)
            for group in groups:
                group.v.set(1)
            if bhvType in rigData.REVERSE_BHV_INDEXES:
                groups = groups[::-1]
            if bhvType in rigData.OMIT_LAST_JOINT_BHV_INDEXES:
                groups[-1].v.set(0)
        if bhvType in rigData.RFK_BHV_INDEXES:
            groups = self.GetJointGroups(limb)
            for group in groups:
                group.v.set(0)
            if bhvType in rigData.REVERSE_BHV_INDEXES:
                groups = groups[::-1]
            groups[0].v.set(1)
        for group in self.GetLimbGroups(limb):
            group.v.set(1)

    def Teardown_LimbGroupVisibility(self, limb):
        self.logger.debug('\tGrpMng > Teardown_LimbGroupVisibility')
        for group in self.GetJointGroups(limb):
            group.v.set(0)
        for group in self.GetLimbGroups(limb):
            group.v.set(0)

#============= UTILS ============================

    def UpdateGroupName(self, group):
        self.logger.debug('\tGrpMng > UpdateGroupName')
        '''Updates limb + joint GROUP + CONTROL renaming'''
        index = group.groupType.get()
        groupType = rigData.GROUP_TYPES[index]
        if index == 1: # Joint
            joint = pm.listConnections(group.joint)[0]
            pfrsName = joint.pfrsName.get()
            limb = pm.listConnections(joint.limb)[0]
        else:
            limb = pm.listConnections(group.limb)[0]
            pfrsName = limb.pfrsName.get()
        groupName = self.nameMng.GetName(pfrsName,
                                    groupType,
                                    rigData.LIMB_SIDES[limb.side.get()],
                                    'GRP')
        group.rename(groupName)
        control = pm.listConnections(group.control)[0]
        controlName = self.nameMng.GetName(pfrsName,
                                    groupType,
                                    rigData.LIMB_SIDES[limb.side.get()],
                                    'CTR')
        control.rename(controlName)

    def UpdateDistGroupPos(self, limb):
        self.logger.debug('\tGrpMng > UpdateDistGroupPos')
        joints = util.GetSortedLimbJoints(limb)
        if len(joints) == 1:
            joint = joints[0]
        else:
            joint = joints[1]
        group = self.GetLimbGroups(limb)[0]
        pm.parent(group, joint)
        pos = rigData.AXES_XFORMS[limb.bhvAxis.get()]
        dist = limb.bhvDistance.get()
        pos = [p*dist for p in pos]
        pm.xform(group, t=pos)
        pm.parent(group, limb)



