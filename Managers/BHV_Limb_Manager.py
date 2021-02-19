
import math

import pymel.core as pm

class BHV_Limb_Manager:
    def __init__ (self, parent):
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
        self.grpMng = parent.grpMng
        self.ctrMng = parent.ctrMng
        self.logger = parent.logger

        self.cstTypes = ('Orient', 'Parent', 'Point',  'Scale')
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
        self.visBhvTypes = ('FK / Empty',
                            'IK',
                            'Look At',
                            'Constraint',
                            'RFK')

        # BHV Options
        self.emptyLimbIndexes = (7,)
        self.oneJntLimbIndexes = (6, 4, 3)
        self.twoJntChainLimbIndexes = (11, 6, 12, 5)
        self.threeJntChainLimbIndexes = (0, 6, 8, 10, 9, 1, 5, 3)
        self.branchLimbIndexes = (6, 3)
        
        self.omitLastJointTypes = (0, 5, 10)
        self.reverseTypeIndexes = (8, 12, 9)

        self.fkBranchTypeIndexes = (6,)
        self.fkChainTypeIndexes = (0, 8, 11, 12)
        self.rfkTypeIndexes = (10, 9)
        self.cstTypeIndexes = (3,)
        self.lookAtTypeIndexes = (4,)

        self.ikPVTypeIndexes = (1,)
        self.ikChainTypeIndexes = (5,)

        self.ikTargetableIndexes = (0, 6, 7, 8)

        self.rotLockOverride = (9, 10)
        self.posLockOverride = (1, 4)

        self.bhvTypes = (   'FK - Chain (3+ Joints)', # 0

                            'IK - Pole Vector',     # 1
                            'DEPRICATED - FKIK PV', # 2
                            'Constraint',           # 3
                            'Look At',              # 4
                            'IK - Chain',           # 5

                            'FK - Branch',          # 6
                            'Empty',                # 7
                            'FK - Reverse Chain (3+ Joints)', # 8
                            'FK - Reverse Relative',# 9
                            'FK - Relative',        # 10

                            'FK - Chain (2 Joints)',# 11
                            'FK - Reverse Chain (2 Joints)' # 12
                            )

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
        self.logger.debug('\tBhvMng > GetLimbGroups')
        groups = []
        bhvType = limb.bhvType.get()
        # IK PV
        if bhvType in self.ikPVTypeIndexes:
            groups += pm.listConnections(limb.bhvIKPVGroup)
        # Look At
        if bhvType in self.lookAtTypeIndexes:
            groups += pm.listConnections(limb.bhvLookAtGroup)
        return groups

    def GetJointGroups(self, limb):
        self.logger.debug('\tBhvMng > GetJointGroups')
        bhvType = limb.bhvType.get()
        if bhvType in self.emptyLimbIndexes:
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
        pm.disconnectAttr(sourceLimb.bhvParent)
        pm.connectAttr(targetLimb.bhvChildren, sourceLimb.bhvParent)
        joints = self.jntMng.GetLimbJoints(targetLimb)
        jointNames = [j.pfrsName.get() for j in joints]
        pm.addAttr(sourceLimb.bhvParentJoint, e=1, en=':'.join(jointNames))

    def SetIKTargetLimb(self, sourceLimb, targetLimb):
        '''Auto assign each IK limb group to closest FK limb's group'''
        self.logger.debug('\tBhvMng > SetIKTargetLimb')
        targetJoints = self.jntMng.GetLimbJoints(targetLimb)
        pm.disconnectAttr(sourceLimb.bhvParent)
        pm.connectAttr(targetLimb.bhvChildren, sourceLimb.bhvParent)
        if targetLimb.bhvType.get() == 7: # Empty
            self._SetTargetJointEnum(sourceLimb, 'Empty')
            return
        targetJointNames = [j.pfrsName.get() for j in targetJoints]
        names = ':'.join(targetJointNames)
        self._SetTargetJointEnum(sourceLimb, names)

    def _SetTargetJointEnum(self, limb, enumStr):
        self.logger.debug('\tBhvMng > _SetTargetJointEnum')
        if limb.bhvType.get() in self.ikChainTypeIndexes:
            for group in self.GetJointGroups(limb):
                pm.addAttr(group.targetJoint, e=1, en=enumStr)
        else:
            pm.addAttr(limb.bhvParentJoint, e=1, en=enumStr)

