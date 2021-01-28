
import math

import pymel.core as pm

class BHV_Limb_Manager:
    def __init__ (self, parent):
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
        self.grpMng = parent.grpMng
        self.ctrMng = parent.ctrMng
        self.logger = parent.logger

        self.cstTypes = ('Parent', 'Point', 'Orient', 'Scale')
        self.hideAttrs = False

        # For Distance
        self.axesXforms =   ((1,0,0),
                            (-1,0,0),
                            (0,1,0),
                            (0,-1,0),
                            (0,0,1),
                            (0,0,-1))
        self.axesNames =    ('X',
                            '-X',
                            'Y',
                            '-Y',
                            'Z',
                            '-Z')

        # BHV Options
        self.emptyLimbIndexes = (7,)
        self.oneJntLimbIndexes = (6, 4, 3)
        self.twoJntChainLimbIndexes = (0, 6, 8, 5, 9, 3)
        self.threeJntChainLimbIndexes = (0, 6, 8, 10, 1, 5, 2, 9, 3)
        self.omitLastJointTypes = (0, 2, 9, 10)
        self.omitFirstJointTypes = (8,)
        self.branchLimbIndexes = (6, 3)

        self.fkTypeIndexes = (0, 2, 6, 8, 9)
        self.ikPVTypeIndexes = (1, 2)
        self.ikChainTypeIndexes = (5, 9)
        self.rfkTypeIndexes = (10,)
        self.fkikTypeIndexes = (2, 9)
        self.cstTypeIndexes = (3,)
        self.lookAtTypeIndexes = (4,)

        self.distanceIndexes = (1, 2, 4)
        self.targetIndexes = (1, 2, 3, 5, 9)
        self.parentableIndexes = (0, 2, 6, 7, 8, 9, 10)

        self.ikTargetableIndexes = (0, 6, 7, 8)
        self.ikTypeIndexes = (1, 2, 5, 9)
        self.cstTargetTypeIndexes = (0, 1, 2, 4, 5, 6, 8, 9)
        self.ctrTypeIndexes = (0, 1, 2, 4, 6, 7, 8, 9, 10) # For APP > Limb hier

        self.bhvTypes = (   'FK - Chain', # DON'T CHANGE ORDER!

                            'IK - Pole Vector',
                            'FK + IK Pole Vector',
                            'Constraint',
                            'Look At',
                            'IK - Chain',

                            'FK - Branch',
                            'Empty',
                            'FK - Reverse Chain',
                            'FK + IK Chain', 
                            'FK - Relative')

#============= ACCESSORS ============================

    def GetBhvOptions(self, limb):
        self.logger.debug('\tBhvMng > GetBhvOptions')
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

    def GetLimbGroups(self, limb):
        groups = []
        bhvType = limb.bhvType.get()
        # Distance
        if bhvType in self.ikPVTypeIndexes:
            groups += pm.listConnections(limb.bhvIKPVGroup)
        # Distance
        if bhvType in self.lookAtTypeIndexes:
            groups += pm.listConnections(limb.bhvLookAtGroup)
        # FKIK
        if bhvType in self.fkikTypeIndexes:
            groups += pm.listConnections(limb.bhvFKIKSwitchGroup)
        # RFK
        if bhvType in self.rfkTypeIndexes:
            groups += pm.listConnections(limb.bhvRFKBottomGroup)
            groups += pm.listConnections(limb.bhvRFKCenterGroup)
            groups += pm.listConnections(limb.bhvRFKTopGroup)
        return groups

    def GetJointGroups(self, limb):
        if limb.bhvType.get() in self.emptyLimbIndexes:
            return pm.listConnections(limb.bhvEmptyGroup)
        groups = []
        for joint in self.jntMng.GetLimbJoints(limb):
            groups += pm.listConnections(joint.group)
        return groups
    
#============= SET BHV ============================

    def SetBhvType(self, limb, newBhvIndex):
        self.logger.debug('\tBhvMng > SetBhvType')
        self.Teardown_LimbGroupVisibility(limb)
        self.Teardown_Behavior(limb)
        limb.bhvType.set(newBhvIndex)
        self.RebuildLimbGroup(limb)
        self.Setup_Behavior(limb)
        self.Setup_LimbGroupVisibility(limb)

    def SetCstTargetLimb(self, sourceLimb, targetLimb):
        self.logger.debug('\tBhvMng > SetCstTargetLimb')
        pm.disconnectAttr(sourceLimb.bhvTargetLimb)
        pm.connectAttr(targetLimb.bhvSourceLimb, sourceLimb.bhvTargetLimb)
        joints = self.jntMng.GetLimbJoints(targetLimb)
        jointNames = [j.pfrsName.get() for j in joints]
        pm.addAttr(sourceLimb.bhvTargetJoint, e=1, en=':'.join(jointNames))

    def SetIKTargetLimb(self, sourceLimb, targetLimb):
        '''Auto assign each IK limb group to closest FK limb's group'''
        self.logger.debug('\tBhvMng > SetIKTargetLimb')
        targetJoints = self.jntMng.GetLimbJoints(targetLimb)
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
        self.logger.debug('\tBhvMng > _SetTargetJointEnum')
        if sourceLimb.bhvType.get() in self.ikChainTypeIndexes:
            for sourceGroup in self.GetJointGroups(sourceLimb):
                pm.addAttr(sourceGroup.targetJoint, e=1, en=enumStr)
        else:
            pm.addAttr(sourceLimb.bhvTargetJoint, e=1, en=enumStr)

