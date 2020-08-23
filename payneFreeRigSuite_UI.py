
import os
import sys

import pymel.core as pm

import payneFreeRigSuite as pfrs
reload(pfrs)

import LimbSetup.LimbSetup_UI as limbSetup_ui
reload(limbSetup_ui)

# import RigSetup.RigSetup_UI as rs_ui
# reload(rs_ui)


__author__ = 'Trevor Payne'
__version__ = '0.1'


class PayneFreeRigSuite_UI():
    def __init__(self):
        self.pfrs = pfrs.PayneFreeRigSuite()

        self._Setup()
        self.Populate()

    def Populate(self):
        folder = os.path.join(os.path.dirname(__file__), 'TEST_OUTPUT')
        self.pfrs.limbSetup.fileMng.SetOutputFile(os.path.join(folder, 'temp.json'))
        self.pfrs.limbSetup.fileMng.SetMeshPath(os.path.join(folder, 'temp.ma'))
        
        # self._NewRig()

#=========== SETUP ====================================

    def _Setup(self):
        with pm.window(mb=True,mbv=True, w=500, h=500) as self.win:
            with pm.tabLayout() as self.rigTabs:
                with pm.horizontalLayout() as self.lsLayout:
                    self.limbSetup_ui = limbSetup_ui.LimbSetup_UI(self.pfrs.limbSetup)
                with pm.horizontalLayout() as self.mdLayout:
                    with pm.tabLayout() as self.mdTab:
                        with pm.horizontalLayout():
                            pm.button('test', label='Three')
        pm.tabLayout(  self.rigTabs, 
                    edit=1, 
                    tabLabel=(  (self.lsLayout,'Limb Setup'), 
                                (self.mdLayout,'Mesh Deformation')))
        # self._Setup_MainTabWidget()
        self._Setup_MenuBar()
        pm.showWindow()
    
