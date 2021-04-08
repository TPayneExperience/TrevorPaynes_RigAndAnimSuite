
import pymel.core as pm

import Common.Logger as log
reload(log)
import Common.General_Utilities as genUtil
reload(genUtil)
import Control as ctr
reload(ctr)
# import Common.Rig_Utilities as rigUtil
# reload(rigUtil)
# import Data.Rig_Data as rigData
# reload(rigData)

class Group:
    @staticmethod
    def _Add(index, groupName):
        group = pm.group(em=1, w=1)
        genUtil.AbstractInitializer(group, 'Group')
        group.groupType.set(groupName)
        group.index.set(index)
        ctr.Control.Add(group)
        return group

    @staticmethod
    @log.static_decorator
    def AddJointGroup(index, joint):
        group = Group._Add(index, 'Joint')
        pm.connectAttr(joint.group, group.joint)
        pm.parent(group, joint)
        pm.xform(group, t=(0,0,0), ro=(0,0,0), s=(1,1,1))
        return group
    
    @staticmethod
    @log.static_decorator
    def AddLimbGroup(index, groupName, limb):
        group = Group._Add(index, groupName)
        pm.connectAttr(limb.limbGroups, group.limb)
        pm.parent(group, limb)
        return group
    
    @staticmethod
    @log.static_decorator
    def Remove(group):
        # missing remove control??/
        pm.delete(group)
    