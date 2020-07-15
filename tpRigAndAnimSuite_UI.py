
import os
import sys

import Qt
from Qt import QtWidgets, QtCore, QtGui

import RigAndAnim_Manager as rig
import Skeleton.Skeleton_UI as skel_ui
import RigSetup.RigSetup_UI as rs_ui

reload(rig)
reload(skel_ui)
reload(rs_ui)

__author__ = 'Trevor Payne'
__version__ = '1.0'


class TPRigAndAnimSuite_UI_MainWindow(QtWidgets.QMainWindow):
    def __init__(self, parent=None):
        super(TPRigAndAnimSuite_UI_MainWindow, self).__init__(parent)
        print (333)
        self._Setup()

    def _Setup(self):
        self.setCentralWidget(TPRigAndAnimSuite_UI_Widget(self))
        self.setWindowTitle("Trevor Payne Free Rig & Anim Suite v" + __version__)
        self._Setup_MenuBar()
        self.statusBar().showMessage('Drag & drop or Right Click on stuff!')
        self.resize(600, 500)
    
    def _Setup_MenuBar(self):
        mb = self.menuBar()
        fileMenu = mb.addMenu('File')
        newRigAct = fileMenu.addAction('New Rig...')
        newRigAct = fileMenu.addAction('Open Rig...')
        newRigAct = fileMenu.addAction('Rig Settings...')

        fileMenu.addSeparator()

        quitAct = fileMenu.addAction('Quit')
        quitAct.triggered.connect(self.close)

    
class TPRigAndAnimSuite_UI_Widget(QtWidgets.QWidget):
    def __init__(self, parent=None):
        super(TPRigAndAnimSuite_UI_Widget, self).__init__(parent)

        # self.rigSetup = rs.RigSetup()
        # self.skel = skel.Skeleton(self.rigSetup.nameMng)
        self.rigMng = rig.RigAndAnim_Manager()

        self._Setup()
        self.Populate()

#=========== SETUP ====================================

    def _Setup(self):
        v_layout = QtWidgets.QVBoxLayout(self)
        v_layout.addLayout(self._Setup_HeaderButtons())
        v_layout.addWidget(self._Setup_TabWidget())
    
    def _Setup_HeaderButtons(self):
        h_layout = QtWidgets.QHBoxLayout()
        self.saveBtn = QtWidgets.QPushButton('Save')
        self.loadBtn = QtWidgets.QPushButton('Load')
        h_layout.addWidget(self.saveBtn)
        h_layout.addWidget(self.loadBtn)
        h_layout.addStretch()
        return h_layout
    
    def _Setup_TabWidget(self):
        self.tabWgt = QtWidgets.QTabWidget()
        self.skel_ui = skel_ui.Skeleton_UI(self.rigMng.skel, self.tabWgt)
        self.tabWgt.addTab(self.skel_ui, 'Skeleton')
        return self.tabWgt
    
#=========== FUNCTIONALITY ====================================

    def Populate(self):
        self.skel_ui.Populate()



if __name__ == '__main__':
    app = QtWidgets.QApplication(sys.argv)
    
    ex = TPRigAndAnimSuite_UI_MainWindow()
    ex.show()
    sys.exit(app.exec_())
