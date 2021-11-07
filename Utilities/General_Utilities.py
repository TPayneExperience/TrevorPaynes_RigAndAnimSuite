
import json
import inspect
import os
import re
import sys
import time

import pymel.core as pm

import Plugins.pyperclip as pyCopy

import Data.Rig_Data as rigData
import Data.General_Data as genData

import Abstracts.Abstract_Initializer as absInit


#=========== NAMING ====================================

def IsValidCharacterLength(name):
    if (len(name) < 2):
        return False
    return True

def DoesNotStartWithNumber(name):
    if (name[0] in ['0','1','2','3','4','5','6','7','8','9', '_']):
        return False
    return True

def AreAllValidCharacters(name):
    try:
        g = re.search('[A-Za-z0-9_]+', name).group(0)
        if (len(g) == len(name)):
            return True
        return False
    except:
        return False

def GetName(rigRoot, limbName, secondName, side, objType):
    temp = {rigRoot.limbIndex.get() : limbName,
            rigRoot.jointIndex.get() : secondName,
            rigRoot.sideIndex.get() : side,
            rigRoot.typeIndex.get() : objType}
    if rigRoot.showRootName.get():
        temp[rigRoot.rigRootIndex.get()] = rigRoot.pfrsName.get()
    partNames = [temp[i] for i in sorted(temp.keys())]
    return '_'.join(partNames)

#=========== UDPATE NAMES ====================================

def UpdateLimbName(rigRoot, limb):
    rigRoot = pm.listConnections(limb.rigRoot)[0]
    pfrsName = limb.pfrsName.get()
    limbName = GetName(rigRoot,
                        pfrsName,
                        'Limb',
                        rigData.LIMB_SIDES[limb.side.get()],
                        'NODE')
    limb.rename(limbName)
    for group in pm.listConnections(limb.limbGroups):
        UpdateLimbGroupName(rigRoot, limb, group)
    for joint in pm.listConnections(limb.joints):
        UpdateJointName(rigRoot, limb, joint)

def UpdateJointName(rigRoot, limb, joint):
    limb = pm.listConnections(joint.limb)[0]
    side = rigData.LIMB_SIDES[limb.side.get()]
    name = GetName(rigRoot, 
                        limb.pfrsName.get(),
                        joint.pfrsName.get(),
                        side,
                        'JNT')
    joint.rename(name)
    UpdateJointGroupName(rigRoot, limb, joint)

def UpdateJointGroupName(rigRoot, limb, joint):
    group = pm.listConnections(joint.group)[0]
    pfrsName = joint.pfrsName.get()
    _UpdateGroupName(rigRoot, limb, pfrsName, group)

def UpdateLimbGroupName(rigRoot, limb, group):
    pfrsName = limb.pfrsName.get()
    _UpdateGroupName(rigRoot, limb, pfrsName, group)
    
def _UpdateGroupName(rigRoot, limb, pfrsName, group):
    groupType = group.groupType.get()
    index = group.groupIndex.get()
    groupName = GetName(rigRoot,
                            pfrsName,
                            groupType,
                            rigData.LIMB_SIDES[limb.side.get()],
                            'GRP' + str(index))
    group.rename(groupName)
    control = pm.listConnections(group.control)[0]
    controlName = GetName( rigRoot,
                                pfrsName,
                                groupType,
                                rigData.LIMB_SIDES[limb.side.get()],
                                'CTR' + str(index))
    control.rename(controlName)


#=========== JSON ====================================

class Json:
    @staticmethod
    def Save(filePath, data):
        with open(filePath, 'w') as outputFile:
            json.dump(data, outputFile, indent=4)

    @staticmethod
    def Load(filePath):
        # print('loading json: ' + filePath)
        with open(filePath, 'r') as readFile:
            return json.load(readFile)

#=========== MISC ====================================

def GetDefaultLimbHier(limbs):
    limbParents = {} # childLimb : parentLimb
    for childLimb in limbs:
        limbParents[childLimb] = None
        if childLimb.limbType.get() == 0:
            continue
        childJoints = pm.listConnections(childLimb.joints)
        for childJoint in childJoints:
            parentJoints = pm.listRelatives(childJoint, p=1, type='joint')
            if not parentJoints:
                break
            parentJoint = parentJoints[0]
            if parentJoint in childJoints:
                continue
            if not parentJoint.hasAttr('limb'):
                break
            parentLimbs = pm.listConnections(parentJoint.limb)
            if parentLimbs:
                limbParents[childLimb] = parentLimbs[0]
            break
    return limbParents

def AbstractInitializer(objectInstance, folder):
    rootPath = os.path.dirname(__file__)
    rootPath = os.path.dirname(rootPath)
    rootPath = os.path.join(rootPath, 'Initializers')
    rootPath = os.path.join(rootPath, folder)
    moduleFolder = 'Initializers.%s' % folder
    visited = []
    for modFile in os.listdir(rootPath):
        fileName = os.path.splitext(modFile)[0]
        moduleName = '%s.%s' % (moduleFolder, fileName)
        opFilePath = os.path.join(rootPath, modFile)
        if not os.path.isfile(opFilePath):
            continue
        if modFile.startswith('__'):
            continue
        if fileName in visited:
            continue
        # UI
        exec('import %s' % moduleName)
        module = sys.modules[moduleName]
        for name, obj in inspect.getmembers(module):
            if inspect.isclass(obj):
                if issubclass(obj, absInit.Abstract_Initializer):
                    obj.Initialize(objectInstance)
                    visited.append(fileName)
    return objectInstance

def GetRigRoots():
    rigRoots = []
    for xform in pm.ls(tr=1):
        if not xform.hasAttr('rigMode'):
            continue
        if xform.rigMode.get() == 4:  # ghost
            continue
        rigRoots.append(xform)
    return rigRoots

def IsLicenseValid():
    return genData.__expiration__ > int(time.strftime('%Y'))

def LicenseWarning():
    msg = 'This license is no longer valid,'
    msg += '\nplease download the latest from:'
    msg += '\n' + genData.STORE_URL
    pm.confirmDialog(   t='License Expired :(', 
                        m=msg, 
                        icon='critical', 
                        b='Copy URL + Close')
    pyCopy.copy(genData.STORE_URL)
    
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"