#=========== SETUP MENUBAR ====================================

    def _Setup_MenuBar(self):
        with self.win:
            with pm.menu('File'):
                pm.menuItem(l='New Rig...')
                pm.menuItem(l='Load Rig...')
                pm.menuItem(l='Edit Rig...')
                pm.menuItem(divider=1)
                pm.menuItem(l='Import FBX...')
                pm.menuItem(l='Export FBX...')
                pm.menuItem(divider=1)
                pm.menuItem(l='Quit')
                
            with pm.menu('Limbs'):
                with pm.subMenuItem(l='Mirror'):
                    pm.menuItem(l='X')
                    pm.menuItem(l='Y')
                    pm.menuItem(l='Z')
                pm.menuItem(l='Duplicate')
                pm.menuItem(divider=1)
                pm.menuItem(l='Load Template...')
                pm.menuItem(l='Save Template...')
        # self._Setup_MenuBar_FileMenu()
        # self._Setup_MenuBar_Limbs()
        # self._Setup_MenuBar_Settings()
        # self._Setup_MenuBar_Help()
        
    # def _Setup_MenuBar_FileMenu(self):
    #     # ACTIONS
    #     save = QtWidgets.QAction(   'Save', 
    #                                 self, 
    #                                 triggered=self.pfrs.saveLoadRig.Save)
    #     saveAs = QtWidgets.QAction( 'Save As...', 
    #                                 self, 
    #                                 triggered=self.SaveAs_Dialog)
    #     newRig = QtWidgets.QAction( 'New Rig...', 
    #                                 self, 
    #                                 triggered=self.NewRig_Dialog)
    #     loadRig = QtWidgets.QAction('Load Rig...', 
    #                                 self, 
    #                                 triggered=self.LoadRig_Dialog)
    #     editRig = QtWidgets.QAction('Edit Rig...', 
    #                                 self, 
    #                                 triggered=self.EditRig_Dialog)
    #     importFBX = QtWidgets.QAction('Import FBX...', self)
    #     importFBX.setEnabled(False)
    #     exportFBX = QtWidgets.QAction('Export FBX...', self)
    #     exportFBX.setEnabled(False)

    #     # ADD TO FILEMENU
    #     fileMenu = self.menuBar().addMenu('File')
    #     fileMenu.addAction(save)
    #     fileMenu.addAction(saveAs)
    #     fileMenu.addSeparator()

    #     fileMenu.addAction(newRig)
    #     fileMenu.addAction(loadRig)
    #     fileMenu.addAction(editRig)
    #     fileMenu.addSeparator()

    #     fileMenu.addAction(importFBX)
    #     fileMenu.addAction(exportFBX)
    #     fileMenu.addSeparator()

    #     quitAct = fileMenu.addAction('Quit')
    #     quitAct.triggered.connect(self.close)
    
    # def _Setup_MenuBar_Limbs(self):
    #     limbsMenu = self.menuBar().addMenu('Limbs')
    #     mirrorMenu = QtWidgets.QMenu('Mirror Limb')

    #     mirrorX = QtWidgets.QAction('X Axis', 
    #                                 self, 
    #                                 triggered=self.limbs_tw.Mirror_X)
    #     mirrorY = QtWidgets.QAction('Y Axis', 
    #                                 self, 
    #                                 triggered=self.limbs_tw.Mirror_Y)
    #     mirrorZ = QtWidgets.QAction('Z Axis', 
    #                                 self, 
    #                                 triggered=self.limbs_tw.Mirror_Z)
    #     duplicate = QtWidgets.QAction('Duplicate', 
    #                                 self, 
    #                                 triggered=self.limbs_tw.Duplicate_Dialog)
        
        
    #     save = QtWidgets.QAction('Save Template', 
    #                                 self, 
    #                                 triggered=self.limbs_tw.Save_Dialog)
        
    #     load = QtWidgets.QAction('Load Template', 
    #                                 self, 
    #                                 triggered=self.limbs_tw.Load_Dialog)
        

    #     mirrorMenu.addAction(mirrorX)
    #     mirrorMenu.addAction(mirrorY)
    #     mirrorMenu.addAction(mirrorZ)

    #     limbsMenu.addMenu(mirrorMenu)

    #     limbsMenu.addAction(duplicate)
    #     limbsMenu.addSeparator()

    #     limbsMenu.addAction(load)
    #     limbsMenu.addAction(save)

    # def _Setup_MenuBar_Settings(self):
    #     # ACTIONS
    #     animFolder = QtWidgets.QAction(   'Set Animation Library Folder...', 
    #                                 self)
    #     animFolder.setEnabled(False)
    #     tool = QtWidgets.QAction(   'Tool Settings...', 
    #                                 self)
    #     tool.setEnabled(False)

    #     # ADD TO FILEMENU
    #     settingsMenu = self.menuBar().addMenu('Settings')
    #     settingsMenu.addAction(animFolder)
    #     settingsMenu.addAction(tool)

    # def _Setup_MenuBar_Help(self):
    #     # ACTIONS
    #     doc = QtWidgets.QAction('Documentation...', 
    #                             self)
    #     doc.setEnabled(False)
    #     tut = QtWidgets.QAction('Tutorials...', 
    #                             self)
    #     tut.setEnabled(False)

    #     # ADD TO FILEMENU
    #     helpMenu = self.menuBar().addMenu('Help')
    #     helpMenu.addAction(doc)
    #     helpMenu.addAction(tut)

