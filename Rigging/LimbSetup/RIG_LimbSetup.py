
import pymel.core as pm

import Common.Utilities as util
reload(util)

class RIG_LimbSetup:
    def __init__(self, parent):
        self.logger = parent.logger
        self.jntMng = parent.jntMng
        self.limbMng = parent.limbMng
    
#============= AUTOBUILD ============================

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
            self.limbMng.AddJointLimb(newLimbJoints)
            for joint in newLimbJoints:
                self.jntMng.UpdateJointName(joint)
        self.limbMng.ParentLimbsBySkeleton()
    
    def AutoBuildByName(self):
        self.logger.debug('\tBhvMng > AutoBuildByName')
        # GROUP JOINTS AND VALIDATE NAMES
        freeJoints = []
        for joint in pm.ls(type='joint'):
            if not pm.listConnections(joint.limb):
                freeJoints.append(joint)
        newLimbs = {} # limbName : jointList
        for joint in freeJoints:
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
            newLimbs[limbName] = util.GetSortedJoints(joints)
            if self.AreJointsSiblings(joints):
                continue
            if self.AreJointsChained(joints):
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
            limb = self.limbMng.AddJointLimb(joints)
            # self.AddLimb(limb)
            tempJoint = joints[0]
            limbName, side, j = tempJoint.shortName().split('_')
            for joint in joints:
                splitName = joint.shortName().split('_')
                joint.pfrsName.set(splitName[-1])
            if side.upper() == 'L':
                limb.side.set(1)
            elif side.upper() == 'R':
                limb.side.set(2)
            self.limbMng.RenameLimb(limb, limbName)
        self.limbMng.ParentLimbsBySkeleton()

#============= RELATIONSHIP ============================

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
        elif self.AreJointsSiblings(joints):
            if limbType != 3:
                limb.limbType.set(3) # branch
                limbTypeChanged = True
        elif self.AreJointsChained(joints):
            if (len(joints) == 2):
                if (limbType != 4):
                    limb.limbType.set(4) # 2 joint chain
                    limbTypeChanged = True
            else:
                self.jntMng.UpdateBhvParentJoint(limb)
                if limbType != 2:
                    limb.limbType.set(2) # 3+ joint chain
                    limbTypeChanged = True

        if limbTypeChanged:
            limb.rebuildBhvType.set(1)
            limb.rebuildBhvDep.set(1)
            limb.rebuildAppDep.set(1)
            # limb.rebuildSkinInf.set(1)
        limb.rebuildLimbType.set(0)

#============= RELATIONSHIP ============================

    def AreJointsSiblings(self, joints):
        self.logger.debug('\tJntMng > AreJointsSiblings')
        isBranch = True
        parent1 = pm.listRelatives(joints[0], parent=1)
        for joint in joints[1:]:
            parent2 = pm.listRelatives(joint, parent=1)
            if (parent1 != parent2):
                isBranch = False
        return isBranch
    
    def AreJointsChained(self, joints):
        self.logger.debug('\tJntMng > AreJointsChained')
        jointsCopy = util.GetSortedJoints(joints)
        child = jointsCopy[-1]
        jointsCopy.remove(child)
        while (jointsCopy):
            parent = pm.listRelatives(child, p=1)
            if not parent:
                return False
            parent = parent[0]
            if not pm.objectType(parent, isa='joint'):
                msg = '*** Only Joints Allowed in Skeleton hierarchy'
                self.logger.error(msg)
                return False
            if parent in jointsCopy:
                jointsCopy.remove(parent)
            child = parent
        return True

    def HasSibling(self, joint):
        self.logger.debug('\tBhvMng > HasSibling')
        parent = pm.listRelatives(joint, parent=1, type='joint')
        if not parent:
            return False
        children = pm.listRelatives(parent, children=1, type='joint')
        return (len(children) > 1)
        
#============= GET IT DONE! ============================

    def GetCompleteJointChain(self, joints):
        '''returns child most to parent most joint list'''
        self.logger.debug('\tJntMng > GetCompleteJointChain')
        sortedJoints = util.GetSortedJoints(joints)
        parent = sortedJoints[-1]
        rootParent = sortedJoints[0]
        jointChain = [parent]
        while(parent != rootParent):
            parent = pm.listRelatives(parent, p=1, type='joint')[0]
            jointChain.append(parent)
        return jointChain

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

#=============  ============================








