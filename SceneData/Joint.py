
import pymel.core as pm

import Utilities.Logger as log
reload(log)
import Utilities.General_Utilities as genUtil
reload(genUtil)
# import Utilities.Rig_Utilities as rigUtil
# reload(rigUtil)
import Data.Rig_Data as rigData
reload(rigData)

import Group as grp
reload(grp)

class Joint:
    @staticmethod
    def Add(rigRoot, index, limb, joint):
        log.funcFileDebug()
        pm.editDisplayLayerMembers(rigData.JOINTS_DISP_LAYER, 
                                        joint, nr=1)
        genUtil.AbstractInitializer(joint, 'Joint')
        nextJointID = rigRoot.nextJointID.get()
        rigRoot.nextJointID.set(nextJointID + 1)
        joint.ID.set(nextJointID)
        pm.connectAttr(limb.joints, joint.limb)
        groups = pm.listConnections(joint.group)
        if groups:
            group = groups[0]
            genUtil.AbstractInitializer(group, 'Group')
            group.groupIndex.set(index)
            pm.disconnectAttr(group.limb)
            # pm.parent(group, limb)
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
    
    @staticmethod
    def Delete(joint):
        log.funcFileDebug()
        groups = pm.listConnections(joint.group)
        if groups:
            group = groups[0]
            grp.Group.Remove(group)
        children = pm.listRelatives(joint, c=1, type='joint')
        if children:
            parents = pm.listRelatives(joint, p=1)
            if parents:
                parent = parents[0]
                pm.parent(children, parent)
            else:
                pm.parent(children, w=1)
        pm.delete(joint)
    
    