
import inspect
# import logging
import os
# import platform
# import subprocess
import sys

import pymel.core as pm

import Data.General_Data as genData
reload(genData)

import Common.General_Utilities as genUtil
reload(genUtil)
import Abstracts.Abstract_Initializer as absInit
reload(absInit)
import Operations
reload(Operations)
import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import Common.Logger as log
reload(log)
import SceneObjects.RigRoot as root
reload(root)
import SceneObjects.Limb as lmb
reload(lmb)
import Data.Rig_Data as rigData
reload(rigData)


# import Managers.File_Manager as fm
# reload(fm)
# import Managers.Json_Manager as js
# reload(js)
# import Managers.Name_Manager as nm
# reload(nm)
# import Managers.Joint_Manager as jm
# reload(jm)
# import Managers.Limb_Manager as lm
# reload(lm)
# import Managers.Group_Manager as grp
# reload(grp)
# import Managers.Control_Manager as ctr
# reload(ctr)
# import Managers.Build_Manager as bldMng
# reload(bldMng)
# import Managers.Mesh_Manager as meshMng
# reload(meshMng)
# import Managers.Skin_Manager as skinMng
# reload(skinMng)
# import Managers.Root_Manager as rootMng
# reload(rootMng)
# import Managers.Preset_Manager as pstMng
# reload(pstMng)
# import Managers.Pose_Manager as posMng
# reload(posMng)

# import Rigging.Behavior.RIG_Behaviors as rigBHV
# reload(rigBHV)
# import Rigging.LimbSetup.RIG_LimbSetup as rigLS
# reload(rigLS)
# import Rigging.JointSetup.RIG_JointSetup as rigJS
# reload(rigJS)
# import Animation.Poses.ANM_Poses as anmPOS
# reload(anmPOS)

# import PFRS_Debug as debug
# reload(debug)
# import Common.Utilities as util
# reload(util)

class PayneFreeRigSuite:
    def __init__(self):
        self.root = None
        self._StartLogger()

        self.catOps = {} # {categoryName : {fileName : classObj}}
        self.categories = []

        self.InitScene()

#=========== OPERATIONS ====================================
   
    @log.class_decorator
    def InitScene(self):
        rigRoot = root.RigRoot.GetAll()
        if rigRoot:
            rigRoot = rigRoot[0]
        else:
            rigRoot = root.RigRoot.Add()
        # JOINTS
        jointGroup = pm.listConnections(rigRoot.jointsParentGroup)[0]
        joints = pm.ls(type='joint')
        for joint in joints:
            parent = pm.listRelatives(joint, p=1)
            if not parent or pm.objectType(parent[0]) != 'joint':
                pm.parent(joint, jointGroup)
        self._InitOperations()

    def _StartLogger(self):
        startTxt = '\n'
        startTxt += '='*40
        startTxt += '\n'
        startTxt += '-'*15
        startTxt += ' START '
        startTxt += '-'*15
        startTxt += '\n'
        log.Logger.Get().info(startTxt)

    @log.class_decorator
    def _InitOperations(self):
        self.catOps = {}
        rootPath = os.path.dirname(__file__)
        rootPath = os.path.join(rootPath, 'Operations')
        self.categories = ['Rigging', 'Skinning', 'Animation']
        for f in os.listdir(rootPath):
            filePath = os.path.join(rootPath, f)
            if os.path.isfile(filePath):
                continue
            if f in self.categories:
                continue
            self.categories.append(f)
        for category in self.categories:
            self.catOps[category] = {}
            moduleCat = '%s.%s' % ('Operations', category)
            categoryPath = os.path.join(rootPath, category)
            for opFile in os.listdir(categoryPath):
                fileName = os.path.splitext(opFile)[0]
                moduleName = '%s.%s' % (moduleCat, fileName)
                opFilePath = os.path.join(categoryPath, opFile)
                if not os.path.isfile(opFilePath):
                    continue
                if '__init__.py' in opFile:
                    continue
                # UI
                exec('import %s' % moduleName)
                exec('reload (%s)' % moduleName)
                module = sys.modules[moduleName]
                for name, obj in inspect.getmembers(module):
                    if inspect.isclass(obj):
                        if issubclass(obj, absOpUI.Abstract_OperationUI):
                            self.catOps[category][obj.uiName] = obj


        # self.catOps = {}
        # rootPath = os.path.dirname(__file__)
        # rootPath = os.path.join(rootPath, 'Factories')
        # rootPath = os.path.join(rootPath, 'Operations')
        # moduleRoot = 'Factories.Operations'
        # for category in genData.OPERATION_FOLDERS:
        #     self.catOps[category] = {}
        #     moduleCat = '%s.%s' % (moduleRoot, category)
        #     categoryPath = os.path.join(rootPath, category)
        #     for operation in os.listdir(categoryPath):
        #         moduleOp = '%s.%s' % (moduleCat, operation)
        #         opPath = os.path.join(categoryPath, operation)
        #         if os.path.isfile(opPath):
        #             continue
        #         op = genUtil.GetOperation(moduleOp, opPath)
        #         self.catOps[category][op.operationName] = op

