
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)
import Rig_Utilities as rigUtil
reload(rigUtil)
import General_Utilities as genUtil
reload(genUtil)
import Skin_Utilities as skinUtil
reload(skinUtil)
import SceneData.RigRoot as rrt
reload(rrt)

def PopulateLimbHierNormal(widget, currentRigRoot, allRigRoots): 
    pm.treeView(widget, e=1, removeAll=1)
    limbIDs = {} # rigRootID_limbID : limb
    rootLimbs = []
    for rigRoot in allRigRoots:
        for limb in pm.listConnections(rigRoot.limbs):
            if not pm.listConnections(limb.limbParent):
                rootLimbs.append(limb)
    for rootLimb in rootLimbs[::-1]:
        for limb in rigUtil.GetLimbCreationOrder(rootLimb):
            rigRoot = pm.listConnections(limb.rigRoot)[0]
            rigRootID = rigRoot.ID.get()
            rootName = rigRoot.pfrsName.get()
            limbID = '%d_%d' % (rigRootID, limb.ID.get())
            limbIDs[limbID] = limb
            name = '%s_%s' % (rootName, limb.pfrsName.get())
            parent = pm.listConnections(limb.limbParent)
            parentID = ''
            if parent:
                parent = parent[0]
                parentRoot = pm.listConnections(parent.rigRoot)[0]
                parentrigRootID = parentRoot.ID.get()
                parentID = '%d_%d' % (parentrigRootID, parent.ID.get())
            if rigRoot.rigMode.get() == 0: # Setup Rig
                enable = limb.enableLimb.get()
            elif rigRoot.rigMode.get() == 1: # Animate Rig
                enable = (rigRoot == currentRigRoot)
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

def PopulateLimbHierSkeletal(widget, rigRoot): 
    limbIDs = {}
    limbs = pm.listConnections(rigRoot.limbs)
    limbParents = genUtil.GetDefaultLimbHier(limbs)
    limbs = skinUtil.GetSkeletalLimbOrder(limbs)

    # OLD
    pm.treeView(widget, e=1, removeAll=1)
    for limb in limbs:
        rootName = rigRoot.pfrsName.get()
        limbID = str(limb.ID.get())
        limbIDs[limbID] = limb
        name = '%s_%s' % (rootName, limb.pfrsName.get())
        parent = limbParents[limb]
        parentID = ''
        if parent:
            parentID = str(parent.ID.get())
        pm.treeView(widget, e=1, ai=(limbID, parentID))
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
    
    for index in sorted(list(groups.keys())):
        group = groups[index]
        control = pm.listConnections(group.control)[0]
        name = control.shortName()
        pm.treeView(widget, e=1, addItem=(index, ''))
        pm.treeView(widget, e=1, displayLabel=(index, name))
    return groups

def PopulateJointHier(widget, limb):
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


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"