#=========== SETUP MAIN WIDGET====================================

    # def _Setup_MainTabWidget(self):
    #     main_w = QtWidgets.QWidget(self)
    #     vl = QtWidgets.QVBoxLayout(main_w)
    #     self.main_tw = QtWidgets.QTabWidget()
    #     self.limbs_tw = limbSetup_ui.LimbSetup_UI(self.pfrs.limbSetup, self, self.main_tw)
    #     self.main_tw.addTab(self.limbs_tw, 'Limb Setup')
    #     index = self.main_tw.addTab(QtWidgets.QTabWidget(), 'Mesh Deformation')
    #     self.main_tw.setTabEnabled(index, False)
    #     index = self.main_tw.addTab(QtWidgets.QTabWidget(), 'Animation')
    #     self.main_tw.setTabEnabled(index, False)
    #     vl.addWidget(self.main_tw)
    #     self.setCentralWidget(main_w)
        
    
#=========== FUNCTIONALITY ====================================

    # def closeEvent(self, e):
    #     # self.pfrs.limbSetup.skel.sceneMng.KillScriptJobs()
    #     # self.pfrs.limbSetup.skel.sceneMng.KillSelectionJob()
    #     super(PayneFreeRigSuite_UI, self).closeEvent(e)
    
    # def StatusMsg(self, message):
    #     self.statusBar().showMessage(message)

    # def NewRig_Dialog(self):
    #     pass
    #     # rigUI = rs_ui.RigSetup_UI(  self.pfrs.nameMng,
    #     #                             self.pfrs.fileMng,
    #     #                             self)
    #     # if (rigUI.exec_()):
    #     #     self._NewRig()

    # def _NewRig(self):
    #     self.pfrs.NewRig()
    #     # self.pfrs.rigSceneMng.NewRig()
    #     # self.limbs_tw.NewRig(self.pfrs.rigSceneMng.rootGrp)
    #     # self.pfrs.saveLoadRig.Save()

    def EditRig_Dialog(self):
        pass
        # tempPrefix = self.pfrs.nameMng.GetPrefix()
        # tempMeshPath = self.pfrs.fileMng.GetMeshPath()
        # tempOutputPath = self.pfrs.fileMng.GetOutputFile()
        # tempShowPrefix = self.pfrs.nameMng.GetShowPrefix()
        # tempOrder = self.pfrs.nameMng.GetNamingOrder()

        # rigUI = rs_ui.RigSetup_UI(  self.pfrs.nameMng,
        #                             self.pfrs.fileMng,
        #                             self)
        # rigUI.SetData(  self.pfrs.nameMng.GetPrefix(),
        #                 self.pfrs.fileMng.GetMeshPath(),
        #                 self.pfrs.fileMng.GetOutputFile(),
        #                 self.pfrs.nameMng.GetShowPrefix(),
        #                 self.pfrs.nameMng.GetNamingOrder())

        # if (rigUI.exec_()):
        #     prefix = (tempPrefix != self.pfrs.nameMng.GetPrefix())
        #     meshPath = (tempMeshPath != self.pfrs.fileMng.GetMeshPath())
        #     outputPath = (tempOutputPath != self.pfrs.fileMng.GetOutputFile())
        #     showPrefix = (tempShowPrefix != self.pfrs.nameMng.GetShowPrefix())
        #     order = (tempOrder != self.pfrs.nameMng.GetNamingOrder())
        #     if (prefix):
        #         self.pfrs.rigSceneMng.UpdatePrefix()
        #     if (prefix or showPrefix or order):
        #         self.limbs_tw.UpdateNaming()
        #     if meshPath:
        #         self.pfrs.rigSceneMng.UpdateMeshes()
        #     if outputPath:
        #         self.pfrs.saveLoadRig.Save()

    def LoadRig_Dialog(self):
        pass
        # filePath, ignore = QtWidgets.QFileDialog.getOpenFileName(
        #                                         self, 
        #                                         'Load Rig File',
        #                                         __file__,
        #                                         '*.json')
        # if (os.path.isfile(filePath)):
        #     self.pfrs.saveLoadRig.Load(filePath)
        #     self.limbs_tw.Populate()
    
    def SaveAs_Dialog(self):
        pass
        # filePath, ignore = QtWidgets.QFileDialog.getSaveFileName(self, 
        #                                                 'Save Rig File',
        #                                                 os.path.dirname(__file__),
        #                                                 '*.json')
        # if (filePath):
        #     self.pfrs.fileMng.SetOutputFile(filePath)
        #     self.pfrs.saveLoadRig.Save()


    


