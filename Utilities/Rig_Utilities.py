

import pymel.core as pm


#=========== JOINTS ====================================

def GetJointBranch(startJoint):
    joints = [startJoint]
    parent = pm.listRelatives(startJoint, p=1, type='joint')
    if not parent:
        return [startJoint]
    for child in pm.listRelatives(parent[0], c=1, type='joint'):
        if not pm.listRelatives(child, c=1, type='joint'):
            if child not in joints:
                joints.append(child)
    return joints

def GetLongestJointChain(startJoint):
    joints = [startJoint]
    if _HasSibling(startJoint):
        return joints
    lastPos = pm.xform(startJoint, q=1, t=1, ws=1)
    parent = pm.listRelatives(startJoint, p=1, type='joint')
    for i in range(99):
        if not parent:
            break
        parent = parent[0]
        if parent.hasAttr('limb'):
            if pm.listConnections(parent.limb):
                break
        curPos = pm.xform(parent, q=1, t=1, ws=1)
        if _RoundVector(curPos) == _RoundVector(lastPos):
            break
        joints.append(parent)
        if _HasSibling(parent):
            break
        parent = pm.listRelatives(parent, p=1, type='joint')
        lastPos = curPos[:]
    return joints[::-1]

def AreJointsSiblings(joints):
    isBranch = True
    parent1 = pm.listRelatives(joints[0], p=1, type='joint')
    for joint in joints[1:]:
        parent2 = pm.listRelatives(joint, p=1, type='joint')
        if (parent1 != parent2):
            isBranch = False
    return isBranch

def AreJointsChained(joints):
    jointsCopy = GetSortedJoints(joints)
    child = jointsCopy[-1]
    jointsCopy.remove(child)
    while (jointsCopy):
        parent = pm.listRelatives(child, p=1, type='joint')
        if not parent:
            return False
        parent = parent[0]
        if not pm.objectType(parent, isa='joint'):
            return False
        if parent in jointsCopy:
            jointsCopy.remove(parent)
        child = parent
    return True

def AreJointsDisconnected(joints):
    if AreJointsChained(joints):
        joints = _GetCompleteJointChain(joints)
    for joint in joints:
        if joint.hasAttr('limb') and pm.listConnections(joint.limb):
            return False
    return True

def GetSortedJoints(joints):
    temp = {}
    for joint in joints:
        temp[joint.longName()] = joint
    return [temp[n] for n in sorted(temp.keys())]

def GetSortedLimbJoints(limb):
    jointGroups = pm.listConnections(limb.jointGroups)
    jointGroups = SortGroups(jointGroups)
    joints = [pm.listConnections(g.joint)[0] for g in jointGroups]
    return joints

def GetSkinnableRigJoints(rigRoot):
    joints = []
    for limb in GetSortedLimbs(rigRoot):
        if limb.limbType.get() != 0:
            joints += GetSortedLimbJoints(limb)
    return joints
    
def _GetCompleteJointChain(joints):
    sortedJoints = GetSortedJoints(joints)
    parent = sortedJoints[-1]
    rootParent = sortedJoints[0]
    jointChain = [parent]
    while(parent != rootParent):
        parent = pm.listRelatives(parent, p=1, type='joint')[0]
        jointChain.append(parent)
    return jointChain

def _HasSibling(joint):
    parent = pm.listRelatives(joint, p=1, type='joint')
    if not parent:
        return False
    children = pm.listRelatives(parent, c=1, type='joint')
    return (len(children) > 1)
    
def _RoundVector(vec):
    newVec = []
    for i in range(3):
        newVec.append(round(vec[i], 5))
    return newVec

#=========== LAYERS ====================================

def SetLayerState(layerName, isVisible, isReference):
    layers = pm.ls(type='displayLayer')
    for layer in layers:
        if layerName in layer.shortName():
            break
    else:
        return
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
        temp[group.groupIndex.get()] = group
    return [temp[i] for i in sorted(temp.keys())]
    
def GetJointGroupsOfParent(childLimb):
    parents = pm.listConnections(childLimb.limbParent)
    if not parents:
        return []
    parent = parents[0]
    groups = pm.listConnections(parent.jointGroups)
    return SortGroups(groups)

def GetParentControl(childLimb):
    parents = pm.listConnections(childLimb.limbParent)
    if not parents:
        return None
    parent = parents[0]
    parentGroups = pm.listConnections(parent.jointGroups)
    parentGroups = SortGroups(parentGroups)
    index = childLimb.limbParentJoint.get()
    parentGroup = parentGroups[index]
    return pm.listConnections(parentGroup.control)[0]

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

def GetSortedLimbs(rigRoot):
    rootLimbs = []
    allLimbs = []
    for limb in pm.listConnections(rigRoot.limbs):
        if not pm.listConnections(limb.limbParent):
            rootLimbs.append(limb)
    for rootLimb in rootLimbs[::-1]:
        allLimbs += GetLimbCreationOrder(rootLimb)
    return allLimbs

def GetLimbGroups(limb, groupType):
    groups = {} # order index : group
    for group in pm.listConnections(limb.limbGroups):
        if group.groupType.get() == groupType:
            groups[group.groupIndex.get()] = group
    return [groups[i] for i in sorted(groups.keys())]

#=========== CONTROLLERS ====================================

def Setup_ControllersToParent(limb):
    controls = []
    for group in pm.listConnections(limb.usedGroups):
        controls.append(pm.listConnections(group.control)[0])
    parentLimb = pm.listConnections(limb.limbParent)[0]
    usedParentGroup = pm.listConnections(parentLimb.usedGroups)[0]
    usedParentControl = pm.listConnections(usedParentGroup.control)[0]
    pm.controller(controls, usedParentControl, p=1)

def Setup_ControllersGroup(limb):
    controls = []
    for group in pm.listConnections(limb.usedGroups):
        controls.append(pm.listConnections(group.control)[0])
    pm.controller(controls, g=1)

def Teardown_Controllers(limb):
    for group in pm.listConnections(limb.usedGroups):
        controller = pm.listConnections(group.control)[0]
        pm.delete(pm.listConnections(controller.message, type='controller'))

def UpdateUsedControlMaterials(rigRoot, limb):
    groups = pm.listConnections(limb.usedGroups)
    controls = [pm.listConnections(g.control)[0] for g in groups]
    if limb.side.get() == 0:
        sg = pm.listConnections(rigRoot.controlMtrM)[0]
    elif limb.side.get() == 1:
        sg = pm.listConnections(rigRoot.controlMtrL)[0]
    elif limb.side.get() == 2:
        sg = pm.listConnections(rigRoot.controlMtrR)[0]
    mtr = pm.listConnections(sg.surfaceShader)[0]
    for control in controls:
        shape = pm.listRelatives(control, c=1)[0]
        if pm.objectType(shape) == 'mesh':
            pm.sets(sg, e=True, forceElement=shape)
        elif pm.objectType(shape) == 'nurbsCurve':
            shape.overrideEnabled.set(1)
            shape.overrideRGBColors.set(1)
            pm.disconnectAttr(shape.overrideColorRGB)
            pm.connectAttr(mtr.outColor, shape.overrideColorRGB)



# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"








