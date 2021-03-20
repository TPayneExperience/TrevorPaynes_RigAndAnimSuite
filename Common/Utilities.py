
import pymel.core as pm

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

def GetSortedLimbJoints(limb):
    temp = {}
    for joint in pm.listConnections(limb.joints):
        temp[joint.jointIndex.get()] = joint
    return [temp[i] for i in sorted(temp.keys())]

def GetSortedJoints(joints):
    temp = {} # LongName : joint
    for joint in joints:
        temp[joint.longName()] = joint
    return [temp[i] for i in sorted(temp.keys())]

def GetSortedLimbJointControls(limb):
    temp = {}
    for control in pm.listConnections(limb.jointControls):
        temp[control.controlIndex.get()] = control
    return [temp[i] for i in sorted(temp.keys())]
