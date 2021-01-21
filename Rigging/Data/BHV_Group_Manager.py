
import pymel.core as pm

class BHV_Group_Manager:
    def __init__(self, limbMng, nameMng, parent):
        self.limbMng = limbMng
        self.nameMng = nameMng
        self.logger = parent.logger

        # self.axesXforms =   ((1,0,0),
        #                     (-1,0,0),
        #                     (0,1,0),
        #                     (0,-1,0),
        #                     (0,0,1),
        #                     (0,0,-1))
        # self.axesNames =    ('X',
        #                     '-X',
        #                     'Y',
        #                     '-Y',
        #                     'Z',
        #                     '-Z')
        self.grpTypes = (   'Empty', # DO NOT CHANGE ORDER

                            'Joint', 
                            'Distance',
                            'FKIKSwitch',
                            'RFK')
        self.hideAttrs = False

        # EMPTY GROUP:
        #   Limb group, but no data

        # JOINT GROUPS:
        #   FK, CST, IK Chain

        # LIMB GROUPS:
        #   IK PV, LookAt, FKIK Switch

        self._groups = {} # grpID : grpData
        # self.bhvGroup = None
        self.rigRoot = None

    def NewRig(self, rigRoot):
        self.logger.debug('\tGrpMng > NewRig')
        self.rigRoot = rigRoot

        self._groups = {} # grpID : grpData

        pm.select(d=1)
        # self.bhvGroup = pm.group(name='BehaviorGroups', em=1, p=rigRoot)
        pm.addAttr(rigRoot, ln='behaviors', dt='string')
        pm.addAttr(rigRoot, ln='nextGroupID', at='long')


#============= ACCESSORS  ============================

    def GetGroup(self, groupID):
        self.logger.debug('\tGrpMng > GetGroup')
        return self._groups[groupID]

    def GetAllGroups(self):
        self.logger.debug('\tGrpMng > GetAllGroups')
        return list(self._groups.values())

    # def GetAllLimbGroups(self, limb):
    #     groups = []
    #     for joint in pm.listConnections(limb.infJoints):
    #         groups += pm.listConnections(joint.group)
    #     for joint in pm.listConnections(limb.nonInfjoints):
    #         groups += pm.listConnections(joint.group)
    #     groups += pm.listConnections(limb.bhvDistanceGroup)
    #     groups += pm.listConnections(limb.bhvFKIKSwitchGroup)
    #     groups += pm.listConnections(limb.bhvEmptyGroup)
    #     return groups

    def GetLimbGroups(self, limb):
        self.logger.debug('\tGrpMng > GetLimbGroups')
        bhvType = limb.bhvType.get()
        groups = []
        if bhvType in [0, 3, 5, 6]: # FK Chain, Cst, FK Branch
            for joint in pm.listConnections(limb.joints):
                groups += pm.listConnections(joint.group)
            return self.SortGroups(groups)
            # for joint in pm.listConnections(limb.infJoints):
            #     groups += pm.listConnections(joint.group)
            # return self.SortGroups(groups)
        # if bhvType == 5: # IK Chain
        #     for joint in pm.listConnections(limb.infJoints):
        #         groups += pm.listConnections(joint.group)
        #     for joint in pm.listConnections(limb.nonInfJoint):
        #         groups += pm.listConnections(joint.group)
        #     return self.SortGroups(groups)[1:]
        if bhvType in [1, 4]: # IK PV, LookAt
            return pm.listConnections(limb.bhvDistanceGroup)

        if bhvType == 2: # FK IK PV
            # for joint in pm.listConnections(limb.infJoints):
            for joint in pm.listConnections(limb.joints):
                groups += pm.listConnections(joint.group)
            groups = self.SortGroups(groups)
            groups += pm.listConnections(limb.bhvDistanceGroup)
            groups += pm.listConnections(limb.bhvFKIKSwitchGroup)
            return groups

        if bhvType == 9: # FK IK Chain
            # for joint in pm.listConnections(limb.infJoints):
            for joint in pm.listConnections(limb.joints):
                groups += pm.listConnections(joint.group)
            groups = self.SortGroups(groups)
            groups += pm.listConnections(limb.bhvFKIKSwitchGroup)
            return groups

        if bhvType == 7: # EMPTY
            return pm.listConnections(limb.bhvEmptyGroup)

        if bhvType == 8: # FK - Reverse Chain
            # for joint in pm.listConnections(limb.infJoints):
            for joint in pm.listConnections(limb.joints):
                groups += pm.listConnections(joint.group)
            return self.SortGroups(groups)[::-1]
        
        if bhvType == 10: # Relative FK
            groups = pm.listConnections(limb.bhvRFKBottomGroup)
            groups += pm.listConnections(limb.bhvRFKCenterGroup)
            groups += pm.listConnections(limb.bhvRFKTopGroup)
            return groups
            
    def GetLimbIKGroups(self, limb):
        self.logger.debug('\tGrpMng > GetLimbIKGroups')
        bhvType = limb.bhvType.get()
        if bhvType in [0, 3, 5, 6, 9]: # FK Chain, Cst, IK Chain, FK Branch
            groups = []
            # for joint in pm.listConnections(limb.infJoints):
            for joint in pm.listConnections(limb.joints):
                groups += pm.listConnections(joint.group)
            return self.SortGroups(groups)
        if bhvType in [1, 2, 4]: # IK PV, LookAt
            return pm.listConnections(limb.bhvDistanceGroup)
    
    def GetLimbFKGroups(self, limb):
        self.logger.debug('\tGrpMng > GetLimbFKGroups')
        bhvType = limb.bhvType.get()
        groups = []
        # FK Chain, FKIK, Branch, Reverse, Relative
        if bhvType in [0, 2, 6, 9, 10]:
            # for joint in pm.listConnections(limb.infJoints):
            for joint in pm.listConnections(limb.joints):
                groups += pm.listConnections(joint.group)
            return self.SortGroups(groups)
        if bhvType == 7: # EMPTY
            return pm.listConnections(limb.bhvEmptyGroup)
        if bhvType == 8: # FK - Reverse Chain
            # for joint in pm.listConnections(limb.infJoints):
            for joint in pm.listConnections(limb.joints):
                groups += pm.listConnections(joint.group)
            return self.SortGroups(groups)[::-1]
    
