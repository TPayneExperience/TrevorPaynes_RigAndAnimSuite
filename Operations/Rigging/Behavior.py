
import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Common.Logger as log
reload(log)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)
# import Data.Rig_Data as rigData
# reload(rigData)
import SceneData.Limb as lmb
reload(lmb)
import LimbSetup as ls
reload(ls)
# import Common.General_Utilities as genUtil
# reload(genUtil)
# import SceneData.RigRoot as rrt
# reload(rrt)

class Behavior(absOp.Abstract_Operation):
    isRigBuilt = False
    validRigStates = (0, 1)     # 0 = Setup, 1 = Anim
    requiredLicense = 0         # 0 = Free, 1 = Personal, 2 = Pro
    controlLayerState = (1, 1)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef

    @staticmethod
    def ReparentLimb(childLimb, parentLimb):
        # log.funcFileDebug()
        pm.disconnectAttr(childLimb.limbParent)
        if parentLimb:
            pm.connectAttr(parentLimb.limbChildren, childLimb.limbParent)
        Behavior._UpdateParentControl(childLimb)
    
    @staticmethod
    def AddEmptyLimb(rigRoot):
        # log.funcFileDebug()
        limb = lmb.Limb.AddEmpty(rigRoot)
        ls.LimbSetup._InitBehavior(limb)
        return limb

    @staticmethod
    def RemoveEmptyLimb(limb):
        log.funcFileDebug()
        lmb.Limb.Remove(limb)

    @staticmethod
    def RenameLimb(limb, newName):
        return ls.LimbSetup.RenameLimb(limb, newName)

    @staticmethod
    def _UpdateParentControl(childLimb):
        log.funcFileDebug()
        parentGroups = rigUtil.GetParentableGroupsOfParent(childLimb)
        if not parentGroups:
            pm.addAttr(childLimb.limbParentControl, e=1, en='None', dv=0)
            return
        parentControls = [pm.listConnections(g.control)[0] for g in parentGroups]
        parentControlNames = [c.shortName() for c in parentControls]
        namesStr = ':'.join(parentControlNames)
        pm.addAttr(childLimb.limbParentControl, e=1, en=namesStr)
        childGroups = pm.listConnections(childLimb.parentableGroups)
        childGroup = rigUtil.SortGroups(childGroups)[0]
        sourcePos = pm.xform(childGroup[0], q=1, t=1, ws=1)
        index = Behavior._GetClosestGroupIndex(sourcePos, parentGroups)
        childLimb.limbParentControl.set(index)

    @staticmethod
    def _GetClosestGroupIndex(sourcePos, groups):
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

