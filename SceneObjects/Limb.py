
import pymel.core as pm

import Common.Logger as log
reload(log)
import Common.General_Utilities as genUtil
reload(genUtil)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)
import Data.Rig_Data as rigData
reload(rigData)
import Joint as jnt
reload(jnt)
import Group as grp
reload(grp)

class Limb:
    @staticmethod
    def _Add(rigRoot):
        limbID = rigRoot.nextLimbID.get()
        rigRoot.nextLimbID.set(limbID + 1)
        pfrsName = 'Limb%03d' % limbID
        limbGroup = pm.listConnections(rigRoot.limbsParentGroup)[0]
        limb = pm.group(name=pfrsName, em=1, p=limbGroup)
        genUtil.AbstractInitializer(limb, 'Limb')
        limb.pfrsName.set(pfrsName)
        limb.ID.set(limbID)
        rigUtil.ChannelBoxAttrs(limb, 0, 0, 0, 0)
        pm.connectAttr(rigRoot.limbs, limb.rigRoot)
        return limb
    
    @staticmethod
    def _AddJoints(limb, joints):
        for i in range(len(joints)):
            joint = joints[i]
            jnt.Joint.Add(i, limb, joint)

    @staticmethod
    @log.static_decorator
    def AddEmpty(rigRoot):
        limb = Limb._Add(rigRoot)
        limb.bhvType.set(rigData.LIMB_TYPES[0])
        group = grp.Group.AddLimbGroup(0, 'Empty', limb)
        pm.connectAttr(limb.parentableGroups, group.parentable)
        return limb

    @staticmethod
    @log.static_decorator
    def AddOneJointBranch(rigRoot, joints):
        limb = Limb._Add(rigRoot)
        limb.bhvType.set(rigData.LIMB_TYPES[1])
        Limb._AddJoints(limb, joints)
        return limb

    @staticmethod
    @log.static_decorator
    def AddTwoJointBranch(rigRoot, joints):
        limb = Limb._Add(rigRoot)
        limb.bhvType.set(rigData.LIMB_TYPES[2])
        Limb._AddJoints(limb, joints)
        return limb

    @staticmethod
    @log.static_decorator
    def AddTwoJointChain(rigRoot, joints):
        limb = Limb._Add(rigRoot)
        limb.bhvType.set(rigData.LIMB_TYPES[3])
        Limb._AddJoints(limb, joints)
        return limb

    @staticmethod
    @log.static_decorator
    def AddThreeJointChain(rigRoot, joints):
        limb = Limb._Add(rigRoot)
        limb.bhvType.set(rigData.LIMB_TYPES[4])
        Limb._AddJoints(limb, joints)
        return limb
