
import imp

import pymel.core as pm

import Abstracts.Abstract_Autobuild as absBld
#imp.reload(absBld)
import Utilities.Logger as log
#imp.reload(log)
import SceneData.Limb as lmb
#imp.reload(lmb)
import Utilities.Rig_Utilities as rigUtil
#imp.reload(rigUtil)
import Utilities.General_Utilities as genUtil
#imp.reload(genUtil)

class ByNames(absBld.Abstract_Autobuild):
    uiName = 'By Names | [limb]_[L/M/R]_[joint]'
    uiOrderIndex = 100
    def Execute(self, rigRoot):
        log.funcFileInfo()

        # Get All 'unlimbed' Joints
        freeJoints = []
        for joint in pm.ls(type='joint'):
            if joint.hasAttr('limb'):
                if not pm.listConnections(joint.limb):
                    freeJoints.append(joint)
            else:
                freeJoints.append(joint)

        # Validate Joint Names
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
                raise ValueError(msg)
            limbSideName = '_'.join(splitName[:-1])
            if limbSideName not in newLimbs:
                newLimbs[limbSideName] = []
            newLimbs[limbSideName].append(joint)

        # Get Limb Types + Validate
        limbTypes = {}
        for limbName, joints in newLimbs.items():
            newLimbs[limbName] = rigUtil.GetSortedJoints(joints)
            if rigUtil.Joint._AreJointsSiblings(joints):
                if len(joints) == 1:
                    limbTypes[limbName] = 1
                else:
                    limbTypes[limbName] = 2
                continue
            if rigUtil.Joint._AreJointsChained(joints):
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
            raise ValueError(msg)

        # ADD LIMBS
        unpairedLimbs = {} # pfrsName : limb
        for limb in pm.listConnections(rigRoot.limbs):
            if not pm.listConnections(limb.mirrorLimb):
                unpairedLimbs[limb.pfrsName.get()] = limb
        allLimbs = []
        for indexName, joints in newLimbs.items():
            # Store limb + joint names
            tempJoint = joints[0]
            splitJointNames = tempJoint.shortName().split('_')
            limbName = splitJointNames[0]
            side = splitJointNames[1]
            pfrsNames = []
            for joint in joints:
                splitName = joint.shortName().split('_')
                pfrsNames.append(splitName[-1])

            # Create limb
            limbType = limbTypes[indexName]
            if limbType == 1:
                limb = lmb.Limb.AddOneJointBranch(rigRoot, joints)
            elif limbType == 2:
                limb = lmb.Limb.AddTwoJointBranch(rigRoot, joints)
            elif limbType == 3:
                limb = lmb.Limb.AddTwoJointChain(rigRoot, joints)
            elif limbType == 4:
                limb = lmb.Limb.AddThreeJointChain(rigRoot, joints)

            # Set Limb + Joint Names
            limb.pfrsName.set(limbName)
            for i in range(len(joints)):
                joint = joints[i]
                joint.pfrsName.set(pfrsNames[i])

            # Connect Mirror limbs
            if limbName in unpairedLimbs:
                mirror = unpairedLimbs[limbName]
                pm.connectAttr(limb.mirrorLimb, mirror.mirrorLimb)
                del(unpairedLimbs[limbName])
                if side.upper() == 'L':
                    limb.side.set(1)
                    mirror.side.set(2)
                else:
                    limb.side.set(2)
                    mirror.side.set(1)
                genUtil.Name.UpdateLimbName(rigRoot, mirror)
            genUtil.Name.UpdateLimbName(rigRoot, limb)
            unpairedLimbs[limbName] = limb
            allLimbs.append(limb)
        return allLimbs
    