
import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Common.Logger as log
reload(log)
import Data.Rig_Data as rigData
reload(rigData)
import SceneData.Limb as lmb
reload(lmb)
import Common.General_Utilities as genUtil
reload(genUtil)
import SceneData.RigRoot as rrt
reload(rrt)
import SceneData.Behavior_Manager as bhv
reload(bhv)

class LimbSetup(absOp.Abstract_Operation):
    isRigBuilt = False
    validRigStates = (0, )      # 0 = Setup, 1 = Anim
    requiredLicense = 0         # 0 = Free, 1 = Personal, 2 = Pro
    controlLayerState = (0, 0)  # isVis, isRef
    jointLayerState = (1, 0)    # isVis, isRef

#============= LIMBS ============================

    @staticmethod
    def AddJointLimb(rigRoot, joints):
        if not joints or type(joints) != list:
            raise ValueError('Please pass in LIST of JOINTS')
        for joint in joints:
            if pm.objectType(joint) != 'joint':
                raise ValueError('Please pass in LIST of JOINTS')
        if not LimbSetup._AreJointsDisconnected(joints):
            raise ValueError('Joints must be DISCONNECTED from LIMB')
        func = LimbSetup._GetLimbFuncForJoints(joints)
        if not func:
            msg = 'Joints must be either chained or siblings'
            msg += ' of same parent'
            raise ValueError(msg)
        limb = func(rigRoot, joints)
        LimbSetup._InitBehavior(limb)
        return limb

    @staticmethod
    def RemoveLimbs(limbs):
        if not limbs or type(limbs) != list:
            raise ValueError('Please pass in LIST of LIMBS')
        for limb in limbs:
            if pm.listConnections(limb.mirrorLimb):
                LimbSetup._BreakMirror(limb)
            lmb.Limb.Remove(limb)
        
    @staticmethod
    def RenameLimb(limb, newName):
        if not genUtil.Name.IsValidCharacterLength(newName):
            msg = 'Limb Name Must be 2 or more characters'
            log.error(msg)
            return False
        if not genUtil.Name.DoesNotStartWithNumber(newName):
            msg = 'Cannot start with number OR _'
            log.error(msg)
            return False
        if not genUtil.Name.AreAllValidCharacters(newName):
            msg = 'May only contain A-Z, a-z, 0-9, _'
            log.error(msg)
            return False
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        if LimbSetup._LimbNamesCount(rigRoot, newName) >= 2:
            msg = 'Rig may only contain 2 limbs of the same name'
            log.error(msg)
            return False
        LimbSetup._RenameLimb(limb, newName)
        return True

    @staticmethod
    def FlipSides(sourceLimb):
        mirrors = pm.listConnections(sourceLimb.mirrorLimb)
        if not mirrors:
            msg = 'Limb must have mirror to flip sides'
            log.error(msg)
            return
        mirrorLimb = mirrors[0]
        rigRoot = pm.listConnections(sourceLimb.rigRoot)[0]
        side1 = sourceLimb.side.get()
        side2 = mirrorLimb.side.get()
        sourceLimb.side.set(side2)
        mirrorLimb.side.set(side1)
        genUtil.Name.UpdateLimbName(rigRoot, sourceLimb)
        genUtil.Name.UpdateLimbName(rigRoot, mirrorLimb)


#============= JOINTS ============================

    @staticmethod
    def JointTool():
        log.funcFileDebug()
        pm.mel.eval('JointTool()')

    @staticmethod
    def RenameJoint(joint, newName):
        oldName = joint.pfrsName.get()
        msg = '\t"%s" to "%s"' % (oldName, newName)
        log.info(msg)
        if not genUtil.Name.IsValidCharacterLength(newName):
            msg = 'Joint Name Must be 2 or more characters'
            log.error(msg)
        if not genUtil.Name.DoesNotStartWithNumber(newName):
            msg = 'Cannot start with number OR _'
            log.error(msg)
        if not genUtil.Name.AreAllValidCharacters(newName):
            msg = 'May only contain A-Z, a-z, 0-9, _'
            log.error(msg)
        limbs = pm.listConnections(joint.limb)
        if not limbs:
            msg = 'Cannot rename joint DISCONNECTED from limb'
            log.error(msg)
        limb = limbs[0]
        joints = pm.listConnections(limb.joints)
        jointNames = [j.pfrsName.get() for j in joints]
        if newName in jointNames:
            msg = 'Every limb joint name must be UNIQUE'
            log.error(msg)
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        LimbSetup._RenameJoint(rigRoot, limb, joint, newName)

