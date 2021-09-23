
import inspect
import os
import sys
import webbrowser

import pymel.core as pm
import maya.mel as mel

import Operations
reload(Operations)
import Behaviors
reload(Behaviors)
import Behaviors
reload(Behaviors)
import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Utilities.Logger as log
reload(log)
import SceneData.Limb as lmb
reload(lmb)
import SceneData.RigRoot as rrt
reload(rrt)
import SceneData.DisplayLayers as dl
reload(dl)
import SceneData.Group as grp
reload(grp)
import SceneData.Behavior_Manager as bMng
reload(bMng)
import Data.Rig_Data as rigData
reload(rigData)
import Utilities.General_Utilities as genUtil
reload(genUtil)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import Operations.Rigging_Setup.Appearance as app
reload(app)
import Operations.Rigging_Setup.LimbSetup as ls
reload(ls)
import Operations.Skinning_Setup.MeshSetup as msh
reload(msh)
# import Data.Config as cnfg
# reload(cnfg)

class PayneFreeRigSuite:
    def __init__(self):
        if not genUtil.IsLicenseValid():
            genUtil.LicenseWarning()
            return

        self.currentRigRoot = None
        self.allRigRoots = []
        self.catOps = {} # {categoryName : {fileName : classObj}}
        self.categories = []

        self._InitConfigFile()
        self._StartLogger()
        self.bhvMng = bMng.Behavior_Manager()
        self.bhvMng.InitBehaviors()
        self._AddShapesToConfig()
        self._InitOperations()


    def __del__(self):
        self._EndLogger()

#=========== PUBLIC ====================================

    def OpenLog(self, ignore):
        log.funcFileInfo()
        log.OpenLog()

    def SetDebug(self, isOn):
        log.funcFileInfo()
        folder = os.path.dirname(__file__)
        folder = os.path.join(folder, 'Data')
        filePath = os.path.join(folder, 'Config.json')
        config = genUtil.Json.Load(filePath)
        config['debug'] = isOn
        genUtil.Json.Save(filePath, config)

#=========== RIG ROOT ====================================

    def AddRigRoot(self):
        config = self._GetConfig()
        rigRoot = rrt.RigRoot.Add()
        dl.DisplayLayers.Add()

        # Set Defaults
        rigRoot.pfrsName.set(config['rigRootName'])
        rigRoot.showRootName.set(config['showRootName'])
        rigRoot.rigRootIndex.set(config['rigRootIndex'])
        rigRoot.limbIndex.set(config['limbIndex'])
        rigRoot.jointIndex.set(config['jointIndex'])
        rigRoot.sideIndex.set(config['sideIndex'])
        rigRoot.typeIndex.set(config['typeIndex'])

        ls.LimbSetup().InitSceneJoints(rigRoot)
        msh.MeshSetup().InitSceneMeshes(rigRoot)
        self.bhvMng.InitRigRootControlShapeAttrs(rigRoot)
        app.Appearance.bhvMng = self.bhvMng
        app.Appearance.ReimportControlShapes(rigRoot)
        self.UpdateRootName(rigRoot)
        self._AddRigRootMaterials(rigRoot)
        return rigRoot

    def RemoveRigRoot(self, rigRoot, deleteJoints, deleteMeshes):
        log.funcFileDebug()
        if not deleteJoints:
            # Remove Limbs
            for limb in pm.listConnections(rigRoot.limbs):
                for group in pm.listConnections(limb.jointGroups):
                    grp.Group.Remove(group)
                lmb.Limb.Remove(limb)

            jointGroup = pm.listConnections(rigRoot.jointsParentGroup)[0]

            # Remove Joint Groups
            for joint in pm.listRelatives(jointGroup, ad=1, type='joint'):
                if not joint.hasAttr('group'):
                    continue
                groups = pm.listConnections(joint.group)
                if not groups:
                    continue
                group = groups[0]
                grp.Group.Remove(group)

            # Reparent Root Joints
            rootJoints = pm.listRelatives(jointGroup, c=1)
            pm.parent(rootJoints, w=1)

        if not deleteMeshes:
            meshGroup = pm.listConnections(rigRoot.meshesParentGroup)[0]
            meshes = pm.listRelatives(meshGroup, c=1)
            pm.parent(meshes, w=1)
        rrt.RigRoot.Remove(rigRoot)
        dl.DisplayLayers.Remove()
        mel.eval('hyperShadePanelMenuCommand("hyperShadePanel1", "deleteUnusedNodes");')

    def GetRigRoots(self):
        log.funcFileDebug()
        return genUtil.GetRigRoots()

    def _GetConfig(self):
        folder = os.path.dirname(__file__)
        folder = os.path.join(folder, 'Data')
        filePath = os.path.join(folder, 'Config.json')
        return genUtil.Json.Load(filePath)

    def UpdateRootName(self, rigRoot):
        log.funcFileDebug()
        rigRoot.rename('%s_RigRoot' % rigRoot.pfrsName.get())
        for limb in pm.listConnections(rigRoot.limbs):
            genUtil.Name.UpdateLimbName(rigRoot, limb)

    def SubmitFeedback(self):
        email = 'trevor@paynefreerigsuite.com'
        subject = 'PFRS Feedback (FREE Version)'
        url = 'mailto:?to=%s&subject=%s' % (email, subject)
        url += "&body=You're Amazing!"
        webbrowser.open(url, new=1)

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
            self.bhvMng.Teardown_Rig(rigRoot)
        rigMode = rigRoot.rigMode.get()
        if rigMode == 0:
            rigRoot.rigMode.set(1)
        oldMain = rigRoot.category.get()
        oldSub = rigRoot.operation.get()
        rigRoot.category.set('Animation')
        rigRoot.operation.set('Poses')
        setupFile = pm.sceneName()
        
        pm.saveAs(filePath)

        rigRoot.rigMode.set(rigMode)
        rigRoot.category.set(oldMain)
        rigRoot.operation.set(oldSub)
        if rigRoot.isBuilt.get():
            self.bhvMng.Setup_Rig(rigRoot)

        if setupFile:
            pm.saveAs(setupFile)

