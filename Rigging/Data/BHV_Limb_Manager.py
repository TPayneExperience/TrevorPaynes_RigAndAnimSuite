
import pymel.core as pm

class BHV_Limb_Manager:
    def __init__ (self, limbMng, jntMng, grpMng, ctrMng):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.grpMng = grpMng
        self.ctrMng = ctrMng

        self.cstTypes = ('Parent', 'Point', 'Orient', 'Scale')

        # BHV Options
        self.emptyLimbIndexes = (7,)
        self.oneJntLimbIndexes = (6, 4, 3)
        self.twoJntChainLimbIndexes = (0, 6, 8, 5, 9, 3)
        self.threeJntChainLimbIndexes = (0, 6, 8, 1, 5, 2, 9, 3)
        self.branchLimbIndexes = (6, 3)

        self.fkTypeIndexes = (0, 2, 6, 8, 9)
        self.fkikTypeIndexes = (2, 9)
        self.cstTypeIndexes = (3,)
        self.lookAtTypeIndexes = (4,)
        self.distanceIndexes = (1, 2, 4)
        self.targetIndexes = (1, 2, 3, 5, 9)
        self.parentableIndexes = (0, 2, 6, 7, 8, 9)

        self.ikTargetableIndexes = (0, 6, 7, 8)
        self.ikPVTypeIndexes = (1, 2)
        self.ikChainTypeIndexes = (5, 9)
        self.ikTypeIndexes = (1, 2, 5, 9)
        self.cstTargetTypeIndexes = (0, 1, 2, 4, 5, 6, 8, 9)
        self.ctrTypeIndexes = (0, 1, 2, 4, 6, 7, 8, 9) # For APP > Limb hier

        
        self.bhvTypes = (   'FK - Chain', # DON'T CHANGE ORDER!

                            'IK - Pole Vector',
                            'FK + IK Pole Vector',
                            'Constraint',
                            'Look At',
                            'IK - Chain',

                            'FK - Branch',
                            'Empty',
                            'FK - Reverse Chain',
                            'FK + IK Chain')
                            # MISSING: Relative FK


#============= ACCESSORS ============================

    def GetBhvOptions(self, limb):
        limbType = limb.limbType.get()
        if limbType == 0: # Empty
            return [self.bhvTypes[i] for i in self.emptyLimbIndexes]
        elif limbType == 1: # One Joint
            return [self.bhvTypes[i] for i in self.oneJntLimbIndexes]
        elif limbType == 4: # 2 Chain
            return [self.bhvTypes[i] for i in self.twoJntChainLimbIndexes]
        elif limbType == 2: # 3+ Chain
            return [self.bhvTypes[i] for i in self.threeJntChainLimbIndexes]
        elif limbType == 3: # Branch
            return [self.bhvTypes[i] for i in self.branchLimbIndexes]

