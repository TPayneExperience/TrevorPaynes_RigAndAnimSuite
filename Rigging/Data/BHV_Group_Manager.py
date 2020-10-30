
import pymel.core as pm

class BHV_Group_Manager:
    def __init__(self, limbMng, jntMng, nameMng):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.nameMng = nameMng

        self.grpTypes = [   'FK', # DO NOT CHANGE ORDER

                            'IKPoleVector',
                            'FKIKSwitch',
                            'Constraint',
                            'LookAt',
                            'Empty',
                            
                            'IKChain']
        self.axes = [   [1,0,0],
                        [-1,0,0],
                        [0,1,0],
                        [0,-1,0],
                        [0,0,1],
                        [0,0,-1]]

        self._groups = {} # grpID : grpData

    def NewRig(self, rigRoot):
        self.rigRoot = rigRoot

        self._groups = {} # grpID : grpData

        pm.select(d=1)
        self.bhvGrp = pm.group(name='BehaviorGroups', em=1)
        pm.parent(self.bhvGrp, rigRoot)
        pm.addAttr(rigRoot, ln='behaviors', dt='string')
        pm.addAttr(rigRoot, ln='nextGrpID', at='long')


#============= ACCESSORS  ============================

    def GetLimbGroupName(self, group):
        return self.grpTypes[group.groupType.get()]

    def GetJointGroupName(self, group):
        joint = pm.listConnections(group.joint)[0]
        grpType = self.grpTypes[group.groupType.get()]
        return '%s_%s' % (joint.pfrsName.get(), grpType)

    def GetGroup(self, groupID):
        return self._groups[groupID]

    def GetLimbGroups(self, limb):
        index = limb.bhvType.get()
        if index in [0,6]: # FK - Chain, Branch
            groups = pm.listConnections(limb.bhvFKGrps)
            return self.SortGroups(groups)

        if index == 1: # IK
            return pm.listConnections(limb.bhvIKPoleVectorGrp)

        if index == 2: # FK IK
            groups = self.SortGroups(pm.listConnections(limb.bhvFKGrps))
            groups += pm.listConnections(limb.bhvIKPoleVectorGrp)
            groups += pm.listConnections(limb.bhvFKIKSwitchGrp)
            return groups

        if index == 3: # Constraint
            groups = pm.listConnections(limb.bhvCstGrps)
            return self.SortGroups(groups)

        if index == 4: # Look At
            return pm.listConnections(limb.bhvLookAtGrp)

        if index == 5: # IK Chain
            groups = pm.listConnections(limb.bhvIKChainGrps)
            return self.SortGroups(groups)
            
        if index == 7: # EMPTY
            return pm.listConnections(limb.bhvEmptyGrp)

        if index == 8: # FK - Reverse Chain
            groups = pm.listConnections(limb.bhvFKGrps)
            return self.SortGroups(groups)[::-1]

    def GetAllGroups(self):
        return list(self._groups.values())