#============= MISC ============================

    @staticmethod
    def _InitBehavior(limb):
        bhv.Behavior_Manager.InitLimb(limb)
        bhv.Behavior_Manager.Setup_Editable(limb)

    @staticmethod
    def _LimbNamesCount(rigRoot, limbName):
        limbs = pm.listConnections(rigRoot.limbs)
        names = [limb.pfrsName.get() for limb in limbs]
        return names.count(limbName)

    @staticmethod
    def _JointNamesCount(rigRoot, limbName):
        limbs = pm.listConnections(rigRoot.limbs)
        names = [limb.pfrsName.get() for limb in limbs]
        return names.count(limbName)

#============= RELATIONSHIP ============================


    @staticmethod
    def _BreakMirror(sourceLimb):
        log.funcFileDebug()
        mirrorLimb = pm.listConnections(sourceLimb.mirrorLimb)[0]
        mirrorLimb.side.set(0)
        sourceLimb.side.set(0)
        pm.disconnectAttr(sourceLimb.mirrorLimb)
        rigRoot = pm.listConnections(mirrorLimb.rigRoot)[0]
        genUtil.Name.UpdateLimbName(rigRoot, mirrorLimb)

    @staticmethod
    def _RenameLimb(sourceLimb, newName): # list should repopulate after call
        log.funcFileDebug()
        rigRoot = pm.listConnections(sourceLimb.rigRoot)[0]
        limbs = pm.listConnections(rigRoot.limbs)
        names = [limb.pfrsName.get() for limb in limbs]

        # PAIR WITH MIRROR
        if (names.count(newName) == 1):
            for mirrorLimb in limbs:
                if (mirrorLimb.pfrsName.get() == newName):
                    break
            if (sourceLimb == mirrorLimb): # prevent pairing with self
                return
            pm.connectAttr(sourceLimb.mirrorLimb, mirrorLimb.mirrorLimb)
            mirrorLimb.side.set(1)
            sourceLimb.side.set(2)

        # BREAK MIRROR
        else:
            if pm.listConnections(sourceLimb.mirrorLimb):
                LimbSetup._BreakMirror(sourceLimb)
        # Rename joints if limb named as preset 'leg', 'arm'...
        if newName.lower() in rigData.LIMB_JOINT_NAME_PRESETS:
            jointNames = rigData.LIMB_JOINT_NAME_PRESETS[newName.lower()]
            for joint in pm.listConnections(sourceLimb.joints):
                group = pm.listConnections(joint.group)[0]
                index = group.groupIndex.get()
                if index < len(jointNames):
                    joint.pfrsName.set(jointNames[index])
        # Rename joints if they're default names
        else:
            oldName = limb.pfrsName.get()
            for joint in pm.listConnections(sourceLimb.joints):
                jointName = joint.pfrsName.get()
                if 'Joint' in jointName or oldName in jointName:
                    group = pm.listConnections(joint.group)[0]
                    index = group.groupIndex.get()
                    indexStr = '%03d' % (index + 1)
                    joint.pfrsName.set(newName + indexStr)
        sourceLimb.pfrsName.set(newName)
        genUtil.Name.UpdateLimbName(rigRoot, sourceLimb)
        return True
    
    @staticmethod
    def _RenameJoint(rigRoot, limb, joint, newName):
        joint.pfrsName.set(newName)
        genUtil.Name.UpdateJointName(rigRoot, limb, joint)

    @staticmethod
    def _AreJointsDisconnected(joints):
        log.funcFileDebug()
        if LimbSetup._AreJointsChained(joints):
            joints = LimbSetup._GetCompleteJointChain(joints)
        for joint in joints:
            if joint.hasAttr('limb') and pm.listConnections(joint.limb):
                return False
        return True

    @staticmethod
    def _AreJointsSiblings(joints):
        log.funcFileDebug()
        isBranch = True
        parent1 = pm.listRelatives(joints[0], p=1, type='joint')
        for joint in joints[1:]:
            parent2 = pm.listRelatives(joint, p=1, type='joint')
            if (parent1 != parent2):
                isBranch = False
        return isBranch
    
    @staticmethod
    def _AreJointsChained(joints):
        log.funcFileDebug()
        jointsCopy = LimbSetup._GetSortedJoints(joints)
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

    @staticmethod
    def _HasSibling(joint):
        log.funcFileDebug()
        parent = pm.listRelatives(joint, p=1, type='joint')
        if not parent:
            return False
        children = pm.listRelatives(parent, c=1, type='joint')
        return (len(children) > 1)
        
