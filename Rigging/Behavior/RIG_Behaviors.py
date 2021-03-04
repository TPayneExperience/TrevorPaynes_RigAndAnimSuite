
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
        self.pfrs = parent

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

#============= REBUILD ============================

    def RebuildLimbs(self):
        allLimbs = pm.listConnections(self.pfrs.root.jointLimbs)
        self.logger.info('--- REBUILDING LIMBS START ---')
        # self.logger.info('Rebuilding LIMB TYPES for:')
        # for limb in allLimbs:
        #     if limb.rebuildLimbType.get():
        #         self.logger.info('\t%s' % limb.pfrsName.get())
        #         self.RebuildLimbType(limb)
        # self.logger.info('Rebuilding BEHAVIOR TYPES for:')
        # for limb in allLimbs:
        #     if limb.rebuildBhvType.get():
        #         self.logger.info('\t%s' % limb.pfrsName.get())
        #         self.RebuildBhvType(limb)
        self.logger.info('Rebuilding BEHAVIOR DEPENDENCIES for:')
        for limb in allLimbs:
            if limb.rebuildBhvDep.get():
                self.logger.info('\t%s' % limb.pfrsName.get())
                self.RebuildBhvDep(limb)
        # self.logger.info('Rebuilding APPEARANCE DEPENDENCIES for:')
        # for limb in allLimbs:
        #     if limb.rebuildAppDep.get():
        #         pass
        # self.logger.info('Rebuilding SKIN INFLUENCES for:')
        # for limb in allLimbs:
        #     if limb.rebuildSkinInf.get():
        #         pass
        msg = '--- REBUILDING LIMBS END ---\n'
        self.logger.info(msg)

    def RebuildBhvDep(self, sourceLimb):
        '''Set IK / Cst targets to closest limbs / joints'''
        self.logger.debug('\tBhvMng > RebuildBhvDep')
        bhvType = sourceLimb.bhvType.get()
        ikBhvFilter = rigData.IK_PV_BHV_INDEXES
        # ikBhvFilter += rigData.IK_CHAIN_BHV_INDEXES
        if bhvType not in (rigData.CST_BHV_INDEXES + ikBhvFilter):
            sourceLimb.rebuildBhvDep.set(0)
            return
        
        # Get Closest limb
        # targetLimb = None
        limbs = self._GetClosestLimbs(sourceLimb)
        if not limbs:
            return
        targetLimb = limbs[0]
        self.limbMng.SetBhvParentLimb(sourceLimb, targetLimb)
        # if bhvType in rigData.CST_BHV_INDEXES:
        #     limbs = self._GetClosestLimbs(sourceLimb)
        #     if limbs:
        #         targetLimb = limbs[0]
        #         self.limbMng.SetBhvParentLimb(sourceLimb, targetLimb)
        
        # if bhvType in ikBhvFilter: 
        #     limbs = []
        #     for limb in self._GetClosestLimbs(sourceLimb):
        #         if limb.bhvType.get() in rigData.IK_TARGETABLE_BHV_INDEXES:
        #             limbs.append(limb)
        #     if limbs:
        #         targetLimb = limbs[0]
        #         self.limbMng.SetBhvParentLimb(sourceLimb, targetLimb)
        # if not targetLimb:
        #     return

        sourceLimb.rebuildBhvDep.set(0)
        # IK PV + Constraint
        # if bhvType in (rigData.IK_PV_BHV_INDEXES + rigData.CST_BHV_INDEXES): 
        sourceJoint = util.GetSortedLimbJoints(sourceLimb)[-1]
        sourcePos = pm.xform(sourceJoint, q=1, t=1, ws=1)
        index = self.jntMng.GetClosestJointIndex(sourcePos, targetLimb)
        sourceLimb.bhvParentJoint.set(index)

        # IK Chain
        # elif bhvType in rigData.IK_CHAIN_BHV_INDEXES: 
        #     for sourceJoint in util.GetSortedLimbJoints(sourceLimb):
        #         sourcePos = pm.xform(sourceJoint, q=1, t=1, ws=1)
        #         index = self.jntMng.GetClosestJointIndex(sourcePos, targetLimb)
        #         sourceGroup = pm.listConnections(sourceJoint.group)[0]
        #         sourceGroup.targetJoint.set(index)

    def _GetClosestLimbs(self, sourceLimb):
        self.logger.debug('\tBhvMng > _GetClosestLimbs')
        distLimbs = {} # dist : limb
        sourceJoint = util.GetSortedLimbJoints(sourceLimb)[-1]
        sourcePos = pm.xform(sourceJoint, q=1, t=1, ws=1)
        # Create distance dictionary to groups
        limbs = pm.listConnections(self.pfrs.root.jointLimbs)
        limbs += pm.listConnections(self.pfrs.root.emptyLimbs)
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


