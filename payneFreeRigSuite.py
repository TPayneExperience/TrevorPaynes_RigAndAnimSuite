
import inspect
import os
import sys
import webbrowser

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
import Operations.Rigging.Appearance as app
reload(app)

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
        return genUtil.GetRigRoots()
        # return [r for r in pm.ls(tr=1) if r.hasAttr('limbs')]

    def AddRigRoot(self):
        rigRoot = rrt.RigRoot.Add()
        self.UpdateRootName(rigRoot)
        app.Appearance.ReimportControlShapes(rigRoot)
        self.InitSceneJoints(rigRoot)
        self._AddRigRootMaterials(rigRoot)
        return rigRoot

    def InitSceneJoints(self, rigRoot):
        log.funcFileInfo()
        jointGroup = pm.listConnections(rigRoot.jointsParentGroup)[0]
        joints = pm.ls(type='joint')
        for joint in joints:
            parent = pm.listRelatives(joint, p=1)
            if not parent or pm.objectType(parent[0]) != 'joint':
                pm.parent(joint, jointGroup)
    
    def UpdateRootName(self, rigRoot):
        log.funcFileDebug()
        rigRoot.rename('%s_RigRoot' % rigRoot.pfrsName.get())
        for limb in pm.listConnections(rigRoot.limbs):
            genUtil.Name.UpdateLimbName(rigRoot, limb)

    def SubmitFeedback(self):
        pass
        # email = 'trevor@paynefreerigsuite.com'
        # subject = 'PFRS Feedback (FREE Version)'
        # cmds = "mailto:?to=%s&subject=%s&body=You're Amazing!" % (email, subject)
        # webbrowser.open('mailto:?to=' + recipient + '&subject=' + subject + '&body=' + body, new=1)

    def ExportAnimationRig(self, rigRoot, filePath):
        log.funcFileDebug()
        # Make pose folder
        folder = os.path.dirname(filePath)
        poseFolder = os.path.join(folder, 'Poses')
        if not os.path.exists(poseFolder):
            os.makedirs(poseFolder)
        rigRoot.posesFolderPath.set(poseFolder)

        # Set rigmode, export, revert
        if rigRoot.isBuilt.get():
            bhv.Behavior_Manager.Teardown_Edit_Rig(rigRoot)
        rigMode = rigRoot.rigMode.get()
        if rigMode == 0:
            rigRoot.rigMode.set(1)
        oldMain = rigRoot.category.get()
        oldSub = rigRoot.operation.get()
        rigRoot.category.set('Animation')
        rigRoot.operation.set('Behavior')
        setupFile = pm.sceneName()
        
        pm.saveAs(filePath)

        rigRoot.rigMode.set(rigMode)
        rigRoot.category.set(oldMain)
        rigRoot.operation.set(oldSub)
        if rigRoot.isBuilt.get():
            bhv.Behavior_Manager.Setup_Edit_Rig(rigRoot)

        if setupFile:
            pm.saveAs(setupFile)

#=========== PRIVATE ====================================

    def _AddRigRootMaterials(self, rigRoot):
        attr = 'controlMtr'
        sides = ('L', 'M', 'R')
        colors = ((0, 0, 1), (1, 1, 0), (1, 0, 0))
        for side, color in zip(sides, colors):
            name = '%sControlsMaterial' % side
            mtr = pm.shadingNode(  'surfaceShader', 
                                    n=name, 
                                    asShader=1)
            mtr.outColor.set(color)
            mtr.outTransparency.set((0.8, 0.8, 0.8))
            sg = pm.sets(em=1, r=1, nss=1, name=name+'SG')
            pm.connectAttr( mtr+'.outColor', sg+'.surfaceShader', f=1)        
            pm.addAttr(sg, ln='rigRoot', dt='string')
            attr = '%s.controlMtr%s' % (rigRoot, side)
            pm.connectAttr(attr, sg.rigRoot)

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

# #============= ROOT ============================

#     def NewRoot(self, rootName, nameOrder, showRootName):
#         self.logger.debug('\tPFRS > NewRoot')
#         self.root = self.rootMng.AddRoot(rootName, nameOrder, showRootName)
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