#============= ADD / REMOVE LIMB  ============================

    def AddLimb(self, limb):
        self.logger.debug('\tBhvMng > AddLimb')
        bhvTypes = ':'.join(self.bhvTypes)
        bhvCstTypes = ':'.join(self.cstTypes)
        # ctrTypes = ':'.join(self.ctrMng.GetControlTypes())
        axes = ':'.join(self.axesNames)

        pm.addAttr(limb.appControlType, e=1, 
                            en=self.ctrMng.ctrTypesStr)
        pm.addAttr(limb, ln='bhvType', at='enum', en=bhvTypes,
                                    h=self.hideAttrs)

        # LookAt, IKPV
        pm.addAttr(limb, ln='bhvIKPVGroup', dt='string', h=self.hideAttrs)
        pm.addAttr(limb, ln='bhvLookAtGroup', dt='string', h=self.hideAttrs)
        pm.addAttr(limb, ln='bhvEmptyGroup', dt='string', h=self.hideAttrs)
        pm.addAttr(limb, ln='bhvFKIKSwitchGroup', dt='string', h=self.hideAttrs) 

        # FKIK
        pm.addAttr(limb, ln='bhvFKIK_FKJoint', dt='string', h=self.hideAttrs)
        pm.addAttr(limb, ln='bhvFKIK_IKJoint', dt='string', h=self.hideAttrs)

        # Relative FK
        pm.addAttr(limb, ln='bhvRFKCenterGroup', dt='string', h=self.hideAttrs)
        pm.addAttr(limb, ln='bhvRFKBottomGroup', dt='string', h=self.hideAttrs)
        pm.addAttr(limb, ln='bhvRFKTopGroup', dt='string', h=self.hideAttrs) 
        pm.addAttr(limb, ln='bhvRFKCenterJoint', at='enum', en='None', h=self.hideAttrs)
        
        # IK PV + CST
        pm.addAttr(limb, ln='bhvSourceLimb', dt='string', h=self.hideAttrs) 
        pm.addAttr(limb, ln='bhvTargetLimb', dt='string', h=self.hideAttrs) 
        pm.addAttr(limb, ln='bhvTargetJoint', at='enum', en='None', h=self.hideAttrs)
        pm.addAttr(limb, ln='bhvIKPVCtrJoint', at='enum', en='None', h=self.hideAttrs)
        pm.addAttr(limb, ln='bhvCstType', at='enum', en=bhvCstTypes, h=self.hideAttrs)

        # IK PV + Look At
        pm.addAttr(limb, ln='bhvAxis', at='enum', en=axes, dv=4) # IKPV, LookAt
        pm.addAttr(limb, ln='bhvDistance', at='float', min=0, dv=1) # IKPV, LookAt
        pm.addAttr(limb, ln='bhvDistanceJoint', dt='string') # for easy Test Connections
        
        # pm.addAttr(limb, ln='bhvCstSourceLimb', dt='string') # Ignore, only for connections
        # pm.addAttr(limb, ln='bhvCstTargetLimb', dt='string') # for connecting to target
        # pm.addAttr(limb, ln='bhvCstTargetJnt', at='enum', en='None')
        # pm.addAttr(limb, ln='bhvIKSourceLimb', dt='string') # IK handles parent connection
        # pm.addAttr(limb, ln='bhvIKTargetLimb', dt='string') # IK handles parent connection
    
    def RemoveLimb(self, limb):
        self.logger.debug('\tBhvMng > RemoveLimb')
        # Main Limb manager should actually delete the limb
        groups = pm.listConnections(limb.bhvIKPVGroup)
        groups += pm.listConnections(limb.bhvLookAtGroup)
        groups += pm.listConnections(limb.bhvEmptyGroup)
        groups += pm.listConnections(limb.bhvFKIKSwitchGroup)
        groups += pm.listConnections(limb.bhvRFKCenterGroup)
        groups += pm.listConnections(limb.bhvRFKBottomGroup)
        groups += pm.listConnections(limb.bhvRFKTopGroup)
        for group in groups:
            self.grpMng.Remove(group)

