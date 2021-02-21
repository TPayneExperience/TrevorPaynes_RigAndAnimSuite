
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)
import Common.Utilities as util
reload(util)

class RIG_Behaviors:
    def __init__ (self, parent):
        self.logger = parent.logger
        self.grpMng = parent.grpMng
        self.jntMng = parent.jntMng
        self.limbMng = parent.limbMng

#============= ACCESSORS ============================

    def GetBhvOptions(self, limb):
        self.logger.debug('\tBhvMng > GetBhvOptions')
        limbType = limb.limbType.get()
        if limbType == 0: # Empty
            return [rigData.BHV_TYPES[i] for i in rigData.EMPTY_BHV_INDEXES]
        elif limbType == 1: # One Joint
            return [rigData.BHV_TYPES[i] for i in rigData.ONE_JOINT_BHV_INDEXES]
        elif limbType == 4: # 2 Chain
            return [rigData.BHV_TYPES[i] for i in rigData.TWO_JOINT_CHAIN_BHV_INDEXES]
        elif limbType == 2: # 3+ Chain
            return [rigData.BHV_TYPES[i] for i in rigData.THREE_JOINT_CHAIN_BHV_INDEXES]
        elif limbType == 3: # Branch
            return [rigData.BHV_TYPES[i] for i in rigData.TWO_JOINT_BRANCH_BHV_INDEXES]

#============= SET BHV ============================

    def SetBhvType(self, limb, newBhvIndex):
        self.logger.debug('\tBhvMng > SetBhvType')
        self.grpMng.Teardown_LimbGroupVisibility(limb)
        self.Teardown_Behavior(limb)
        limb.bhvType.set(newBhvIndex)
        bhvFilter = rigData.IK_PV_BHV_INDEXES
        bhvFilter += rigData.LOOK_AT_BHV_INDEXES
        if newBhvIndex in bhvFilter:
            self.grpMng.UpdateDistGroupPos(limb)
        self.Setup_Behavior(limb)
        self.grpMng.Setup_LimbGroupVisibility(limb)

    def SetCstTargetLimb(self, sourceLimb, targetLimb):
        self.logger.debug('\tBhvMng > SetCstTargetLimb')
        pm.disconnectAttr(sourceLimb.bhvParent)
        pm.connectAttr(targetLimb.bhvChildren, sourceLimb.bhvParent)
        joints = util.GetSortedLimbJoints(targetLimb)
        jointNames = [j.pfrsName.get() for j in joints]
        pm.addAttr(sourceLimb.bhvParentJoint, e=1, en=':'.join(jointNames))

    def SetIKTargetLimb(self, sourceLimb, targetLimb):
        '''Auto assign each IK limb group to closest FK limb's group'''
        self.logger.debug('\tBhvMng > SetIKTargetLimb')
        targetJoints = util.GetSortedLimbJoints(targetLimb)
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
        if limb.bhvType.get() in rigData.IK_CHAIN_BHV_INDEXES:
            for group in self.grpMng.GetJointGroups(limb):
                pm.addAttr(group.targetJoint, e=1, en=enumStr)
        else:
            pm.addAttr(limb.bhvParentJoint, e=1, en=enumStr)


