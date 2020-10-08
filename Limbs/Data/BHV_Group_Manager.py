
import pymel.core as pm

class BHV_Group_Manager:
    def __init__(self):
        self.grpTypes = [   'FK',
                            'IK Handle',
                            'FK / IK Switch',
                            'Constraint',
                            'Look At',
                            'Empty']
        self.grpSuffixes = ['FK',
                            'CST',
                            'LKAT',
                            'IKPV',
                            'IKC',
                            'IKS']

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

    def GetLimbGroups(self, limb):
        index = limb.bhvType.get()
        if index == 0: # FK - Chain
            return self._SortGroups(pm.listConnections(limb.bhvFKGrps))

        if index == 1: # IK
            return self._SortGroups(pm.listConnections(limb.bhvIKGrps))

        if index == 2: # FK IK
            groups = pm.listConnections(limb.bhvFKIKSwitchGrp)
            groups += self._SortGroups(pm.listConnections(limb.bhvFKGrps))
            groups += self._SortGroups(pm.listConnections(limb.bhvIKGrps))
            return groups

        if index == 3: # Constraint
            return self._SortGroups(pm.listConnections(limb.bhvCstGrps))

        if index == 4: # Look At
            return pm.listConnections(limb.bhvLookAtGrp)

        if index == 5: # IK Chain
            return self._SortGroups(pm.listConnections(limb.bhvIKGrps))
            
        if index == 6: # FK - Branch
            return self._SortGroups(pm.listConnections(limb.bhvFKGrps))

        if index == 7: # EMPTY
            return pm.listConnections(limb.bhvEmptyGrp)

        if index == 8: # FK - Reverse Chain
            return self._SortGroups(pm.listConnections(limb.bhvFKGrps))

    def _SortGroups(self, groups):
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


#============= FUNCTIONALITY ============================

    def _AddGroup(self):
        groupID = self.rigRoot.nextGrpID.get()
        self.rigRoot.nextGrpID.set(groupID + 1)

        groupTypes = ':'.join(self.grpTypes)

        group = pm.group(em=1, w=1)
        pm.addAttr(group, ln='ID', at='long', dv=groupID)
        pm.addAttr(group, ln='joint', dt='string')
        pm.addAttr(group, ln='pfrsName', dt='string')
        pm.addAttr(group, ln='limb', dt='string')
        pm.addAttr(group, ln='groupType', at='enum', en=groupTypes)
        for attr in ['.sx', '.sy', '.sz', '.v']:
            pm.setAttr(group + attr, l=1, k=0, cb=0)
        self._groups[groupID] = group
        pm.parent(group, self.bhvGrp)
        return group

    def Add_FK(self, limb, joint):
        group = self._AddGroup()
        group.groupType.set(0)
        name = '%s - %s' % (self.grpTypes[0], joint.pfrsName.get())
        group.pfrsName.set(name)
        pm.connectAttr(joint.bhvFKGrp, group.joint)
        pm.connectAttr(limb.bhvFKGrps, group.limb)
        self._PosRotGroupToJoint(group, joint)

    def Add_IKHandle(self, limb, startJoint, endJoint):
        '''Positions the center for the poll vector control'''
        group = self._AddGroup()
        group.groupType.set(1)
        name = '%s - %s' % (self.grpTypes[1], endJoint.pfrsName.get())
        group.pfrsName.set(name)
        pm.addAttr(group, ln='joint2', dt='string')
        pm.addAttr(group, ln='IKTargetLimb', dt='string') # connect
        pm.addAttr(group, ln='IKTargetGroup', at='enum', en='None')
        pm.addAttr(group, ln='distance', at='float', min=0)
        pm.connectAttr(startJoint.bhvIKGrp, group.joint)
        pm.connectAttr(endJoint.bhvIKGrp, group.joint2)
        pm.connectAttr(limb.bhvIKGrps, group.limb)
        self._LockGroup(group)

    def Add_FKIKSwitch(self, limb):
        group = self._AddGroup()
        group.groupType.set(2)
        group.pfrsName.set(self.grpTypes[2])
        pm.addAttr(group, ln='parentGrp', at='enum', en='None')
        pm.connectAttr(limb.bhvFKIKSwitchGrp, group.limb)
        self._LockGroup(group)
        # MISSING LOCK XFORMS

    def Add_Constraint(self, limb, joint):
        '''Positions the center for control'''
        group = self._AddGroup()
        group.groupType.set(3)
        pm.addAttr(group, ln='weight', at='float', min=0, max=1)
        name = '%s - %s' % (self.grpTypes[3], joint.pfrsName.get())
        group.pfrsName.set(name)
        pm.connectAttr(limb.bhvCstGrps, group.limb)
        pm.connectAttr(joint.bhvCstGrp, group.joint)
        self._LockGroup(group)
        
    def Add_LookAt(self, limb, joint):
        '''Positions the center for control'''
        group = self._AddGroup()
        group.groupType.set(4)
        pm.addAttr(group, ln='distance', at='float', min=0)
        group.pfrsName.set(self.grpTypes[4])
        pm.connectAttr(limb.bhvLookAtGrp, group.limb)
        pm.connectAttr(joint.bhvLookAtGrp, group.joint)
        self._LockGroup(group)

    def Add_Empty(self, limb):
        group = self._AddGroup()
        group.groupType.set(5)
        group.pfrsName.set(self.grpTypes[5])
        pm.connectAttr(limb.bhvEmptyGrp, group.limb)

    def _LockGroup(self, group):
        for attr in ['.tx', '.ty', '.tz', '.rx', '.ry', '.rz']:
            pm.setAttr(group+attr, l=1, k=0, cb=0)

    def _PosRotGroupToJoint(self, group, joint):
        pos = pm.xform(joint, q=1, t=1, ws=1)
        pm.xform(group, t=pos, ws=1)
        rot = pm.xform(joint, q=1, ro=1, ws=1)
        pm.xform(group, ro=rot, ws=1)