#=========== DEPRICATED ====================================

# import os
# import sys

# # import Common.Qt
# # from Common.Qt import QtWidgets, QtCore, QtGui


# import payneFreeRigSuite as pfrs
# reload(pfrs)

# import LimbSetup.LimbSetup_UI as limbSetup_ui
# reload(limbSetup_ui)

# # import RigSetup.RigSetup_UI as rs_ui
# # reload(rs_ui)


# __author__ = 'Trevor Payne'
# __version__ = '0.1'

# class PayneFreeRigSuite_UI(QtWidgets.QMainWindow):
#     def __init__(self, parent=None):
#         super(PayneFreeRigSuite_UI, self).__init__(parent)

#         self.pfrs = pfrs.PayneFreeRigSuite()

#         self._Setup()
#         self.Populate()

#     def Populate(self):
#         folder = os.path.join(os.path.dirname(__file__), 'TEST_OUTPUT')
#         self.pfrs.limbSetup.fileMng.SetOutputFile(os.path.join(folder, 'temp.json'))
#         self.pfrs.limbSetup.fileMng.SetMeshPath(os.path.join(folder, 'temp.ma'))
        
#         self._NewRig()

# #=========== SETUP ====================================

#     def _Setup(self):
#         self.setWindowTitle("Payne Free Rig Suite v%s - by Trevor Payne" % __version__)
#         self.StatusMsg('Drag & drop or Right Click on stuff!')
#         self.resize(400, 500)
#         self.setWindowFlags(self.windowFlags() ^ QtCore.Qt.WindowMinMaxButtonsHint)

#         self._Setup_MainTabWidget()
#         self._Setup_MenuBar()
    
# #=========== SETUP MENUBAR ====================================

#     def _Setup_MenuBar(self):
#         pass
#         # self._Setup_MenuBar_FileMenu()
#         # self._Setup_MenuBar_Limbs()
#         # self._Setup_MenuBar_Settings()
#         # self._Setup_MenuBar_Help()
        
#     # def _Setup_MenuBar_FileMenu(self):
#     #     # ACTIONS
#     #     save = QtWidgets.QAction(   'Save', 
#     #                                 self, 
#     #                                 triggered=self.pfrs.saveLoadRig.Save)
#     #     saveAs = QtWidgets.QAction( 'Save As...', 
#     #                                 self, 
#     #                                 triggered=self.SaveAs_Dialog)
#     #     newRig = QtWidgets.QAction( 'New Rig...', 
#     #                                 self, 
#     #                                 triggered=self.NewRig_Dialog)
#     #     loadRig = QtWidgets.QAction('Load Rig...', 
#     #                                 self, 
#     #                                 triggered=self.LoadRig_Dialog)
#     #     editRig = QtWidgets.QAction('Edit Rig...', 
#     #                                 self, 
#     #                                 triggered=self.EditRig_Dialog)
#     #     importFBX = QtWidgets.QAction('Import FBX...', self)
#     #     importFBX.setEnabled(False)
#     #     exportFBX = QtWidgets.QAction('Export FBX...', self)
#     #     exportFBX.setEnabled(False)

#     #     # ADD TO FILEMENU
#     #     fileMenu = self.menuBar().addMenu('File')
#     #     fileMenu.addAction(save)
#     #     fileMenu.addAction(saveAs)
#     #     fileMenu.addSeparator()

#     #     fileMenu.addAction(newRig)
#     #     fileMenu.addAction(loadRig)
#     #     fileMenu.addAction(editRig)
#     #     fileMenu.addSeparator()

#     #     fileMenu.addAction(importFBX)
#     #     fileMenu.addAction(exportFBX)
#     #     fileMenu.addSeparator()