#============= REBUILD ============================

    def RebuildLimbType(self, limb):
        '''Set limbType if invalid'''
        self.logger.debug('\tBhvMng > RebuildLimbType')
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
            else:
                self.PopulateIKPVCtrJointEnum(limb)
                if limbType != 2:
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
        '''If bhvType invalid, default to FK'''
        self.logger.debug('\tBhvMng > RebuildBhvType')
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

    def RebuildLimbGroup(self, limb):
        '''Create Dist / FKIK / Empty / RFK groups for limbs'''
        self.logger.debug('\tBhvMng > RebuildLimbGroup')
        limb.rebuildLimbGroup.set(0)
        bhvType = limb.bhvType.get()
        
        if bhvType in self.ikPVTypeIndexes:
            if not pm.listConnections(limb.bhvIKPVGroup):
                group = self.grpMng.AddIKPVGroup(limb)
                self.grpMng.UpdateGroupName(group)
            self.UpdateDistGroupPos(limb)
        if bhvType in self.lookAtTypeIndexes:
            if not pm.listConnections(limb.bhvLookAtGroup):
                group = self.grpMng.AddLookAtGroup(limb)
                self.grpMng.UpdateGroupName(group)
            self.UpdateDistGroupPos(limb)
        if bhvType in self.fkikTypeIndexes:
            if not pm.listConnections(limb.bhvFKIKSwitchGroup):
                group = self.grpMng.AddFKIKSwitchGroup(limb)
                self.grpMng.UpdateGroupName(group)
            self.UpdateFKIKSwitchJoint(limb)
        if bhvType in self.emptyLimbIndexes:
            if not pm.listConnections(limb.bhvEmptyGroup):
                group = self.grpMng.AddEmptyGroup(limb)
                self.grpMng.UpdateGroupName(group)
        if bhvType in self.rfkTypeIndexes:
            if not pm.listConnections(limb.bhvRFKCenterGroup):
                self.grpMng.AddRFKGroups(limb)

    def RebuildBhvDep(self, sourceLimb):
        '''Set IK / Cst targets to closest limbs / joints'''
        self.logger.debug('\tBhvMng > RebuildBhvDep')
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
        if bhvType in (self.ikPVTypeIndexes + self.cstTypeIndexes): 
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
        self.logger.debug('\tBhvMng > _GetClosestJointIndex')
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
        self.logger.debug('\tBhvMng > _GetClosestLimb')
        distances = {} # dist : group
        sourceJoint = self.jntMng.GetLimbJoints(sourceLimb)[-1]
        sourcePos = pm.xform(sourceJoint, q=1, t=1, ws=1)
        # Create distance dictionary to groups
        for limb in self.limbMng.GetAllLimbs():
            if limb == sourceLimb:
                continue
            if limb.bhvType.get() in bhvFilter:
                for targetGroup in self.GetJointGroups(limb):
                    targetPos = pm.xform(targetGroup, q=1, t=1, ws=1)
                    dist = 0
                    for i in range(3):
                        dist += (sourcePos[i]-targetPos[i])**2
                    distances[dist] = limb
        if not distances:
            return None
        # Get Closest limb
        dist = sorted(list(distances.keys()))[0]
        return distances[dist]

#============= SETUP BHV ============================
    # EMPTY Created by Limb Setup UI > Teardown Tab
    # JOINT Groups created by Limb Setup UI > Add Limb
    # All Others set by BHV UI > Set Bhv

    def Setup_Behavior(self, limb):
        self.logger.debug('\tBhvMng > Setup_Behavior')
        bhvType = limb.bhvType.get()

        # IK PV
        if bhvType in self.ikPVTypeIndexes:
            self.RebuildBhvDep(limb)
        # IK CHAIN
        if bhvType in self.ikChainTypeIndexes:
            self.RebuildBhvDep(limb)
        # FKIK
        if bhvType in self.fkikTypeIndexes:
            self.UpdateFKIKSwitchJoint(limb)
        # RFK
        if bhvType in self.rfkTypeIndexes:
            joints = self.jntMng.GetLimbJoints(limb)
            names = [j.pfrsName.get() for j in joints[1:-1]]
            pm.addAttr(limb.bhvRFKCenterJoint, e=1, en=':'.join(names))
            index = len(joints) / 2
            limb.bhvRFKCenterJoint.set(index-1)
            self.UpdateRFKConnections(limb)

    def Teardown_Behavior(self, limb):
        self.logger.debug('\tBhvMng > Teardown_Behavior')
        bhvType = limb.bhvType.get()
        if bhvType in self.ikTargetableIndexes:
            self.Teardown_IKTargetable(limb)
        
