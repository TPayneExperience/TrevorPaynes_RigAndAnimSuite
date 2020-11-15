
import pymel.core as pm

class BHV_Limb_Manager:
    def __init__ (self, limbMng, jntMng, grpMng, ctrMng):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.grpMng = grpMng
        self.ctrMng = ctrMng

        self.cstTypes = ['Parent', 'Point', 'Orient', 'Scale']

        # BHV Options
        self.emptyLimbIndexes = [7]
        self.oneJntLimbIndexes = [6, 3, 4]
        self.twoJntChainLimbIndexes = [0, 3, 5, 6, 8]
        self.threeJntChainLimbIndexes = [0, 1, 2, 3, 5, 6, 8]
        self.branchLimbIndexes = [6, 3]

        self.fkTypeIndexes = [0, 2, 6, 8]
        self.distanceIndexes = [1, 2, 4]
        self.targetIndexes = [1, 2, 3, 5]
        self.parentableIndexes = [0, 2, 6, 7, 8]

        self.ikTargetTypeIndexes = [0, 6, 7, 8]
        self.ikPVTypeIndexes = [1, 2]
        self.ikTypeIndexes = [1, 2, 5]
        self.cstTargetTypeIndexes = [0, 1, 2, 4, 5, 6, 8]
        self.ctrTypeIndexes = [0, 1, 2, 4, 6, 7, 8] # For APP > Limb hier

        
        self.bhvTypes = [   'FK - Chain', # DON'T CHANGE ORDER!

                            'IK - Pole Vector',
                            'FK + IK',
                            'Constraint',
                            'Look At',
                            'IK - Chain',

                            'FK - Branch',
                            'Empty',
                            'FK - Reverse Chain']
                            # MISSING: Relative FK


#============= ACCESSORS + MUTATOR ============================

    def GetBhvOptions(self, limb):
        limbType = limb.limbType.get()
        if limbType == 0: # Empty
            return [self.bhvTypes[i] for i in self.emptyLimbIndexes]
        if limbType == 1: # One Joint
            return [self.bhvTypes[i] for i in self.oneJntLimbIndexes]
        if limbType == 2: # Chain
            if (len(self.jntMng.GetLimbJoints(limb)) > 2):
                return [self.bhvTypes[i] for i in self.threeJntChainLimbIndexes]
            else:
                return [self.bhvTypes[i] for i in self.twoJntChainLimbIndexes]
        if limbType == 3: # Branch
            return [self.bhvTypes[i] for i in self.branchLimbIndexes]

    def GetBhvIndex(self, bhvTypeStr):
        return self.bhvTypes.index(bhvTypeStr)

    def SetBhvType(self, limb, oldBhvIndex, newBhvIndex):
        if (self.Teardown_Bhv(limb, oldBhvIndex, newBhvIndex)):
            limb.bhvType.set(newBhvIndex)
            if newBhvIndex in self.fkTypeIndexes:
                self.Setup_FK(limb)
            elif newBhvIndex == 4:
                self.Setup_LookAt(limb)
            if newBhvIndex in self.ikPVTypeIndexes:
                self.Setup_IKPoleVector(limb)
            if newBhvIndex == 2:
                self.Setup_FKIK(limb)
            return True
        else:
            return False