#     #     quitAct = fileMenu.addAction('Quit')
#     #     quitAct.triggered.connect(self.close)
    
#     # def _Setup_MenuBar_Limbs(self):
#     #     limbsMenu = self.menuBar().addMenu('Limbs')
#     #     mirrorMenu = QtWidgets.QMenu('Mirror Limb')

#     #     mirrorX = QtWidgets.QAction('X Axis', 
#     #                                 self, 
#     #                                 triggered=self.limbs_tw.Mirror_X)
#     #     mirrorY = QtWidgets.QAction('Y Axis', 
#     #                                 self, 
#     #                                 triggered=self.limbs_tw.Mirror_Y)
#     #     mirrorZ = QtWidgets.QAction('Z Axis', 
#     #                                 self, 
#     #                                 triggered=self.limbs_tw.Mirror_Z)
#     #     duplicate = QtWidgets.QAction('Duplicate', 
#     #                                 self, 
#     #                                 triggered=self.limbs_tw.Duplicate_Dialog)
        
        
#     #     save = QtWidgets.QAction('Save Template', 
#     #                                 self, 
#     #                                 triggered=self.limbs_tw.Save_Dialog)
        
#     #     load = QtWidgets.QAction('Load Template', 
#     #                                 self, 
#     #                                 triggered=self.limbs_tw.Load_Dialog)
        

#     #     mirrorMenu.addAction(mirrorX)
#     #     mirrorMenu.addAction(mirrorY)
#     #     mirrorMenu.addAction(mirrorZ)

#     #     limbsMenu.addMenu(mirrorMenu)

#     #     limbsMenu.addAction(duplicate)
#     #     limbsMenu.addSeparator()

#     #     limbsMenu.addAction(load)
#     #     limbsMenu.addAction(save)

#     # def _Setup_MenuBar_Settings(self):
#     #     # ACTIONS
#     #     animFolder = QtWidgets.QAction(   'Set Animation Library Folder...', 
#     #                                 self)
#     #     animFolder.setEnabled(False)
#     #     tool = QtWidgets.QAction(   'Tool Settings...', 
#     #                                 self)
#     #     tool.setEnabled(False)

#     #     # ADD TO FILEMENU
#     #     settingsMenu = self.menuBar().addMenu('Settings')
#     #     settingsMenu.addAction(animFolder)
#     #     settingsMenu.addAction(tool)

#     # def _Setup_MenuBar_Help(self):
#     #     # ACTIONS
#     #     doc = QtWidgets.QAction('Documentation...', 
#     #                             self)
#     #     doc.setEnabled(False)
#     #     tut = QtWidgets.QAction('Tutorials...', 
#     #                             self)
#     #     tut.setEnabled(False)

#     #     # ADD TO FILEMENU
#     #     helpMenu = self.menuBar().addMenu('Help')
#     #     helpMenu.addAction(doc)
#     #     helpMenu.addAction(tut)

# #=========== SETUP MAIN WIDGET====================================

#     def _Setup_MainTabWidget(self):
#         main_w = QtWidgets.QWidget(self)
#         vl = QtWidgets.QVBoxLayout(main_w)
#         self.main_tw = QtWidgets.QTabWidget()
#         self.limbs_tw = limbSetup_ui.LimbSetup_UI(self.pfrs.limbSetup, self, self.main_tw)
#         self.main_tw.addTab(self.limbs_tw, 'Limb Setup')
#         index = self.main_tw.addTab(QtWidgets.QTabWidget(), 'Mesh Deformation')
#         self.main_tw.setTabEnabled(index, False)
#         index = self.main_tw.addTab(QtWidgets.QTabWidget(), 'Animation')
#         self.main_tw.setTabEnabled(index, False)
#         vl.addWidget(self.main_tw)
#         self.setCentralWidget(main_w)
        
    
# #=========== FUNCTIONALITY ====================================