#============= SET BHV ============================

    def SetBhvType(self, limb, newBhvIndex):
        # oldSourceLimbs = pm.listConnections(limb.bhvSourceLimb)
        oldBhvIndex = limb.bhvType.get()
        # TEARDOWN
        if oldBhvIndex in self.ikTargetableIndexes:
            self.Teardown_IKTargetable(limb)
        if oldBhvIndex in self.fkTypeIndexes:
            self.Teardown_FK(limb)
        if oldBhvIndex in self.distanceIndexes:
            self.Teardown_Distance(limb)
        if oldBhvIndex in self.fkikTypeIndexes:
            self.Teardown_FKIK(limb)

        limb.bhvType.set(newBhvIndex)
        # SETUP
        if newBhvIndex in self.fkTypeIndexes:
            self.Setup_FK(limb)
        if newBhvIndex in self.lookAtTypeIndexes:
            self.Setup_LookAt(limb)
        if newBhvIndex in self.ikPVTypeIndexes:
            self.Setup_IKPoleVector(limb)
        if newBhvIndex in self.fkikTypeIndexes:
            self.Setup_FKIK(limb)
        
        # # Force IKs which Targeted this limb, to find other
        # if oldBhvIndex in self.ikTargetableIndexes:
        #     if newBhvIndex not in self.ikTargetableIndexes:
        #         for sourceLimb in oldSourceLimbs:
        #             # self._SetIKBhv(limb)
        #             targetLimb = self.GetClosestFKLimb(sourceLimb)
        #             self.SetIKTargetLimb(sourceLimb, targetLimb)
        # if newBhvIndex in self.cstTypeIndexes:
        #     # self._SetCstBhv()
        #     targetLimb = self.GetClosestFKLimb(limb)
        #     self.SetCstTargetLimb(limb, targetLimb)
        # if newBhvIndex in self.ikTypeIndexes:
        #     targetLimb = self.GetClosestFKLimb(limb)
        #     self.SetIKTargetLimb(limb, targetLimb)
        #     # self._SetIKBhv(self.limb)
        #     # if newBhvIndex == 2: # FKIK
        #         # joints = self.jntMng.GetLimbJoints(self.limb)
        #         # self.UpdateFKIKSwitchJoint(1, joints)
        # if newBhvIndex in self.distanceIndexes:
        #     group = pm.listConnections(limb.bhvDistanceGroup)[0]
        #     self.grpMng.UpdateGroupDistance(group)

    def SetCstTargetLimb(self, sourceLimb, targetLimb):
        pm.disconnectAttr(sourceLimb.bhvTargetLimb)
        pm.connectAttr(targetLimb.bhvSourceLimb, sourceLimb.bhvTargetLimb)
        joints = self.jntMng.GetLimbJoints(targetLimb)
        jointNames = [j.pfrsName.get() for j in joints]
        pm.addAttr(sourceLimb.bhvTargetJoint, e=1, en=':'.join(jointNames))

    def SetIKTargetLimb(self, sourceLimb, targetLimb):
        '''Auto assign each IK limb group to closest FK limb's group'''
        targetJoints = self.jntMng.GetLimbJoints(targetLimb)
        sourceGroups = self.grpMng.GetLimbIKGroups(sourceLimb)
        pm.disconnectAttr(sourceLimb.bhvTargetLimb)
        pm.connectAttr(targetLimb.bhvSourceLimb, sourceLimb.bhvTargetLimb)
        # If only one target, set and return
        if len(targetJoints) < 2:
            if targetLimb.bhvType.get() == 7: # Empty
                self._SetTargetJointEnum(sourceLimb, 'Empty')
            else:
                jointName = targetJoints[0].pfrsName.get()
                self._SetTargetJointEnum(sourceLimb, jointName)
            return
        targetJointNames = [j.pfrsName.get() for j in targetJoints]
        names = ':'.join(targetJointNames)
        self._SetTargetJointEnum(sourceLimb, names)

    def _SetTargetJointEnum(self, sourceLimb, enumStr):
        if sourceLimb.bhvType.get() in self.ikChainTypeIndexes:
            for sourceGroup in self.grpMng.GetLimbIKGroups(sourceLimb):
                pm.addAttr(sourceGroup.targetJoint, e=1, en=enumStr)
        else:
            pm.addAttr(sourceLimb.bhvTargetJoint, e=1, en=enumStr)
#============= ADD / REMOVE LIMB  ============================

    def AddLimb(self, limb):
        bhvTypes = ':'.join(self.bhvTypes)
        bhvCstTypes = ':'.join(self.cstTypes)
        ctrTypes = ':'.join(self.ctrMng.GetControlTypes())

        pm.addAttr(limb.appControlType, e=1, en=ctrTypes)
        pm.addAttr(limb, ln='bhvType', at='enum', en=bhvTypes)

        pm.addAttr(limb, ln='bhvDistanceGroup', dt='string') # LookAt, IKPV
        pm.addAttr(limb, ln='bhvEmptyGroup', dt='string') # Empty
        pm.addAttr(limb, ln='bhvFKIKSwitchGroup', dt='string') #FKIK

        pm.addAttr(limb, ln='bhvFKIK_FKJoint', dt='string')
        pm.addAttr(limb, ln='bhvFKIK_IKJoint', dt='string')

        pm.addAttr(limb, ln='bhvSourceLimb', dt='string') # Ignore, only for connections
        pm.addAttr(limb, ln='bhvTargetLimb', dt='string') # for connecting to target
        pm.addAttr(limb, ln='bhvTargetJoint', at='enum', en='None')
        pm.addAttr(limb, ln='bhvCstType', at='enum', en=bhvCstTypes)
        
        # pm.addAttr(limb, ln='bhvCstSourceLimb', dt='string') # Ignore, only for connections
        # pm.addAttr(limb, ln='bhvCstTargetLimb', dt='string') # for connecting to target
        # pm.addAttr(limb, ln='bhvCstTargetJnt', at='enum', en='None')
        # pm.addAttr(limb, ln='bhvIKSourceLimb', dt='string') # IK handles parent connection
        # pm.addAttr(limb, ln='bhvIKTargetLimb', dt='string') # IK handles parent connection
    
    def RemoveLimb(self, limb):
        # Main Limb manager should actually delete the limb
        groups = pm.listConnections(limb.bhvDistanceGroup)
        groups += pm.listConnections(limb.bhvEmptyGroup)
        groups += pm.listConnections(limb.bhvFKIKSwitchGroup)
        for group in groups:
            self.grpMng.Remove(group)

