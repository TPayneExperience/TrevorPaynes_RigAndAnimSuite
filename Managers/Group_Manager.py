
import math

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
        # self.logger.debug('\tGrpMng > GetLimbGroups')
        groups = []
        bhvType = limb.bhvType.get()
        # IK PV
        if bhvType in rigData.IK_PV_BHV_INDEXES:
            groups += pm.listConnections(limb.bhvIKPVGroup)
        # Look At
        if bhvType in rigData.LOOK_AT_BHV_INDEXES:
            groups += pm.listConnections(limb.bhvLookAtGroup)
        return groups

    def GetAllLimbGroups(self, limb):
        groups = pm.listConnections(limb.bhvIKPVGroup)
        groups += pm.listConnections(limb.bhvLookAtGroup)
        return groups

    def GetJointGroups(self, limb):
        # self.logger.debug('\tGrpMng > GetJointGroups')
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
        hide = rigData.HIDE_ATTRS
        
        # groupTypes = ':'.join(self.grpTypes)
        groupTypes = ':'.join(rigData.GROUP_TYPES)

        group = pm.group(em=1, w=1)
        pm.addAttr(group, ln='ID', at='long', dv=groupID, h=hide)
        pm.addAttr(group, ln='control', dt='string', h=hide)
        pm.addAttr(group, ln='groupType', at='enum', h=hide, en=groupTypes)
        pm.addAttr(group, ln='enableGroup', at='bool', dv=1, h=hide)

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
        jointGroups = self.GetJointGroups(limb)
        if bhvType in bhvFilter:
            for group in jointGroups:
                if group.enableGroup.get():
                    group.v.set(1)
            # if bhvType in rigData.REVERSE_BHV_INDEXES:
            #     jointGroups = jointGroups[::-1]
            # if bhvType in rigData.OMIT_LAST_JOINT_BHV_INDEXES:
            #     jointGroups[-1].v.set(0)
        elif bhvType in rigData.IK_PV_BHV_INDEXES:
            group = jointGroups[-1]
            if group.enableGroup.get():
                group.v.set(1)
        elif bhvType in rigData.RFK_BHV_INDEXES:
            jointGroups = self.GetJointGroups(limb)
            if bhvType in rigData.REVERSE_BHV_INDEXES:
                jointGroups = jointGroups[::-1]
            group = jointGroups[0]
            if group.enableGroup.get():
                group.v.set(1)
        for group in self.GetLimbGroups(limb):
            if group.enableGroup.get():
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

    def InitLookAtGroup(self, limb):
        self.logger.debug('\tGrpMng > InitLookAtGroup')
        joint = pm.listConnections(limb.joints)[0]
        group = pm.listConnections(limb.bhvLookAtGroup)[0]
        pm.parent(group, joint)
        util.ResetAttrs(group)
        axisIndex = limb.bhvLookAtAxis.get()
        pm.rotate(group, rigData.AXES_XFORMS[axisIndex], os=1, a=1)
        pm.parent(group, limb)

    def InitIKPVGroup(self, limb):
        self.logger.debug('\tGrpMng > InitIKPVGroup')
        group = pm.listConnections(limb.bhvIKPVGroup)[0]
        joints = util.GetSortedLimbJoints(limb)
        j1 = joints[0]
        j2 = joints[1]
        j3 = joints[-1]
        
        # Get vectors
        pos1 = pm.xform(j1, t=1, q=1, ws=1)
        pos2 = pm.xform(j2, t=1, q=1, ws=1)
        pos3 = pm.xform(j3, t=1, q=1, ws=1)
        v12 = (pos2[0] - pos1[0], pos2[1] - pos1[1], pos2[2] - pos1[2])
        v13 = (pos3[0] - pos1[0], pos3[1] - pos1[1], pos3[2] - pos1[2])

        # Get Angle
        dot = (v12[0]*v13[0] + v12[1]*v13[1] + v12[2]*v13[2])
        mag12 = (v12[0]**2 + v12[1]**2 + v12[2]**2)**0.5
        mag13 = (v13[0]**2 + v13[1]**2 + v13[2]**2)**0.5
        magProd = mag12 * mag13
        cosAngle = dot / magProd

        # Get perp v13 point
        scalar = (cosAngle*mag12)/ mag13
        posP = (scalar*v13[0], scalar*v13[1], scalar*v13[2])
        posPOffset = (posP[0]+pos1[0], posP[1]+pos1[1], posP[2]+pos1[2])

        # pos/rot group
        pm.xform(group, t=posPOffset, ws=1)
        a = pm.aimConstraint(j2, group)
        pm.delete(a)
        pm.xform(group, t=pos2, ws=1)

        # print('\n\npos1: ' + str(pos1))
        # print('pos2: ' + str(pos2))
        # print('pos3: ' + str(pos3))
        # print('v12: ' + str(v12))
        # print('v13: ' + str(v13))
        # print('dot: ' + str(dot))
        # print('mag12: ' + str(mag12))
        # print('mag13: ' + str(mag13))
        # print('magProd: ' + str(magProd))
        # print('cosAngle: ' + str(cosAngle))
        # print('Degrees: ' + str(math.degrees(math.acos(cosAngle))))
        # print('adjMag: ' + str(scalar))
        # print('posP: ' + str(posP))
        # print('posPOffset: ' + str(posPOffset))

    def UpdateLookAtCtr(self, limb):
        self.logger.debug('\tGrpMng > UpdateLookAtCtr')
        group = pm.listConnections(limb.bhvLookAtGroup)[0]
        dist = limb.bhvLookAtDistance.get()
        control = pm.listConnections(group.control)[0]
        control.tx.set(dist)

    def UpdateIKPVCtr(self, limb):
        self.logger.debug('\tGrpMng > UpdateLookAtCtr')
        group = pm.listConnections(limb.bhvIKPVGroup)[0]
        dist = limb.bhvIKPVDistance.get()
        control = pm.listConnections(group.control)[0]
        control.tx.set(dist)


