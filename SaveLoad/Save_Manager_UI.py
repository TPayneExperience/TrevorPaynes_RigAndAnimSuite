
import os
import sys

from Qt import QtWidgets, QtCore, QtGui

class Save_Manager_UI(QtWidgets.QDialog):
    def __init__(self, fileMng, saveLoadMng, parent=None):
        super(Save_Manager_UI, self).__init__(parent)

        self.parent = parent
        self.fileMng = fileMng
        self.saveLoadMng = saveLoadMng

        self._Setup()
        self._Setup_Connections()
        self._Update_SaveBtn()

#======= SETUP ===================================

    def _Setup(self):
        vl = QtWidgets.QVBoxLayout(self)

        vl.addWidget(self._Setup_FolderPath_GB())
        vl.addLayout(self._Setup_Checkboxes())
        vl.addLayout(self._Setup_Buttons())

        self.setModal(True)
        self.setWindowTitle('Save Current Rig')

    def _Setup_FolderPath_GB(self):
        gb = QtWidgets.QGroupBox('Folder Path')
        hl = QtWidgets.QHBoxLayout(gb)
        self.folderPath_l = QtWidgets.QLabel('[Missing folder path]')
        self.folderPath_btn = QtWidgets.QPushButton('...')
        self.folderPath_btn.setMaximumSize(25, 100)
        hl.addWidget(self.folderPath_l)
        hl.addWidget(self.folderPath_btn)
        return gb
    
    def _Setup_Checkboxes(self):
        vl = QtWidgets.QVBoxLayout()

        self.skel_cb = QtWidgets.QCheckBox('Skeleton')
        self.bhv_cb = QtWidgets.QCheckBox('Behavior')
        self.app_cb = QtWidgets.QCheckBox('Appearance')
        self.skin_cb = QtWidgets.QCheckBox('Skinning')

        self.bhv_cb.setEnabled(False)
        self.app_cb.setEnabled(False)
        self.skin_cb.setEnabled(False)

        vl.addWidget(self.skel_cb)
        vl.addWidget(self.bhv_cb)
        vl.addWidget(self.app_cb)
        vl.addWidget(self.skin_cb)

        return vl

    def _Setup_Buttons(self):
        hl = QtWidgets.QHBoxLayout()
        self.cancel_btn = QtWidgets.QPushButton('Cancel')
        self.save_btn = QtWidgets.QPushButton('Save')
        hl.addWidget(self.cancel_btn)
        hl.addWidget(self.save_btn)
        return hl

#======= FUNCTIONALITY ===================================

    def _Setup_Connections(self):
        self.skel_cb.stateChanged.connect(self._Update_SaveBtn)
        self.bhv_cb.stateChanged.connect(self._Update_SaveBtn)
        self.app_cb.stateChanged.connect(self._Update_SaveBtn)
        self.skin_cb.stateChanged.connect(self._Update_SaveBtn)
        self.folderPath_btn.clicked.connect(self._NavigateToFolder)
        self.cancel_btn.clicked.connect(self.reject)
        self.save_btn.clicked.connect(self._Save)
    
    def _Update_SaveBtn(self):
        skel = self.skel_cb.isChecked()
        bhv = self.bhv_cb.isChecked()
        app = self.app_cb.isChecked()
        skin = self.skin_cb.isChecked()
        
        self.folderPath_l.setText(self.fileMng.GetBuildFolderPath())
        pathValid = os.path.isdir(self.folderPath_l.text())
        cbValid = any([skel, bhv, app, skin])

        self.save_btn.setEnabled(pathValid and cbValid)
    
    def _Save(self):
        self.fileMng.InitBuildFilesInfo()
        if self.skel_cb.isChecked():
            skelPath = self.fileMng.GetNextSkeletonBuildPath('Test')
            self.saveLoadMng.Save_Skeleton(skelPath)
            self.parent.parent.StatusMsg('Saved skeleton: "%s"' % skelPath)
        self.accept()

    def _NavigateToFolder(self):
        filePath = QtWidgets.QFileDialog.getExistingDirectory(self, 
                                                'Select Save Folder')
        if (os.path.isdir(filePath)):
            self.fileMng.SetBuildFolderPath(filePath)
        self._Update_SaveBtn()