#============= ADD + REMOVE ============================

    def _AddGroup(self):
        groupID = self.rigRoot.nextGroupID.get()
        self.rigRoot.nextGroupID.set(groupID + 1)
        
        groupTypes = ':'.join(self.grpTypes)

        group = pm.group(em=1, w=1)
        pm.addAttr(group, ln='ID', at='long', dv=groupID)
        pm.addAttr(group, ln='control', dt='string')
        pm.addAttr(group, ln='FKIKVisSource', dt='string')
        pm.addAttr(group, ln='groupType', at='enum', en=groupTypes) # IKPV, LookAt
        for attr in ['.sx', '.sy', '.sz']:
            pm.setAttr(group + attr, l=1, k=0, cb=0)
        pm.setAttr(group + '.v', k=0, cb=0)
        self._groups[groupID] = group
        return group

    # EMPTY
    # Called from Rigging > SetupEditable_Limbs()
    def AddEmptyGroup(self, limb):
        self.logger.debug('\tGrpMng > AddEmptyGroup')
        group = self._AddGroup()
        pm.addAttr(group, ln='limb', dt='string')
        pm.connectAttr(limb.bhvEmptyGroup, group.limb)
        pm.parent(group, limb)
        return group

    # FK, CST, IK Chain
    # Called from Limb Setup > AutoBuild OR RMB > Add Limb
    def AddJointGroup(self, joint): 
        self.logger.debug('\tGrpMng > AddJointGroup')
        group = self._AddGroup()
        group.groupType.set(1)
        pm.addAttr(group, ln='targetJoint', at='enum', en='None') # IK Chain
        pm.addAttr(group, ln='joint', dt='string')
        pm.addAttr(group, ln='weight', at='float', min=0, max=1) # Cst
        pm.connectAttr(joint.group, group.joint)
        
        pm.parent(group, joint)
        pm.xform(group, t=[0,0,0], ro=[0,0,0], s=[1,1,1])
        group.v.set(0) 
        return group

    def AddRFKGroups(self, limb):
        self.logger.debug('\tGrpMng > AddRFKGroups')
        groups = []
        for i in range(3):
            groups.append(self._AddGroup())
            pm.addAttr(groups[i], ln='joint', dt='string')
            pm.addAttr(groups[i], ln='limb', dt='string')
            groups[i].v.set(0) 
            groups[i].groupType.set(4)
        pm.connectAttr(limb.bhvRFKBottomGroup, groups[0].limb)
        pm.connectAttr(limb.bhvRFKCenterGroup, groups[1].limb)
        pm.connectAttr(limb.bhvRFKTopGroup, groups[2].limb)
        pm.parent(groups[0], groups[1])
        pm.parent(groups[2], groups[1])
        pm.parent(groups[1], limb)
        return groups

    # IK PV, LookAt
    # Called from Behaviors > Set Bhv()
    def AddDistanceGroup(self, limb):
        self.logger.debug('\tGrpMng > AddDistanceGroup')
        # axes = ':'.join(self.axesNames)
        group = self._AddGroup()
        group.groupType.set(2)
        # pm.addAttr(group, ln='targetJoint', at='enum', en='None') # IK PV
        # pm.addAttr(group, ln='distanceJoint', dt='string') # for easy Test Connections
        # pm.addAttr(group, ln='distance', at='float', min=0, dv=1) # IKPV, LookAt
        # pm.addAttr(group, ln='axis', at='enum', en=axes, dv=4) # IKPV, LookAt
        pm.addAttr(group, ln='limb', dt='string')
        pm.connectAttr(limb.bhvDistanceGroup, group.limb)
        pm.parent(group, limb)
        return group

    # FKIK Switch
    # Called from Behaviors > Set Bhv()
    def AddFKIKSwitchGroup(self, limb):
        self.logger.debug('\tGrpMng > AddFKIKSwitchGroup')
        group = self._AddGroup()
        group.groupType.set(3)
        pm.addAttr(group, ln='targetJoint', at='enum', en='None')
        pm.addAttr(group, ln='FKVisTargets', dt='string') # for easy Test Connections
        pm.addAttr(group, ln='IKVisTargets', dt='string')
        pm.addAttr(group, ln='bindSource', dt='string') # For FKIK to link to eachother
        pm.addAttr(group, ln='bindTargets', dt='string')
        pm.addAttr(group, ln='limb', dt='string')
        pm.connectAttr(limb.bhvFKIKSwitchGroup, group.limb)
        pm.parent(group, limb)
        for attr in ['.tx', '.ty', '.tz', '.rx', '.ry', '.rz']:
            pm.setAttr(group+attr, l=1, k=0, cb=0)
        return group

    def Remove(self, group):
        self.logger.debug('\tGrpMng > Remove')
        del(self._groups[group.ID.get()])
        pm.delete(group)

