
import os
import sys

import Qt
from Qt import QtWidgets, QtCore, QtGui
from Skeleton.Skeleton_UI import Skeleton_UI
# import tpRigAndAnimSuite as tpras


__author__ = 'Trevor Payne'
__version__ = '1.0'



QT_VER = Qt.__binding__
PY_VER = sys.version[:3]

class TPRigAndAnimSuite_UI_MainWindow(QtWidgets.QMainWindow):
    def __init__(self, parent=None):
        super(TPRigAndAnimSuite_UI_MainWindow, self).__init__(parent)
        self._Setup()

    def _Setup(self):
        self.setCentralWidget(TPRigAndAnimSuite_UI_Widget(self))
        self.setWindowTitle("Trevor Payne's Rig & Anim Suite v" + __version__)
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
        self.skel_ui = Skeleton_UI(self.tabWgt)
        self.tabWgt.addTab(self.skel_ui, 'Skeleton')
        return self.tabWgt
    
#=========== FUNCTIONALITY ====================================

    def Populate(self):
        self.skel_ui.Populate()



if __name__ == '__main__':
    print (PY_VER)
    print (QT_VER)
    app = QtWidgets.QApplication(sys.argv)
    
    ex = TPRigAndAnimSuite_UI_MainWindow()
    ex.show()
    sys.exit(app.exec_())
