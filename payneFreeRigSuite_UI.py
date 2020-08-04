
import os
import sys

import Qt
from Qt import QtWidgets, QtCore, QtGui

# import RigAndAnim_Manager as rig
# reload(rig)

import payneFreeRigSuite as pfrs
reload(pfrs)

# import LimbSetup.Skeleton.Skeleton_UI as skel_ui
# reload(skel_ui)
import LimbSetup.LimbSetup_UI as limbSetup_ui
reload(limbSetup_ui)

import RigSetup.RigSetup_UI as rs_ui
reload(rs_ui)

# import Utils.File_Manager as fm
# import Utils.Json_Manager as js
# reload(fm)
# reload(js)

# import SaveLoad.SaveLoad_Manager as slm
# import SaveLoad.Save_Manager_UI as smUI
# import SaveLoad.Load_Manager_UI as lmUI
# reload(slm)
# reload(smUI)
# reload(lmUI)



__author__ = 'Trevor Payne'
__version__ = '0.1'


class PayneFreeRigSuite_UI(QtWidgets.QMainWindow):
    def __init__(self, parent=None):
        super(PayneFreeRigSuite_UI, self).__init__(parent)

        self.pfrs = pfrs.PayneFreeRigSuite()
        # self.fileMng = fm.File_Manager()
        # self.jsonMng = js.Json_Manager()
        # self.rigMng = rig.RigAndAnim_Manager(self.fileMng)
        # self.rigMng = rig.RigAndAnim_Manager()
        # self.saveLoadMng = slm.SaveLoad_Manager(
        #                         self.jsonMng,
        #                         self.rigMng.skel.saveLoadSkel,
        #                         None,
        #                         None, 
        #                         None)

        self._Setup()
        self.Populate()

    def Populate(self):
        # TEMP
        folder = os.path.join(os.path.dirname(__file__), 'TEST_OUTPUT')
        self.pfrs.limbSetup.fileMng.SetOutputFile(os.path.join(folder, 'temp.json'))
        self.pfrs.limbSetup.fileMng.SetMeshPath(os.path.join(folder, 'temp.ma'))
        # self.limbs_tw.Populate()
        # self.skel_ui.Populate()
        self._NewRig()

#=========== SETUP ====================================

    def _Setup(self):
        self.setWindowTitle("Payne Free Rig Suite v%s - by Trevor Payne" % __version__)
        self.StatusMsg('Drag & drop or Right Click on stuff!')
        self.resize(400, 500)
        self.setWindowFlags(self.windowFlags() ^ QtCore.Qt.WindowMinMaxButtonsHint)

        self._Setup_MainTabWidget()
        self._Setup_MenuBar()
    
#=========== SETUP MENUBAR ====================================

    def _Setup_MenuBar(self):
        self._Setup_MenuBar_FileMenu()
        self._Setup_MenuBar_Limbs()
        self._Setup_MenuBar_Settings()
        self._Setup_MenuBar_Help()
        
    def _Setup_MenuBar_FileMenu(self):
        # ACTIONS
        save = QtWidgets.QAction(   'Save', 
                                    self, 
                                    triggered=self.pfrs.saveLoadRig.Save)
        saveAs = QtWidgets.QAction( 'Save As...', 
                                    self, 
                                    triggered=self.SaveAs_Dialog)
        newRig = QtWidgets.QAction( 'New Rig...', 
                                    self, 
                                    triggered=self.NewRig_Dialog)
        loadRig = QtWidgets.QAction('Load Rig...', 
                                    self, 
                                    triggered=self.LoadRig_Dialog)
        editRig = QtWidgets.QAction('Edit Rig...', 
                                    self, 
                                    triggered=self.EditRig_Dialog)
        importFBX = QtWidgets.QAction('Import FBX...', self)
        importFBX.setEnabled(False)
        exportFBX = QtWidgets.QAction('Export FBX...', self)
        exportFBX.setEnabled(False)

        # ADD TO FILEMENU
        fileMenu = self.menuBar().addMenu('File')
        fileMenu.addAction(save)
        fileMenu.addAction(saveAs)
        fileMenu.addSeparator()

        fileMenu.addAction(newRig)
        fileMenu.addAction(loadRig)
        fileMenu.addAction(editRig)
        fileMenu.addSeparator()

        fileMenu.addAction(importFBX)
        fileMenu.addAction(exportFBX)
        fileMenu.addSeparator()

        quitAct = fileMenu.addAction('Quit')
        quitAct.triggered.connect(self.close)
    
    def _Setup_MenuBar_Limbs(self):
        limbsMenu = self.menuBar().addMenu('Limbs')
        mirrorMenu = QtWidgets.QMenu('Mirror Limb')

        mirrorX = QtWidgets.QAction('X Axis', 
                                    self, 
                                    triggered=self.limbs_tw.Mirror_X)
        mirrorY = QtWidgets.QAction('Y Axis', 
                                    self, 
                                    triggered=self.limbs_tw.Mirror_Y)
        mirrorZ = QtWidgets.QAction('Z Axis', 
                                    self, 
                                    triggered=self.limbs_tw.Mirror_Z)
        duplicate = QtWidgets.QAction('Duplicate', 
                                    self, 
                                    triggered=self.limbs_tw.Duplicate_Dialog)
        
        
        save = QtWidgets.QAction('Save Template', 
                                    self, 
                                    triggered=self.limbs_tw.Save_Dialog)
        
        load = QtWidgets.QAction('Load Template', 
                                    self, 
                                    triggered=self.limbs_tw.Load_Dialog)
        

        mirrorMenu.addAction(mirrorX)
        mirrorMenu.addAction(mirrorY)
        mirrorMenu.addAction(mirrorZ)

        limbsMenu.addMenu(mirrorMenu)

        limbsMenu.addAction(duplicate)
        limbsMenu.addSeparator()

        limbsMenu.addAction(load)
        limbsMenu.addAction(save)

    def _Setup_MenuBar_Settings(self):
        # ACTIONS
        animFolder = QtWidgets.QAction(   'Set Animation Library Folder...', 
                                    self)
        animFolder.setEnabled(False)
        tool = QtWidgets.QAction(   'Tool Settings...', 
                                    self)
        tool.setEnabled(False)

        # ADD TO FILEMENU
        settingsMenu = self.menuBar().addMenu('Settings')
        settingsMenu.addAction(animFolder)
        settingsMenu.addAction(tool)

    def _Setup_MenuBar_Help(self):
        # ACTIONS
        doc = QtWidgets.QAction('Documentation...', 
                                self)
        doc.setEnabled(False)
        tut = QtWidgets.QAction('Tutorials...', 
                                self)
        tut.setEnabled(False)

        # ADD TO FILEMENU
        helpMenu = self.menuBar().addMenu('Help')
        helpMenu.addAction(doc)
        helpMenu.addAction(tut)

