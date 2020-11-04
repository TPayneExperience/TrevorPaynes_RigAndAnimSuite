
import pymel.core as pm

class BHV_Group_Manager:
    def __init__(self, limbMng, jntMng, nameMng):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.nameMng = nameMng

        self.axes = [   [1,0,0],
                        [-1,0,0],
                        [0,1,0],
                        [0,-1,0],
                        [0,0,1],
                        [0,0,-1]]
        # self.grpTypes = [   'FK', # DO NOT CHANGE ORDER

        #                     'IKPoleVector',
        #                     'FKIKSwitch',
        #                     'Constraint',
        #                     'LookAt',
        #                     'Empty',
                            
        #                     'IKChain']
        # EMPTY GROUP:
        #   Limb group, but no data

        # JOINT GROUPS:
        #   FK, CST, IK Chain

        # LIMB GROUPS:
        #   IK PV, LookAt, FKIK Switch

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

    def GetGroup(self, groupID):
        return self._groups[groupID]

    def GetAllGroups(self):
        return list(self._groups.values())

#============= ADD + REMOVE ============================

    def Remove(self, group):
        del(self._groups[group.ID.get()])
        pm.delete(group)

    def AddGroup(self, limb, typeIndex, joint=None):
        groupID = self.rigRoot.nextGrpID.get()
        self.rigRoot.nextGrpID.set(groupID + 1)
        
        name = limb.pfrsName.get()
        group = pm.group(em=1, w=1, n=('%s_Group%03d' % (name, groupID)))
        pm.addAttr(group, ln='ID', at='long', dv=groupID)
        pm.addAttr(group, ln='control', dt='string')
        pm.addAttr(group, ln='limb', dt='string')
        pm.addAttr(group, ln='joint', dt='string') # Joints Only
        pm.addAttr(group, ln='weight', at='float', min=0, max=1) # Cst
        pm.addAttr(group, ln='targetJoint', at='enum', en='None') # IKPV, FKIK
        pm.addAttr(group, ln='distance', at='float', min=0) # IKPV, LookAt
        pm.addAttr(group, ln='axis', at='enum', en='X:-X:Y:-Y:Z:-Z') # IKPV, LookAt

        for attr in ['.sx', '.sy', '.sz']:
            pm.setAttr(group + attr, l=1, k=0, cb=0)
        if joint:
            pm.connectAttr(joint.group, group.joint)
        self._groups[groupID] = group
        return group

#============= UPDATE ============================

    def UpdateIKPoleVectorGroupParent(self, limb):
        group = pm.listConnections(limb.bhvLimbGrp)[0]
        joints = self.jntMng.GetLimbJoints(limb)
        joint = joints[len(joints)/2]
        self.PosRotGroupToJoint(group, joint)
        self.SetLockGroup(group, True)
        self.UpdateGroupDistance(limb)

    def UpdateGroupDistance(self, limb):
        group = pm.listConnections(limb.bhvLimbGrp)[0]
        pos = self.axes[group.bhvAxis.get()][:]
        dist = group.bhvDistance.get()
        pos = [p*dist for p in pos]
        for attr in ['.tx', '.ty', '.tz']:
            pm.setAttr(group+attr, l=0, k=0, cb=0)
        pm.xform(group, t=pos)
        for attr in ['.tx', '.ty', '.tz']:
            pm.setAttr(group+attr, l=1, k=0, cb=0)

    def UpdateFKIKSwitchJoint(self, limb):
        group = pm.listConnections(limb.bhvFKIKSwitchGrp)[0]
        index = group.targetJoint.get()
        joints = self.jntMng.GetLimbJoints(limb)
        modIndex = index % len(joints)
        if modIndex != index:
            limb.bhvFKIKParentJoint.set(modIndex)
        self.SetLockGroup(group, False)
        self.PosRotGroupToJoint(group, joints[modIndex])
        self.SetLockGroup(group, True)