#     def closeEvent(self, e):
#         # self.pfrs.limbSetup.skel.sceneMng.KillScriptJobs()
#         # self.pfrs.limbSetup.skel.sceneMng.KillSelectionJob()
#         super(PayneFreeRigSuite_UI, self).closeEvent(e)
    
#     def StatusMsg(self, message):
#         self.statusBar().showMessage(message)

#     def NewRig_Dialog(self):
#         pass
#         # rigUI = rs_ui.RigSetup_UI(  self.pfrs.nameMng,
#         #                             self.pfrs.fileMng,
#         #                             self)
#         # if (rigUI.exec_()):
#         #     self._NewRig()

#     def _NewRig(self):
#         self.pfrs.NewRig()
#         # self.pfrs.rigSceneMng.NewRig()
#         # self.limbs_tw.NewRig(self.pfrs.rigSceneMng.rootGrp)
#         # self.pfrs.saveLoadRig.Save()

#     def EditRig_Dialog(self):
#         pass
#         # tempPrefix = self.pfrs.nameMng.GetPrefix()
#         # tempMeshPath = self.pfrs.fileMng.GetMeshPath()
#         # tempOutputPath = self.pfrs.fileMng.GetOutputFile()
#         # tempShowPrefix = self.pfrs.nameMng.GetShowPrefix()
#         # tempOrder = self.pfrs.nameMng.GetNamingOrder()

#         # rigUI = rs_ui.RigSetup_UI(  self.pfrs.nameMng,
#         #                             self.pfrs.fileMng,
#         #                             self)
#         # rigUI.SetData(  self.pfrs.nameMng.GetPrefix(),
#         #                 self.pfrs.fileMng.GetMeshPath(),
#         #                 self.pfrs.fileMng.GetOutputFile(),
#         #                 self.pfrs.nameMng.GetShowPrefix(),
#         #                 self.pfrs.nameMng.GetNamingOrder())

#         # if (rigUI.exec_()):
#         #     prefix = (tempPrefix != self.pfrs.nameMng.GetPrefix())
#         #     meshPath = (tempMeshPath != self.pfrs.fileMng.GetMeshPath())
#         #     outputPath = (tempOutputPath != self.pfrs.fileMng.GetOutputFile())
#         #     showPrefix = (tempShowPrefix != self.pfrs.nameMng.GetShowPrefix())
#         #     order = (tempOrder != self.pfrs.nameMng.GetNamingOrder())
#         #     if (prefix):
#         #         self.pfrs.rigSceneMng.UpdatePrefix()
#         #     if (prefix or showPrefix or order):
#         #         self.limbs_tw.UpdateNaming()
#         #     if meshPath:
#         #         self.pfrs.rigSceneMng.UpdateMeshes()
#         #     if outputPath:
#         #         self.pfrs.saveLoadRig.Save()

#     def LoadRig_Dialog(self):
#         pass
#         # filePath, ignore = QtWidgets.QFileDialog.getOpenFileName(
#         #                                         self, 
#         #                                         'Load Rig File',
#         #                                         __file__,
#         #                                         '*.json')
#         # if (os.path.isfile(filePath)):
#         #     self.pfrs.saveLoadRig.Load(filePath)
#         #     self.limbs_tw.Populate()
    
#     def SaveAs_Dialog(self):
#         pass
#         # filePath, ignore = QtWidgets.QFileDialog.getSaveFileName(self, 
#         #                                                 'Save Rig File',
#         #                                                 os.path.dirname(__file__),
#         #                                                 '*.json')
#         # if (filePath):
#         #     self.pfrs.fileMng.SetOutputFile(filePath)
#         #     self.pfrs.saveLoadRig.Save()


    

# if __name__ == '__main__':
#     app = QtWidgets.QApplication(sys.argv)
    
#     ex = PayneFreeRigSuite_UI()
#     ex.show()
#     sys.exit(app.exec_())
