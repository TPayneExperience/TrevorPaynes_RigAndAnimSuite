
from collections import OrderedDict
import imp

import pymel.core as pm

import Data.Rig_Data as rigData
#imp.reload(rigData)
import Utilities.Rig_Utilities as rigUtil
#imp.reload(rigUtil)
import Utilities.General_Utilities as genUtil
#imp.reload(genUtil)
import Utilities.Skin_Utilities as skinUtil
#imp.reload(skinUtil)
import SceneData.RigRoot as rrt
#imp.reload(rrt)

def PopulateLimbHierNormal(widget, currentRigRoot, allRigRoots): 
    pm.treeView(widget, e=1, removeAll=1)
    limbIDs = OrderedDict() # rigRootID_limbID : limb
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
            flatLimbID = '%d_%d_FFFFF' % (rigRootID, limb.ID.get())
            limbIDs[flatLimbID] = limb
            pm.treeView(widget, e=1, ai=(flatLimbID, ''))
            pm.treeView(widget, e=1, dl=(flatLimbID, name))
            pm.treeView(widget, e=1, iv=(flatLimbID, 0))
            side = rigData.LIMB_SIDES[limb.side.get()]
            if (side == 'L'):
                pm.treeView(widget, e=1, bti=(limbID, 1, side),
                        lbc=(limbID, 0.1, 0.1, 0.3))
                pm.treeView(widget, e=1, bti=(flatLimbID, 1, side),
                        lbc=(flatLimbID, 0.1, 0.1, 0.3))
            elif (side == 'R'):
                pm.treeView(widget, e=1, bti=(limbID, 1, side),
                        lbc=(limbID, 0.3, 0.1, 0.1))
                pm.treeView(widget, e=1, bti=(flatLimbID, 1, side),
                        lbc=(flatLimbID, 0.3, 0.1, 0.1))
            else:
                pm.treeView(widget, e=1, bvf=(limbID, 1, 0))
                pm.treeView(widget, e=1, bvf=(flatLimbID, 1, 0))
    return limbIDs

def PopulateLimbHierSkeletal(widget, rigRoot): 
    limbIDs = OrderedDict()
    limbs = pm.listConnections(rigRoot.limbs)
    limbParents = genUtil.GetDefaultLimbHier(limbs)
    limbs = skinUtil.GetSkeletalLimbOrder(limbs)
    rigRootID = rigRoot.ID.get()
    rootName = rigRoot.pfrsName.get()

    pm.treeView(widget, e=1, removeAll=1)
    for limb in limbs:
        limbID = '%d_%d' % (rigRootID, limb.ID.get())
        limbIDs[limbID] = limb
        name = '%s_%s' % (rootName, limb.pfrsName.get())
        parent = limbParents[limb]
        parentID = ''
        if parent:
            parentID = '%d_%d' % (rigRootID, parent.ID.get())
        pm.treeView(widget, e=1, ai=(limbID, parentID))
        pm.treeView(widget, e=1, dl=(limbID, name))
        flatLimbID = '%d_%d_FFFFF' % (rigRootID, limb.ID.get())
        limbIDs[flatLimbID] = limb
        pm.treeView(widget, e=1, ai=(flatLimbID, ''))
        pm.treeView(widget, e=1, dl=(flatLimbID, name))
        pm.treeView(widget, e=1, iv=(flatLimbID, 0))
        side = rigData.LIMB_SIDES[limb.side.get()]
        if (side == 'L'):
            pm.treeView(widget, e=1, bti=(limbID, 1, side),
                    lbc=(limbID, 0.1, 0.1, 0.3))
            pm.treeView(widget, e=1, bti=(flatLimbID, 1, side),
                    lbc=(flatLimbID, 0.1, 0.1, 0.3))
        elif (side == 'R'):
            pm.treeView(widget, e=1, bti=(limbID, 1, side),
                    lbc=(limbID, 0.3, 0.1, 0.1))
            pm.treeView(widget, e=1, bti=(flatLimbID, 1, side),
                    lbc=(flatLimbID, 0.3, 0.1, 0.1))
        else:
            pm.treeView(widget, e=1, bvf=(limbID, 1, 0))
            pm.treeView(widget, e=1, bvf=(flatLimbID, 1, 0))
    return limbIDs

def PopulateControlHier(widget, limb):
    groups = OrderedDict() # index : group
    for group in pm.listConnections(limb.usedGroups):
        groupID = str(group.groupIndex.get())
        groups[groupID] = group
    
    for index in sorted(groups.keys()):
        group = groups[index]
        control = pm.listConnections(group.control)[0]
        name = control.shortName()
        pm.treeView(widget, e=1, addItem=(index, ''))
        pm.treeView(widget, e=1, displayLabel=(index, name))
    return groups

