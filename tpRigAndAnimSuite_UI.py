
import os
import sys

import Qt
from Qt import QtWidgets, QtCore, QtGui

import RigAndAnim_Manager as rig
import Skeleton.Skeleton_UI as skel_ui
import RigSetup.RigSetup_UI as rs_ui
import Utils.File_Manager as fm
import Utils.Json_Manager as js

reload(rig)
reload(skel_ui)
reload(rs_ui)
reload(fm)
reload(js)


__author__ = 'Trevor Payne'
__version__ = '0.1'


class TPRigAndAnimSuite_UI_MainWindow(QtWidgets.QMainWindow):
    def __init__(self, parent=None):
        super(TPRigAndAnimSuite_UI_MainWindow, self).__init__(parent)
        print (333)
        self._Setup()

    def _Setup(self):
        self.toolUI = TPRigAndAnimSuite_UI_Widget(self)
        self.setCentralWidget(self.toolUI)
        self.setWindowTitle("Payne Free Rig Suite v%s - by Trevor Payne" % __version__)
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

    def closeEvent(self, e):
        self.toolUI.skel_ui.skel.sceneMng.KillScriptJobs()
        self.toolUI.skel_ui.skel.sceneMng.KillSelectionJob()
        super(TPRigAndAnimSuite_UI_MainWindow, self).closeEvent(e)

    
class TPRigAndAnimSuite_UI_Widget(QtWidgets.QWidget):
    def __init__(self, parent=None):
        super(TPRigAndAnimSuite_UI_Widget, self).__init__(parent)
        self.parent = parent

        self.rigMng = rig.RigAndAnim_Manager()
        self.fileMng = fm.File_Manager()
        self.jsonMng = js.Json_Manager()

        self._Setup()
        self._Setup_Connections()
        self.Populate()

#=========== SETUP ====================================

    def _Setup(self):
        v_layout = QtWidgets.QVBoxLayout(self)
        v_layout.addLayout(self._Setup_HeaderButtons())
        v_layout.addWidget(self._Setup_TabWidget())
    
    def _Setup_HeaderButtons(self):
        h_layout = QtWidgets.QHBoxLayout()
        self.save_btn = QtWidgets.QPushButton('Save')
        self.load_btn = QtWidgets.QPushButton('Load')
        h_layout.addWidget(self.save_btn)
        h_layout.addWidget(self.load_btn)
        h_layout.addStretch()
        return h_layout
    
    def _Setup_TabWidget(self):
        self.tabWgt = QtWidgets.QTabWidget()
        self.skel_ui = skel_ui.Skeleton_UI(self.rigMng.skel, self.tabWgt)
        self.skel_ui.SetMainWindow(self.parent)
        self.tabWgt.addTab(self.skel_ui, 'Skeleton')
        return self.tabWgt
    
#=========== FUNCTIONALITY ====================================

    def _Setup_Connections(self):
        self.save_btn.clicked.connect(self.Save)
        self.load_btn.clicked.connect(self.Load)

    def Save(self):
        print('Saving...')
        testPath = os.path.join(self.fileMng._templatePath, 'test.json')
        print(testPath)
        data = self.skel_ui.skel.saveLoadMng.GetData()
        self.jsonMng.Save(testPath, data)

    def Load(self):
        print('Loading...')
        testPath = os.path.join(self.fileMng._templatePath, 'test.json')
        print(testPath)
        data = self.jsonMng.Load(testPath)
        self.skel_ui.skel.saveLoadMng.LoadData(data)
        self.Populate()

    def Populate(self):
        self.skel_ui.Populate()



if __name__ == '__main__':
    app = QtWidgets.QApplication(sys.argv)
    
    ex = TPRigAndAnimSuite_UI_MainWindow()
    ex.show()
    sys.exit(app.exec_())
