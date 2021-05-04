
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
import Common.Rig_Utilities as rigUtil
reload(rigUtil)

class LimbSetup(absOp.Abstract_Operation):
    isRigBuilt = False
    validRigStates = (0, )      # 0 = Setup, 1 = Anim
    controlLayerState = (0, 0)  # isVis, isRef
    jointLayerState = (1, 0)    # isVis, isRef
    meshLayerState = (1, 1)    # isVis, isRef

#============= LIMBS ============================

    def AddJointLimb(self, rigRoot, joints):
        if not joints or type(joints) != list:
            raise ValueError('Please pass in LIST of JOINTS')
        for joint in joints:
            if pm.objectType(joint) != 'joint':
                raise ValueError('Please pass in LIST of JOINTS')
        if not self._AreJointsDisconnected(joints):
            raise ValueError('Joints must be DISCONNECTED from LIMB')
        createLimbFunc = self._GetLimbFuncForJoints(joints)
        if not createLimbFunc:
            msg = 'Joints must be either chained or siblings'
            msg += ' of same parent'
            raise ValueError(msg)
        limb = createLimbFunc(rigRoot, joints)
        self._InitBehavior(rigRoot, limb)
        return limb

    def RemoveLimbs(self, limbs):
        if not limbs or type(limbs) != list:
            raise ValueError('Please pass in LIST of LIMBS')
        for limb in limbs:
            if pm.listConnections(limb.mirrorLimb):
                self._BreakMirror(limb)
            lmb.Limb.Remove(limb)
        
    def RenameLimb(self, limb, newName):
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
        if self._LimbNamesCount(rigRoot, newName) >= 2:
            msg = 'Rig may only contain 2 limbs of the same name'
            log.error(msg)
            return False
        self._RenameLimb(limb, newName)
        return True

    def FlipSides(self, sourceLimb):
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

    def JointTool(self):
        log.funcFileDebug()
        pm.mel.eval('JointTool()')

    def RenameJoint(self, joint, newName):
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
        self._RenameJoint(rigRoot, limb, joint, newName)

#============= MISC ============================

    def _InitBehavior(self, rigRoot, limb):
        bhv.Behavior_Manager.InitLimb(limb)
        rigUtil.UpdateUsedControlMaterials(rigRoot, limb)
        # bhv.Behavior_Manager.Setup_Editable(limb)

    def _LimbNamesCount(self, rigRoot, limbName):
        limbs = pm.listConnections(rigRoot.limbs)
        names = [limb.pfrsName.get() for limb in limbs]
        return names.count(limbName)

    def _JointNamesCount(self, rigRoot, limbName):
        limbs = pm.listConnections(rigRoot.limbs)
        names = [limb.pfrsName.get() for limb in limbs]
        return names.count(limbName)

