
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

    def AnimPosesTest(self, ignore):
        self.logger.info('DEBUG TESTS > AnimPosesTest')
        self.debug.AnimPosesTest()
        self.pfrs.InitScene()

    def SimpleChainTest(self, ignore):
        self.logger.info('DEBUG TESTS > SimpleChainTest')
        self.debug.SimpleChainTest()
        self.pfrs.InitScene()

    def LimbTypesTest(self, ignore):
        self.logger.info('DEBUG TESTS > LimbTypesTest')
        self.debug.LimbTypesTest()
        self.pfrs.InitScene()

    def LegTest(self, ignore):
        self.logger.info('DEBUG TESTS > LegTest')
        self.debug.LegTest()
        self.pfrs.InitScene()

    def ArmTest(self, ignore):
        self.logger.info('DEBUG TESTS > ArmTest')
        self.debug.ArmTest()
        self.pfrs.InitScene()
        
    def SpineTest(self, ignore):
        self.logger.info('DEBUG TESTS > SpineTest')
        self.debug.SpineTest()
        self.pfrs.InitScene()

    def SkeletonTest(self, ignore):
        self.logger.info('DEBUG TESTS > SkeletonTest')
        self.debug.SkeletonTest()
        self.pfrs.InitScene()