#============= REBUILD ============================

    def RebuildLimbs(self):
        allLimbs = pm.listConnections(self.limbMng.root.jointLimbs)
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

    def RebuildBhvType(self, limb):
        '''If bhvType invalid, default to FK'''
        self.logger.debug('\tBhvMng > RebuildBhvType')
        limb.rebuildBhvType.set(0)
        limbType = limb.limbType.get()
        bhvType = limb.bhvType.get()
        
        if (limbType == 1): # One
            if bhvType not in rigData.ONE_JOINT_BHV_INDEXES:
                self.SetBhvType(limb, rigData.ONE_JOINT_BHV_INDEXES[0])
        elif (limbType == 4): # 2 chain
            if bhvType not in rigData.TWO_JOINT_CHAIN_BHV_INDEXES:
                self.SetBhvType(limb, rigData.TWO_JOINT_CHAIN_BHV_INDEXES[0])
        elif (limbType == 2): # 3+ chain
            if bhvType not in rigData.THREE_JOINT_CHAIN_BHV_INDEXES:
                self.SetBhvType(limb, rigData.THREE_JOINT_CHAIN_BHV_INDEXES[0])
        elif (limbType == 3): # Branch
            if bhvType not in rigData.TWO_JOINT_BRANCH_BHV_INDEXES:
                self.SetBhvType(limb, rigData.TWO_JOINT_BRANCH_BHV_INDEXES[0])

    def RebuildBhvDep(self, sourceLimb):
        '''Set IK / Cst targets to closest limbs / joints'''
        self.logger.debug('\tBhvMng > RebuildBhvDep')
        bhvType = sourceLimb.bhvType.get()
        ikBhvFilter = rigData.IK_CHAIN_BHV_INDEXES
        ikBhvFilter += rigData.IK_PV_BHV_INDEXES
        if bhvType not in (rigData.CST_BHV_INDEXES + ikBhvFilter):
            sourceLimb.rebuildBhvDep.set(0)
            return
        
        # Get Closest limb
        targetLimb = None
        if bhvType in rigData.CST_BHV_INDEXES:
            limbs = self._GetClosestLimbs(sourceLimb)
            if limbs:
                targetLimb = limbs[0]
                self.SetCstTargetLimb(sourceLimb, targetLimb)
        
        if bhvType in ikBhvFilter: 
            limbs = []
            for limb in self._GetClosestLimbs(sourceLimb):
                if limb.bhvType.get() in rigData.IK_TARGETABLE_BHV_INDEXES:
                    limbs.append(limb)
            if limbs:
                targetLimb = limbs[0]
                self.SetIKTargetLimb(sourceLimb, targetLimb)
        if not targetLimb:
            return

        sourceLimb.rebuildBhvDep.set(0)
        # IK PV + Constraint
        if bhvType in (rigData.IK_PV_BHV_INDEXES + rigData.CST_BHV_INDEXES): 
            sourceJoint = util.GetSortedLimbJoints(sourceLimb)[-1]
            sourcePos = pm.xform(sourceJoint, q=1, t=1, ws=1)
            index = self.jntMng.GetClosestJointIndex(sourcePos, targetLimb)
            sourceLimb.bhvParentJoint.set(index)

        # IK Chain
        elif bhvType in rigData.IK_CHAIN_BHV_INDEXES: 
            for sourceJoint in util.GetSortedLimbJoints(sourceLimb):
                sourcePos = pm.xform(sourceJoint, q=1, t=1, ws=1)
                index = self.jntMng.GetClosestJointIndex(sourcePos, targetLimb)
                sourceGroup = pm.listConnections(sourceJoint.group)[0]
                sourceGroup.targetJoint.set(index)

    def _GetClosestLimbs(self, sourceLimb):
        self.logger.debug('\tBhvMng > _GetClosestLimbs')
        distLimbs = {} # dist : limb
        sourceJoint = util.GetSortedLimbJoints(sourceLimb)[-1]
        sourcePos = pm.xform(sourceJoint, q=1, t=1, ws=1)
        # Create distance dictionary to groups
        limbs = pm.listConnections(self.limbMng.root.jointLimbs)
        limbs += pm.listConnections(self.limbMng.root.emptyLimbs)
        for limb in limbs:
            if limb == sourceLimb:
                continue
            for joint in util.GetSortedLimbJoints(limb):
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
        bhvFilter = rigData.IK_PV_BHV_INDEXES
        bhvFilter += rigData.IK_CHAIN_BHV_INDEXES
        bhvFilter += rigData.CST_BHV_INDEXES
        if bhvType in bhvFilter:
            self.RebuildBhvDep(limb)

    def Teardown_Behavior(self, limb):
        self.logger.debug('\tBhvMng > Teardown_Behavior')
        bhvType = limb.bhvType.get()
        if bhvType in rigData.IK_TARGETABLE_BHV_INDEXES:
            for sourceLimb in pm.listConnections(limb.bhvChildren):
                sourceLimb.rebuildBhvDep.set(1)
            pm.disconnectAttr(limb.bhvChildren)
      

