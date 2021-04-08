
import json
import inspect
import os
import sys

import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

# !!! Functions used ACROSS MULTIPLE OPERATIONS !!!

#=========== GET CONTROLS ====================================

def SetLayerState(layerName, isVisible, isReference):
    layer = pm.ls(layerName, type='displayLayer')[0]
    # Maya Bug: Layer Editor won't refresh buttons
    if isReference:
        layer.displayType.set(2) # 2 = reference, 0 = default
    else:
        layer.displayType.set(0)
    layer.visibility.set(isVisible) # 0 = off, 1 = on

#=========== CHANNEL BOX ====================================

def ChannelBoxAttrs(xform, t, r, s, v):
    for attr in ('.tx', '.ty', '.tz'):
        pm.setAttr(xform + attr, l=(not t), k=t)
    for attr in ('.rx', '.ry', '.rz'):
        pm.setAttr(xform + attr, l=(not r), k=r)
    for attr in ('.sx', '.sy', '.sz'):
        pm.setAttr(xform + attr, l=(not s), k=s)
    pm.setAttr(xform + '.v', l=(not v), k=v)

def ResetAttrs(xform):
    for attr in ('.tx', '.ty', '.tz', '.rx', '.ry', '.rz'):
        pm.setAttr(xform + attr, 0)
    for attr in ('.sx', '.sy', '.sz'):
        pm.setAttr(xform + attr, 1)

#=========== CREATION ====================================

def SortGroups(groups):
    temp = {}
    for group in groups:
        temp[group.index.get()] = group
    return [temp[i] for i in sorted(temp.keys())]
    
def GetParentableGroupsOfParent(limb):
    parents = pm.listConnections(limb.limbParent)
    if not parents:
        return []
    parent = parents[0]
    groups = pm.listConnections(parent.parentableGroups)
    return SortGroups(groups)

def GetLimbCreationOrder(rootLimb):
    '''Returns ordered list of limbs: ROOT TO bottom most CHILD'''
    orderedLimbs = [rootLimb]
    parents = [rootLimb]
    while(parents):
        children = []
        for parent in parents:
            children += sorted(pm.listConnections(parent.limbChildren))
        parents = children[:]
        orderedLimbs += children[:]
    return orderedLimbs

#=========== MISC ====================================



# def GetSortedJoints(joints):
#     temp = {} # LongName : joint
#     for joint in joints:
#         temp[joint.longName()] = joint
#     return [temp[i] for i in sorted(temp.keys())]

# def ConstraintGroupToParentControl(limb, group):
#     parents = pm.listConnections(limb.limbParent)
#     if not parents:
#         return 
#     parent = parents[0]
#     bhvType = parent.bhvType.get()
#     if bhvType in rigData.EMPTY_BHV_INDEXES:
#         parentControl = util.GetEmptyControl(parent)
#     else:
#         index = limb.limbParentJoint.get()
#         parentControl = util.GetAllJointControls(parent, 1)[index]
#     pm.parentConstraint(parentControl, childGroup, mo=1)

# def Bind_FK_Joints(limb):
#     joints = util.GetSortedLimbJoints(limb)
#     bhvType = limb.bhvType.get()
#     if bhvType in rigData.REVERSE_BHV_INDEXES:
#         joints = joints[::-1]
#     for joint in joints:
#         control = util.GetJointControl(joint)
#         pm.parentConstraint(control, joint, mo=1)


# #=========== GET CONTROLS ====================================

# # ALL CONTROLS
# def GetUsedControls(limb, isSorted):
#     if limb.bhvType.get() in rigData.EMPTY_BHV_INDEXES:
#         return [GetEmptyControl(limb)]
#     return GetUsedLimbControls(limb) + GetUsedJointControls(limb, isSorted)

# def GetAllControls(limb, isSorted):
#     if limb.bhvType.get() in rigData.EMPTY_BHV_INDEXES:
#         return [GetEmptyControl(limb)]
#     return GetAllLimbControls(limb) + GetAllJointControls(limb, isSorted)

# # LIMB CONTROLS
# def GetUsedLimbControls(limb):
#     bhvType = limb.bhvType.get()
#     if bhvType in rigData.EMPTY_BHV_INDEXES:
#         return [GetEmptyControl(limb)]
#     if bhvType in rigData.IK_PV_BHV_INDEXES:
#         return [GetIKPV1Control(limb)]
#         # return [GetIKPV1Control(limb), GetIKPV2Control(limb)]
#     if bhvType in rigData.LOOK_AT_BHV_INDEXES:
#         return [GetLookAtControl(limb)]
#     return []

# def GetAllLimbControls(limb):
#     bhvType = limb.bhvType.get()
#     if bhvType in rigData.EMPTY_BHV_INDEXES:
#         return [GetEmptyControl(limb)]
#     controls = []
#     controls.append(GetIKPV1Control(limb))
#     # controls.append(GetIKPV2Control(limb))
#     controls.append(GetLookAtControl(limb))
#     return controls

# # JOINT CONTROLS
# def GetUsedJointControls(limb, isSorted):
#     bhvType = limb.bhvType.get()
#     if bhvType not in rigData.JOINT_CONTROL_INDEXES:
#         return []
#     controls = GetAllJointControls(limb, isSorted)
#     if bhvType in rigData.REVERSE_BHV_INDEXES:
#         controls = controls[::-1]
#     if bhvType in rigData.RFK_BHV_INDEXES:
#         controls = [controls[0]]
#     return controls

# def GetAllJointControls(limb, isSorted):
#     if isSorted:
#         joints = GetSortedLimbJoints(limb)
#     else:
#         joints = pm.listConnections(limb.joints)
#     return [GetJointControl(j) for j in joints]

# # LOOK AT, IKPV, EMPTY, JOINT CONTROLS
# def GetLookAtControl(limb):
#     group = pm.listConnections(limb.bhvLookAtGroup)[0]
#     return pm.listConnections(group.control)[0]

# def GetIKPV1Control(limb):
#     group = pm.listConnections(limb.bhvIKPV1Group)[0]
#     return pm.listConnections(group.control)[0]

# def GetIKPV2Control(limb):
#     pass

# def GetEmptyControl(limb):
#     group = pm.listConnections(limb.bhvEmptyGroup)[0]
#     return pm.listConnections(group.control)[0]

# def GetJointControl(joint):
#     group = pm.listConnections(joint.group)[0]
#     return pm.listConnections(group.control)[0]

#=========== GET MISC ====================================

# def GetUsedJointGroups(limb, isSorted):
#     pass

# def GetAllJointGroups(limb, isSorted):
#     if isSorted:
#         joints = GetSortedLimbJoints(limb)
#     else:
#         joints = pm.listConnections(limb.joints)
#     return [pm.listConnections(j.group)[0] for j in joints]

# def GetAllLimbGroups(limb):
#     if limb.bhvType.get() in rigData.EMPTY_BHV_INDEXES:
#         return pm.listConnections(limb.bhvEmptyGroup)
#     groups = pm.listConnections(limb.bhvIKPV1Group)
#     groups += pm.listConnections(limb.bhvLookAtGroup)
#     return groups

# def GetAllLimbs(rigRoot):
#     limbs = pm.listConnections(rigRoot.jointLimbs)
#     limbs += pm.listConnections(rigRoot.emptyLimbs)
#     return limbs

# def GetSortedLimbJoints(limb):
#     temp = {}
#     for joint in pm.listConnections(limb.joints):
#         temp[joint.jointIndex.get()] = joint
#     return [temp[i] for i in sorted(temp.keys())]
