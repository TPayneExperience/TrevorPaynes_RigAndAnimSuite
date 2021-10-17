
import imp
import os

import pymel.core as pm

import Utilities.Logger as log

class PFRS_Debug:
    def __init__(self, parent):
        self.pfrs = parent.pfrs

        folder = os.path.dirname(__file__)
        folder = os.path.dirname(folder)
        folder = os.path.dirname(folder)
        self.folder = os.path.join( folder, 
                                    'PFRS_ExternalFiles', 
                                    'TESTING_FILES')

        if not os.path.isfile(__file__.replace('.pyc', '.py')):
            print ('>>>>>>>>>>>>>> AUTO DEBUG OFF <<<<<<<<<<<<<')
            return
        print ('>>>>>>>>>>>>>> AUTO DEBUG ON <<<<<<<<<<<<<')

# ================= TESTS =============================

    def NewScene(self):
        log.funcFileDebug()
        pm.newFile(f=1)
        pm.flushUndo()

    def ArmTest(self):
        self.NewScene()
        path = os.path.join(self.folder, 'TEST_ArmFingers_01.ma')
        pm.importFile(path)
        rigRoot = self.pfrs.AddRigRoot()
        rigRoot.operation.set('Limb Setup')
        
    def LegTest(self):
        self.NewScene()
        path = os.path.join(self.folder, 'TEST_LegFoot_01.ma')
        pm.importFile(path)
        rigRoot = self.pfrs.AddRigRoot()
        rigRoot.operation.set('Limb Setup')

    def FaceTest(self):
        self.NewScene()
        path = os.path.join(self.folder, 'TEST_Face_01.ma')
        pm.importFile(path)
        rigRoot = self.pfrs.AddRigRoot()
        rigRoot.operation.set('Limb Setup')

    def SpineTest(self):
        self.NewScene()
        path = os.path.join(self.folder, 'TEST_Spine_01.ma')
        pm.importFile(path)
        rigRoot = self.pfrs.AddRigRoot()
        rigRoot.operation.set('Limb Setup')
        
    def TailTest(self):
        self.NewScene()
        path = os.path.join(self.folder, 'TEST_Tail_01.ma')
        pm.importFile(path)
        rigRoot = self.pfrs.AddRigRoot()
        rigRoot.operation.set('Limb Setup')
        

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