#============= MISC ============================

    def PosRotGroupToJoint(self, group, joint):
        pos = pm.xform(joint, q=1, t=1, ws=1)
        rot = pm.xform(joint, q=1, ro=1, ws=1)
        scale = pm.xform(joint, q=1, s=1, ws=1)
        pm.xform(group, t=pos, ro=rot, s=scale, ws=1)
        pm.parent(group, joint)

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

    def SetLockGroup(self, group, isLocked):
        attrs = ['.tx', '.ty', '.tz', '.rx', '.ry', '.rz']
        if isLocked:
            for attr in attrs:
                pm.setAttr(group+attr, l=1, k=0, cb=0)
        else:
            for attr in attrs:
                pm.setAttr(group+attr, l=0, k=1, cb=1)

    def _UpdateGroupName(self, limb, group, pfrsName):
        name = self.nameMng.GetName(limb.pfrsName.get(),
                                    pfrsName,
                                    self.limbMng.GetLimbSide(limb), 
                                    'GRP')
        group.rename(name)

    # def GetLimbGroupName(self, group):
    #     return self.grpTypes[group.groupType.get()]

    # def GetJointGroupName(self, prefix, group):
    #     joint = pm.listConnections(group.joint)[0]
    #     return '%s_%s' % (prefix, joint.pfrsName.get())

    # def GetLimbGroups(self, limb):
    #     bhvType = limb.bhvType.get()
    #     if bhvType in [0, 3, 5, 6]: # FK Chain, Cst, FK Branch
    #         groups = pm.listConnections(limb.bhvJointGrps)
    #         return self.SortGroups(groups)

    #     if bhvType in [1, 4]: # IK PV, LookAt
    #         return pm.listConnections(limb.bhvLimbGrp)

    #     if bhvType == 2: # FK IK
    #         groups = self.SortGroups(pm.listConnections(limb.bhvJointGrps))
    #         groups += pm.listConnections(limb.bhvLimbGrp)
    #         groups += pm.listConnections(limb.bhvFKIKSwitchGrp)
    #         return groups

    #     if bhvType == 7: # EMPTY
    #         return pm.listConnections(limb.bhvEmptyGrp)

    #     if bhvType == 8: # FK - Reverse Chain
    #         groups = pm.listConnections(limb.bhvFKGrps)
    #         return self.SortGroups(groups)[::-1]

    # def UpdateLookAtPosition(self, limb):
    #     group = pm.listConnections(limb.bhvLookAtGrp)[0]
    #     pos = self.axes[limb.bhvLookAtAxis.get()][:]
    #     dist = limb.bhvLookAtDistance.get()
    #     pos = [p*dist for p in pos]
    #     for attr in ['.tx', '.ty', '.tz']:
    #         pm.setAttr(group+attr, l=0, k=0, cb=0)
    #     pm.xform(group, t=pos)
    #     for attr in ['.tx', '.ty', '.tz']:
    #         pm.setAttr(group+attr, l=1, k=0, cb=0)

        
    # DELETE LATER
        # def Add_Empty(self, limb):
        #     group = self._AddJointGroup()
        #     group.groupType.set(5)
        #     pm.connectAttr(limb.bhvEmptyGrp, group.limb)
        #     self._UpdateGroupName(limb, group, self.GetLimbGroupName(group))
        #     pm.parent(group, self.bhvGrp)
        #     return group

        # def Add_FK(self, limb, joint):
        #     group = self._AddJointGroup()
        #     group.groupType.set(0)
        #     pm.connectAttr(joint.bhvFKGrp, group.joint)
        #     pm.connectAttr(limb.bhvFKGrps, group.limb)
        #     self.PosRotGroupToJoint(group, joint)
        #     self._UpdateGroupName(limb, group, self.GetJointGroupName(group))
        #     return group

        # def Add_IKPoleVector(self, limb):
        #     '''Positions the center for the poll vector control'''
        #     group = self._AddJointGroup()
        #     group.groupType.set(1)
        #     pm.addAttr(group, ln='IKTargetGroup', at='enum', en='None')
        #     pm.addAttr(group, ln='IKPoleVectorJoint', dt='string')
        #     pm.connectAttr(limb.bhvIKPoleVectorGrp, group.limb)
        #     self.UpdateIKPoleVectorGroupParent(limb)
        #     self._UpdateGroupName(limb, group, self.GetLimbGroupName(group))
        #     return group

        # def Add_IKChain(self, limb, joint):
        #     '''End Joints of each IK Handle, will grab parent joint'''
        #     group = self._AddJointGroup()
        #     group.groupType.set(6)
        #     pm.addAttr(group, ln='IKTargetGroup', at='enum', en='None')
        #     pm.connectAttr(joint.bhvIKGrp, group.joint)
        #     pm.connectAttr(limb.bhvIKChainGrps, group.limb)
        #     self.PosRotGroupToJoint(group, joint)
        #     self.SetLockGroup(group, True)
        #     self._UpdateGroupName(limb, group, self.GetJointGroupName(group))
        #     return group

        # def Add_FKIKSwitch(self, limb):
        #     group = self._AddJointGroup()
        #     group.groupType.set(2)
        #     pm.connectAttr(limb.bhvFKIKSwitchGrp, group.limb)
        #     self._UpdateGroupName(limb, group, self.GetLimbGroupName(group))
        #     pm.parent(group, self.bhvGrp)
        #     self.SetLockGroup(group, True)
        #     return group

        # def Add_Constraint(self, limb, joint):
        #     '''Positions the center for control'''
        #     group = self._AddJointGroup()
        #     group.groupType.set(3)
        #     pm.addAttr(group, ln='weight', at='float', min=0, max=1)
        #     pm.connectAttr(limb.bhvCstGrps, group.limb)
        #     pm.connectAttr(joint.bhvCstGrp, group.joint)
        #     self.PosRotGroupToJoint(group, joint)
        #     self.SetLockGroup(group, True)
        #     self._UpdateGroupName(limb, group, self.GetJointGroupName(group))
        #     return group
            
        # def Add_LookAt(self, limb, joint):
        #     '''Positions the center for control'''
        #     group = self._AddJointGroup()
        #     group.groupType.set(4)
        #     pm.connectAttr(limb.bhvLookAtGrp, group.limb)
        #     pm.connectAttr(joint.bhvLookAtGrp, group.joint)
        #     self.PosRotGroupToJoint(group, joint)
        #     self.SetLockGroup(group, True)
        #     self._UpdateGroupName(limb, group, self.GetJointGroupName(group))
        #     return group