#============= UTILS ============================

    @staticmethod
    def _GetLimbFuncForJoints(joints):
        log.funcFileDebug()
        if (len(joints) == 1):
            return lmb.Limb.AddOneJointBranch
        elif LimbSetup._AreJointsSiblings(joints):
            return lmb.Limb.AddTwoJointBranch
        elif LimbSetup._AreJointsChained(joints):
            if (len(joints) == 2):
                return lmb.Limb.AddTwoJointChain
            else:
                return lmb.Limb.AddThreeJointChain
        return None

    @staticmethod
    def _GetCompleteJointChain(joints):
        log.funcFileDebug()
        sortedJoints = LimbSetup._GetSortedJoints(joints)
        parent = sortedJoints[-1]
        rootParent = sortedJoints[0]
        jointChain = [parent]
        while(parent != rootParent):
            parent = pm.listRelatives(parent, p=1, type='joint')[0]
            jointChain.append(parent)
        return jointChain

    @staticmethod
    def _GetSortedJoints(joints):
        log.funcFileDebug()
        temp = {}
        for joint in joints:
            temp[joint.longName()] = joint
        return [temp[n] for n in sorted(list(temp.keys()))]

    @staticmethod
    def _GetLongestJointChain(startJoint):
        log.funcFileDebug()
        joints = [startJoint]
        if LimbSetup._HasSibling(startJoint):
            return joints
        lastPos = pm.xform(startJoint, q=1, t=1, ws=1)
        parent = pm.listRelatives(startJoint, p=1, type='joint')
        for i in range(99):
            if not parent:
                break
            parent = parent[0]
            curPos = pm.xform(parent, q=1, t=1, ws=1)
            if LimbSetup._RoundVector(curPos) == LimbSetup._RoundVector(lastPos):
                break
            joints.append(parent)
            if LimbSetup._HasSibling(parent):
                break
            parent = pm.listRelatives(parent, p=1, type='joint')
            lastPos = curPos[:]
        return joints[::-1]
    
    @staticmethod
    def _HasSibling(joint):
        log.funcFileDebug()
        parent = pm.listRelatives(joint, p=1, type='joint')
        if not parent:
            return False
        children = pm.listRelatives(parent, c=1, type='joint')
        return (len(children) > 1)
        
    @staticmethod
    def _RoundVector(vec):
        newVec = []
        for i in range(3):
            newVec.append(round(vec[i], 5))
        return newVec

    @staticmethod
    def _GetJointBranch(startJoint):
        log.funcFileDebug()
        joints = [startJoint]
        parent = pm.listRelatives(startJoint, p=1, type='joint')
        if not parent:
            return [startJoint]
        for child in pm.listRelatives(parent[0], c=1, type='joint'):
            if not pm.listRelatives(child, c=1, type='joint'):
                if child not in joints:
                    joints.append(child)
        return joints