def PopulateJointHier(widget, limb):
    joints = OrderedDict() # index : joint
    for joint in pm.listConnections(limb.joints):
        group = pm.listConnections(joint.group)[0]
        groupID = str(group.groupIndex.get())
        joints[groupID] = joint
    for groupID in sorted(joints.keys()):
        joint = joints[groupID]
        name = joint.pfrsName.get()
        pm.treeView(widget, e=1, addItem=(groupID, ''))
        pm.treeView(widget, e=1, displayLabel=(groupID, name))
    return joints

def PopulateAttachPointsHier(widget, rigRoot):
    attachPointDict = OrderedDict()
    group = pm.listConnections(rigRoot.attachPoints)[0]
    attachPoints = pm.listRelatives(group, c=1)
    rigRootID = rigRoot.ID.get()
    for attachPoint in attachPoints:
        apID = '%d_%d' % (rigRootID, attachPoint.ID.get())
        name = attachPoint.shortName()
        pm.treeView(widget, e=1, addItem=(apID, ''))
        pm.treeView(widget, e=1, displayLabel=(apID, name))
        attachPointDict[apID] = attachPoint
    return attachPointDict

def SetupLimbHier(limbIDDict):
    with pm.formLayout(numberOfDivisions=100) as form:
        with pm.horizontalLayout() as hl:
            pm.iconTextRadioCollection('whatever')
            b1 = pm.iconTextRadioButton( st='textOnly', 
                        l='ALL', 
                        flat=0,
                        bgc=(0.2, 0.2, 0.2),
                        sl=1)
            b2 = pm.iconTextRadioButton( st='textOnly',
                        flat=0,
                        bgc=(0.2, 0.2, 0.2),
                        l='Body')
            b3 = pm.iconTextRadioButton( st='textOnly',
                        l='Face', 
                        flat=0,
                        bgc=(0.2, 0.2, 0.2))
            b4 = pm.iconTextRadioButton( st='textOnly',
                        l='Fingers', 
                        flat=0,
                        bgc=(0.2, 0.2, 0.2))
            b5 = pm.iconTextRadioButton( st='textOnly',
                        l='Toes', 
                        flat=0,
                        bgc=(0.2, 0.2, 0.2))
            b6 = pm.iconTextRadioButton( st='textOnly',
                        l='Misc', 
                        flat=0,
                        bgc=(0.2, 0.2, 0.2))
        widget = pm.treeView(nb=1, enk=1, ams=0, adr=0, arp=0)
        pm.formLayout(form, e=2, 
            attachForm=[(hl, 'top', 2), 
                        (hl, 'left', 2), 
                        (hl, 'right', 2),
                        (widget, 'left', 2),  
                        (widget, 'right', 2),
                        (widget, 'bottom', 2)],
            attachControl=[(widget, 'top', 2, hl)]) 
        
        # CALLBACKS
        pm.iconTextRadioButton(b1, e=1, cc=pm.Callback(
                                    ApplyLimbHierFilters,
                                    widget,
                                    limbIDDict,
                                    -1))
        pm.iconTextRadioButton(b2, e=1, cc=pm.Callback(
                                    ApplyLimbHierFilters,
                                    widget,
                                    limbIDDict,
                                    0))
        pm.iconTextRadioButton(b3, e=1, cc=pm.Callback(
                                    ApplyLimbHierFilters,
                                    widget,
                                    limbIDDict,
                                    1))
        pm.iconTextRadioButton(b4, e=1, cc=pm.Callback(
                                    ApplyLimbHierFilters,
                                    widget,
                                    limbIDDict,
                                    2))
        pm.iconTextRadioButton(b5, e=1, cc=pm.Callback(
                                    ApplyLimbHierFilters,
                                    widget,
                                    limbIDDict,
                                    3))
        pm.iconTextRadioButton(b6, e=1, cc=pm.Callback(
                                    ApplyLimbHierFilters,
                                    widget,
                                    limbIDDict,
                                    4))
    return widget

def ApplyLimbHierFilters(widget, limbIDDict, mode):
    for limbID, limb in limbIDDict.items():
        if mode == -1:
            isVis = '_FFFFF' not in limbID
            pm.treeView(widget, e=1, iv=(limbID, isVis))
        elif '_FFFFF' in limbID:
            isVis = limb.limbLocation.get() == mode
            pm.treeView(widget, e=1, iv=(limbID, isVis))
        else:
            pm.treeView(widget, e=1, iv=(limbID, 0))


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"