#=========== SETUP MAIN WIDGET====================================

    def _Setup_MainTabWidget(self):
        main_w = QtWidgets.QWidget(self)
        vl = QtWidgets.QVBoxLayout(main_w)
        self.main_tw = QtWidgets.QTabWidget()
        self.limbs_tw = limbSetup_ui.LimbSetup_UI(self.pfrs.limbSetup, self, self.main_tw)
        self.main_tw.addTab(self.limbs_tw, 'Limb Setup')
        index = self.main_tw.addTab(QtWidgets.QTabWidget(), 'Mesh Deformation')
        self.main_tw.setTabEnabled(index, False)
        index = self.main_tw.addTab(QtWidgets.QTabWidget(), 'Animation')
        self.main_tw.setTabEnabled(index, False)
        vl.addWidget(self.main_tw)
        self.setCentralWidget(main_w)
        
    
#=========== FUNCTIONALITY ====================================

    def closeEvent(self, e):
        self.pfrs.limbSetup.skel.sceneMng.KillScriptJobs()
        self.pfrs.limbSetup.skel.sceneMng.KillSelectionJob()
        super(PayneFreeRigSuite_UI, self).closeEvent(e)
    
    def StatusMsg(self, message):
        self.statusBar().showMessage(message)

    def NewRig_Dialog(self):
        rigUI = rs_ui.RigSetup_UI(  self.pfrs.nameMng,
                                    self.pfrs.fileMng,
                                    self)
        if (rigUI.exec_()):
            self._NewRig()

    def _NewRig(self):
        self.limbs_tw.NewRig()
        self.pfrs.saveLoadRig.Save()

    def EditRig_Dialog(self):
        rigUI = rs_ui.RigSetup_UI(  self.pfrs.nameMng,
                                    self.pfrs.fileMng,
                                    self)
        rigUI.SetData(  self.pfrs.nameMng.GetPrefix(),
                        self.pfrs.fileMng.GetMeshPath(),
                        self.pfrs.fileMng.GetOutputFile(),
                        self.pfrs.nameMng.GetShowPrefix(),
                        self.pfrs.nameMng.GetNamingOrder())
        if (rigUI.exec_()):
            self.limbs_tw.RigEditted()

    def LoadRig_Dialog(self):
        filePath, ignore = QtWidgets.QFileDialog.getOpenFileName(
                                                self, 
                                                'Load Rig File',
                                                __file__,
                                                '*.json')
        if (os.path.isfile(filePath)):
            self.pfrs.saveLoadRig.Load(filePath)
            self.limbs_tw.Populate()
    
    def SaveAs_Dialog(self):
        filePath, ignore = QtWidgets.QFileDialog.getSaveFileName(self, 
                                                        'Save Rig File',
                                                        os.path.dirname(__file__),
                                                        '*.json')
        if (filePath):
            self.pfrs.fileMng.SetOutputFile(filePath)
            self.pfrs.saveLoadRig.Save()


    
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
    
    ex = PayneFreeRigSuite_UI()
    ex.show()
    sys.exit(app.exec_())
