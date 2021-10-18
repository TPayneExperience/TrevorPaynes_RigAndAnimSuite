

import pymel.core as pm

import Utilities.Logger as log
import Utilities.General_Utilities as genUtil
import Utilities.Rig_Utilities as rigUtil
import Data.Rig_Data as rigData
import SceneData.Joint as jnt
import SceneData.Group as grp

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
        pm.setAttr(limb.v, l=0)
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
        limb.limbType.set(0)
        genUtil.UpdateLimbName(rigRoot, limb)
        return limb

    @staticmethod
    def AddOneJointBranch(rigRoot, joints):
        log.funcFileDebug()
        limb = Limb._Add(rigRoot)
        limb.limbType.set(1)
        Limb._AddJoints(rigRoot, limb, joints)
        genUtil.UpdateLimbName(rigRoot, limb)
        return limb

    @staticmethod
    def AddTwoJointBranch(rigRoot, joints):
        log.funcFileDebug()
        limb = Limb._Add(rigRoot)
        limb.limbType.set(2)
        Limb._AddJoints(rigRoot, limb, joints)
        genUtil.UpdateLimbName(rigRoot, limb)
        return limb

    @staticmethod
    def AddTwoJointChain(rigRoot, joints):
        log.funcFileDebug()
        limb = Limb._Add(rigRoot)
        limb.limbType.set(3)
        Limb._AddJoints(rigRoot, limb, joints)
        genUtil.UpdateLimbName(rigRoot, limb)
        return limb

    @staticmethod
    def AddThreeJointChain(rigRoot, joints):
        log.funcFileDebug()
        limb = Limb._Add(rigRoot)
        limb.limbType.set(4)
        Limb._AddJoints(rigRoot, limb, joints)
        genUtil.UpdateLimbName(rigRoot, limb)
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

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"

