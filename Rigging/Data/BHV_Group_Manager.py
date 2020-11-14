
import pymel.core as pm

class BHV_Group_Manager:
    def __init__(self, limbMng,  nameMng):
        self.limbMng = limbMng
        # self.jntMng = jntMng
        self.nameMng = nameMng

        self.axes = [   [1,0,0],
                        [-1,0,0],
                        [0,1,0],
                        [0,-1,0],
                        [0,0,1],
                        [0,0,-1]]
        self.grpTypes = [   'Empty', # DO NOT CHANGE ORDER

                            'Joint', 
                            'Distance',
                            'FKIKSwitch']
        # EMPTY GROUP:
        #   Limb group, but no data

        # JOINT GROUPS:
        #   FK, CST, IK Chain

        # LIMB GROUPS:
        #   IK PV, LookAt, FKIK Switch

        self._groups = {} # grpID : grpData
        self.bhvGroup = None

    def NewRig(self, rigRoot):
        self.rigRoot = rigRoot

        self._groups = {} # grpID : grpData

        pm.select(d=1)
        self.bhvGroup = pm.group(name='BehaviorGroups', em=1)
        pm.parent(self.bhvGroup, rigRoot)
        pm.addAttr(rigRoot, ln='behaviors', dt='string')
        pm.addAttr(rigRoot, ln='nextGroupID', at='long')


#============= ACCESSORS  ============================

    def GetGroup(self, groupID):
        return self._groups[groupID]

    def GetAllGroups(self):
        return list(self._groups.values())

    def GetLimbGroups(self, limb):
        bhvType = limb.bhvType.get()
        if bhvType in [0, 3, 5, 6]: # FK Chain, Cst, IK Chain, FK Branch
            groups = pm.listConnections(limb.bhvJointGroups)
            return self.SortGroups(groups)

        if bhvType in [1, 4]: # IK PV, LookAt
            return pm.listConnections(limb.bhvDistanceGroup)

        if bhvType == 2: # FK IK
            groups = self.SortGroups(pm.listConnections(limb.bhvJointGroups))
            groups += pm.listConnections(limb.bhvDistanceGroup)
            groups += pm.listConnections(limb.bhvFKIKSwitchGroup)
            return groups

        if bhvType == 7: # EMPTY
            return pm.listConnections(limb.bhvEmptyGroup)

        if bhvType == 8: # FK - Reverse Chain
            groups = pm.listConnections(limb.bhvJointGroups)
            return self.SortGroups(groups)[::-1]

    def GetLimbIKGroups(self, limb):
        bhvType = limb.bhvType.get()
        if bhvType in [0, 3, 5, 6]: # FK Chain, Cst, IK Chain, FK Branch
            groups = pm.listConnections(limb.bhvJointGroups)
            return self.SortGroups(groups)
        if bhvType in [1, 2, 4]: # IK PV, LookAt
            return pm.listConnections(limb.bhvDistanceGroup)
    
    def GetLimbFKGroups(self, limb):
        bhvType = limb.bhvType.get()
        if bhvType in [0, 2, 6]: # FK Chain, FKIK, Branch, Reverse
            groups = pm.listConnections(limb.bhvJointGroups)
            return self.SortGroups(groups)
        if bhvType == 7: # EMPTY
            return pm.listConnections(limb.bhvEmptyGroup)
        if bhvType == 8: # FK - Reverse Chain
            groups = pm.listConnections(limb.bhvJointGroups)
            return self.SortGroups(groups)[::-1]
    





#============= ADD + REMOVE ============================

    def _AddGroup(self, limb):
        groupID = self.rigRoot.nextGroupID.get()
        self.rigRoot.nextGroupID.set(groupID + 1)
        
        groupTypes = ':'.join(self.grpTypes)

        group = pm.group(em=1, w=1)
        pm.addAttr(group, ln='ID', at='long', dv=groupID)
        pm.addAttr(group, ln='control', dt='string')
        pm.addAttr(group, ln='limb', dt='string')
        pm.addAttr(group, ln='groupType', at='enum', en=groupTypes) # IKPV, LookAt
        for attr in ['.sx', '.sy', '.sz']:
            pm.setAttr(group + attr, l=1, k=0, cb=0)
        pm.setAttr(group + '.v', k=0, cb=0)
        self._groups[groupID] = group
        return group

    # EMPTY
    # Called from Rigging > SetupEditable_Limbs()
    def AddEmptyGroup(self, limb):
        group = self._AddGroup(limb)
        pm.connectAttr(limb.bhvEmptyGroup, group.limb)
        self.UpdateGroupName(limb, group)
        return group

    # FK, CST, IK Chain
    # Called from Limb Setup > AutoBuild OR RMB > Add Limb
    def AddJointGroup(self, limb, joint): 
        group = self._AddGroup(limb)
        group.groupType.set(1)
        pm.addAttr(group, ln='targetJoint', at='enum', en='None') # IK Chain
        pm.addAttr(group, ln='joint', dt='string')
        pm.addAttr(group, ln='weight', at='float', min=0, max=1) # Cst
        pm.connectAttr(joint.group, group.joint)
        
        self.UpdateGroupName(limb, group)
        pm.parent(group, joint)
        pm.xform(group, t=[0,0,0], ro=[0,0,0], s=[1,1,1])
        group.v.set(0) 
        return group

    # IK PV, LookAt
    # Called from Behaviors > Set Bhv()
    def AddDistanceGroup(self, limb):
        group = self._AddGroup(limb)
        group.groupType.set(2)
        pm.addAttr(group, ln='targetJoint', at='enum', en='None') # IK PV
        pm.addAttr(group, ln='distanceJoint', dt='string') # for easy Test Connections
        pm.addAttr(group, ln='distance', at='float', min=0) # IKPV, LookAt
        pm.addAttr(group, ln='axis', at='enum', en='X:-X:Y:-Y:Z:-Z') # IKPV, LookAt
        pm.connectAttr(limb.bhvDistanceGroup, group.limb)
        self.UpdateGroupName(limb, group)
        return group

    # FKIK Switch
    # Called from Behaviors > Set Bhv()
    def AddFKIKSwitchGroup(self, limb):
        group = self._AddGroup(limb)
        group.groupType.set(3)
        pm.addAttr(group, ln='targetJoint', at='enum', en='None')
        pm.connectAttr(limb.bhvFKIKSwitchGroup, group.limb)
        self.UpdateGroupName(limb, group)
        for attr in ['.tx', '.ty', '.tz', '.rx', '.ry', '.rz']:
            pm.setAttr(group+attr, l=1, k=0, cb=0)
        return group

    def Remove(self, group):
        del(self._groups[group.ID.get()])
        pm.delete(group)