#============= SETUP / TEARDOWNS ============================

    def SetupEditable_IKPVGroup(self, limb, joints):
        self.logger.debug('\tGrpMng > SetupEditable_IKPVGroup')
        joint = joints[len(joints)/2]
        self.SetupEditable_DistanceGroup(limb, joint)

    # def SetupEditable_IKPVGroup(self, group, joints):
    #     joint = joints[len(joints)/2]
    #     self.SetupEditable_DistanceGroup(group, joint)

    def SetupEditable_DistanceGroup(self, limb, joint):
        self.logger.debug('\tGrpMng > SetupEditable_DistanceGroup')
        pm.connectAttr(joint.bhvDistanceGroup, limb.bhvDistanceJoint)
        group = self.GetLimbIKGroups(limb)[0]
        pm.parent(group, joint)

    # def SetupEditable_DistanceGroup(self, group, joint):
    #     pm.connectAttr(joint.bhvDistanceGroup, group.distanceJoint)
    #     pm.parent(group, joint)

    def TeardownEditable_DistanceGroup(self, limb):
        self.logger.debug('\tGrpMng > TeardownEditable_DistanceGroup')
        pm.disconnectAttr(limb.bhvDistanceJoint)
        group = self.GetLimbIKGroups(limb)[0]
        pm.parent(group, limb)

    # def TeardownEditable_DistanceGroup(self, group):
    #     pm.disconnectAttr(group.distanceJoint)
    #     limb = pm.listConnections(group.limb)[0]
    #     pm.parent(group, limb)

#============= UTILS ============================

    def SortGroups(self, groups):
        self.logger.debug('\tGrpMng > SortGroups')
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

    def UpdateGroupName(self, group):
        self.logger.debug('\tGrpMng > UpdateGroupName')
        '''Updates limb + joint GROUP + CONTROL renaming'''
        index = group.groupType.get()
        groupType = self.grpTypes[index]
        if index in (1, 4): # Joint, RFK
            joint = pm.listConnections(group.joint)[0]
            pfrsName = joint.pfrsName.get()
            limb = pm.listConnections(joint.limb)[0]
        else:
            limb = pm.listConnections(group.limb)[0]
            pfrsName = limb.pfrsName.get()
        groupName = self.nameMng.GetName(pfrsName,
                                    groupType,
                                    self.limbMng.GetLimbSide(limb), 
                                    'GRP')
        group.rename(groupName)
        control = pm.listConnections(group.control)[0]
        controlName = self.nameMng.GetName(pfrsName,
                                    groupType,
                                    self.limbMng.GetLimbSide(limb), 
                                    'CTR')
        control.rename(controlName)

    # def UpdateGroupDistance(self, group):
    #     pos = self.axesXforms[group.axis.get()][:]
    #     dist = group.distance.get()
    #     pos = [p*dist for p in pos]
    #     pm.xform(group, t=pos)

    # def UpdateFKIKSwitchJoint(self, group, joints):
    #     index = group.targetJoint.get()
    #     joint = joints[index]
    #     pm.parent(group, joint)
    
    #     # group = pm.listConnections(limb.bhvFKIKSwitchGroup)[0]
    #     # modIndex = index % len(joints)
    #     # if modIndex != index:
    #     #     limb.bhvFKIKParentJoint.set(modIndex)
    #     # self.SetLockGroup(group, False)
    #     # self.PosRotGroupToJoint(group, joint)
    #     # pm.xform(group, t=[0,0,0], ro=[0,0,0], s=[1,1,1])
    #     # self.SetLockGroup(group, True)


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
#         pos = self.axesXforms[group.bhvAxis.get()][:]
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
    #     pos = self.axesXforms[limb.bhvLookAtAxis.get()][:]
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















