

from Qt import QtWidgets, QtCore

import Skeleton.Skeleton_UI as skel_ui
reload(skel_ui)

import Popups.MirrorLimbs_UI as mir_ui
import Popups.DuplicateLimbs_UI as dup_ui
reload(mir_ui)
reload(dup_ui)

class LimbSetup_UI(QtWidgets.QTabWidget):
    def __init__(self, limbSetup, mainWindow, parent=None):
        super(LimbSetup_UI, self).__init__(parent)

        self.parent = parent
        self.limbSetup = limbSetup
        self.mainWindow = mainWindow

        self.mirror_axis = '' # 'X', 'Y', 'Z'

        self._Setup()
    
    def Populate(self):
        self.skel_ui.Populate()

#=========== SETUP ====================================

    def _Setup(self):
        vl = QtWidgets.QVBoxLayout(self)
        self.limbs_tw = QtWidgets.QTabWidget()
        self.skel_ui = skel_ui.Skeleton_UI( self.limbSetup.skel, 
                                            self.mainWindow, 
                                            self.limbs_tw)
        self.limbs_tw.addTab(self.skel_ui, 'Skeleton')
        self.limbs_tw.addTab(QtWidgets.QTabWidget(self.limbs_tw), 'Behaviors')
        self.limbs_tw.addTab(QtWidgets.QTabWidget(self.limbs_tw), 'Appearance')
        vl.addWidget(self.limbs_tw)
    
    
#=========== SETUP ====================================

    def Mirror_X(self):
        self.mirror_axis = 'X'
        self._Mirror_Dialog()

    def Mirror_Y(self):
        self.mirror_axis = 'Y'
        self._Mirror_Dialog()

    def Mirror_Z(self):
        self.mirror_axis = 'Z'
        self._Mirror_Dialog()

    def _Mirror_Dialog(self):
        mirUI = mir_ui.MirrorLimbs_UI(self.limbSetup.limbMng, self)
        mirUI.exec_()
    
    def _Mirror_Limbs(self, limbIDs):
        '''Only call by dialog'''
        for limbID in limbIDs:
            sourceLimbIDs = self.limbSetup.limbMng.GetLimbCreationOrder(limbID)
            sourceToTargetLimbIDs = {}
            for i in range(len(sourceLimbIDs)):
                sourceLimbID = sourceLimbIDs[i]
                targetLimbID = self.limbSetup.limbMng.Mirror(sourceLimbID)
                self.limbSetup.jntMng.Mirror(sourceLimbID, targetLimbID, self.mirror_axis)
                sourceToTargetLimbIDs[sourceLimbID] = targetLimbID
                sourceParentID = self.limbSetup.limbMng.GetParentID(sourceLimbID)
                if sourceParentID in sourceToTargetLimbIDs:
                    self.limbSetup.limbMng.SetParent(targetLimbID, sourceToTargetLimbIDs[sourceParentID])
                    self.limbSetup.jntMng.SetParentLimb(targetLimbID, sourceToTargetLimbIDs[sourceParentID])
                else:
                    self.limbSetup.limbMng.SetParent(targetLimbID, sourceParentID)
                    self.limbSetup.jntMng.SetParentLimb(targetLimbID, sourceParentID)
                self.skel_ui.AddLimb(targetLimbID)
                self.skel_ui.RenameLimb(sourceLimbID)
            self.limbSetup.limbMng.SetLimbMirrorRoot(limbID)
            self.skel_ui.limbProp_gb.SetLimb(limbID)
            self.skel_ui.limbProp_gb.Populate()
    
    def Duplicate_Dialog(self):
        dupUI = dup_ui.DuplicateLimbs_UI(self.limbSetup.limbMng, self)
        dupUI.exec_()
    
    def _Duplicate_Limbs(self, limbIDs):
        '''Only call by dialog'''
        for limbID in limbIDs:
            sourceLimbIDs = self.limbSetup.limbMng.GetLimbCreationOrder(limbID)
            sourceToTargetLimbIDs = {}
            for i in range(len(sourceLimbIDs)):
                sourceLimbID = sourceLimbIDs[i]
                targetLimbID = self.limbSetup.limbMng.Duplicate(sourceLimbID)
                self.limbSetup.jntMng.Duplicate(sourceLimbID, targetLimbID)
                sourceToTargetLimbIDs[sourceLimbID] = targetLimbID
                sourceParentID = self.limbSetup.limbMng.GetParentID(sourceLimbID)
                if sourceParentID in sourceToTargetLimbIDs:
                    self.limbSetup.limbMng.SetParent(targetLimbID, sourceToTargetLimbIDs[sourceParentID])
                    self.limbSetup.jntMng.SetParentLimb(targetLimbID, sourceToTargetLimbIDs[sourceParentID])
                else:
                    self.limbSetup.limbMng.SetParent(targetLimbID, sourceParentID)
                    self.limbSetup.jntMng.SetParentLimb(targetLimbID, sourceParentID)
                self.skel_ui.AddLimb(targetLimbID)
                # MISSING LOGIC TO ADD TO SCENE BASED ON TAB
                # Missing Behavior + appearace logic too
    












