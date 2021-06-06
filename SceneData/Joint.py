
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

        # Joint Setup
        pm.editDisplayLayerMembers(rigData.JOINTS_DISP_LAYER, 
                                        joint, nr=1)
        genUtil.AbstractInitializer(joint, 'Joint')
        nextJointID = rigRoot.nextJointID.get()
        rigRoot.nextJointID.set(nextJointID + 1)
        joint.ID.set(nextJointID)
        pm.connectAttr(limb.joints, joint.limb)

        # Group Setup
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

        # Loc Setup
        locs = pm.listConnections(joint.loc)
        if not locs:
            loc = pm.spaceLocator()
            pm.addAttr(loc, ln='joint', dt='string')
            pm.connectAttr(joint.loc, loc.joint)
            loc.v.set(0)
        else:
            loc = locs[0]
        pm.parent(loc, limb)
        
    
    @staticmethod
    def Remove(joint):
        log.funcFileDebug()
        group = pm.listConnections(joint.group)[0]
        pm.parent(group, joint)
        pm.disconnectAttr(joint.limb)
    
    