#============= REBUILD ============================

    def RebuildLimbType(self, limb):
        print ('rebuilding LIMB TYPE: ' + limb.pfrsName.get())
        joints = self.jntMng.GetLimbJoints(limb)
        limbType = limb.limbType.get()
        limbTypeChanged = False

        if not joints:
            if limb.limbType.get() != 0:
                limb.limbType.set(0) # empty
                limbTypeChanged = True
        elif (len(joints) == 1):
            if limb.limbType.get() != 1:
                limb.limbType.set(1) # 1 joint
                limbTypeChanged = True
        elif self.jntMng.AreJointsChained(joints):
            if (len(joints) == 2):
                if (limbType != 4):
                    limb.limbType.set(4) # 2 joint chain
                    limbTypeChanged = True
            elif limbType != 2:
                limb.limbType.set(2) # 3+ joint chain
                limbTypeChanged = True
        elif self.jntMng.AreJointsSiblings(joints):
            if limbType != 3:
                limb.limbType.set(3) # branch
                limbTypeChanged = True

        if limbTypeChanged:
            limb.rebuildBhvType.set(1)
            limb.rebuildBhvDep.set(1)
            limb.rebuildAppDep.set(1)
            limb.rebuildSkinInf.set(1)
        limb.rebuildLimbType.set(0)

    def RebuildBhvType(self, limb):
        print ('rebuilding BHV TYPE: ' + limb.pfrsName.get())
        limb.rebuildBhvType.set(0)
        limbType = limb.limbType.get()
        bhvType = limb.bhvType.get()
        
        if (limbType == 0): # Empty
            if (bhvType != self.emptyLimbIndexes):
                self.SetBhvType(limb, self.emptyLimbIndexes[0])
        elif (limbType == 1): # One
            if bhvType not in self.oneJntLimbIndexes:
                self.SetBhvType(limb, self.oneJntLimbIndexes[0])
        elif (limbType == 4): # 2 chain
            if bhvType not in self.twoJntChainLimbIndexes:
                self.SetBhvType(limb, self.twoJntChainLimbIndexes[0])
        elif (limbType == 2): # 3+ chain
            if bhvType not in self.threeJntChainLimbIndexes:
                self.SetBhvType(limb, self.threeJntChainLimbIndexes[0])
        elif (limbType == 3): # Branch
            if bhvType not in self.branchLimbIndexes:
                self.SetBhvType(limb, self.branchLimbIndexes[0])

    def RebuildBhvDep(self, sourceLimb):
        print ('rebuilding BHV DEP: ' + sourceLimb.pfrsName.get())
        bhvType = sourceLimb.bhvType.get()
        if bhvType not in self.cstTypeIndexes + self.ikTypeIndexes:
            sourceLimb.rebuildBhvDep.set(0)
            return
        
        # Get Closest limb
        targetLimb = None
        if bhvType in self.cstTypeIndexes:
            targetLimb = self._GetClosestLimb(sourceLimb, 
                                        self.cstTargetTypeIndexes)
            if targetLimb:
                self.SetCstTargetLimb(sourceLimb, targetLimb)
        if bhvType in self.ikTypeIndexes: 
            targetLimb = self._GetClosestLimb(sourceLimb, 
                                        self.ikTargetableIndexes)
            if targetLimb:
                self.SetIKTargetLimb(sourceLimb, targetLimb)
        if not targetLimb:
            return

        sourceLimb.rebuildBhvDep.set(0)
        # IK PV + Constraint
        if bhvType in (self.ikPVTypeIndexes + self.cstTargetTypeIndexes): 
            sourceJoint = self.jntMng.GetLimbJoints(sourceLimb)[-1]
            sourcePos = pm.xform(sourceJoint, q=1, t=1, ws=1)
            index = self._GetClosestJointIndex(sourcePos, targetLimb)
            sourceLimb.bhvTargetJoint.set(index)

        # IK Chain
        elif bhvType in self.ikChainTypeIndexes: 
            for sourceJoint in self.jntMng.GetLimbJoints(sourceLimb):
                sourcePos = pm.xform(sourceJoint, q=1, t=1, ws=1)
                index = self._GetClosestJointIndex(sourcePos, targetLimb)
                sourceGroup = pm.listConnections(sourceJoint.group)[0]
                sourceGroup.targetJoint.set(index)

    def _GetClosestJointIndex(self, sourcePos, targetLimb):
        targetJoints = self.jntMng.GetLimbJoints(targetLimb)
        distances = {} # dist : [targetJoint1, joint2...]
        for targetJoint in targetJoints:
            targetPos = pm.xform(targetJoint, q=1, t=1, ws=1)
            dist = 0
            for i in range(3):
                dist += (sourcePos[i]-targetPos[i])**2
            if dist not in distances:
                distances[dist] = []
            distances[dist].append(targetJoint)
        targetDist = sorted(list(distances.keys()))[0]
        joint = distances[targetDist][0]
        return targetJoints.index(joint)

    def _GetClosestLimb(self, sourceLimb, bhvFilter):
        distances = {} # dist : group
        sourceGroup = self.grpMng.GetLimbGroups(sourceLimb)[0]
        sourcePos = pm.xform(sourceGroup, q=1, t=1, ws=1)
        # Create distance dictionary to groups
        for limb in self.limbMng.GetAllLimbs():
            if limb.bhvType.get() in bhvFilter:
                for targetGroup in self.grpMng.GetLimbGroups(limb):
                    targetPos = pm.xform(targetGroup, q=1, t=1, ws=1)
                    dist = 0
                    for i in range(3):
                        dist += (sourcePos[i]-targetPos[i])**2
                    distances[dist] = targetGroup
        # Get Closest limb
        for dist in sorted(list(distances.keys())):
            closestGroup = distances[dist]
            closestLimbs = pm.listConnections(closestGroup.limb)
            if closestLimbs:
                return closestLimbs[0]
        return None



