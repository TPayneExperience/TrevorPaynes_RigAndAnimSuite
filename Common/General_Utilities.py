
import json
import inspect
import os
import re
import sys

import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

import Abstracts.Abstract_Initializer as absInit
reload(absInit)


#=========== NAMING ====================================

class Name:
    @staticmethod
    def IsValidCharacterLength(name):
        if (len(name) < 2):
            # self.logger.error('**** Must be 2 or more characters')
            return False
        return True

    @staticmethod
    def DoesNotStartWithNumber(name):
        if (name[0] in ['0','1','2','3','4','5','6','7','8','9', '_']):
            # self.logger.error('**** Cannot start with number OR _')
            return False
        return True

    @staticmethod
    def AreAllValidCharacters(name):
        try:
            g = re.search('[A-Za-z0-9_]+', name).group(0)
            if (len(g) == len(name)):
                return True
            # self.logger.error('**** May only contain A-Z, a-z, 0-9, _')
            return False
        except:
            # self.logger.error('**** May only contain A-Z, a-z, 0-9, _')
            return False

    @staticmethod
    def GetName(rigRoot, limbName, secondName, side, objType):
        temp = {rigRoot.limbIndex.get() : limbName,
                rigRoot.jointIndex.get() : secondName,
                rigRoot.sideIndex.get() : side,
                rigRoot.typeIndex.get() : objType}
        if rigRoot.showPrefix.get():
            temp[rigRoot.prefixIndex.get()] = rigRoot.prefix.get()
        partNames = [temp[i] for i in sorted(list(temp.keys()))]
        return '_'.join(partNames)

#=========== UDPATE NAMES ====================================

    @staticmethod
    def UpdateLimbName(rigRoot, limb):
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        pfrsName = limb.pfrsName.get()
        limbName = Name.GetName(rigRoot,
                            pfrsName,
                            'Limb',
                            rigData.LIMB_SIDES[limb.side.get()],
                            'NODE')
        limb.rename(limbName)
        for group in pm.listConnections(limb.limbGroups):
            Name.UpdateLimbGroupName(rigRoot, limb, group)
        for joint in pm.listConnections(limb.joints):
            Name.UpdateJointName(rigRoot, limb, joint)

    @staticmethod
    def UpdateJointName(rigRoot, limb, joint):
        limb = pm.listConnections(joint.limb)[0]
        side = rigData.LIMB_SIDES[limb.side.get()]
        name = Name.GetName(rigRoot, 
                            limb.pfrsName.get(),
                            joint.pfrsName.get(),
                            side,
                            'JNT')
        joint.rename(name)
        Name.UpdateJointGroupName(rigRoot, limb, joint)

    @staticmethod
    def UpdateJointGroupName(rigRoot, limb, joint):
        group = pm.listConnections(joint.group)[0]
        pfrsName = joint.pfrsName.get()
        Name._UpdateGroupName(rigRoot, limb, pfrsName, group)

    @staticmethod
    def UpdateLimbGroupName(rigRoot, limb, group):
        pfrsName = limb.pfrsName.get()
        Name._UpdateGroupName(rigRoot, limb, pfrsName, group)
        
    @staticmethod
    def _UpdateGroupName(rigRoot, limb, pfrsName, group):
        groupType = group.groupType.get()
        index = group.groupIndex.get()
        groupName = Name.GetName(rigRoot,
                                pfrsName,
                                groupType,
                                rigData.LIMB_SIDES[limb.side.get()],
                                'GRP' + str(index))
        group.rename(groupName)
        control = pm.listConnections(group.control)[0]
        controlName = Name.GetName( rigRoot,
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
        data = None
        with open(filePath, 'r') as readFile:
            data = json.load(readFile)
        return data

#=========== MISC ====================================

def GetDefaultLimbHier(rigRoot):
    limbParents = {} # childLimb : parentLimb
    for childLimb in pm.listConnections(rigRoot.limbs):
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
        if '__init__.py' in modFile:
            continue
        if fileName in visited:
            continue
        # UI
        exec('import %s' % moduleName)
        exec('reload (%s)' % moduleName)
        module = sys.modules[moduleName]
        for name, obj in inspect.getmembers(module):
            if inspect.isclass(obj):
                if issubclass(obj, absInit.Abstract_Initializer):
                    obj.Initialize(objectInstance)
                    visited.append(fileName)

# def GetOperation(moduleToImport, folderPath):
#     versions = {}
#     import Abstracts.Abstract_Operation as absOp
#     reload(absOp)
#     for opFile in os.listdir(folderPath):
#         opFilePath = os.path.join(folderPath, opFile)
#         if not os.path.isfile(opFilePath):
#             continue
#         if '__init__.py' in opFile:
#             continue
#         fileName = os.path.splitext(opFile)[0]
#         moduleName = '%s.%s' % (moduleToImport, fileName)
#         exec('import %s' % moduleName)
#         exec('reload (%s)' % moduleName)
#         module = sys.modules[moduleName]
#         for name, obj in inspect.getmembers(module):
#             if inspect.isclass(obj):
#                 if issubclass(obj, absOp.Abstract_Operation):
#                     versions[obj.version] = obj
#     if not versions:
#         return None
#     versionKeys = sorted(list(versions.keys()))
#     return versions[versionKeys[-1]]
