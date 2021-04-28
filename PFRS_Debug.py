
import os

import pymel.core as pm

import Common.Logger as log
reload(log)
import SceneData.RigRoot as rrt
reload(rrt)

class PFRS_Debug:
    def __init__(self, parent):
        self.pfrs = parent.pfrs
        # self.limbMng = parent.limbMng
        # self.rigLS = parent.rigLS
        # self.logger = parent.logger

        folder = os.path.dirname(__file__)
        self.folder = os.path.join(folder,'TESTING_FILES')

        if not os.path.isfile(__file__.replace('.pyc', '.py')):
            print ('>>>>>>>>>>>>>> AUTO DEBUG OFF <<<<<<<<<<<<<')
            return
        print ('>>>>>>>>>>>>>> AUTO DEBUG ON <<<<<<<<<<<<<')

        # self.SimpleChainTest()
        # self.ArmTest()
        # self.LegTest()
        # self.SpineTest()
        self.AnimPosesTest()
        # self.MirrorTest()
        # self.LimbTypesTest()
        # self.SkeletonTest()

# ================= TESTS =============================

    def NewScene(self):
        log.funcFileDebug()
        pm.newFile(f=1)
        pm.flushUndo()

    def SimpleChainTest(self):
        self.NewScene()
        path = os.path.join(self.folder, 'TEST_SimpleChain_01.ma')
        rigRoot = self.pfrs.AddRigRoot()
        rigRoot.operation.set('Behavior')
        pm.importFile(path)
        self.pfrs.InitSceneJoints(rigRoot)
        self.pfrs.LimbSetup.AutoBuildByHierarchy(rigRoot)

    def ArmTest(self):
        self.NewScene()
        path = os.path.join(self.folder, 'TEST_ArmFingers_01.ma')
        pm.importFile(path)
        rigRoot = self.pfrs.AddRigRoot()
        rigRoot.operation.set('Behavior')
        # self.pfrs.LimbSetup.AutoBuildByHierarchy(rigRoot)
        self.pfrs.LimbSetup.AutoBuildByName(rigRoot)
        
    def LegTest(self):
        self.NewScene()
        path = os.path.join(self.folder, 'TEST_LegFoot_01.ma')
        pm.importFile(path)
        rigRoot = self.pfrs.AddRigRoot()
        rigRoot.operation.set('Behavior')
        # self.pfrs.LimbSetup.AutoBuildByHierarchy(rigRoot)
        self.pfrs.LimbSetup.AutoBuildByName(rigRoot)

    def SpineTest(self):
        self.NewScene()
        path = os.path.join(self.folder, 'TEST_Spine_01.ma')
        pm.importFile(path)
        rigRoot = self.pfrs.AddRigRoot()
        rigRoot.operation.set('Behavior')
        self.pfrs.LimbSetup.AutoBuildByName(rigRoot)
        
    def MirrorTest(self):
        self.NewScene()
        path = os.path.join(self.folder, 'TEST_Mirror_01.ma')
        pm.importFile(path)
        rigRoot = self.pfrs.AddRigRoot()
        rigRoot.operation.set('Behavior')
        self.pfrs.LimbSetup.AutoBuildByName(rigRoot)
        
    def AnimPosesTest(self):
        path = os.path.join(self.folder, 'PFX_AnimRig.ma')
        pm.openFile(path, f=1)

    def LimbTypesTest(self):
        self.NewScene()
        path = os.path.join(self.folder, 'TEST_LimbTypes_01.ma')
        pm.importFile(path)
        # self.parent.UpdateEnableUI()
        # self.parent.Setup_Editable()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=2) # Select Limb setup tab
        # self.rigLS.AutoBuildByName()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=3) # Select Limb setup tab

    def SkeletonTest(self):
        self.NewScene()
        path = os.path.join(self.folder, 'temp_joints.ma')
        pm.importFile(path)
        # self.UpdateEnableUI()
        # self.Setup_Editable()
        # pm.tabLayout(self.rig_ui.tab, e=1, sti=2) # Select Limb setup tab
        # # joints = pm.ls('Pelvis_Root_M')
        # # joints += pm.ls('Spine_M_S01')
        # # limb = self.rigBHV.AddJointLimb(joints)
        # # self.rig_ui.AddLimb(limb)
        # # pm.tabLayout(self.tab, e=1, sti=2) # Select SKINNING tab
        # mesh1 = pm.ls('pSphereShape1')[0]
        # mesh2 = pm.ls('pCubeShape1')[0]
        # self.skin_ui.meshMng.AddMesh(mesh1)
        # self.skin_ui.meshMng.AddMesh(mesh2)
        # self.skin_ui.skinMng.AddSkinAttrs(mesh1)
        # self.skin_ui.skinMng.AddSkinAttrs(mesh2)
        # pm.tabLayout(self.skin_ui.tab, e=1, sti=3) # Select PAINT WEIGHTS tab

