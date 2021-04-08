
import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Common.Logger as log
reload(log)
import Data.Rig_Data as rigData
reload(rigData)
import SceneObjects.Limb as lmb
reload(lmb)

class LimbSetup(absOp.Abstract_Operation):
    isRigBuilt = False
    validRigStates = (0, )      # 0 = Setup, 1 = Anim
    requiredLicense = 0         # 0 = Free, 1 = Personal, 2 = Pro
    controlLayerState = (0, 0)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef

    @staticmethod
    def JointTool():
        pm.mel.eval('JointTool()')


#============= RELATIONSHIP ============================

    @staticmethod
    @log.static_decorator
    def _GetLimbFuncForJoints(joints):
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


#============= RELATIONSHIP ============================

    @staticmethod
    @log.static_decorator
    def _AreJointsSiblings(joints):
        isBranch = True
        parent1 = pm.listRelatives(joints[0], p=1, type='joint')
        for joint in joints[1:]:
            parent2 = pm.listRelatives(joint, p=1, type='joint')
            if (parent1 != parent2):
                isBranch = False
        return isBranch
    
    @staticmethod
    @log.static_decorator
    def _AreJointsChained(joints):
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
    @log.static_decorator
    def _HasSibling(joint):
        parent = pm.listRelatives(joint, p=1, type='joint')
        if not parent:
            return False
        children = pm.listRelatives(parent, c=1, type='joint')
        return (len(children) > 1)
        
    @staticmethod
    @log.static_decorator
    def _GetCompleteJointChain(joints):
        sortedJoints = LimbSetup._GetSortedJoints(joints)
        parent = sortedJoints[-1]
        rootParent = sortedJoints[0]
        jointChain = [parent]
        while(parent != rootParent):
            parent = pm.listRelatives(parent, p=1, type='joint')[0]
            jointChain.append(parent)
        return jointChain

    @staticmethod
    @log.static_decorator
    def _GetSortedJoints(joints):
        temp = {}
        for joint in joints:
            temp[joint.longName()] = joint
        return [temp[n] for n in sorted(list(temp.keys()))]


