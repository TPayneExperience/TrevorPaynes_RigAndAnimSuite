
import os

import pymel.core as pm

class PFRS_Debug:
    def __init__(self, parent):
        self.parent = parent
        self.parent.NewRig('PFX', 
                    range(5), 
                    True)

        if not os.path.isfile(__file__.replace('.pyc', '.py')):
            print '>>>>>>>>>>>>>> AUTO DEBUG OFF <<<<<<<<<<<<<'
            return
        print '>>>>>>>>>>>>>> AUTO DEBUG ON <<<<<<<<<<<<<'

        # self.LegTest()
        # self.RfkTest()
        # self.SimpleChainTest()
        self.LimbTypesTest()
        # self.ArmTest()
        # self.SkeletonTest()

# ================= TESTS =============================

    def LegTest(self):
        self.parent.logger.info('DEBUG TESTS > Leg + Foot')
        path = r'D:/Assets/Programming/Python/Maya/ModularAutoRigger'
        path += r'/TESTING_FILES/TEST_LegFoot_01.ma'
        pm.importFile(path)
        self.parent.UpdateEnableUI()
        self.parent.Setup_Editable()
        pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=2) # Select Limb setup tab
        self.parent.rig_ui.limbSetup_ui.sceneHier_ui.AutoBuildByName(0)
        pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=3) # Select Limb setup tab

    def RfkTest(self):
        self.parent.logger.info('DEBUG TESTS > Relative FK')
        path = r'D:/Assets/Programming/Python/Maya/ModularAutoRigger'
        path += r'/TESTING_FILES/TEST_Spine_01.ma'
        pm.importFile(path)
        self.parent.UpdateEnableUI()
        self.parent.Setup_Editable()
        pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=2) # Select Limb setup tab
        self.parent.rig_ui.limbSetup_ui.sceneHier_ui.AutoBuildByName(0)
        spine = pm.ls('PFX_Spine_Limb_M_NODE', type='transform')[0]
        self.parent.bhvMng.SetBhvType(spine, 10) # Relative FK
        # root = pm.ls('PFX_Root_Limb_M_NODE', type='transform')[0]
        # self.parent.limbMng.Reparent(spine, -1)
        # self.parent.limbMng.Reparent(root, spine)
        pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=3) # Select Limb setup tab

    def SimpleChainTest(self):
        self.parent.logger.info('DEBUG TESTS > Limb Types')
        path = r'D:/Assets/Programming/Python/Maya/ModularAutoRigger'
        path += r'/TESTING_FILES/TEST_SimpleChain_01.ma'
        pm.importFile(path)
        self.parent.UpdateEnableUI()
        self.parent.Setup_Editable()
        pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=2)

    def LimbTypesTest(self):
        self.parent.logger.info('DEBUG TESTS > Limb Types')
        path = r'D:/Assets/Programming/Python/Maya/ModularAutoRigger'
        path += r'/TESTING_FILES/TEST_LimbTypes_01.ma'
        pm.importFile(path)
        self.parent.UpdateEnableUI()
        self.parent.Setup_Editable()
        pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=2) # Select Limb setup tab
        # self.parent.rig_ui.limbSetup_ui.sceneHier_ui.AutoBuildByName(0)
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=3) # Select Limb setup tab

    def ArmTest(self):
        self.parent.logger.info('DEBUG TESTS > Arm Skin')
        path = r'D:/Assets/Programming/Python/Maya/ModularAutoRigger'
        path += r'/TESTING_FILES/temp_joints2.ma'
        pm.importFile(path)
        self.UpdateEnableUI()
        self.Setup_Editable()
        pm.tabLayout(self.rig_ui.tab, e=1, sti=2) # Select Limb setup tab
        self.rig_ui.limbSetup_ui.sceneHier_ui.AutoBuildByName(0)
        pm.tabLayout(self.tab, e=1, sti=2) # Select SKINNING tab
        # mesh1 = pm.ls('pCylinderShape1')[0]
        # mesh2 = pm.ls('pCylinderShape2')[0]
        # mesh3 = pm.ls('pCylinderShape3')[0]

        for mesh in [mesh1, mesh2, mesh3]:
            self.skin_ui.meshMng.AddMesh(mesh)
            self.skin_ui.skinMng.AddSkinAttrs(mesh)
            for limb in self.limbMng.GetAllLimbs():
                self.skin_ui.skinMng.SetDefaultLimbJointWeights(mesh, limb)

        pm.tabLayout(self.skin_ui.tab, e=1, sti=3) # Select PAINT WEIGHTS tab

    def SkeletonTest(self):
        self.parent.logger.info('DEBUG TESTS > Full Skeleton')
        path = r'D:/Assets/Programming/Python/Maya/ModularAutoRigger'
        path += r'/TESTING_FILES/temp_joints.ma'
        pm.importFile(path)
        # self.UpdateEnableUI()
        # self.Setup_Editable()
        # pm.tabLayout(self.rig_ui.tab, e=1, sti=2) # Select Limb setup tab
        # # joints = pm.ls('Pelvis_Root_M')
        # # joints += pm.ls('Spine_M_S01')
        # # limb = self.bhvMng.AddJointLimb(joints)
        # # self.rig_ui.AddLimb(limb)
        # # pm.tabLayout(self.tab, e=1, sti=2) # Select SKINNING tab
        # mesh1 = pm.ls('pSphereShape1')[0]
        # mesh2 = pm.ls('pCubeShape1')[0]
        # self.skin_ui.meshMng.AddMesh(mesh1)
        # self.skin_ui.meshMng.AddMesh(mesh2)
        # self.skin_ui.skinMng.AddSkinAttrs(mesh1)
        # self.skin_ui.skinMng.AddSkinAttrs(mesh2)
        # pm.tabLayout(self.skin_ui.tab, e=1, sti=3) # Select PAINT WEIGHTS tab

