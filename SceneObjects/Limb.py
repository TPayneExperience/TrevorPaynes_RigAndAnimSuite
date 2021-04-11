
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
    def _AddJoints(rigRoot, limb, joints):
        for i in range(len(joints)):
            joint = joints[i]
            jnt.Joint.Add(rigRoot, i, limb, joint)

    @staticmethod
    def AddEmpty(rigRoot):
        log.funcFileDebug()
        limb = Limb._Add(rigRoot)
        limb.limbType.set(rigData.LIMB_TYPES[0])
        group = grp.Group.AddLimbGroup(rigRoot, 0, 'Empty', limb)
        pm.connectAttr(limb.parentableGroups, group.parentable)
        genUtil.Name.UpdateLimbName(rigRoot, limb)
        return limb

    @staticmethod
    def AddOneJointBranch(rigRoot, joints):
        log.funcFileDebug()
        limb = Limb._Add(rigRoot)
        limb.limbType.set(rigData.LIMB_TYPES[1])
        Limb._AddJoints(rigRoot, limb, joints)
        genUtil.Name.UpdateLimbName(rigRoot, limb)
        return limb

    @staticmethod
    def AddTwoJointBranch(rigRoot, joints):
        log.funcFileDebug()
        limb = Limb._Add(rigRoot)
        limb.limbType.set(rigData.LIMB_TYPES[2])
        Limb._AddJoints(rigRoot, limb, joints)
        genUtil.Name.UpdateLimbName(rigRoot, limb)
        return limb

    @staticmethod
    def AddTwoJointChain(rigRoot, joints):
        log.funcFileDebug()
        limb = Limb._Add(rigRoot)
        limb.limbType.set(rigData.LIMB_TYPES[3])
        Limb._AddJoints(rigRoot, limb, joints)
        genUtil.Name.UpdateLimbName(rigRoot, limb)
        return limb

    @staticmethod
    def AddThreeJointChain(rigRoot, joints):
        log.funcFileDebug()
        limb = Limb._Add(rigRoot)
        limb.limbType.set(rigData.LIMB_TYPES[4])
        Limb._AddJoints(rigRoot, limb, joints)
        genUtil.Name.UpdateLimbName(rigRoot, limb)
        return limb

    @staticmethod
    def Remove(limb):
        for joint in pm.listConnections(limb.joints):
            jnt.Joint.Remove(joint)
        for group in pm.listConnections(limb.limbGroups):
            grp.Group.Remove(group)
        limbPresets = pm.listConnections(limb.presets)
        pm.delete(limbPresets)
        pm.delete(limb)

