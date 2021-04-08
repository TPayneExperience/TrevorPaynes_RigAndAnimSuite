
import json
import inspect
import os
import sys

import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

import Abstracts.Abstract_Initializer as absInit
reload(absInit)


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

#=========== MISC ====================================

def AbstractInitializer(objectInstance, folder):
    # self.logger.debug('\tPFRS_UI > InitOperations')
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