#============= SETUP / TEARDOWNS ============================
# Called by Rigging UI > Setup/Teardown limbs

    def SetupEditable_IKPVGroup(self, group, joints):
        joint = joints[len(joints)/2]
        self.SetupEditable_DistanceGroup(group, joint)

    def SetupEditable_DistanceGroup(self, group, joint):
        pm.connectAttr(joint.bhvDistanceGroup, group.distanceJoint)
        pm.parent(group, joint)

    def TeardownEditable_DistanceGroup(self, group):
        pm.disconnectAttr(group.distanceJoint)
        pm.parent(group, self.bhvGroup)

#============= UTILS ============================

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

    def UpdateGroupName(self, limb, group):
        index = group.groupType.get()
        if index == 1: # Joint
            joint = pm.listConnections(group.joint)[0]
            groupName = joint.pfrsName.get()
        else:
            groupName = self.grpTypes[index]
        name = self.nameMng.GetName(limb.pfrsName.get(),
                                    groupName,
                                    self.limbMng.GetLimbSide(limb), 
                                    'GRP')
        group.rename(name)

    def UpdateGroupDistance(self, group):
        pos = self.axes[group.axis.get()][:]
        dist = group.distance.get()
        pos = [p*dist for p in pos]
        # for attr in ['.tx', '.ty', '.tz']:
        #     pm.setAttr(group+attr, l=0, k=0, cb=0)
        pm.xform(group, t=pos)
        # for attr in ['.tx', '.ty', '.tz']:
        #     pm.setAttr(group+attr, l=1, k=0, cb=0)

    def UpdateFKIKSwitchJoint(self, group, joints):
        index = group.targetJoint.get()
        joint = joints[index]
        pm.parent(group, joint)
    
        # group = pm.listConnections(limb.bhvFKIKSwitchGroup)[0]
        # modIndex = index % len(joints)
        # if modIndex != index:
        #     limb.bhvFKIKParentJoint.set(modIndex)
        # self.SetLockGroup(group, False)
        # self.PosRotGroupToJoint(group, joint)
        # pm.xform(group, t=[0,0,0], ro=[0,0,0], s=[1,1,1])
        # self.SetLockGroup(group, True)

    # def SetupEditable_JointGroup(self, group):
    #     joint = pm.listConnections(group.joint)[0]
    #     pm.parent(group, joint)
        # Teardown uncessary, as groups are always parented
        # to joints or to controls

    # def SetLockGroup(self, group, isLocked):
    #     attrs = ['.tx', '.ty', '.tz', '.rx', '.ry', '.rz']
    #     if isLocked:
    #         for attr in attrs:
    #             pm.setAttr(group+attr, l=1, k=0, cb=0)
    #     else:
    #         for attr in attrs:
    #             pm.setAttr(group+attr, l=0, k=1, cb=1)

# #============= UPDATE ============================

#     def UpdateIKPoleVectorGroupParent(self, limb):
#         group = pm.listConnections(limb.bhvLimbGroup)[0]
#         joints = self.jntMng.GetLimbJoints(limb)
#         joint = joints[len(joints)/2]
#         self.PosRotGroupToJoint(group, joint)
#         self.SetLockGroup(group, True)
#         self.UpdateGroupDistance(limb)