#============= SETUP BHV ============================
    # EMPTY Created by Limb Setup UI > Teardown Tab
    # JOINT Groups created by Limb Setup UI > Add Limb
    # All Others set by BHV UI > Set Bhv

    def Setup_FK(self, limb):
        for joint in self.jntMng.GetLimbJoints(limb, False):
            group = pm.listConnections(joint.group)[0]
            group.v.set(1)

    def Setup_IKPoleVector(self, limb):
        group = self.Setup_Distance(limb)
        joints = self.jntMng.GetLimbJoints(limb)
        self.grpMng.SetupEditable_IKPVGroup(group, joints)
        # self.grpMng.UpdateGroupDistance(group)

    def Setup_LookAt(self, limb):
        group = self.Setup_Distance(limb)
        joint = self.jntMng.GetLimbJoints(limb)[0]
        self.grpMng.SetupEditable_DistanceGroup(group, joint)
        # self.grpMng.UpdateGroupDistance(group)

    def Setup_Distance(self, limb):
        groups = pm.listConnections(limb.bhvDistanceGroup)
        if groups:
            group = groups[0]
            group.v.set(1)
            pm.disconnectAttr(group.distanceJoint)
        else:
            group = self.grpMng.AddDistanceGroup(limb)
            ctr = self.ctrMng.Add(group, self.ctrMng.ctrTypes[2])
            self.grpMng.UpdateGroupName(limb, group)
            for attr in ['.tx', '.ty', '.tz', '.v']:
                pm.setAttr(ctr+attr, l=1, k=0, cb=0)
        return group

    def Setup_FKIK(self, limb):
        groups = pm.listConnections(limb.bhvFKIKSwitchGroup)
        if groups:
            fkikGroup = groups[0]
        else:
            fkikGroup = self.grpMng.AddFKIKSwitchGroup(limb)
            ctr = self.ctrMng.Add(fkikGroup, self.ctrMng.ctrTypes[3])
            self.grpMng.UpdateGroupName(limb, fkikGroup)
            for attr in ['.tx', '.ty', '.tz', '.v']:
                pm.setAttr(ctr+attr, l=1, k=0, cb=0)
        joints = self.jntMng.GetLimbJoints(limb)
        names = [j.pfrsName.get() for j in joints]
        pm.addAttr(fkikGroup.targetJoint, e=1, en=':'.join(names))

        # Visibility Groups
        bhvType = limb.bhvType.get()
        if bhvType == 2:
            distGroup = pm.listConnections(limb.bhvDistanceGroup)[0]
            pm.connectAttr(fkikGroup.IKVisTargets, distGroup.FKIKVisSource)
            # jointGroups = [pm.listConnections(j.group) for j in joints]
        fkGroup = pm.listConnections(joints[0].group)[0]
        pm.connectAttr(fkikGroup.FKVisTargets, fkGroup.FKIKVisSource)
        self.grpMng.UpdateFKIKSwitchJoint(fkikGroup, joints)

# ============= TEARDOWN BHV ============================

    def Teardown_FK(self, limb):
        for joint in pm.listConnections(limb.infJoints):
            group = pm.listConnections(joint.group)[0]
            group.v.set(0)

    def Teardown_IKTargetable(self, limb):
        for sourceLimb in pm.listConnections(limb.bhvSourceLimb):
            sourceLimb.rebuildBhvDep.set(1)
        pm.disconnectAttr(limb.bhvSourceLimb)

    def Teardown_Distance(self, limb):
        group = pm.listConnections(limb.bhvDistanceGroup)[0]
        group.v.set(0)

    def Teardown_FKIK(self, limb):
        group = pm.listConnections(limb.bhvFKIKSwitchGroup)[0]
        group.v.set(0)



