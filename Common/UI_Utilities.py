
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)

import SceneData.RigRoot as rrt
reload(rrt)

# enable = for mult rigs
# pm.treeView(widget, e=1, removeAll=1) # call in parent ui
def PopulateLimbHier(widget, curRigRoot): 
    pm.treeView(widget, e=1, removeAll=1)
    limbIDs = {}
    rootLimbs = []
    for root in rrt.RigRoot.GetAll():
        for limb in pm.listConnections(root.limbs):
            if not pm.listConnections(limb.limbParent):
                rootLimbs.append(limb)
    for rootLimb in rootLimbs[::-1]:
        for limb in rigUtil.GetLimbCreationOrder(rootLimb):
            root = pm.listConnections(limb.rigRoot)[0]
            rootID = root.ID.get()
            prefix = root.prefix.get()
            limbID = '%d_%d' % (rootID, limb.ID.get())
            limbIDs[limbID] = limb
            name = '%s_%s' % (prefix, limb.pfrsName.get())
            parent = pm.listConnections(limb.limbParent)
            parentID = ''
            if parent:
                parent = parent[0]
                parentRoot = pm.listConnections(parent.rigRoot)[0]
                parentRootID = parentRoot.ID.get()
                parentID = '%d_%d' % (parentRootID, parent.ID.get())
            if root.rigMode.get() == 0: # Setup Rig
                enable = limb.enableLimb.get()
            elif root.rigMode.get() == 1: # Animate Rig
                enable = (root == curRigRoot)
            pm.treeView(widget, e=1, ai=(limbID, parentID))
            pm.treeView(widget, e=1, enl=(limbID, enable))
            pm.treeView(widget, e=1, dl=(limbID, name))
            side = rigData.LIMB_SIDES[limb.side.get()]
            if (side == 'L'):
                pm.treeView(widget, e=1, bti=(limbID, 1, side),
                        lbc=(limbID, 0.1, 0.1, 0.3))
            elif (side == 'R'):
                pm.treeView(widget, e=1, bti=(limbID, 1, side),
                        lbc=(limbID, 0.3, 0.1, 0.1))
            else:
                pm.treeView(widget, e=1, bvf=(limbID, 1, 0))
    return limbIDs

def PopulateControlHier(widget, limb):
    groups = {} # index : group
    for group in pm.listConnections(limb.usedGroups):
        groupID = str(group.groupIndex.get())
        groups[groupID] = group
    
    for i in range(len(groups)):
        group = groups[str(i)]
        control = pm.listConnections(group.control)[0]
        name = control.shortName()
        pm.treeView(widget, e=1, addItem=(str(i), ''))
        pm.treeView(widget, e=1, displayLabel=(str(i), name))
        enable = group.enableGroup.get()
        pm.treeView(widget, e=1, enl=(str(i), enable))
    return groups

def PopluateJointHier(widget, limb):
    joints = {} # index : joint
    for joint in pm.listConnections(limb.joints):
        group = pm.listConnections(joint.group)[0]
        groupID = str(group.groupIndex.get())
        joints[groupID] = joint
    for i in range(len(joints)):
        joint = joints[str(i)]
        name = joint.pfrsName.get()
        pm.treeView(widget, e=1, addItem=(str(i), ''))
        pm.treeView(widget, e=1, displayLabel=(str(i), name))
    return joints






