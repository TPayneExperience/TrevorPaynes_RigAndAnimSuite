
import os
import sys

import Qt
from Qt import QtWidgets, QtCore, QtGui

import RigAndAnim_Manager as rig
reload(rig)

import LimbSetup.Skeleton.Skeleton_UI as skel_ui
reload(skel_ui)

import RigSetup.RigSetup_UI as rs_ui
reload(rs_ui)

import Utils.File_Manager as fm
import Utils.Json_Manager as js
reload(fm)
reload(js)

import SaveLoad.SaveLoad_Manager as slm
import SaveLoad.Save_Manager_UI as smUI
import SaveLoad.Load_Manager_UI as lmUI
reload(slm)
reload(smUI)
reload(lmUI)


__author__ = 'Trevor Payne'
__version__ = '0.1'


class TPRigAndAnimSuite_UI_MainWindow(QtWidgets.QMainWindow):
    def __init__(self, parent=None):
        super(TPRigAndAnimSuite_UI_MainWindow, self).__init__(parent)

        self.fileMng = fm.File_Manager()
        self.jsonMng = js.Json_Manager()
        self.rigMng = rig.RigAndAnim_Manager(self.fileMng)
        self.saveLoadMng = slm.SaveLoad_Manager(
                                self.jsonMng,
                                self.rigMng.skel.saveLoadSkel,
                                None,
                                None, 
                                None)

        self._Setup()
        self.Populate()

#=========== SETUP ====================================

    def _Setup(self):
        self.setWindowTitle("Payne Free Rig Suite v%s - by Trevor Payne" % __version__)
        self.statusBar().showMessage('Drag & drop or Right Click on stuff!')
        self.resize(400, 500)

        self._Setup_MenuBar()
        self._Setup_MainTabWidget()
    
    def _Setup_MenuBar(self):
        self._Setup_MenuBar_FileMenu()
        self._Setup_MenuBar_Limbs()
        self._Setup_MenuBar_Settings()
        self._Setup_MenuBar_Help()
        
    def _Setup_MenuBar_FileMenu(self):
        fileMenu = self.menuBar().addMenu('File')
        newRigAct = fileMenu.addAction('New Rig...')
        fileMenu.addAction('Load Rig...')
        fileMenu.addSeparator()

        fileMenu.addAction('Save')
        fileMenu.addAction('Save As...')
        fileMenu.addSeparator()

        fileMenu.addAction('Build from FBX...')
        fileMenu.addSeparator()

        quitAct = fileMenu.addAction('Quit')
        quitAct.triggered.connect(self.close)
    
    def _Setup_MenuBar_Limbs(self):
        limbsMenu = self.menuBar().addMenu('Limbs')
        mirrorMenu = QtWidgets.QMenu('Mirror Limb')
        mirrorMenu.addAction('X Axis')
        mirrorMenu.addAction('Y Axis')
        mirrorMenu.addAction('Z Axis')
        limbsMenu.addMenu(mirrorMenu)

        limbsMenu.addAction('Duplicate Limb')
        limbsMenu.addSeparator()
        
        limbsMenu.addAction('Load Default Template')
        limbsMenu.addSeparator()

        limbsMenu.addAction('Load Custom Template')
        limbsMenu.addAction('Save Custom Template')

    def _Setup_MenuBar_Settings(self):
        settingsMenu = self.menuBar().addMenu('Settings')
        settingsMenu.addAction('Rig Settings...')
        settingsMenu.addAction('Set Animation Library Folder...')
        settingsMenu.addSeparator()
        settingsMenu.addAction('Tool Settings...')

    def _Setup_MenuBar_Help(self):
        helpMenu = self.menuBar().addMenu('Help')
        helpMenu.addAction('Documentation')
        helpMenu.addAction('Tutorials')

    def _Setup_MainTabWidget(self):
        self.main_tw = QtWidgets.QTabWidget()
        self.setCentralWidget(self.main_tw)
        self.main_tw.addTab(self._Setup_LimbTabWidgets(), 'Limb Setup')
        self.main_tw.addTab(QtWidgets.QTabWidget(), 'Mesh Deformation')
        self.main_tw.addTab(QtWidgets.QTabWidget(), 'Animation')
        
    def _Setup_LimbTabWidgets(self):
        self.limbs_tw = QtWidgets.QTabWidget()
        self.skel_ui = skel_ui.Skeleton_UI(self.rigMng.skel, self, self.limbs_tw)
        self.limbs_tw.addTab(self.skel_ui, 'Skeleton')
        self.limbs_tw.addTab(QtWidgets.QTabWidget(), 'Behaviors')
        self.limbs_tw.addTab(QtWidgets.QTabWidget(), 'Appearance')
        return self.limbs_tw
    
