
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

        # self.AnimPosesTest()
        # self.SimpleChainTest()
        # self.LimbTypesTest()
        # self.LegTest()
        self.ArmTest()
        # self.SpineTest()
        # self.SkeletonTest()

# ================= TESTS =============================

    def NewScene(self):
        log.funcFileDebug()
        pm.newFile(f=1)
        pm.flushUndo()

    def AnimPosesTest(self):
        self.NewScene()
        path = os.path.join(self.folder, 'PFX_AnimRig.ma')
        pm.openFile(path, f=1)

    def SimpleChainTest(self):
        self.NewScene()
        path = os.path.join(self.folder, 'TEST_SimpleChain_01.ma')
        rigRoot = self.pfrs.AddRigRoot()
        rigRoot.subTab.set('Behavior')
        pm.importFile(path)
        self.pfrs.InitSceneJoints(rigRoot)
        self.pfrs.LimbSetup.AutoBuildByHierarchy(rigRoot)
        # rigRoot.subTab.set('Appearance')
        # self.parent.UpdateEnableUI()
        # self.parent.Setup_Editable()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=2) # Select Limb setup tab
        # self.rigLS.AutoBuildByHierarchy()
        # self.rigLS.AutoBuildByName()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=3)
        # pm.tabLayout(self.parent.tab, e=1, sti=3)

    def LimbTypesTest(self):
        self.NewScene()
        path = os.path.join(self.folder, 'TEST_LimbTypes_01.ma')
        pm.importFile(path)
        # self.parent.UpdateEnableUI()
        # self.parent.Setup_Editable()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=2) # Select Limb setup tab
        # self.rigLS.AutoBuildByName()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=3) # Select Limb setup tab

    def LegTest(self):
        self.NewScene()
        path = os.path.join(self.folder, 'TEST_LegFoot_01.ma')
        pm.importFile(path)
        # self.parent.UpdateEnableUI()
        # self.parent.Setup_Editable()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=2) # LS
        # self.rigLS.AutoBuildByName()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=3) # BHV

    def ArmTest(self):
        self.NewScene()
        path = os.path.join(self.folder, 'TEST_ArmFingers_01.ma')
        pm.importFile(path)
        rigRoot = self.pfrs.AddRigRoot()
        rigRoot.subTab.set('Behavior')
        # self.pfrs.LimbSetup.AutoBuildByHierarchy(rigRoot)
        self.pfrs.LimbSetup.AutoBuildByName(rigRoot)
        
    def SpineTest(self):
        self.NewScene()
        path = os.path.join(self.folder, 'TEST_Spine_01.ma')
        pm.importFile(path)
        # self.parent.UpdateEnableUI()
        # self.parent.Setup_Editable()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=2)
        # self.rigLS.AutoBuildByName()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=3)
        # spine = pm.ls('PFX_Spine_Limb_M_NODE', tr=1)[0]
        # self.limbMng.SetBhvType(spine, 10) # Relative FK
        # # root = pm.ls('PFX_Root_Limb_M_NODE', tr=1)[0]
        # # self.parent.limbMng.Reparent(spine, -1)
        # # self.parent.limbMng.Reparent(root, spine)
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