#=========== PRIVATE ====================================

    def _AddRigRootMaterials(self, rigRoot):
        config = self._GetConfig()

        # CONTROLS
        colors = [config['lControlColor']]
        colors.append(config['mControlColor'])
        colors.append(config['rControlColor'])

        trans = [config['lControlTransparency']]
        trans.append(config['mControlTransparency'])
        trans.append(config['rControlTransparency'])

        attr = 'controlMtr'
        sides = ('L', 'M', 'R')
        for side, color, tran in zip(sides, colors, trans):
            name = '%sControlsMaterial' % side
            mtr = pm.shadingNode(  'surfaceShader', 
                                    n=name, 
                                    asShader=1)
            mtr.outColor.set(color)
            mtr.outTransparency.set((tran, tran, tran))
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
        self.categories = [ 'Rigging_Setup', 
                            'Rigging_Extras',
                            'Skinning_Setup', 
                            'Skinning_Extras', 
                            'Animation']
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
                if '.mel' in opFile:
                    continue
                opFilePath = os.path.join(categoryPath, opFile)
                if not os.path.isfile(opFilePath):
                    continue
                fileName = os.path.splitext(opFile)[0]
                moduleName = '%s.%s' % (moduleCat, fileName)
                # UI
                exec('import %s' % moduleName)
                exec('reload (%s)' % moduleName)
                module = sys.modules[moduleName]
                for name, obj in inspect.getmembers(module):
                    if inspect.isclass(obj):
                        if issubclass(obj, absOpUI.Abstract_OperationUI):
                            opUI = obj()
                            opUI.operation.bhvMng = self.bhvMng
                            self.catOps[category][obj.uiName] = opUI
                for name, obj in inspect.getmembers(module):
                    if inspect.isclass(obj):
                        if issubclass(obj, absOp.Abstract_Operation):
                            setattr(self, name, obj())

    def _InitConfigFile(self):
        folder = os.path.dirname(__file__)
        folder = os.path.join(folder, 'Data')
        filePath = os.path.join(folder, 'Config.json')
        if not os.path.isfile(filePath):
            genUtil.Json.Save(filePath, {})
            
        # Creating temp class was only way to maintain data
        temp = type('tempClass', (), {'data':{}})
        temp.data = genUtil.Json.Load(filePath)
        genUtil.AbstractInitializer(temp, 'Config')
        genUtil.Json.Save(filePath, temp.data)

    def _AddShapesToConfig(self):
        folder = os.path.dirname(__file__)
        folder = os.path.join(folder, 'Data')
        filePath = os.path.join(folder, 'Config.json')
        config = self._GetConfig()
        for bhvFiles in list(self.bhvMng.bhvFiles.values()):
            bhv = self.bhvMng.bhvs[bhvFiles[-1]]
            if not bhv.groupType:
                continue
            controlShapeName = 'controlShape_' + bhv.groupType
            if controlShapeName in config:
                continue
            config[controlShapeName] = bhv.groupShape
        genUtil.Json.Save(filePath, config)

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

#=========== PHYSICS ====================================

    # def ResetPhysics(self):
    #     for rigRoot in genUtil.GetRigRoots():
    #         for limb in pm.listConnections(rigRoot.limbs):
    #             if not limb.bhvHasPhysics.get():
    #                 continue
    #             for springGroup in pm.listConnections(limb.physicsGroups):
    #                 parentGroup = pm.listRelatives(springGroup, p=1)[0]
    #                 control = pm.listRelatives(springGroup, c=1)[0]
                    
    #                 # rigUtil.ResetAttrs(group)
    #                 # rigidBody = pm.listRelatives(group, c=1, type='rigidBody')
    #                 # pm.delete(pm.parentConstraint(parentGroup, springGroup))
    #                 pos = pm.xform(parentGroup, q=1, rp=1, ws=1)
    #                 # rot = pm.xform(parentGroup, q=1, ro=1, ws=1)
    #                 pm.xform(springGroup, t=pos, ws=1)
    #                 pm.delete(pm.parentConstraint(springGroup, control))
    #                 # pm.xform(springGroup, ro=rot, ws=1)

    # def EnablePhysics(self):
    #     for rigRoot in genUtil.GetRigRoots():
    #         rigRoot.arePhysicsActive.set(1)

    # def DisablePhysics(self):
    #     for rigRoot in genUtil.GetRigRoots():
    #         rigRoot.arePhysicsActive.set(0)

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
