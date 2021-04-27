
import pymel.core as pm

import PFRS_Debug as dbg
reload(dbg)

import Common.Logger as log
reload(log)

class PFRS_Debug_UI:
    def __init__(self, parent):
        self.parent = parent
        self.pfrs = parent.pfrs
        self.debug = dbg.PFRS_Debug(self)

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
        log.funcFileDebug()
        self.debug.AnimPosesTest()
        self.parent.InitRigRoots()
        self.parent.InitOptionMenues()

    def SimpleChainTest(self, ignore):
        log.funcFileDebug()
        self.debug.SimpleChainTest()
        self.parent.InitRigRoots()
        self.parent.InitOptionMenues()

    def LimbTypesTest(self, ignore):
        log.funcFileDebug()
        self.debug.LimbTypesTest()
        self.parent.InitRigRoots()
        self.parent.InitOptionMenues()

    def LegTest(self, ignore):
        log.funcFileDebug()
        self.debug.LegTest()
        self.parent.InitRigRoots()
        self.parent.InitOptionMenues()

    def ArmTest(self, ignore):
        log.funcFileDebug()
        self.debug.ArmTest()
        self.parent.InitRigRoots()
        self.parent.InitOptionMenues()
        
    def SpineTest(self, ignore):
        log.funcFileDebug()
        self.debug.SpineTest()
        self.parent.InitRigRoots()
        self.parent.InitOptionMenues()

    def SkeletonTest(self, ignore):
        log.funcFileDebug()
        self.debug.SkeletonTest()
        self.parent.InitRigRoots()
        self.parent.InitOptionMenues()

