
import json
import inspect
import os
import sys

import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

#=========== JSON ====================================

def SaveJson(filePath, data):
    print('Saving: ' + filePath)
    with open(filePath, 'w') as outputFile:
        json.dump(data, outputFile, indent=4)

def LoadJson(filePath):
    print('Loading: ' + filePath)
    data = None
    with open(filePath, 'r') as readFile:
        data = json.load(readFile)
    return data

#=========== GET CONTROLS ====================================

# ALL CONTROLS
def GetUsedControls(limb, isSorted):
    if limb.bhvType.get() in rigData.EMPTY_BHV_INDEXES:
        return [GetEmptyControl(limb)]
    return GetUsedLimbControls(limb) + GetUsedJointControls(limb, isSorted)

def GetAllControls(limb, isSorted):
    if limb.bhvType.get() in rigData.EMPTY_BHV_INDEXES:
        return [GetEmptyControl(limb)]
    return GetAllLimbControls(limb) + GetAllJointControls(limb, isSorted)

# LIMB CONTROLS
def GetUsedLimbControls(limb):
    bhvType = limb.bhvType.get()
    if bhvType in rigData.EMPTY_BHV_INDEXES:
        return [GetEmptyControl(limb)]
    if bhvType in rigData.IK_PV_BHV_INDEXES:
        return [GetIKPV1Control(limb)]
        # return [GetIKPV1Control(limb), GetIKPV2Control(limb)]
    if bhvType in rigData.LOOK_AT_BHV_INDEXES:
        return [GetLookAtControl(limb)]
    return []

def GetAllLimbControls(limb):
    bhvType = limb.bhvType.get()
    if bhvType in rigData.EMPTY_BHV_INDEXES:
        return [GetEmptyControl(limb)]
    controls = []
    controls.append(GetIKPV1Control(limb))
    # controls.append(GetIKPV2Control(limb))
    controls.append(GetLookAtControl(limb))
    return controls

# JOINT CONTROLS
def GetUsedJointControls(limb, isSorted):
    bhvType = limb.bhvType.get()
    if bhvType not in rigData.JOINT_CONTROL_INDEXES:
        return []
    controls = GetAllJointControls(limb, isSorted)
    if bhvType in rigData.REVERSE_BHV_INDEXES:
        controls = controls[::-1]
    if bhvType in rigData.RFK_BHV_INDEXES:
        controls = [controls[0]]
    return controls

def GetAllJointControls(limb, isSorted):
    if isSorted:
        joints = GetSortedLimbJoints(limb)
    else:
        joints = pm.listConnections(limb.joints)
    return [GetJointControl(j) for j in joints]

# LOOK AT, IKPV, EMPTY, JOINT CONTROLS
def GetLookAtControl(limb):
    group = pm.listConnections(limb.bhvLookAtGroup)[0]
    return pm.listConnections(group.control)[0]

def GetIKPV1Control(limb):
    group = pm.listConnections(limb.bhvIKPV1Group)[0]
    return pm.listConnections(group.control)[0]

def GetIKPV2Control(limb):
    pass

def GetEmptyControl(limb):
    group = pm.listConnections(limb.bhvEmptyGroup)[0]
    return pm.listConnections(group.control)[0]

def GetJointControl(joint):
    group = pm.listConnections(joint.group)[0]
    return pm.listConnections(group.control)[0]

#=========== GET MISC ====================================

def GetUsedJointGroups(limb, isSorted):
    pass

def GetAllJointGroups(limb, isSorted):
    if isSorted:
        joints = GetSortedLimbJoints(limb)
    else:
        joints = pm.listConnections(limb.joints)
    return [pm.listConnections(j.group)[0] for j in joints]

def GetAllLimbGroups(limb):
    if limb.bhvType.get() in rigData.EMPTY_BHV_INDEXES:
        return pm.listConnections(limb.bhvEmptyGroup)
    groups = pm.listConnections(limb.bhvIKPV1Group)
    groups += pm.listConnections(limb.bhvLookAtGroup)
    return groups

def GetAllLimbs(rigRoot):
    limbs = pm.listConnections(rigRoot.jointLimbs)
    limbs += pm.listConnections(rigRoot.emptyLimbs)
    return limbs

def GetSortedLimbJoints(limb):
    temp = {}
    for joint in pm.listConnections(limb.joints):
        temp[joint.jointIndex.get()] = joint
    return [temp[i] for i in sorted(temp.keys())]

#=========== MISC ====================================

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

def GetSortedJoints(joints):
    temp = {} # LongName : joint
    for joint in joints:
        temp[joint.longName()] = joint
    return [temp[i] for i in sorted(temp.keys())]

def GetOperation(moduleToImport, folderPath, rigRoot):
    versions = {}
    import Common.Abstract_Operation as absOp
    reload(absOp)
    for opFile in os.listdir(folderPath):
        opFilePath = os.path.join(folderPath, opFile)
        if not os.path.isfile(opFilePath):
            continue
        if '__init__.py' in opFile:
            continue
        fileName = os.path.splitext(opFile)[0]
        moduleName = '%s.%s' % (moduleToImport, fileName)
        exec('import %s' % moduleName)
        exec('reload (%s)' % moduleName)
        module = sys.modules[moduleName]
        for name, obj in inspect.getmembers(module):
            if inspect.isclass(obj):
                if issubclass(obj, absOp.Abstract_Operation):
                    versions[obj.version] = obj
    if not versions:
        return None
    versionKeys = sorted(list(versions.keys()))
    for i in versionKeys:
        if not versions[i].IsRigSetup(rigRoot):
            versions[i].InitRig(rigRoot)
    return versions[versionKeys[-1]]