#============= ADD / REMOVE LIMB  ============================

    def _AddLimb(self):
        limb = self.limbMng.Add()
        bhvTypes = ':'.join(self.bhvTypes)
        visBhvTypes = ':'.join(self.visBhvTypes)

        pm.addAttr(limb, ln='bhvType', at='enum', en=bhvTypes,
                                    h=self.hideAttrs)

        # VISABILITY SOURCE / TARGET
        pm.addAttr(limb, ln='visParent', dt='string', h=self.hideAttrs)
        pm.addAttr(limb, ln='visChildren', dt='string', h=self.hideAttrs)
        pm.addAttr(limb, ln='visParentBhvType', at='enum', en=visBhvTypes, 
                                                        h=self.hideAttrs)

        # IK PV + CST
        pm.addAttr(limb, ln='bhvChildren', dt='string', h=self.hideAttrs) 

        # APP
        pm.addAttr(limb, ln='channelBoxJointCtrPos', at='bool', h=self.hideAttrs)
        pm.addAttr(limb, ln='channelBoxJointCtrRot', at='bool', h=self.hideAttrs)
        pm.addAttr(limb, ln='channelBoxJointCtrScale', at='bool', h=self.hideAttrs)
        pm.addAttr(limb, ln='channelBoxLimbCtrPos', at='bool', h=self.hideAttrs)
        pm.addAttr(limb, ln='channelBoxLimbCtrRot', at='bool', h=self.hideAttrs)
        pm.addAttr(limb, ln='channelBoxLimbCtrScale', at='bool', h=self.hideAttrs)
        
        limb.channelBoxJointCtrRot.set(1)
        limb.channelBoxLimbCtrPos.set(1)
        
        return limb

    def AddEmptyLimb(self):
        self.logger.debug('\tBhvMng > AddEmptyLimb')
        # Connect to FKIK switch of another limb
        limb = self._AddLimb()
        pm.addAttr(limb, ln='bhvEmptyGroup', dt='string', h=self.hideAttrs)
        limb.bhvType.set(self.emptyLimbIndexes[0])
        group = self.grpMng.AddEmptyGroup(limb)
        self.grpMng.UpdateGroupName(group)
        return limb

    def AddJointLimb(self, joints):
        self.logger.debug('\tBhvMng > AddJointLimb')
        limb = self._AddLimb()
        for joint in joints:
            self.grpMng.AddJointGroup(limb, joint)
        self.jntMng.ReindexJoints(limb)
        
        bhvCstTypes = ':'.join(self.cstTypes)
        axes = ':'.join(self.axesNames)

        # LookAt, IKPV
        pm.addAttr(limb, ln='bhvIKPVGroup', dt='string', h=self.hideAttrs)
        pm.addAttr(limb, ln='bhvLookAtGroup', dt='string', h=self.hideAttrs)

        # IK PV + CST 
        pm.addAttr(limb, ln='bhvParent', dt='string', h=self.hideAttrs) 
        pm.addAttr(limb, ln='bhvParentJoint', at='enum', en='None', h=self.hideAttrs)
        pm.addAttr(limb, ln='bhvIKPVCtrJoint', at='enum', en='None', h=self.hideAttrs)
        pm.addAttr(limb, ln='bhvCstType', at='enum', en=bhvCstTypes, h=self.hideAttrs)
        pm.addAttr(limb, ln='cstPosX', at='bool', h=self.hideAttrs)
        pm.addAttr(limb, ln='cstPosY', at='bool', h=self.hideAttrs)
        pm.addAttr(limb, ln='cstPosZ', at='bool', h=self.hideAttrs)
        pm.addAttr(limb, ln='cstRotX', at='bool', h=self.hideAttrs)
        pm.addAttr(limb, ln='cstRotY', at='bool', h=self.hideAttrs)
        pm.addAttr(limb, ln='cstRotZ', at='bool', h=self.hideAttrs)
        limb.cstPosX.set(1)
        limb.cstPosY.set(1)
        limb.cstPosZ.set(1)
        limb.cstRotX.set(1)
        limb.cstRotY.set(1)
        limb.cstRotZ.set(1)

        # IK PV + Look At
        pm.addAttr(limb, ln='bhvAxis', at='enum', en=axes, dv=4) # IKPV, LookAt
        pm.addAttr(limb, ln='bhvDistance', at='float', min=0, dv=1) # IKPV, LookAt
        
        # Connect to FKIK switch of another limb
        limb.rebuildLimbType.set(1)
        self.Setup_LimbGroupVisibility(limb)
        return limb

    def _RemoveLimb(self, limb):
        mirror = pm.listConnections(limb.mirrorLimb)
        self.limbMng.Remove(limb)
        if mirror and mirror[0].bhvType.get() not in self.emptyLimbIndexes:
            self.jntMng.UpdateLimbJointNames(mirror[0])

    def RemoveEmptyLimb(self, limb):
        group = pm.listConnections(limb.bhvEmptyGroup)[0]
        ctr = pm.listConnections(group.control)[0]
        self.ctrMng.Remove(ctr)
        self.grpMng.Remove(group)
        self._RemoveLimb(limb)

    def RemoveJointLimb(self, limb):
        for joint in self.jntMng.GetLimbJoints(limb):
            self.jntMng.RemoveTemp(joint)
        groups = pm.listConnections(limb.bhvIKPVGroup)
        groups += pm.listConnections(limb.bhvLookAtGroup)
        # groups += pm.listConnections(limb.bhvFKIKSwitchGroup)
        # groups += pm.listConnections(limb.bhvRFKCenterGroup)
        # groups += pm.listConnections(limb.bhvRFKBottomGroup)
        # groups += pm.listConnections(limb.bhvRFKTopGroup)
        for group in groups:
            ctr = pm.listConnections(group.control)[0]
            self.ctrMng.Remove(ctr)
            self.grpMng.Remove(group)
        # pm.delete(groups)
        self._RemoveLimb(limb)


