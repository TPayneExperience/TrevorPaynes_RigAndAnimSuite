
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
    def Add(rigRoot, index, limb, joint):
        log.funcFileDebug()
        pm.editDisplayLayerMembers(rigData.JOINTS_LAYER, 
                                        joint, nr=1)
        genUtil.AbstractInitializer(joint, 'Joint')
        pm.connectAttr(limb.joints, joint.limb)
        groups = pm.listConnections(joint.group)
        if groups:
            group = groups[0]
            genUtil.AbstractInitializer(group, 'Group')
            group.groupIndex.set(index)
            pm.disconnectAttr(group.limb)
            pm.parent(group, limb)
        else:
            group = grp.Group.AddJointGroup(rigRoot, index, limb, joint)
        pm.connectAttr(limb.jointGroups, group.limb)
        joint.pfrsName.set('Joint%03d' % (index))
    
    @staticmethod
    def Remove(joint):
        log.funcFileDebug()
        group = pm.listConnections(joint.group)[0]
        pm.parent(group, joint)
        pm.disconnectAttr(joint.limb)
    
    