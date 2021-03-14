
import os

import pymel.core as pm

class PFRS_Debug:
    def __init__(self, parent):
        self.parent = parent
        self.pfrs = parent.pfrs
        self.limbMng = parent.limbMng
        self.rigLS = parent.pfrs.rigLS

        # self.pfrs.NewScene()
        # self.pfrs.NewRoot('PFX', range(5), True)
        folder = os.path.dirname(__file__)
        self.folder = os.path.join(folder,'TESTING_FILES')

        self._Setup()# IN FINAL VERSION, MOVE THIS DOWN BELOW

        if not os.path.isfile(__file__.replace('.pyc', '.py')):
            print ('>>>>>>>>>>>>>> AUTO DEBUG OFF <<<<<<<<<<<<<')
            return
        print ('>>>>>>>>>>>>>> AUTO DEBUG ON <<<<<<<<<<<<<')

        self.SimpleChainTest(1)
        # self.LimbTypesTest(1)
        # self.LegTest(1)
        # self.ArmTest(1)
        # self.SpineTest(1)
        # self.SkeletonTest()

# ================= SETUP =============================

    def _Setup(self):
        with self.parent.win:
            with pm.menu('Debug'):
                pm.menuItem(l='Simple Chain Test', c=self.SimpleChainTest)
                # pm.menuItem(l='Limb Types Test', c=self.LimbTypesTest)
                pm.menuItem(l='Arm Test', c=self.ArmTest)
                pm.menuItem(l='Leg Test', c=self.LegTest)
                pm.menuItem(l='Spine Test', c=self.SpineTest)
                # pm.menuItem(l='Skeleton Test', c=self.SkeletonTest)

# ================= TESTS =============================

    def _NewScene(self):
        pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=1)
        pm.newFile(f=1)
        pm.flushUndo()
        self.pfrs.InitScene()

    def LimbTypesTest(self, ignore):
        self._NewScene()
        self.parent.logger.info('DEBUG TESTS > Limb Types')
        path = os.path.join(self.folder, 'TEST_LimbTypes_01.ma')
        pm.importFile(path)
        self.parent.UpdateEnableUI()
        self.parent.Setup_Editable()
        pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=2) # Select Limb setup tab
        self.rigLS.AutoBuildByName()
        pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=3) # Select Limb setup tab

    def SimpleChainTest(self, ignore):
        self._NewScene()
        self.parent.logger.info('DEBUG TESTS > Limb Types')
        path = os.path.join(self.folder, 'TEST_SimpleChain_01.ma')
        pm.importFile(path)
        self.parent.UpdateEnableUI()
        self.parent.Setup_Editable()
        pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=2) # Select Limb setup tab
        # self.rigLS.AutoBuildByHierarchy()
        # self.rigLS.AutoBuildByName()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=3)

    def LegTest(self, ignore):
        self._NewScene()
        self.parent.logger.info('DEBUG TESTS > Leg + Foot')
        path = os.path.join(self.folder, 'TEST_LegFoot_01.ma')
        pm.importFile(path)
        self.parent.UpdateEnableUI()
        self.parent.Setup_Editable()
        pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=2) # LS
        self.rigLS.AutoBuildByName()
        pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=3) # BHV

    def ArmTest(self, ignore):
        self._NewScene()
        self.parent.logger.info('DEBUG TESTS > Arm Test')
        path = os.path.join(self.folder, 'TEST_ArmFingers_01.ma')
        pm.importFile(path)
        self.parent.UpdateEnableUI()
        self.parent.Setup_Editable()
        pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=2) 
        # self.rigLS.AutoBuildByName()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=3)
        
    def SpineTest(self, ignore):
        self._NewScene()
        self.parent.logger.info('DEBUG TESTS > Relative FK')
        path = os.path.join(self.folder, 'TEST_Spine_01.ma')
        pm.importFile(path)
        self.parent.UpdateEnableUI()
        self.parent.Setup_Editable()
        pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=2)
        self.rigLS.AutoBuildByName()
        pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=3)
        # spine = pm.ls('PFX_Spine_Limb_M_NODE', tr=1)[0]
        # self.limbMng.SetBhvType(spine, 10) # Relative FK
        # # root = pm.ls('PFX_Root_Limb_M_NODE', tr=1)[0]
        # # self.parent.limbMng.Reparent(spine, -1)
        # # self.parent.limbMng.Reparent(root, spine)
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=3) # Select Limb setup tab

    def SkeletonTest(self, ignore):
        self._NewScene()
        self.parent.logger.info('DEBUG TESTS > Full Skeleton')
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