#============= ADD + REMOVE ============================

    def Remove(self, group):
        del(self._groups[group.ID.get()])
        pm.delete(group)

    def _AddGroup(self):
        groupID = self.rigRoot.nextGrpID.get()
        self.rigRoot.nextGrpID.set(groupID + 1)

        groupTypes = ':'.join(self.grpTypes)

        group = pm.group(em=1, w=1)
        pm.addAttr(group, ln='ID', at='long', dv=groupID)
        pm.addAttr(group, ln='joint', dt='string')
        pm.addAttr(group, ln='control', dt='string')
        pm.addAttr(group, ln='limb', dt='string')
        pm.addAttr(group, ln='groupType', at='enum', en=groupTypes)
        for attr in ['.sx', '.sy', '.sz']:
            pm.setAttr(group + attr, l=1, k=0, cb=0)
        self._groups[groupID] = group
        return group

    def Add_FK(self, limb, joint):
        group = self._AddGroup()
        group.groupType.set(0)
        pm.connectAttr(joint.bhvFKGrp, group.joint)
        pm.connectAttr(limb.bhvFKGrps, group.limb)
        self.PosRotGroupToJoint(group, joint)
        self._UpdateGroupName(limb, group, self.GetJointGroupName(group))
        return group

    def Add_IKPoleVector(self, limb):
        '''Positions the center for the poll vector control'''
        group = self._AddGroup()
        group.groupType.set(1)
        pm.addAttr(group, ln='IKTargetGroup', at='enum', en='None')
        pm.addAttr(group, ln='distance', at='float', min=0, dv=1)
        pm.addAttr(group, ln='pfrsAxis', at='enum', en='X:-X:Y:-Y:Z:-Z')
        pm.addAttr(group, ln='IKPoleVectorJoint', dt='string')
        pm.connectAttr(limb.bhvIKPoleVectorGrp, group.limb)
        joints = self.jntMng.GetLimbJoints(limb)
        joint = joints[len(joints)/2]
        self.PosRotGroupToJoint(group, joint)
        self._LockGroup(group)
        self.UpdateIKGroupPosition(group)
        self._UpdateGroupName(limb, group, self.GetLimbGroupName(group))
        return group

    def Add_IKChain(self, limb, joint):
        '''End Joints of each IK Handle, will grab parent joint'''
        group = self._AddGroup()
        group.groupType.set(6)
        pm.addAttr(group, ln='IKTargetGroup', at='enum', en='None')
        pm.connectAttr(joint.bhvIKGrp, group.joint)
        pm.connectAttr(limb.bhvIKChainGrps, group.limb)
        self.PosRotGroupToJoint(group, joint)
        self._LockGroup(group)
        # self.UpdateIKGroupPosition(group)
        self._UpdateGroupName(limb, group, self.GetJointGroupName(group))
        return group

    def Add_FKIKSwitch(self, limb):
        group = self._AddGroup()
        group.groupType.set(2)
        pm.addAttr(group, ln='parentGroup', at='enum', en='None')
        pm.connectAttr(limb.bhvFKIKSwitchGrp, group.limb)
        self._LockGroup(group)
        self._UpdateGroupName(limb, group, self.GetLimbGroupName(group))
        pm.parent(group, self.bhvGrp)
        return group

    def Add_Constraint(self, limb, joint):
        '''Positions the center for control'''
        group = self._AddGroup()
        group.groupType.set(3)
        pm.addAttr(group, ln='weight', at='float', min=0, max=1)
        pm.connectAttr(limb.bhvCstGrps, group.limb)
        pm.connectAttr(joint.bhvCstGrp, group.joint)
        self.PosRotGroupToJoint(group, joint)
        self._LockGroup(group)
        self._UpdateGroupName(limb, group, self.GetJointGroupName(group))
        return group
        
    def Add_LookAt(self, limb, joint):
        '''Positions the center for control'''
        group = self._AddGroup()
        group.groupType.set(4)
        pm.addAttr(group, ln='distance', at='float', min=0)
        pm.addAttr(group, ln='pfrsAxis', at='enum', en='X:-X:Y:-Y:Z:-Z')
        pm.connectAttr(limb.bhvLookAtGrp, group.limb)
        pm.connectAttr(joint.bhvLookAtGrp, group.joint)
        self.PosRotGroupToJoint(group, joint)
        self._LockGroup(group)
        self._UpdateGroupName(limb, group, self.GetJointGroupName(group))
        return group

    def Add_Empty(self, limb):
        group = self._AddGroup()
        group.groupType.set(5)
        pm.connectAttr(limb.bhvEmptyGrp, group.limb)
        self._UpdateGroupName(limb, group, self.GetLimbGroupName(group))
        pm.parent(group, self.bhvGrp)
        return group

#============= POSITION ============================

    def UpdateIKGroupPosition(self, group):
        pos = self.axes[group.pfrsAxis.get()][:]
        dist = group.distance.get()
        pos = [p*dist for p in pos]
        for attr in ['.tx', '.ty', '.tz']:
            pm.setAttr(group+attr, l=0, k=0, cb=0)
        pm.xform(group, t=pos)
        for attr in ['.tx', '.ty', '.tz']:
            pm.setAttr(group+attr, l=1, k=0, cb=0)

    def PosRotGroupToJoint(self, group, joint):
        pos = pm.xform(joint, q=1, t=1, ws=1)
        rot = pm.xform(joint, q=1, ro=1, ws=1)
        scale = pm.xform(joint, q=1, s=1, ws=1)
        pm.xform(group, t=pos, ro=rot, s=scale, ws=1)
        pm.parent(group, joint)

#============= PRIVATE ============================

    def SortGroups(self, groups):
        indexGroups = {} # jointIndex : group
        orderedGroups = []
        for group in groups:
            joints = pm.listConnections(group.joint)
            if not joints:
                return []
            indexGroups[joints[0].limbIndex.get()] = group
        for index in sorted(list(indexGroups.keys())):
            orderedGroups.append(indexGroups[index])
        return orderedGroups

    def _LockGroup(self, group):
        for attr in ['.tx', '.ty', '.tz', '.rx', '.ry', '.rz']:
            pm.setAttr(group+attr, l=1, k=0, cb=0)

    def _UpdateGroupName(self, limb, group, pfrsName):
        name = self.nameMng.GetName(limb.pfrsName.get(),
                                    pfrsName,
                                    self.limbMng.GetLimbSide(limb), 
                                    'GRP')
        group.rename(name)