#============= REBUILD ============================

    def RebuildLimbs(self):
        allLimbs = self.limbMng.GetAllLimbs()
        self.logger.info('--- REBUILDING LIMBS START ---')
        self.logger.info('Rebuilding LIMB TYPES for:')
        for limb in allLimbs:
            if limb.rebuildLimbType.get():
                self.logger.info('\t%s' % limb.pfrsName.get())
                self.RebuildLimbType(limb)
        self.logger.info('Rebuilding BEHAVIOR TYPES for:')
        for limb in allLimbs:
            if limb.rebuildBhvType.get():
                self.logger.info('\t%s' % limb.pfrsName.get())
                self.RebuildBhvType(limb)
        self.logger.info('Rebuilding LIMB GROUPS for:')
        for limb in allLimbs:
            if limb.rebuildLimbGroup.get():
                self.logger.info('\t%s' % limb.pfrsName.get())
                self.RebuildLimbGroup(limb)
        self.logger.info('Rebuilding BEHAVIOR DEPENDENCIES for:')
        for limb in allLimbs:
            if limb.rebuildBhvDep.get():
                self.logger.info('\t%s' % limb.pfrsName.get())
                self.RebuildBhvDep(limb)
        self.logger.info('Rebuilding APPEARANCE DEPENDENCIES for:')
        for limb in allLimbs:
            if limb.rebuildAppDep.get():
                pass
        # self.logger.info('Rebuilding SKIN INFLUENCES for:')
        # for limb in allLimbs:
        #     if limb.rebuildSkinInf.get():
        #         pass
        msg = '--- REBUILDING LIMBS END ---\n'
        self.logger.info(msg)

    def RebuildLimbType(self, limb):
        '''Set limbType if invalid'''
        self.logger.debug('\tBhvMng > RebuildLimbType')
        limbType = limb.limbType.get()
        limbTypeChanged = False
        joints = pm.listConnections(limb.joints)
        if (len(joints) == 1):
            if limb.limbType.get() != 1:
                limb.limbType.set(1) # 1 joint
                limbTypeChanged = True
        elif self.jntMng.AreJointsSiblings(joints):
            if limbType != 3:
                limb.limbType.set(3) # branch
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

        if limbTypeChanged:
            limb.rebuildBhvType.set(1)
            limb.rebuildBhvDep.set(1)
            limb.rebuildAppDep.set(1)
            # limb.rebuildSkinInf.set(1)
        limb.rebuildLimbType.set(0)

    def RebuildBhvType(self, limb):
        '''If bhvType invalid, default to FK'''
        self.logger.debug('\tBhvMng > RebuildBhvType')
        limb.rebuildBhvType.set(0)
        limbType = limb.limbType.get()
        bhvType = limb.bhvType.get()
        
        if (limbType == 1): # One
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

    def RebuildBhvDep(self, sourceLimb):
        '''Set IK / Cst targets to closest limbs / joints'''
        self.logger.debug('\tBhvMng > RebuildBhvDep')
        bhvType = sourceLimb.bhvType.get()
        ikBhvFilter = self.ikChainTypeIndexes
        ikBhvFilter += self.ikPVTypeIndexes
        if bhvType not in (self.cstTypeIndexes + ikBhvFilter):
            sourceLimb.rebuildBhvDep.set(0)
            return
        
        # Get Closest limb
        targetLimb = None
        if bhvType in self.cstTypeIndexes:
            limbs = self._GetClosestLimbs(sourceLimb)
            if limbs:
                targetLimb = limbs[0]
                self.SetCstTargetLimb(sourceLimb, targetLimb)
        
        if bhvType in ikBhvFilter: 
            limbs = []
            for limb in self._GetClosestLimbs(sourceLimb):
                if limb.bhvType.get() in self.ikTargetableIndexes:
                    limbs.append(limb)
            if limbs:
                targetLimb = limbs[0]
                self.SetIKTargetLimb(sourceLimb, targetLimb)
        if not targetLimb:
            return

        sourceLimb.rebuildBhvDep.set(0)
        # IK PV + Constraint
        if bhvType in (self.ikPVTypeIndexes + self.cstTypeIndexes): 
            sourceJoint = self.jntMng.GetLimbJoints(sourceLimb)[-1]
            sourcePos = pm.xform(sourceJoint, q=1, t=1, ws=1)
            index = self._GetClosestJointIndex(sourcePos, targetLimb)
            sourceLimb.bhvParentJoint.set(index)

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

    def _GetClosestLimbs(self, sourceLimb):
        self.logger.debug('\tBhvMng > _GetClosestLimbs')
        distLimbs = {} # dist : limb
        sourceJoint = self.jntMng.GetLimbJoints(sourceLimb)[-1]
        sourcePos = pm.xform(sourceJoint, q=1, t=1, ws=1)
        # Create distance dictionary to groups
        for limb in self.limbMng.GetAllLimbs():
            if limb == sourceLimb:
                continue
            for joint in self.jntMng.GetLimbJoints(limb):
                targetPos = pm.xform(joint, q=1, t=1, ws=1)
                dist = 0
                for i in range(3):
                    dist += (sourcePos[i]-targetPos[i])**2
                distLimbs[dist] = limb
        return [distLimbs[d] for d in sorted(distLimbs.keys())]

