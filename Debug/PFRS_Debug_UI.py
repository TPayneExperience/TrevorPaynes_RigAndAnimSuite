
import imp
import os

import pymel.core as pm

import Debug.PFRS_Debug as dbg
import Utilities.Logger as log

class PFRS_Debug_UI:
    def __init__(self, parent):
        self.parent = parent
        self.pfrs = parent.pfrs
        self.debug = dbg.PFRS_Debug(self)
        if os.path.exists(self.debug.folder):
            self._Setup()

# ================= SETUP =============================

    def _Setup(self):
        with self.parent.win:
            with pm.menu('Debug'):
                pm.menuItem(l='Arm Test', c=self.ArmTest)
                pm.menuItem(l='Leg Test', c=self.LegTest)
                pm.menuItem(l='Face Test', c=self.FaceTest)
                pm.menuItem(l='Spine Test', c=self.SpineTest)
                pm.menuItem(l='Tail Test', c=self.TailTest)

# ================= TESTS =============================

    def LegTest(self, ignore):
        log.funcFileDebug()
        self.debug.LegTest()
        self.parent.NewLoadRig(1)
        self.parent.InitOptionMenues()

    def FaceTest(self, ignore):
        log.funcFileDebug()
        self.debug.FaceTest()
        self.parent.NewLoadRig(1)
        self.parent.InitOptionMenues()

    def ArmTest(self, ignore):
        log.funcFileDebug()
        self.debug.ArmTest()
        self.parent.NewLoadRig(1)
        self.parent.InitOptionMenues()
        
    def SpineTest(self, ignore):
        log.funcFileDebug()
        self.debug.SpineTest()
        self.parent.NewLoadRig(1)
        self.parent.InitOptionMenues()

    def TailTest(self, ignore):
        log.funcFileDebug()
        self.debug.TailTest()
        self.parent.NewLoadRig(1)
        self.parent.InitOptionMenues()


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
