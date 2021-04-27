
import pymel.core as pm

import Common.Utilities as util
reload(util)
import Data.Rig_Data as rigData
reload(rigData)

class RIG_LimbSetup:
    def __init__(self, parent):
        self.logger = parent.logger
        self.jntMng = parent.jntMng
        self.limbMng = parent.limbMng
        self.nameMng = parent.nameMng
        self.pfrs = parent
    
#============= AUTOBUILD ============================

    def AutoBuildByHierarchy(self):
        self.logger.debug('\trigLS > AutoBuildByHierarchy')
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
                    parent = pm.listRelatives(child, p=1, type='joint')
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
        self.limbMng.ParentLimbsBySkeleton()
    
    def AutoBuildByName(self):
        self.logger.debug('\trigLS > AutoBuildByName')
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
            tempJoint = joints[0]
            limbName, side, j = tempJoint.shortName().split('_')
            for joint in joints:
                splitName = joint.shortName().split('_')
                joint.pfrsName.set(splitName[-1])
            limb = self.AddJointLimb(joints)
            limb.pfrsName.set(limbName)
            if side.upper() == 'L':
                limb.side.set(1)
            elif side.upper() == 'R':
                limb.side.set(2)
            self.limbMng.UpdateLimbName(limb)
        self.limbMng.ParentLimbsBySkeleton()

#============= REBUILD ============================

    def RebuildLimbType(self, limb):
        '''Set limbType if invalid'''
        self.logger.debug('\trigLS > RebuildLimbType')
        limbType = limb.limbType.get()
        joints = pm.listConnections(limb.joints)
        if (len(joints) == 1):
            if limb.limbType.get() != 1:
                limb.limbType.set(1) # 1 joint
        elif self.AreJointsSiblings(joints):
            if limbType != 3:
                limb.limbType.set(3) # branch
        elif self.AreJointsChained(joints):
            if (len(joints) == 2):
                if (limbType != 4):
                    limb.limbType.set(4) # 2 joint chain
            else:
                if limbType != 2:
                    limb.limbType.set(2) # 3+ joint chain

#============= LIMBS ============================

    def AddJointLimb(self, joints):
        limb = self.limbMng.AddJointLimb(joints)
        self.limbMng.UpdateLimbName(limb)
        self.RebuildLimbType(limb)
        self.limbMng.RebuildBhvType(limb)
        return limb
    
    def RemoveJointLimb(self, limb):
        self.limbMng.RemoveJointLimb(limb)

    def RemoveAllJointLimbs(self):
        for limb in pm.listConnections(self.pfrs.root.jointLimbs):
            self.limbMng.RemoveJointLimb(limb)

#============= JOINTS ============================

    def RenameJoint(self, joint, newName):
        msg = '\t\t%s >>> %s' %(joint.pfrsName.get(), newName)
        self.logger.info(msg)
        if not self.nameMng.IsValidCharacterLength(newName):
            self.logger.error('**** Must be 2 or more characters')
            return ''
        if not self.nameMng.DoesNotStartWithNumber(newName):
            self.logger.error('**** Cannot start with number OR _')
            return ''
        if not self.nameMng.AreAllValidCharacters(newName):
            self.logger.error('**** May only contain A-Z, a-z, 0-9, _')
            return ''
        limb = pm.listConnections(joint.limb)[0]
        names = []
        for limbJoint in pm.listConnections(limb.joints):
            names.append(limbJoint.pfrsName.get())
        if newName in names:
            self.logger.error('**** Joint name not unique to limb *****')
            return
        joint.pfrsName.set(newName)
        self.jntMng.UpdateJointName(joint)
    
    def RemoveJoints(self, limb, joints):
        for joint in joints:
            self.logger.info('\t\t' + str(joint))
            self.jntMng.RemoveJoint(joint)
        self.RebuildLimbType(limb)
        self.limbMng.RebuildBhvType(limb)

    def AddJoints(self, limb, joints):
        for joint in joints:
            self.logger.info('\t\t' + str(joint))
            self.jntMng.AddJoint(limb, joint)
        self.jntMng.ReindexJoints(limb)
        self.RebuildLimbType(limb)
        self.limbMng.RebuildBhvType(limb)
        # limb.rebuildLimbType.set(1)

#============= RELATIONSHIP ============================

    def AreJointsSiblings(self, joints):
        self.logger.debug('\trigLS > AreJointsSiblings')
        isBranch = True
        parent1 = pm.listRelatives(joints[0], p=1, type='joint')
        for joint in joints[1:]:
            parent2 = pm.listRelatives(joint, p=1, type='joint')
            if (parent1 != parent2):
                isBranch = False
        return isBranch
    
    def AreJointsChained(self, joints):
        self.logger.debug('\trigLS > AreJointsChained')
        jointsCopy = util.GetSortedJoints(joints)
        child = jointsCopy[-1]
        jointsCopy.remove(child)
        while (jointsCopy):
            parent = pm.listRelatives(child, p=1, type='joint')
            if not parent:
                return False
            parent = parent[0]
            if not pm.objectType(parent, isa='joint'):
                return False
            if parent in jointsCopy:
                jointsCopy.remove(parent)
            child = parent
        return True

    def HasSibling(self, joint):
        self.logger.debug('\trigLS > HasSibling')
        parent = pm.listRelatives(joint, p=1, type='joint')
        if not parent:
            return False
        children = pm.listRelatives(parent, c=1, type='joint')
        return (len(children) > 1)
        
#============= GET IT DONE! ============================

    def GetCompleteJointChain(self, joints):
        '''returns child most to parent most joint list'''
        self.logger.debug('\trigLS > GetCompleteJointChain')
        sortedJoints = util.GetSortedJoints(joints)
        parent = sortedJoints[-1]
        rootParent = sortedJoints[0]
        jointChain = [parent]
        while(parent != rootParent):
            parent = pm.listRelatives(parent, p=1, type='joint')[0]
            jointChain.append(parent)
        return jointChain

    def GetLongestJointChain(self, startJoint):
        self.logger.debug('\trigLS > GetLongestJointChain')
        joints = [startJoint]
        if self.HasSibling(startJoint):
            return joints
        lastPos = pm.xform(startJoint, q=1, t=1, ws=1)
        parent = pm.listRelatives(startJoint, p=1, type='joint')
        for i in range(99):
            if not parent:
                break
            parent = parent[0]
            curPos = pm.xform(parent, q=1, t=1, ws=1)
            if self._RoundVector(curPos) == self._RoundVector(lastPos):
                break
            joints.append(parent)
            if self.HasSibling(parent):
                break
            parent = pm.listRelatives(parent, p=1, type='joint')
            lastPos = curPos[:]
        return joints[::-1]
    
    def _RoundVector(self, vec):
        newVec = []
        for i in range(3):
            newVec.append(round(vec[i], 5))
        return newVec

    def GetJointBranch(self, startJoint):
        self.logger.debug('\trigLS > GetJointBranch')
        joints = [startJoint]
        parent = pm.listRelatives(startJoint, p=1, type='joint')
        if not parent:
            return [startJoint]
        for child in pm.listRelatives(parent[0], c=1, type='joint'):
            if not pm.listRelatives(child, c=1, type='joint'):
                if child not in joints:
                    joints.append(child)
        return joints

#=============  ============================








