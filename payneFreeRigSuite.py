
import inspect
import os
import sys

import pymel.core as pm

import Operations
reload(Operations)
import Behaviors
reload(Behaviors)
import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Common.Logger as log
reload(log)
import SceneData.RigRoot as rrt
reload(rrt)
import SceneData.Behavior_Manager as bhv
reload(bhv)
import Data.Rig_Data as rigData
reload(rigData)
import Common.General_Utilities as genUtil
reload(genUtil)

class PayneFreeRigSuite:
    def __init__(self):
        self.currentRigRoot = None
        self.allRigRoots = []
        self._StartLogger()

        self.catOps = {} # {categoryName : {fileName : classObj}}
        self.categories = []

        self._InitOperations()
        # self.InitScene()
        self.bhvMng = bhv.Behavior_Manager
        self.bhvMng.InitBehaviors()

    def __del__(self):
        self._EndLogger()

#=========== PUBLIC ====================================

    def OpenLog(self, ignore):
        log.funcFileInfo()
        log.OpenLog()

#=========== RIG ROOT ====================================

    def GetRigRoots(self):
        log.funcFileDebug()
        return [r for r in pm.ls(tr=1) if r.hasAttr('limbs')]

    def AddRigRoot(self):
        rigRoot = rrt.RigRoot.Add()
        self.UpdateRootName(rigRoot)
        self.ReimportRigRootControlShapeTemplates(rigRoot)
        self.InitSceneJoints(rigRoot)
        return rigRoot

    def InitSceneJoints(self, rigRoot):
        log.funcFileInfo()
        jointGroup = pm.listConnections(rigRoot.jointsParentGroup)[0]
        joints = pm.ls(type='joint')
        for joint in joints:
            parent = pm.listRelatives(joint, p=1)
            if not parent or pm.objectType(parent[0]) != 'joint':
                pm.parent(joint, jointGroup)
    
    def ReimportRigRootControlShapeTemplates(self, rigRoot):
        log.funcFileDebug()
        old = pm.listConnections(rigRoot.controlTemplates)
        pm.delete(old)

        folder = os.path.dirname(__file__)  # Scene Objects
        folder = os.path.join(folder, 'Templates')
        filePath = os.path.join(folder, 'Control_Shapes.ma')
        nodes = pm.importFile(filePath, returnNewNodes=1)
        ctrShapes = [n for n in nodes if pm.objectType(n) == 'transform']
        ctrShapesParent = pm.group(ctrShapes, p=rigRoot,
                                    name=rigData.CONTROL_TEMPLATE_GROUP)
        ctrShapesParent.v.set(0)
        pm.addAttr(ctrShapesParent, ln='rigRoot', dt='string')
        pm.connectAttr(rigRoot.controlTemplates, ctrShapesParent.rigRoot)
        for ctr in ctrShapes:
            pm.addAttr(ctr, ln='rigRoot', dt='string')
        for ctr in ctrShapes:
            if 'Cube_Poly' in ctr.shortName():
                attr = '.' + rigData.JOINT_SHAPE_ATTR
                pm.connectAttr(ctr.rigRoot, rigRoot + attr)
                break

    def UpdateRootName(self, rigRoot):
        log.funcFileDebug()
        rigRoot.rename('%s_ROOT' % rigRoot.prefix.get())
        for limb in pm.listConnections(rigRoot.limbs):
            genUtil.Name.UpdateLimbName(rigRoot, limb)

    def ExportAnimationRig(self, rigRoot, filePath):
        log.funcFileDebug()
        # Make pose folder
        folder = os.path.dirname(filePath)
        poseFolder = os.path.join(folder, 'Poses')
        if not os.path.exists(poseFolder):
            os.makedirs(poseFolder)
        rigRoot.posesFolderPath.set(poseFolder)

        # Set rigmode, export, revert
        rigMode = rigRoot.rigMode.get()
        if rigMode == 0:
            rigRoot.rigMode.set(1)
        oldMain = rigRoot.mainTab.get()
        oldSub = rigRoot.subTab.get()
        rigRoot.mainTab.set('Animation')
        rigRoot.subTab.set('Poses')
        setupFile = pm.sceneName()
        
        pm.saveAs(filePath)

        rigRoot.rigMode.set(rigMode)
        rigRoot.mainTab.set(oldMain)
        rigRoot.subTab.set(oldSub)

        if setupFile:
            pm.saveAs(setupFile)

#=========== PRIVATE ====================================

    def _InitOperations(self):
        log.funcFileDebug()
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
                if '__init__.py' in opFile:
                    continue
                opFilePath = os.path.join(categoryPath, opFile)
                if not os.path.isfile(opFilePath):
                    continue
                fileName = os.path.splitext(opFile)[0]
                moduleName = '%s.%s' % (moduleCat, fileName)
                print (moduleName)
                # UI
                exec('import %s' % moduleName)
                exec('reload (%s)' % moduleName)
                module = sys.modules[moduleName]
                for name, obj in inspect.getmembers(module):
                    if inspect.isclass(obj):
                        if issubclass(obj, absOpUI.Abstract_OperationUI):
                            self.catOps[category][obj.uiName] = obj()
                for name, obj in inspect.getmembers(module):
                    if inspect.isclass(obj):
                        if issubclass(obj, absOp.Abstract_Operation):
                            setattr(self, name, obj())

#=========== LOGGER ====================================
   
    def _StartLogger(self):
        startTxt = '\n'
        startTxt += '='*40
        startTxt += '\n'
        startTxt += '-'*15
        startTxt += ' START '
        startTxt += '-'*15
        startTxt += '\n'
        log.info(startTxt)

    def _EndLogger(self):
        log.funcFileDebug()
        endTxt = '\n\n'
        endTxt += '-'*15
        endTxt += ' END '
        endTxt += '-'*15
        endTxt += '\n'
        endTxt += '='*40
        endTxt += '\n\n'
        log.info(endTxt)

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