#=========== FUNCTIONALITY ====================================

    def closeEvent(self, e):
        self.skel_ui.skel.sceneMng.KillScriptJobs()
        self.skel_ui.skel.sceneMng.KillSelectionJob()
        super(TPRigAndAnimSuite_UI_MainWindow, self).closeEvent(e)
    
    def StatusMsg(self, message):
        self.statusBar().showMessage(message)

    def Populate(self):
        self.skel_ui.Populate()
    
#============================================================
    
# class TPRigAndAnimSuite_UI_Widget(QtWidgets.QWidget):
#     def __init__(self, parent=None):
#         super(TPRigAndAnimSuite_UI_Widget, self).__init__(parent)
#         self.parent = parent

#         self.fileMng = fm.File_Manager()
#         self.jsonMng = js.Json_Manager()
#         self.rigMng = rig.RigAndAnim_Manager(self.fileMng)
#         self.saveLoadMng = slm.SaveLoad_Manager(
#                                 self.jsonMng,
#                                 self.rigMng.skel.saveLoadSkel,
#                                 None,
#                                 None, 
#                                 None)

#         self._Setup()
#         self._Setup_Connections()
#         self.Populate()

# #=========== SETUP ====================================

#     def _Setup(self):
#         v_layout = QtWidgets.QVBoxLayout(self)
#         v_layout.addLayout(self._Setup_HeaderButtons())
#         v_layout.addWidget(self._Setup_TabWidget())
    
#     def _Setup_HeaderButtons(self):
#         h_layout = QtWidgets.QHBoxLayout()
#         self.save_btn = QtWidgets.QPushButton('Save')
#         self.load_btn = QtWidgets.QPushButton('Load')
#         h_layout.addWidget(self.save_btn)
#         h_layout.addWidget(self.load_btn)
#         h_layout.addStretch()
#         return h_layout
    
#     def _Setup_TabWidget(self):
#         self.tabWgt = QtWidgets.QTabWidget()
#         self.skel_ui = skel_ui.Skeleton_UI(self.rigMng.skel, self.parent, self.tabWgt)
#         self.skel_ui.SetMainWindow(self.parent)
#         self.tabWgt.addTab(self.skel_ui, 'Skeleton')
#         return self.tabWgt
    
# #=========== FUNCTIONALITY ====================================

#     def _Setup_Connections(self):
#         self.save_btn.clicked.connect(self.Save)
#         self.load_btn.clicked.connect(self.Load)

#     def Save(self):
#         saveDialog = smUI.Save_Manager_UI(  self.fileMng, 
#                                             self.saveLoadMng,
#                                             self)
#         saveDialog.exec_()

#     def Load(self):
#         loadDialog = lmUI.Load_Manager_UI(  self.fileMng, 
#                                             self.saveLoadMng,
#                                             self)
#         loadDialog.exec_()
#         self.Populate()

#     def Populate(self):
#         self.skel_ui.Populate()
    
#     def Populate_CustomWidgets(self):
#         self.skel_ui.customTemplates_lw.Populate()



if __name__ == '__main__':
    app = QtWidgets.QApplication(sys.argv)
    
    ex = TPRigAndAnimSuite_UI_MainWindow()
    ex.show()
    sys.exit(app.exec_())
