
import pymel.core as pm

class PFRS_Debug_UI:
    def __init__(self, parent):
        self.parent = parent
        self.pfrs = parent.pfrs
        self.limbMng = parent.pfrs.limbMng
        self.rigLS = parent.pfrs.rigLS
        self.logger = parent.pfrs.logger
        self.debug = parent.pfrs.debug

        self._Setup()

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

    # def _NewScene(self):
    #     self.logger.info('DEBUG TESTS > _NewScene')
    #     pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=1)
    #     pm.newFile(f=1)
    #     pm.flushUndo()
        # self.pfrs.InitScene()

    def AnimPosesTest(self, ignore):
        self.logger.info('DEBUG TESTS > Anim Poses Test')
        self.debug.AnimPosesTest()
        # self._NewScene()
        # path = os.path.join(self.folder, 'PFX_AnimRig.ma')
        # pm.openFile(path, f=1)
        # self.pfrs.InitScene()
        # pm.tabLayout(self.parent.tab, e=1, sti=3)
        # self._NewScene()
        # pm.importFile(path)
        # self.parent.UpdateEnableUI()
        # self.parent.Setup_Editable()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=2) # Select Limb setup tab
        # self.rigLS.AutoBuildByHierarchy()
        # # self.rigLS.AutoBuildByName()
        # # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=3)
        # pm.tabLayout(self.parent.tab, e=1, sti=3)


    def SimpleChainTest(self, ignore):
        # self._NewScene()
        self.logger.info('DEBUG TESTS > Simple Chain Test')
        # path = os.path.join(self.folder, 'TEST_SimpleChain_01.ma')
        # pm.importFile(path)
        # self.parent.UpdateEnableUI()
        # self.parent.Setup_Editable()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=2) # Select Limb setup tab
        # self.rigLS.AutoBuildByHierarchy()
        # self.rigLS.AutoBuildByName()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=3)
        # pm.tabLayout(self.parent.tab, e=1, sti=3)

    def LimbTypesTest(self, ignore):
        # self._NewScene()
        self.logger.info('DEBUG TESTS > Limb Types')
        # path = os.path.join(self.folder, 'TEST_LimbTypes_01.ma')
        # pm.importFile(path)
        # self.parent.UpdateEnableUI()
        # self.parent.Setup_Editable()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=2) # Select Limb setup tab
        # self.rigLS.AutoBuildByName()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=3) # Select Limb setup tab

    def LegTest(self, ignore):
        # self._NewScene()
        self.logger.info('DEBUG TESTS > Leg + Foot')
        # path = os.path.join(self.folder, 'TEST_LegFoot_01.ma')
        # pm.importFile(path)
        # self.parent.UpdateEnableUI()
        # self.parent.Setup_Editable()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=2) # LS
        # self.rigLS.AutoBuildByName()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=3) # BHV

    def ArmTest(self, ignore):
        # self._NewScene()
        self.logger.info('DEBUG TESTS > Arm Test')
        # path = os.path.join(self.folder, 'TEST_ArmFingers_01.ma')
        # pm.importFile(path)
        # self.parent.UpdateEnableUI()
        # self.parent.Setup_Editable()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=2) 
        # self.rigLS.AutoBuildByName()
        # pm.tabLayout(self.parent.rig_ui.tab, e=1, sti=3)
        
    def SpineTest(self, ignore):
        # self._NewScene()
        self.logger.info('DEBUG TESTS > Relative FK')
        # path = os.path.join(self.folder, 'TEST_Spine_01.ma')
        # pm.importFile(path)
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

    def SkeletonTest(self, ignore):
        # self._NewScene()
        self.logger.info('DEBUG TESTS > Full Skeleton')
        # path = os.path.join(self.folder, 'temp_joints.ma')
        # pm.importFile(path)
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

