
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

    def GetLimbGrps(self, limb):
        index = limb.bhvType.get()
        if index == 0: # FK Chain
            return pm.listConnections(limb.bhvFKGrps)

        if index == 1: # IK
            return pm.listConnections(limb.bhvIKGrps)

        if index == 2: # FK IK
            groups = pm.listConnections(limb.bhvFKIKSwitchGrp)
            groups += pm.listConnections(limb.bhvFKGrps)
            groups += pm.listConnections(limb.bhvIKGrps)
            return groups

        if index == 3: # Constraint
            return pm.listConnections(limb.bhvCstGrps)

        if index == 4: # Look At
            return pm.listConnections(limb.bhvLookAtGrp)

        if index == 5: # IK Chain
            return pm.listConnections(limb.bhvIKGrps)
            
        if index == 6: # FK Chain
            return pm.listConnections(limb.bhvFKGrps)

        if index == 7: # EMPTY
            return pm.listConnections(limb.bhvEmptyGrp)

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
        self._groups[groupID] = group
        pm.parent(group, self.bhvGrp)
        return group

    def Add_FK(self, limb, joint):
        group = self._AddGroup()
        group.groupType.set(0)
        name = '%s - %s' % (self.grpTypes[0], joint.pfrsName)
        group.pfrsName.set(name)
        pm.connectAttr(joint.bhvFKGrp, group.joint)
        pm.connectAttr(limb.bhvFKGrps, group.limb)

    def Add_IKHandle(self, limb, startJoint, endJoint):
        '''Positions the center for the poll vector control'''
        group = self._AddGroup()
        group.groupType.set(1)
        name = '%s - %s' % (self.grpTypes[1], endJoint.pfrsName)
        group.pfrsName.set(name)
        pm.addAttr(group, ln='joint2', dt='string')
        pm.addAttr(group, ln='parentLimb', at='enum', en='None')
        pm.addAttr(group, ln='parentGrp', at='enum', en='None')
        pm.connectAttr(startJoint.bhvIKGrp, group.joint)
        pm.connectAttr(endJoint.bhvIKGrp, group.joint2)
        pm.connectAttr(limb.bhvIKGrps, group.limb)

    def Add_FKIKSwitch(self, limb):
        group = self._AddGroup()
        group.groupType.set(2)
        group.pfrsName.set(self.grpTypes[2])
        pm.addAttr(group, ln='parentGrp', at='enum', en='None')
        pm.connectAttr(limb.bhvFKIKSwitchGrp, group.limb)
        # MISSING LOCK XFORMS

    def Add_Constraint(self, limb, joint):
        '''Positions the center for control'''
        group = self._AddGroup()
        group.groupType.set(3)
        name = '%s - %s' % (self.grpTypes[3], joint.pfrsName)
        group.pfrsName.set(name)
        pm.connectAttr(limb.bhvCstGrps, group.limb)
        pm.connectAttr(joint.bhvCstGrp, group.joint)
        # MISSING LOCK XFORMS
        
    def Add_LookAt(self, limb, joint):
        '''Positions the center for control'''
        group = self._AddGroup()
        group.groupType.set(4)
        group.pfrsName.set(self.grpTypes[4])
        pm.connectAttr(limb.bhvLookAtGrp, group.limb)
        pm.connectAttr(joint.bhvLookAtGrp, group.joint)

    def Add_Empty(self, limb):
        group = self._AddGroup()
        group.groupType.set(5)
        group.pfrsName.set(self.grpTypes[5])
        pm.connectAttr(limb.bhvEmptyGrp, group.limb)
