#============= ADD / REMOVE LIMB  ============================

    def AddLimb(self, limb):
        bhvTypes = ':'.join(self.bhvTypes)
        bhvCstTypes = ':'.join(self.cstTypes)
        ctrTypes = ':'.join(self.ctrMng.GetControlTypes())

        pm.addAttr(limb.appControlType, e=1, en=ctrTypes)
        pm.addAttr(limb, ln='bhvType', at='enum', en=bhvTypes)

        pm.addAttr(limb, ln='bhvJointGroups', dt='string') # FK, IKChain, CST
        pm.addAttr(limb, ln='bhvDistanceGroup', dt='string') # LookAt, IKPV
        pm.addAttr(limb, ln='bhvEmptyGroup', dt='string') # Empty
        pm.addAttr(limb, ln='bhvFKIKSwitchGroup', dt='string') #FKIK

        pm.addAttr(limb, ln='bhvFKIK_FKJoint', dt='string')
        pm.addAttr(limb, ln='bhvFKIK_IKJoint', dt='string')

        pm.addAttr(limb, ln='bhvCstType', at='enum', en=bhvCstTypes)
        pm.addAttr(limb, ln='bhvCstSourceLimb', dt='string') # Ignore, only for connections
        pm.addAttr(limb, ln='bhvCstTargetLimb', dt='string') # for connecting to target
        pm.addAttr(limb, ln='bhvCstTargetJnt', at='enum', en='None')
        pm.addAttr(limb, ln='bhvIKSourceLimb', dt='string') # IK handles parent connection
        pm.addAttr(limb, ln='bhvIKTargetLimb', dt='string') # IK handles parent connection
    
    def RemoveLimb(self, limb):
        # Main Limb manager should actually delete the limb
        groups = pm.listConnections(limb.bhvJointGroups)
        groups += pm.listConnections(limb.bhvDistanceGroup)
        groups += pm.listConnections(limb.bhvEmptyGroup)
        groups += pm.listConnections(limb.bhvFKIKSwitchGroup)
        for group in groups:
            self.grpMng.Remove(group)

#============= SETUP BHV ============================
    # EMPTY Created by Limb Setup UI > Teardown Tab
    # JOINT Groups created by Limb Setup UI > Add Limb
    # All Others set by BHV UI > Set Bhv

    def Setup_FK(self, limb):
        for joint in self.jntMng.GetLimbJoints(limb):
            group = pm.listConnections(joint.group)[0]
            group.v.set(1)

    def Setup_IKPoleVector(self, limb):
        group = self._Setup_Distance(limb)
        joints = self.jntMng.GetLimbJoints(limb)
        self.grpMng.SetupEditable_IKPVGroup(group, joints)
        # self.grpMng.UpdateGroupDistance(group)

    def Setup_LookAt(self, limb):
        group = self._Setup_Distance(limb)
        joint = self.jntMng.GetLimbJoints(limb)[0]
        self.grpMng.SetupEditable_DistanceGroup(group, joint)
        # self.grpMng.UpdateGroupDistance(group)

    def _Setup_Distance(self, limb):
        groups = pm.listConnections(limb.bhvDistanceGroup)
        if groups:
            group = groups[0]
            group.v.set(1)
            pm.disconnectAttr(group.distanceJoint)
        else:
            group = self.grpMng.AddDistanceGroup(limb)
            self.ctrMng.Add(group, self.ctrMng.ctrTypes[2])
        return group

    def Setup_FKIK(self, limb):
        groups = pm.listConnections(limb.bhvFKIKSwitchGroup)
        if groups:
            group = groups[0]
        else:
            group = self.grpMng.AddFKIKSwitchGroup(limb)
            self.ctrMng.Add(group, self.ctrMng.ctrTypes[3])
        joints = self.jntMng.GetLimbJoints(limb)
        names = [j.pfrsName.get() for j in joints]
        pm.addAttr(group.targetJoint, e=1, en=':'.join(names))
        self.grpMng.UpdateFKIKSwitchJoint(group, joints)

