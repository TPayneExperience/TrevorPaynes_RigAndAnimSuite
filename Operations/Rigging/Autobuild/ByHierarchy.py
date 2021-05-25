
import pymel.core as pm

import Abstracts.Abstract_Autobuild as absBld
reload(absBld)
import Utilities.Logger as log
reload(log)
import SceneData.Limb as lmb
reload(lmb)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)

class ByHierarchy(absBld.Abstract_Autobuild):
    uiName = 'By Hierarchy'
    orderIndex = 200
    def Execute(self, rigRoot):
        log.funcFileInfo()
        # Build Joint Parent Dictionary
        jointParents = {}   # childJoint : parentJoint
        for joint in pm.ls(type='joint'):
            if joint.hasAttr('limb'):
                if pm.listConnections(joint.limb):
                    continue
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
                joints = rigUtil.Joint._GetLongestJointChain(child)
                
                if len(joints) >= 3:
                    limbType = 4
                elif len(joints) == 2:
                    limbType = 3
                else:
                    joints = rigUtil.Joint._GetJointBranch(child)
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
                    if joint in jointParents:
                        del(jointParents[joint])
        for parent, children in disconnectJoints.items():
            pm.parent(children, parent)
        limbs = []
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
            limbs.append(limb)
        return limbs
    