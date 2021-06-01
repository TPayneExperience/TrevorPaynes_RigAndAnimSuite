
import pymel.core as pm

import Utilities.Logger as log
reload(log)
import Utilities.General_Utilities as genUtil
reload(genUtil)
import Control as ctr
reload(ctr)
import Data.General_Data as genData
reload(genData)

class Group:
    @staticmethod
    def _Add(rigRoot, index, groupType):
        group = pm.group(em=1, w=1)
        genUtil.AbstractInitializer(group, 'Group')
        group.groupType.set(groupType)
        group.groupIndex.set(index)
        ctr.Control.Add(rigRoot, group)
        return group

    @staticmethod
    def AddJointGroup(rigRoot, index, limb, joint):
        log.funcFileDebug()
        group = Group._Add(rigRoot, index, 'Joint')
        pm.connectAttr(joint.group, group.joint)
        pm.parent(group, joint)
        pm.xform(group, t=(0,0,0), ro=(0,0,0), s=(1,1,1))
        pm.parent(group, limb)
        return group
    
    @staticmethod
    def AddLimbGroup(rigRoot, index, groupType, limb):
        log.funcFileDebug()
        group = Group._Add(rigRoot, index, groupType)
        pm.connectAttr(limb.limbGroups, group.limb)
        pm.parent(group, limb)
        return group

    @staticmethod
    def AddAnimGroup(limb, animName):
        log.funcFileDebug()
        hide = genData.HIDE_ATTRS

        group = pm.group(n='AnimGroup_%s_#' % animName, em=1, w=1)
        pm.addAttr(group, ln='pfrsName', dt='string', h=hide)
        pm.addAttr(group, ln='limb', dt='string', h=hide)

        group.pfrsName.set(animName)
        pm.connectAttr(limb.animGroups, group.limb)
        pm.parent(group, limb)
        return group

    @staticmethod
    def Remove(group):
        log.funcFileDebug()
        # missing remove control??/
        pm.delete(group)
    