#============= SETUP / TEARDOWN BHV ============================
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
        # CONSTRAINT
        if bhvType in self.cstTypeIndexes:
            self.RebuildBhvDep(limb)

    def Teardown_Behavior(self, limb):
        self.logger.debug('\tBhvMng > Teardown_Behavior')
        bhvType = limb.bhvType.get()
        if bhvType in self.ikTargetableIndexes:
            for sourceLimb in pm.listConnections(limb.bhvChildren):
                sourceLimb.rebuildBhvDep.set(1)
            pm.disconnectAttr(limb.bhvChildren)
        
# ============= GROUP VISIBILITY ============================

    def Setup_LimbGroupVisibility(self, limb):
        self.logger.debug('\tBhvMng > Setup_LimbGroupVisibility')
        bhvType = limb.bhvType.get()
        bhvFilter = self.fkChainTypeIndexes
        bhvFilter += self.fkBranchTypeIndexes
        if bhvType in bhvFilter:
            groups = self.GetJointGroups(limb)
            for group in groups:
                group.v.set(1)
            if bhvType in self.reverseTypeIndexes:
                groups = groups[::-1]
            if bhvType in self.omitLastJointTypes:
                groups[-1].v.set(0)
        if bhvType in self.rfkTypeIndexes:
            groups = self.GetJointGroups(limb)
            for group in groups:
                group.v.set(0)
            if bhvType in self.reverseTypeIndexes:
                groups = groups[::-1]
            groups[0].v.set(1)
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
        self.logger.debug('\tBhvMng > UpdateLimbParentJoint')
        parents = pm.listConnections(childLimb.limbParent)

        # If NO PARENT or parent EMPTY, set and return
        if not parents:
            pm.addAttr(childLimb.limbParentJoint, e=1, en='None')
            return
        parentLimb = parents[0]
        parentBhvType = parentLimb.bhvType.get()
        if parentBhvType in self.emptyLimbIndexes:
            pm.addAttr(childLimb.limbParentJoint, e=1, en='Empty')
            return
        parentJoints = self.jntMng.GetLimbJoints(parentLimb)
        names = [j.pfrsName.get() for j in parentJoints]
        namesStr = ':'.join(names)
        pm.addAttr(childLimb.limbParentJoint, e=1, en=namesStr)
        rootGroup = self.GetJointGroups(childLimb)[0]
        sourcePos = pm.xform(rootGroup, q=1, t=1, ws=1)
        index = self._GetClosestJointIndex(sourcePos, parentLimb)
        childLimb.limbParentJoint.set(index)

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

    def GetDefaultLimbHier(self):
        self.logger.debug('\tBhvMng > GetDefaultLimbHier')
        limbParents = {} # childLimb : parentLimb
        for childJoint in self.jntMng.GetAllJoints():
            childLimb = pm.listConnections(childJoint.limb)
            if not childLimb or childLimb[0] in limbParents:
                continue
            parentJoint = pm.listRelatives(childJoint, p=1, type='joint')
            if not parentJoint or not parentJoint[0].hasAttr('limb'):
                continue
            parentLimb = pm.listConnections(parentJoint[0].limb)
            if not parentLimb:
                continue
            if childLimb[0] != parentLimb[0]:
                limbParents[childLimb[0]] = parentLimb[0]
        return limbParents

    def ParentLimbsBySkeleton(self):
        limbParents = self.GetDefaultLimbHier()
        for child, parent in limbParents.items():
            self.limbMng.Reparent(child, parent)
            self.UpdateLimbParentJoint(child)


    def AutoBuildByHierarchy(self):
        self.logger.debug('\tBhvMng > AutoBuildByHierarchy')
        # Build Joint Parent Dictionary
        jointParents = {}   # childJoint : parentJoint
        for joint in pm.ls(type='joint'):
            parent = pm.listRelatives(joint, parent=1)
            if parent:
                jointParents[joint] = parent[0]
            else:
                jointParents[joint] = None
        # Group joints by limb structure: one, chain or branch
        disconnectJoints = {} # parent : [[j1, j2], [j3], ...]
        newLimbJointSets = []  # [[jnt1, jnt2], [jnt3], ...]
        for i in range(99):
            children = set(jointParents.keys())
            parents = set(jointParents.values())
            # Iterate through all end children,
            # solving for branches and end chains
            for child in list(children - parents):
                if child not in jointParents:
                    continue
                # Unparent CHAIN root joint + track
                joints = self.GetLongestJointChain(child)
                if len(joints) == 1:
                    joints = self.GetJointBranch(child)
                    parent = pm.listRelatives(child, p=1)
                    if parent:
                        parent = parent[0]
                        if parent not in disconnectJoints:
                            disconnectJoints[parent] = []
                        disconnectJoints[parent] += joints
                        if len(joints) == 1:
                            pm.parent(joints[0], w=1)
                        else:
                            pm.parent(joints, w=1)
                newLimbJointSets.append(joints)
                for joint in joints:
                    del(jointParents[joint])
        for parent, children in disconnectJoints.items():
            pm.parent(children, parent)
        for newLimbJoints in newLimbJointSets:
            self.AddJointLimb(newLimbJoints)
            # if limb:
            # self.AddLimb(limb)
            for joint in newLimbJoints:
                # self.jntMng.Setup_Editable(limb, joint)
                self.jntMng.UpdateJointName(joint)
        self.ParentLimbsBySkeleton()
    
    def AutoBuildByName(self):
        self.logger.debug('\tBhvMng > AutoBuildByName')
        # GROUP JOINTS AND VALIDATE NAMES
        allJoints = pm.ls(type='joint')
        limbJoints = self.jntMng.GetAllJoints()
        newLimbs = {} # limbName : jointList
        for joint in list(set(allJoints) - set(limbJoints)):
            splitName = joint.shortName().split('_')
            if len(splitName) != 3:
                msg = 'Joints must be named as "LimbName_Side_JointName"'
                msg += '\nJoint Misnamed: %s' % joint
                pm.confirmDialog(   t='Breaking IK Connections!', 
                                    m=msg, 
                                    icon='error', 
                                    b='Ok')
                return
            limbSideName = '_'.join(splitName[:-1])
            if limbSideName not in newLimbs:
                newLimbs[limbSideName] = []
            newLimbs[limbSideName].append(joint)

        # VALIDATE LIMBS
        for limbName, joints in newLimbs.items():
            newLimbs[limbName] = self.jntMng.SortJoints(joints)
            if self.jntMng.AreJointsSiblings(joints):
                continue
            if self.jntMng.AreJointsChained(joints):
                continue
            msg = 'Limbs may only have the following joint arrangements:\n'
            msg += '\n- 1+ joints that are all the immediate children '
            msg += 'of the same parent [BRANCH]'
            msg += '\n- 2+ joints that are parented to one another [CHAIN]'
            msg += '\n--------------------------'
            msg += '\nLimb = ' + limbName
            msg += '\nJoints = ' + str(joints)
            pm.confirmDialog(   t='Limbs ERROR', 
                                m=msg, 
                                icon='error', 
                                b='Ok')
            return

        # ADD LIMBS
        for limbName, joints in newLimbs.items():
            limb = self.AddJointLimb(joints)
            # self.AddLimb(limb)
            tempJoint = joints[0]
            limbName, side, l = tempJoint.shortName().split('_')
            for joint in joints:
                splitName = joint.shortName().split('_')
                joint.pfrsName.set(splitName[-1])
            if side.upper() == 'L':
                limb.side.set(1)
            elif side.upper() == 'R':
                limb.side.set(2)
            self.limbMng.Rename(limb, limbName)
        self.ParentLimbsBySkeleton()

    def GetLongestJointChain(self, startJoint):
        self.logger.debug('\tBhvMng > GetLongestJointChain')
        joints = [startJoint]
        if self.HasSibling(startJoint):
            return joints
        lastPos = pm.xform(startJoint, q=1, t=1, ws=1)
        parent = pm.listRelatives(startJoint, parent=1)
        for i in range(99):
            if not parent:
                break
            parent = parent[0]
            curPos = pm.xform(parent, q=1, t=1, ws=1)
            if curPos == lastPos:
                break
            joints.append(parent)
            if self.HasSibling(parent):
                break
            parent = pm.listRelatives(parent, parent=1)
            lastPos = curPos[:]
        return joints[::-1]

    def GetJointBranch(self, startJoint):
        self.logger.debug('\tBhvMng > GetJointBranch')
        joints = [startJoint]
        parent = pm.listRelatives(startJoint, parent=1)
        if not parent:
            return [startJoint]
        for child in pm.listRelatives(parent[0], c=1, type='joint'):
            if not pm.listRelatives(child, c=1, type='joint'):
                if child not in joints:
                    joints.append(child)
        return joints

    def HasSibling(self, joint):
        self.logger.debug('\tBhvMng > HasSibling')
        parent = pm.listRelatives(joint, parent=1, type='joint')
        if not parent:
            return False
        children = pm.listRelatives(parent, children=1, type='joint')
        return (len(children) > 1)
        