#============= RELATIONSHIP ============================

    def _BreakMirror(self, sourceLimb):
        log.funcFileDebug()
        mirrorLimb = pm.listConnections(sourceLimb.mirrorLimb)[0]
        mirrorLimb.side.set(0)
        sourceLimb.side.set(0)
        pm.disconnectAttr(sourceLimb.mirrorLimb)
        rigRoot = pm.listConnections(mirrorLimb.rigRoot)[0]
        genUtil.Name.UpdateLimbName(rigRoot, mirrorLimb)

    def _UpdateMirrorConnection(self, rigRoot, limb):
        log.funcFileDebug()
        # PAIR WITH MIRROR
        name = limb.pfrsName.get()
        allLimbs = pm.listConnections(rigRoot.limbs)
        names = [l.pfrsName.get() for l in allLimbs]
        if (names.count(name) == 2):
            for mirrorLimb in allLimbs:
                if (mirrorLimb.pfrsName.get() == name):
                    if mirrorLimb != limb:
                        break
            pm.connectAttr(limb.mirrorLimb, mirrorLimb.mirrorLimb)
            mirrorLimb.side.set(1)
            limb.side.set(2)
            rigUtil.UpdateUsedControlMaterials(rigRoot, limb)
            rigUtil.UpdateUsedControlMaterials(rigRoot, mirrorLimb)

        # BREAK MIRROR
        else:
            mirrorLimbs = pm.listConnections(limb.mirrorLimb)
            if mirrorLimbs:
                self._BreakMirror(limb)
                rigUtil.UpdateUsedControlMaterials(rigRoot, limb)
                rigUtil.UpdateUsedControlMaterials(rigRoot, mirrorLimbs[0])

    def _RenameLimb(self, sourceLimb, newName): # list should repopulate after call
        log.funcFileDebug()
        rigRoot = pm.listConnections(sourceLimb.rigRoot)[0]
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
            oldName = sourceLimb.pfrsName.get()
            for joint in pm.listConnections(sourceLimb.joints):
                jointName = joint.pfrsName.get()
                if 'Joint' in jointName or oldName in jointName:
                    group = pm.listConnections(joint.group)[0]
                    index = group.groupIndex.get()
                    indexStr = '%03d' % (index + 1)
                    joint.pfrsName.set(newName + indexStr)
        sourceLimb.pfrsName.set(newName)
        self._UpdateMirrorConnection(rigRoot, sourceLimb)
        genUtil.Name.UpdateLimbName(rigRoot, sourceLimb)
        for childLimb in pm.listConnections(sourceLimb.limbChildren):
            self._UpdateParentControlEnum(childLimb)
        return True
    
    def _RenameJoint(self, rigRoot, limb, joint, newName):
        joint.pfrsName.set(newName)
        genUtil.Name.UpdateJointName(rigRoot, limb, joint)
        for childLimb in pm.listConnections(limb.limbChildren):
            self._UpdateParentControlEnum(childLimb)

    def _AreJointsDisconnected(self, joints):
        log.funcFileDebug()
        if self._AreJointsChained(joints):
            joints = self._GetCompleteJointChain(joints)
        for joint in joints:
            if joint.hasAttr('limb') and pm.listConnections(joint.limb):
                return False
        return True

    def _AreJointsSiblings(self, joints):
        log.funcFileDebug()
        isBranch = True
        parent1 = pm.listRelatives(joints[0], p=1, type='joint')
        for joint in joints[1:]:
            parent2 = pm.listRelatives(joint, p=1, type='joint')
            if (parent1 != parent2):
                isBranch = False
        return isBranch
    
    def _AreJointsChained(self, joints):
        log.funcFileDebug()
        jointsCopy = self._GetSortedJoints(joints)
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

    def _HasSibling(self, joint):
        log.funcFileDebug()
        parent = pm.listRelatives(joint, p=1, type='joint')
        if not parent:
            return False
        children = pm.listRelatives(parent, c=1, type='joint')
        return (len(children) > 1)
        