#=========== LOGGER ====================================
   
    @log.class_decorator
    def close(self):
        endTxt = '\n\n'
        endTxt += '-'*15
        endTxt += ' END '
        endTxt += '-'*15
        endTxt += '\n'
        endTxt += '='*40
        endTxt += '\n\n'
        log.Logger.Get().info(endTxt)
        pass

    @log.class_decorator
    def OpenLog(self, ignore):
        log.Logger.Get().debug('asdfasdf')
        log.OpenLog()
    #     if platform.system() == 'Darwin':       # macOS
    #         subprocess.call(('open', self.logFile))
    #     elif platform.system() == 'Windows':    # Windows
    #         os.startfile(self.logFile)
    #     else:                                   # linux variants
    #         subprocess.call(('xdg-open', self.logFile))

# #============= SCENE ============================

#     def InitScene(self):
#         self.logger.debug('\tPFRS > InitScene')
#         roots = self.rootMng.GetSceneRoots()
#         if roots:
#             self.root = roots[0]
#             self.LoadScene()
#             self.LoadRoot()
#         else:
#             self.NewScene()
#             self.NewRoot('PFX', range(5), True)
#         self.meshMng.InitSceneMeshes()
#         self.jntMng.InitSceneJoints()

#     def NewScene(self):
#         self.logger.debug('\tPFRS > NewScene')
#         self.ctrMng.NewScene()
#         self.jntMng.NewScene()
#         self.meshMng.NewScene()

#     def LoadScene(self):
#         self.logger.debug('\tPFRS > LoadScene')
#         self.ctrMng.LoadScene()
#         self.jntMng.LoadScene()
#         self.meshMng.LoadScene()

#     def ExportAnimationRig(self):
#         self.logger.debug('\tPFRS > ExportAnimationRig')
#         name = '%s_AnimRig' % self.root.prefix.get()
#         setupFile = pm.sceneName()
#         filePath = os.path.join(os.path.dirname(setupFile), name)
#         result = pm.fileDialog2(ff='Maya ASCII (*.ma);;Maya Binary (*.mb)', 
#                                 dir=filePath, 
#                                 cap='Save Exported Animation Rig')
#         if not result:
#             return
#         animFile = result[0]
#         # Make pose folder
#         folder = os.path.dirname(animFile)
#         poseFolder = os.path.join(folder, 'Poses')
#         if not os.path.exists(poseFolder):
#             os.makedirs(poseFolder)
#         self.root.posesFolderPath.set(poseFolder)

#         # BUILD RIG
#         limbs = util.GetAllLimbs(self.root)
#         for limb in limbs:
#             self.grpMng.Setup_LimbGroupVisibility(limb)
#         self.bldMng.Setup_Rig()
#         self.ctrMng.SetLayerState(True, False)

#         # SET STARTING TAB
#         oldTab = self.root.mainTab.get()
#         self.root.mainTab.set(2)
#         # SAVE
#         pm.saveAs(animFile)

#         # REVERT
#         self.root.mainTab.set(oldTab)
#         self.bldMng.Teardown_Rig()
#         for limb in limbs:
#             self.grpMng.Teardown_LimbGroupVisibility(limb)

#         if setupFile:
#             pm.saveAs(setupFile)

# #============= ROOT ============================

#     def NewRoot(self, prefix, nameOrder, showPrefix):
#         self.logger.debug('\tPFRS > NewRoot')
#         self.root = self.rootMng.AddRoot(prefix, nameOrder, showPrefix)
#         self.limbMng.NewRoot()
#         self.jntMng.NewRoot()
#         self.meshMng.NewRoot()

#     def LoadRoot(self):
#         self.logger.debug('\tPFRS > LoadRoot')
#         self.limbMng.LoadRoot()
#         self.jntMng.LoadRoot()
#         self.meshMng.LoadRoot()
#         self.posMng.InitPoses()

#     def UpdateNames(self):
#         self.logger.debug('\tPFRS > UpdateNames')
#         self.rootMng.UpdateRootName(self.root)
