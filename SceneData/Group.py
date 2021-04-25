
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
    def _Add(rigRoot, index, groupType):
        group = pm.group(em=1, w=1)
        genUtil.AbstractInitializer(group, 'Group')
        group.groupType.set(groupType)
        group.groupIndex.set(index)
        ctr.Control.Add(rigRoot, group)
        return group

    @staticmethod
    def AddJointGroup(rigRoot, index, joint):
        log.funcFileDebug()
        group = Group._Add(rigRoot, index, 'Joint')
        pm.connectAttr(joint.group, group.joint)
        pm.parent(group, joint)
        pm.xform(group, t=(0,0,0), ro=(0,0,0), s=(1,1,1))
        return group
    
    @staticmethod
    def AddLimbGroup(rigRoot, index, groupType, limb):
        log.funcFileDebug()
        group = Group._Add(rigRoot, index, groupType)
        pm.connectAttr(limb.limbGroups, group.limb)
        pm.parent(group, limb)
        return group
    
    @staticmethod
    def Remove(group):
        log.funcFileDebug()
        # missing remove control??/
        pm.delete(group)
    