#============= UTILS ============================

    def _GetLimbFuncForJoints(self, joints):
        log.funcFileDebug()
        if (len(joints) == 1):
            return lmb.Limb.AddOneJointBranch
        elif self._AreJointsSiblings(joints):
            return lmb.Limb.AddTwoJointBranch
        elif self._AreJointsChained(joints):
            if (len(joints) == 2):
                return lmb.Limb.AddTwoJointChain
            else:
                return lmb.Limb.AddThreeJointChain
        return None

    def _GetCompleteJointChain(self, joints):
        log.funcFileDebug()
        sortedJoints = self._GetSortedJoints(joints)
        parent = sortedJoints[-1]
        rootParent = sortedJoints[0]
        jointChain = [parent]
        while(parent != rootParent):
            parent = pm.listRelatives(parent, p=1, type='joint')[0]
            jointChain.append(parent)
        return jointChain

    def _GetSortedJoints(self, joints):
        log.funcFileDebug()
        temp = {}
        for joint in joints:
            temp[joint.longName()] = joint
        return [temp[n] for n in sorted(list(temp.keys()))]

    def _GetLongestJointChain(self, startJoint):
        log.funcFileDebug()
        joints = [startJoint]
        if self._HasSibling(startJoint):
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
            if self._HasSibling(parent):
                break
            parent = pm.listRelatives(parent, p=1, type='joint')
            lastPos = curPos[:]
        return joints[::-1]
    
    def _HasSibling(self, joint):
        log.funcFileDebug()
        parent = pm.listRelatives(joint, p=1, type='joint')
        if not parent:
            return False
        children = pm.listRelatives(parent, c=1, type='joint')
        return (len(children) > 1)
        
    def _RoundVector(self, vec):
        newVec = []
        for i in range(3):
            newVec.append(round(vec[i], 5))
        return newVec

    def _GetJointBranch(self, startJoint):
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

    def AutoBuildByHierarchy(self, rigRoot):
        log.funcFileInfo()
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
                joints = self._GetLongestJointChain(child)
                
                if len(joints) >= 3:
                    limbType = 4
                elif len(joints) == 2:
                    limbType = 3
                else:
                    joints = self._GetJointBranch(child)
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
            self._InitBehavior(rigRoot, limb)
        self._LoadSkeletalHierarchy(rigRoot)
    
    def AutoBuildByName(self, rigRoot):
        log.funcFileInfo()
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
            newLimbs[limbName] = self._GetSortedJoints(joints)
            if self._AreJointsSiblings(joints):
                if len(joints) == 1:
                    limbTypes[limbName] = 1
                else:
                    limbTypes[limbName] = 2
                continue
            if self._AreJointsChained(joints):
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
        allLimbs = {} # pfrsName : limb
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
            if limbName in allLimbs:
                mirror = allLimbs[limbName]
                pm.connectAttr(limb.mirrorLimb, mirror.mirrorLimb)
                del(allLimbs[limbName])
            genUtil.Name.UpdateLimbName(rigRoot, limb)
            self._InitBehavior(rigRoot, limb)
            allLimbs[limbName] = limb
        self._LoadSkeletalHierarchy(rigRoot)


    def _LoadSkeletalHierarchy(self, rigRoot):
        log.funcFileDebug()
        limbParents = genUtil.GetDefaultLimbHier(rigRoot)
        for child, parent in limbParents.items():
            self._ReparentLimb(child, parent)

    def _ReparentLimb(self, childLimb, parentLimb):
        log.funcFileDebug()
        pm.disconnectAttr(childLimb.limbParent)
        if parentLimb:
            pm.connectAttr(parentLimb.limbChildren, childLimb.limbParent)
        self._UpdateParentControlEnum(childLimb)
        self._UpdateParentControlIndex(childLimb)
    
    def _UpdateParentControlEnum(self, childLimb):
        log.funcFileDebug()
        parentGroups = rigUtil.GetjointGroupsOfParent(childLimb)
        if not parentGroups:
            pm.addAttr(childLimb.limbParentControl, e=1, en='None', dv=0)
            return
        parentControls = [pm.listConnections(g.control)[0] for g in parentGroups]
        parentControlNames = [c.shortName() for c in parentControls]
        namesStr = ':'.join(parentControlNames)
        pm.addAttr(childLimb.limbParentControl, e=1, en=namesStr)

    def _UpdateParentControlIndex(self, childLimb):
        log.funcFileDebug()
        parentGroups = rigUtil.GetjointGroupsOfParent(childLimb)
        if not parentGroups:
            pm.addAttr(childLimb.limbParentControl, e=1, en='None', dv=0)
            return
        parentControls = [pm.listConnections(g.control)[0] for g in parentGroups]
        parentControlNames = [c.shortName() for c in parentControls]
        namesStr = ':'.join(parentControlNames)
        pm.addAttr(childLimb.limbParentControl, e=1, en=namesStr)
        childGroups = pm.listConnections(childLimb.jointGroups)
        childGroup = rigUtil.SortGroups(childGroups)[0]
        sourcePos = pm.xform(childGroup, q=1, t=1, ws=1)
        index = self._GetClosestGroupIndex(sourcePos, parentGroups)
        childLimb.limbParentControl.set(index)

    def _GetClosestGroupIndex(self, sourcePos, groups):
        log.funcFileDebug()
        distances = {} # dist : [targetJoint1, joint2...]
        for group in groups:
            targetPos = pm.xform(group, q=1, t=1, ws=1)
            dist = 0
            for i in range(3):
                dist += (sourcePos[i]-targetPos[i])**2
            if dist not in distances:
                distances[dist] = []
            distances[dist].append(group)
        targetDist = sorted(list(distances.keys()))[0]
        group = distances[targetDist][0]
        return groups.index(group)