#     def UpdateGroupDistance(self, limb):
#         group = pm.listConnections(limb.bhvLimbGroup)[0]
#         pos = self.axes[group.bhvAxis.get()][:]
#         dist = group.bhvDistance.get()
#         pos = [p*dist for p in pos]
#         for attr in ['.tx', '.ty', '.tz']:
#             pm.setAttr(group+attr, l=0, k=0, cb=0)
#         pm.xform(group, t=pos)
#         for attr in ['.tx', '.ty', '.tz']:
#             pm.setAttr(group+attr, l=1, k=0, cb=0)

#     def UpdateFKIKSwitchJoint(self, limb):
#         group = pm.listConnections(limb.bhvFKIKSwitchGroup)[0]
#         index = group.targetJoint.get()
#         joints = self.jntMng.GetLimbJoints(limb)
#         modIndex = index % len(joints)
#         if modIndex != index:
#             limb.bhvFKIKParentJoint.set(modIndex)
#         self.SetLockGroup(group, False)
#         self.PosRotGroupToJoint(group, joints[modIndex])
#         self.SetLockGroup(group, True)

#============= MISC ============================

    # def PosRotGroupToJoint(self, group, joint):
    #     pos = pm.xform(joint, q=1, t=1, ws=1)
    #     rot = pm.xform(joint, q=1, ro=1, ws=1)
    #     scale = pm.xform(joint, q=1, s=1, ws=1)
    #     pm.xform(group, t=pos, ro=rot, s=scale, ws=1)
    #     pm.parent(group, joint)

    # def GetLimbGroupName(self, group):
    #     return self.grpTypes[group.groupType.get()]

    # def GetJointGroupName(self, prefix, group):
    #     joint = pm.listConnections(group.joint)[0]
    #     return '%s_%s' % (prefix, joint.pfrsName.get())

    # def UpdateLookAtPosition(self, limb):
    #     group = pm.listConnections(limb.bhvLookAtGroup)[0]
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
        #     pm.connectAttr(limb.bhvEmptyGroup, group.limb)
        #     self.UpdateGroupName(limb, group, self.GetLimbGroupName(group))
        #     pm.parent(group, self.bhvGroup)
        #     return group

        # def Add_FK(self, limb, joint):
        #     group = self._AddJointGroup()
        #     group.groupType.set(0)
        #     pm.connectAttr(joint.bhvFKGroup, group.joint)
        #     pm.connectAttr(limb.bhvFKGroups, group.limb)
        #     self.PosRotGroupToJoint(group, joint)
        #     self.UpdateGroupName(limb, group, self.GetJointGroupName(group))
        #     return group

        # def Add_IKPoleVector(self, limb):
        #     '''Positions the center for the poll vector control'''
        #     group = self._AddJointGroup()
        #     group.groupType.set(1)
        #     pm.addAttr(group, ln='IKTargetGroup', at='enum', en='None')
        #     pm.addAttr(group, ln='IKPoleVectorJoint', dt='string')
        #     pm.connectAttr(limb.bhvIKPoleVectorGroup, group.limb)
        #     self.UpdateIKPoleVectorGroupParent(limb)
        #     self.UpdateGroupName(limb, group, self.GetLimbGroupName(group))
        #     return group

        # def Add_IKChain(self, limb, joint):
        #     '''End Joints of each IK Handle, will grab parent joint'''
        #     group = self._AddJointGroup()
        #     group.groupType.set(6)
        #     pm.addAttr(group, ln='IKTargetGroup', at='enum', en='None')
        #     pm.connectAttr(joint.bhvIKGroup, group.joint)
        #     pm.connectAttr(limb.bhvIKChainGroups, group.limb)
        #     self.PosRotGroupToJoint(group, joint)
        #     self.SetLockGroup(group, True)
        #     self.UpdateGroupName(limb, group, self.GetJointGroupName(group))
        #     return group

        # def Add_FKIKSwitch(self, limb):
        #     group = self._AddJointGroup()
        #     group.groupType.set(2)
        #     pm.connectAttr(limb.bhvFKIKSwitchGroup, group.limb)
        #     self.UpdateGroupName(limb, group, self.GetLimbGroupName(group))
        #     pm.parent(group, self.bhvGroup)
        #     self.SetLockGroup(group, True)
        #     return group

        # def Add_Constraint(self, limb, joint):
        #     '''Positions the center for control'''
        #     group = self._AddJointGroup()
        #     group.groupType.set(3)
        #     pm.addAttr(group, ln='weight', at='float', min=0, max=1)
        #     pm.connectAttr(limb.bhvCstGroups, group.limb)
        #     pm.connectAttr(joint.bhvCstGroup, group.joint)
        #     self.PosRotGroupToJoint(group, joint)
        #     self.SetLockGroup(group, True)
        #     self.UpdateGroupName(limb, group, self.GetJointGroupName(group))
        #     return group
            
        # def Add_LookAt(self, limb, joint):
        #     '''Positions the center for control'''
        #     group = self._AddJointGroup()
        #     group.groupType.set(4)
        #     pm.connectAttr(limb.bhvLookAtGroup, group.limb)
        #     pm.connectAttr(joint.bhvLookAtGroup, group.joint)
        #     self.PosRotGroupToJoint(group, joint)
        #     self.SetLockGroup(group, True)
        #     self.UpdateGroupName(limb, group, self.GetJointGroupName(group))
        #     return group















