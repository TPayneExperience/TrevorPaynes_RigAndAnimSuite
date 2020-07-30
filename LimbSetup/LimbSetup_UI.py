

from Qt import QtWidgets, QtCore

import Skeleton.Skeleton_UI as skel_ui
reload(skel_ui)

class LimbSetup_UI(QtWidgets.QTabWidget):
    def __init__(self, limbSetup, mainWindow, parent=None):
        super(LimbSetup_UI, self).__init__(parent)

        self.parent = parent
        self.limbSetup = limbSetup
        self.mainWindow = mainWindow

        self._Setup()
    
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
    
    def Populate(self):
        self.skel_ui.Populate()











