
import pymel.core as pm

import Common.Logger as log
reload(log)
import Common.General_Utilities as genUtil
reload(genUtil)
# import Common.Rig_Utilities as rigUtil
# reload(rigUtil)
import Data.Rig_Data as rigData
reload(rigData)

import Group as grp
reload(grp)

class Joint:
    @staticmethod
    @log.static_decorator
    def Add(index, limb, joint):
        genUtil.AbstractInitializer(joint, 'Joint')
        groups = pm.listConnections(joint.group)
        if groups:
            group = groups[0]
            genUtil.AbstractInitializer(group, 'Group')
            group.index.set(index)
            pm.disconnectAttr(group.parentable)
        else:
            group = grp.Group.AddJointGroup(index, joint)
        pm.connectAttr(limb.parentableGroups, group.parentable)
        pm.connectAttr(limb.joints, joint.limb)
        pm.editDisplayLayerMembers(rigData.JOINTS_LAYER, 
                                        joint, nr=1)
    
    @staticmethod
    @log.static_decorator
    def Remove(joint):
        pm.disconnectAttr(joint.limb)
    
    