# ============= TEARDOWN BHV ============================

    def Teardown_IKTargetable(self, limb):
        self.logger.debug('\tBhvMng > Teardown_IKTargetable')
        for sourceLimb in pm.listConnections(limb.bhvSourceLimb):
            sourceLimb.rebuildBhvDep.set(1)
        pm.disconnectAttr(limb.bhvSourceLimb)

# ============= GROUP VISIBILITY ============================

    def Setup_LimbGroupVisibility(self, limb):
        self.logger.debug('\tBhvMng > Setup_LimbGroupVisibility')
        bhvType = limb.bhvType.get()
        if bhvType in self.fkTypeIndexes:
            jointGroups = self.GetJointGroups(limb)
            for group in jointGroups:
                group.v.set(1)
            if bhvType in self.omitFirstJointTypes:
                jointGroups[0].v.set(0)
            if bhvType in self.omitLastJointTypes:
                jointGroups[-1].v.set(0)
        for group in self.GetLimbGroups(limb):
            group.v.set(1)

    def Teardown_LimbGroupVisibility(self, limb):
        self.logger.debug('\tBhvMng > Teardown_LimbGroupVisibility')
        for group in self.GetJointGroups(limb):
            group.v.set(0)
        for group in self.GetLimbGroups(limb):
            group.v.set(0)

# ============= MISC ============================

    def UpdateLimbParentJoint(self, childLimb):
        '''Updates limb parent group enum to closest to root group'''
        self.logger.debug('\tJntMng > UpdateLimbParentJoint')
        parents = pm.listConnections(childLimb.parentLimb)

        # If NO PARENT or parent EMPTY, set and return
        if not parents:
            pm.addAttr(childLimb.parentJoint, e=1, en='None')
            return
        parentLimb = parents[0]
        parentBhvType = parentLimb.bhvType.get()
        if parentBhvType in self.emptyLimbIndexes:
            pm.addAttr(childLimb.parentJoint, e=1, en='Empty')
            return

        rootGroup = self.GetJointGroups(childLimb)[0]
        sourcePos = pm.xform(rootGroup, q=1, t=1, ws=1)
        index = self._GetClosestJointIndex(sourcePos, parentLimb)
        childLimb.parentJoint.set(index)

    def PopulateIKPVCtrJointEnum(self, limb):
        joints = self.jntMng.GetLimbJoints(limb)
        names = [j.pfrsName.get() for j in joints]
        namesStr = ':'.join(names)
        pm.addAttr(limb.bhvIKPVCtrJoint, e=1, en=namesStr)
        limb.bhvIKPVCtrJoint.set(1)

    def UpdateDistGroupPos(self, limb):
        self.logger.debug('\tBhvMng > UpdateDistGroupPos')
        joints = self.jntMng.GetLimbJoints(limb)
        index = limb.bhvIKPVCtrJoint.get()
        joint = joints[index]
        group = self.GetLimbGroups(limb)[0]
        pm.parent(group, joint)
        pos = self.axesXforms[limb.bhvAxis.get()]
        dist = limb.bhvDistance.get()
        pos = [p*dist for p in pos]
        pm.xform(group, t=pos)
        pm.parent(group, limb)

    def UpdateFKIKSwitchJoint(self, limb):
        self.logger.debug('\tBhvMng > UpdateFKIKSwitchJoint')
        index = limb.targetJoint.get()
        joint = self.jntMng.GetLimbJoints(limb)[index]
        group = pm.listConnections(limb.bhvFKIKSwitchGroup)[0]

    def UpdateRFKConnections(self, limb):
        self.logger.debug('\tBhvMng > UpdateRFKConnections')
        joints = self.jntMng.GetLimbJoints(limb)
        index = limb.bhvRFKCenterJoint.get() + 1
        groups = pm.listConnections(limb.bhvRFKBottomGroup)
        groups += pm.listConnections(limb.bhvRFKCenterGroup)
        groups += pm.listConnections(limb.bhvRFKTopGroup)
        pm.parent(groups, w=1)
        for i in range(3):
            pm.disconnectAttr(groups[i].joint)
        for i in range(3):
            joint = joints[index-1+i]
            pm.connectAttr(groups[i].joint, joint.bhvRFKGroup)
            pos = pm.xform(joint, q=1, t=1, ws=1)
            rot = pm.xform(joint, q=1, ro=1, ws=1)
            pm.xform(groups[i], t=pos, ro=rot, s=[1,1,1], ws=1)
            self.grpMng.UpdateGroupName(groups[i])
        pm.parent(groups[0], groups[2], groups[1])
        pm.parent(groups[1], limb)