# ============= TEARDOWN BHV ============================

    def Teardown_Bhv(self, targetLimb, oldBhvIndex, newBhvIndex):
        '''Creates Warning Dialogs if there are inter-dependencies'''
        # If limb has IK dependencies, Warning Dialog
        if oldBhvIndex in self.ikTargetTypeIndexes:
            if newBhvIndex not in self.ikTargetTypeIndexes:
                sourceLimbs = pm.listConnections(targetLimb.bhvIKSourceLimb)
                if sourceLimbs:
                    msg = 'Changing limb "%s"s type off FK will break:' % targetLimb
                    for sourceLimb in sourceLimbs:
                        msg += '\n - %s' % sourceLimb.pfrsName.get()
                    result = pm.confirmDialog(  t='Breaking IK Connections!', 
                                                m=msg, 
                                                icon='warning', 
                                                b=['Cancel', 'Continue'])
                    if (result == 'Cancel'):
                        return False
                    pm.disconnectAttr(targetLimb.bhvIKSourceLimb)
        # Hide Unused FK Groups [FK Chain, Reverse Chain, Branch]
        if oldBhvIndex in self.fkTypeIndexes:
            if newBhvIndex not in self.fkTypeIndexes:
                for group in pm.listConnections(targetLimb.bhvJointGroups):
                    group.v.set(0)
        # Hide Unused Distance Group
        if oldBhvIndex in self.distanceIndexes:
            if newBhvIndex not in self.distanceIndexes:
                group = pm.listConnections(targetLimb.bhvDistanceGroup)[0]
                group.v.set(0)
        # Hide Unused FKIK Switch Group
        if oldBhvIndex == 2:
            if newBhvIndex != 2:
                group = pm.listConnections(targetLimb.bhvFKIKSwitchGroup)[0]
                group.v.set(0)
        return True

# ============= SETUP BHV ============================

    # def Setup_Cst(self, limb):
    #     pm.disconnectAttr(limb.bhvCstGroups)
    #     for joint in self.jntMng.GetLimbJoints(limb):
    #         groups = pm.listConnections(joint.bhvCstGroup)
    #         if groups:
    #             group = groups[0]
    #             pm.disconnectAttr(group.limb)
    #             pm.connectAttr(limb.bhvCstGroups, group.limb)
    #         else:
    #             group = self.grpMng.Add_Constraint(limb, joint)

    # def Setup_IKChain(self, limb):
    #     pm.disconnectAttr(limb.bhvIKChainGroups)
    #     joints = self.jntMng.GetLimbJoints(limb)
    #     for i in range(1, len(joints)):
    #         joint = joints[i]
    #         groups = pm.listConnections(joint.bhvIKGroup)
    #         if groups:
    #             group = groups[0]
    #             pm.disconnectAttr(group.limb)
    #             pm.connectAttr(limb.bhvIKChainGroups, group.limb)
    #         else:
    #             group = self.grpMng.Add_IKChain(limb, joint)

    # def Setup_Empty(self, limb):
    #     if not pm.listConnections(limb.bhvEmptyGroup):
    #         group = self.grpMng.Add_Empty(limb)
    #         self.ctrMng.Add(group)

    # def Setup_LookAt(self, limb):
        # pm.disconnectAttr(limb.bhvLookAtGroup)
        # for joint in self.jntMng.GetLimbJoints(limb):
        #     groups = pm.listConnections(joint.bhvLookAtGroup)
        #     if groups:
        #         group = groups[0]
        #         pm.disconnectAttr(group.limb)
        #         pm.connectAttr(limb.bhvLookAtGroup, group.limb)
        #     else:
        #         group = self.grpMng.Add_LookAt(limb, joint)
        #         self.ctrMng.Add(group)

    # def Setup_FKBranch(self, limb):
    #     for joint in self.jntMng.GetLimbJoints(limb):
    #         group = pm.listConnections(joint.group)
            # groups = pm.listConnections(joint.group)[0]
            # if groups:
            #     group = groups[0]
            #     group.v.set(1)
            #     pm.disconnectAttr(group.limb)
            #     pm.connectAttr(limb.bhvFKGroups, group.limb)
            # else:
            #     group = self.grpMng.Add_FK(limb, joint)
            #     self.ctrMng.Add(group)

    # def Setup_FKChain(self, limb):
    #     for joint in self.jntMng.GetLimbJoints(limb)[:-1]:
    #         groups = pm.listConnections(joint.bhvFKGroup)
    #         if groups:
    #             group = groups[0]
    #             group.v.set(1)
    #             pm.disconnectAttr(group.limb)
    #             pm.connectAttr(limb.bhvFKGroups, group.limb)
    #         else:
    #             group = self.grpMng.Add_FK(limb, joint)
    #             self.ctrMng.Add(group)



