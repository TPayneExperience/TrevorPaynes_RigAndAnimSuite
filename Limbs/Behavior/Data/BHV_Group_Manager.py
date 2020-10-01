
import pymel.core as pm

class BHV_Group_Manager:
    def __init__(self):
        self.grpTypes = [   'FK',
                            'IK Handle',
                            'Look At',
                            'FK / IK Switch',
                            'Constraint',
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

        self._nextGrpID = 1
        self._groups = {} # grpID : grpData

        pm.select(d=1)
        self.bhvGrp = pm.group(name='BehaviorGroups', em=1)
        pm.parent(self.bhvGrp, rigRoot)
        pm.addAttr(rigRoot, ln='behaviors', dt='string')


#============= ACCESSORS + MUTATORS ============================

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

#============= LIMBS + JOINTS ============================

    def AddJoint(self, joint):
        pm.addAttr(joint, ln='bhvFKGrp', dt='string')
        pm.addAttr(joint, ln='bhvIKGrp', dt='string')
        pm.addAttr(joint, ln='bhvLookAtGrp', dt='string')
        pm.addAttr(joint, ln='bhvCstGrp', dt='string')

    def RemoveJoint(self, joint):
        groups = pm.listConnections(joint.bhvFKGrp)
        groups += pm.listConnections(joint.bhvIKGrp)
        groups += pm.listConnections(joint.bhvLookAtGrp)
        groups += pm.listConnections(joint.bhvCstGrp)
        if groups:
            pm.delete(groups)

    def _AddGroup(self):
        groupID = self._nextGrpID
        self._nextGrpID += 1

        groupTypes = ':'.join(self.grpTypes)

        group = pm.group(em=1, w=1)
        pm.addAttr(group, ln='ID', at='long', dv=groupID)
        pm.addAttr(group, ln='joint', dt='string')
        pm.addAttr(group, ln='limb', dt='string')
        pm.addAttr(group, ln='groupType', at='enum', en=groupTypes)
        self._groups[groupID] = group
        pm.parent(group, self.bhvGrp)
        return group

    def Add_FK(self, limb, joint):
        group = self._AddGroup()
        group.bhvGrpType.set(0)
        pm.connectAttr(joint.bhvFKGrp, group.joint)
        pm.connectAttr(limb.bhvFKGrps, group.limb)

    def Add_IKHandle(self, limb, startJoint, endJoint):
        '''Positions the center for the poll vector control'''
        group = self._AddGroup()
        group.bhvGrpType.set(1)
        pm.addAttr(group, ln='joint2', dt='string')
        pm.addAttr(group, ln='parentLimb', at='enum', en='None')
        pm.addAttr(group, ln='parentGrp', at='enum', en='None')
        pm.connectAttr(startJoint.bhvIKGrp, group.joint)
        pm.connectAttr(endJoint.bhvIKGrp, group.joint2)
        pm.connectAttr(limb.bhvIKGrps, group.limb)

    def Add_LookAt(self, limb, joint):
        '''Positions the center for control'''
        group = self._AddGroup()
        group.bhvGrpType.set(2)
        pm.connectAttr(limb.bhvLookAtGrp, group.limb)
        pm.connectAttr(joint.bhvLookAtGrp, group.joint)

    def Add_FKIKSwitch(self, limb):
        group = self._AddGroup()
        group.bhvGrpType.set(3)
        pm.addAttr(group, ln='parentGrp', at='enum', en='None')
        pm.connectAttr(limb.bhvFKIKSwitchGrp, group.limb)
        # MISSING LOCK XFORMS

    def Add_Constraint(self, limb, joint):
        '''Positions the center for control'''
        group = self._AddGroup()
        group.bhvGrpType.set(4)
        pm.connectAttr(limb.bhvCstGrps, group.limb)
        pm.connectAttr(joint.bhvCstGrp, group.joint)
        # MISSING LOCK XFORMS
        
    def Add_Empty(self, limb):
        group = self._AddGroup()
        group.bhvGrpType.set(5)
        pm.connectAttr(limb.bhvEmptyGrp, group.limb)

