#============= AUTOBUILD ============================

    @staticmethod
    def AutoBuildByHierarchy():
        # Build Joint Parent Dictionary
        rigRoot = rrt.RigRoot.GetAll()[0]
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
        limbTypes = []
        for i in range(99):
            children = set(jointParents.keys())
            parents = set(jointParents.values())
            # Iterate through all end children,
            # solving for branches and end chains
            for child in list(children - parents):
                if child not in jointParents:
                    continue
                # Unparent CHAIN root joint + track
                joints = LimbSetup._GetLongestJointChain(child)
                
                if len(joints) >= 3:
                    limbType = 4
                elif len(joints) == 2:
                    limbType = 3
                else:
                    joints = LimbSetup._GetJointBranch(child)
                    if len(joints) == 1:
                        limbType = 1
                    else:
                        limbType = 2
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
                limbTypes.append(limbType)
                for joint in joints:
                    del(jointParents[joint])
        for parent, children in disconnectJoints.items():
            pm.parent(children, parent)
        for i in range(len(newLimbJointSets)):
            newLimbJoints = newLimbJointSets[i]
            limbType = limbTypes[i]
            if limbType == 1:
                limb = lmb.Limb.AddOneJointBranch(rigRoot, newLimbJoints)
            elif limbType == 2:
                limb = lmb.Limb.AddTwoJointBranch(rigRoot, newLimbJoints)
            elif limbType == 3:
                limb = lmb.Limb.AddTwoJointChain(rigRoot, newLimbJoints)
            elif limbType == 4:
                limb = lmb.Limb.AddThreeJointChain(rigRoot, newLimbJoints)
            LimbSetup._InitBehavior(limb)
        # AWAITING BHV IMPLEMENTATION
        # self.limbMng.ParentLimbsBySkeleton()
    
    @staticmethod
    def AutoBuildByName():
        # GROUP JOINTS AND VALIDATE NAMES
        freeJoints = []
        for joint in pm.ls(type='joint'):
            if joint.hasAttr('limb'):
                if not pm.listConnections(joint.limb):
                    freeJoints.append(joint)
            else:
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
        limbTypes = {}
        for limbName, joints in newLimbs.items():
            newLimbs[limbName] = LimbSetup._GetSortedJoints(joints)
            if LimbSetup._AreJointsSiblings(joints):
                if len(joints) == 1:
                    limbTypes[limbName] = 1
                else:
                    limbTypes[limbName] = 2
                continue
            if LimbSetup._AreJointsChained(joints):
                if len(joints) == 2:
                    limbTypes[limbName] = 3
                else:
                    limbTypes[limbName] = 4
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
        rigRoot = rrt.RigRoot.GetAll()[0]
        for indexName, joints in newLimbs.items():
            tempJoint = joints[0]
            limbName, side, j = tempJoint.shortName().split('_')
            pfrsNames = []
            for joint in joints:
                splitName = joint.shortName().split('_')
                pfrsNames.append(splitName[-1])
            limbType = limbTypes[indexName]
            if limbType == 1:
                limb = lmb.Limb.AddOneJointBranch(rigRoot, joints)
            elif limbType == 2:
                limb = lmb.Limb.AddTwoJointBranch(rigRoot, joints)
            elif limbType == 3:
                limb = lmb.Limb.AddTwoJointChain(rigRoot, joints)
            elif limbType == 4:
                limb = lmb.Limb.AddThreeJointChain(rigRoot, joints)
            for i in range(len(joints)):
                joint = joints[i]
                joint.pfrsName.set(pfrsNames[i])
            limb.pfrsName.set(limbName)
            if side.upper() == 'L':
                limb.side.set(1)
            elif side.upper() == 'R':
                limb.side.set(2)
            genUtil.Name.UpdateLimbName(rigRoot, limb)
            LimbSetup._InitBehavior(limb)
        # AWAITING BHV IMPLMEMENTATION
        # self.limbMng.ParentLimbsBySkeleton()


