
import os
import sys

from Qt import QtWidgets, QtCore, QtGui

class Load_Manager_UI(QtWidgets.QDialog):
    def __init__(self, fileMng, saveLoadMng, parent=None):
        super(Load_Manager_UI, self).__init__(parent)
        self.fileMng = fileMng
        self.saveLoadMng = saveLoadMng
        self.parent = parent

        self.skel_fileIndex = -1
        self.skel_data = None
        self.skel_fileCount = -1

        self.bhv_fileIndex = -1
        self.bhv_data = None
        self.bhv_fileCount = -1

        self.app_fileIndex = -1
        self.app_data = None
        self.app_fileCount = -1

        self.skin_fileIndex = -1
        self.skin_data = None
        self.skin_fileCount = -1

        self._Setup()
        self._Setup_Connections()

        if (os.path.isdir(self.fileMng.GetBuildFolderPath())):
            self.fileMng.InitBuildFilesInfo()

        self._Update_LoadBtn()
        self._Update_Skeleton()
        self._Update_Behavior()
        self._Update_Appearance()
        self._Update_Skinning()

#======= SETUP ===================================

    def _Setup(self):
        vl = QtWidgets.QVBoxLayout(self)

        vl.addWidget(self._Setup_FolderPath_GB())
        vl.addLayout(self._Setup_Checkboxes())
        vl.addLayout(self._Setup_Buttons())

        self.setModal(True)
        self.setWindowTitle('Load Rig')

    def _Setup_FolderPath_GB(self):
        gb = QtWidgets.QGroupBox('Folder Path')
        hl = QtWidgets.QHBoxLayout(gb)
        self.folderPath_l = QtWidgets.QLabel()
        self.folderPath_btn = QtWidgets.QPushButton('...')
        self.folderPath_btn.setMaximumSize(25, 100)
        hl.addWidget(self.folderPath_l)
        hl.addWidget(self.folderPath_btn)
        return gb
    
    def _Setup_Checkboxes(self):
        vl = QtWidgets.QVBoxLayout()

        hl = QtWidgets.QHBoxLayout()
        type_l = QtWidgets.QLabel('TYPE')
        version_l = QtWidgets.QLabel('VERSION')
        date_l = QtWidgets.QLabel('DATE')

        hl.addWidget(type_l)
        hl.addWidget(version_l)
        hl.addWidget(date_l)

        vl.addLayout(hl)
        vl.addLayout(self._Setup_Checkbox_Skeleton())
        vl.addLayout(self._Setup_Checkbox_Behavior())
        vl.addLayout(self._Setup_Checkbox_Appearance())
        vl.addLayout(self._Setup_Checkbox_Skinning())

        return vl
    
    def _Setup_Checkbox_Skeleton(self):
        hl = QtWidgets.QHBoxLayout()

        self.skel_cb = QtWidgets.QCheckBox('Skeleton')
        self.skel_version_l = QtWidgets.QLabel('--')
        self.skel_date_l = QtWidgets.QLabel('--')
        self.skel_prev_btn = QtWidgets.QPushButton('<')
        self.skel_prev_btn.setMaximumSize(25, 100)
        self.skel_next_btn = QtWidgets.QPushButton('>')
        self.skel_next_btn.setMaximumSize(25, 100)
        
        hl.addWidget(self.skel_cb)
        hl.addWidget(self.skel_version_l)
        hl.addWidget(self.skel_date_l)
        hl.addWidget(self.skel_prev_btn)
        hl.addWidget(self.skel_next_btn)

        return hl

    def _Setup_Checkbox_Behavior(self):
        hl = QtWidgets.QHBoxLayout()

        self.bhv_cb = QtWidgets.QCheckBox('Behavior')
        self.bhv_version_l = QtWidgets.QLabel('--')
        self.bhv_date_l = QtWidgets.QLabel('--')
        self.bhv_prev_btn = QtWidgets.QPushButton('<')
        self.bhv_prev_btn.setMaximumSize(25, 100)
        self.bhv_next_btn = QtWidgets.QPushButton('>')
        self.bhv_next_btn.setMaximumSize(25, 100)
        
        hl.addWidget(self.bhv_cb)
        hl.addWidget(self.bhv_version_l)
        hl.addWidget(self.bhv_date_l)
        hl.addWidget(self.bhv_prev_btn)
        hl.addWidget(self.bhv_next_btn)

        return hl

    def _Setup_Checkbox_Appearance(self):
        hl = QtWidgets.QHBoxLayout()

        self.app_cb = QtWidgets.QCheckBox('Appearance')
        self.app_version_l = QtWidgets.QLabel('--')
        self.app_date_l = QtWidgets.QLabel('--')
        self.app_prev_btn = QtWidgets.QPushButton('<')
        self.app_prev_btn.setMaximumSize(25, 100)
        self.app_next_btn = QtWidgets.QPushButton('>')
        self.app_next_btn.setMaximumSize(25, 100)
        
        hl.addWidget(self.app_cb)
        hl.addWidget(self.app_version_l)
        hl.addWidget(self.app_date_l)
        hl.addWidget(self.app_prev_btn)
        hl.addWidget(self.app_next_btn)

        return hl

    def _Setup_Checkbox_Skinning(self):
        hl = QtWidgets.QHBoxLayout()

        self.skin_cb = QtWidgets.QCheckBox('Skinning')
        self.skin_version_l = QtWidgets.QLabel('--')
        self.skin_date_l = QtWidgets.QLabel('--')
        self.skin_prev_btn = QtWidgets.QPushButton('<')
        self.skin_prev_btn.setMaximumSize(25, 100)
        self.skin_next_btn = QtWidgets.QPushButton('>')
        self.skin_next_btn.setMaximumSize(25, 100)
        
        hl.addWidget(self.skin_cb)
        hl.addWidget(self.skin_version_l)
        hl.addWidget(self.skin_date_l)
        hl.addWidget(self.skin_prev_btn)
        hl.addWidget(self.skin_next_btn)

        return hl

    def _Setup_Buttons(self):
        hl = QtWidgets.QHBoxLayout()
        self.cancel_btn = QtWidgets.QPushButton('Cancel')
        self.load_btn = QtWidgets.QPushButton('Load')
        hl.addWidget(self.cancel_btn)
        hl.addWidget(self.load_btn)
        return hl

#======= FUNCTIONALITY ===================================

    def _Setup_Connections(self):
        self.folderPath_btn.clicked.connect(self._NavigateToFolder)

        self.skel_cb.stateChanged.connect(self._Update_LoadBtn)
        self.skel_cb.stateChanged.connect(self._Update_Skeleton)
        self.skel_prev_btn.clicked.connect(self._Previous_Skeleton)
        self.skel_next_btn.clicked.connect(self._Next_Skeleton)

        self.bhv_cb.stateChanged.connect(self._Update_LoadBtn)
        self.bhv_cb.stateChanged.connect(self._Update_Behavior)
        self.bhv_prev_btn.clicked.connect(self._Previous_Behavior)
        self.bhv_next_btn.clicked.connect(self._Next_Behavior)

        self.app_cb.stateChanged.connect(self._Update_LoadBtn)
        self.app_cb.stateChanged.connect(self._Update_Appearance)
        self.app_prev_btn.clicked.connect(self._Previous_Appearance)
        self.app_next_btn.clicked.connect(self._Next_Appearance)

        self.skin_cb.stateChanged.connect(self._Update_LoadBtn)
        self.skin_cb.stateChanged.connect(self._Update_Skinning)
        self.skin_prev_btn.clicked.connect(self._Previous_Skinning)
        self.skin_next_btn.clicked.connect(self._Next_Skinning)

        self.cancel_btn.clicked.connect(self.reject)
        self.load_btn.clicked.connect(self._Load)
    
    def _Update_Skeleton(self):
        count = self.fileMng.GetSkeletonFileCount()
        self.skel_fileCount = count
        if count:
            self._Set_Skeleton_Enabled(True)
            index = self.skel_fileIndex % count
            self.skel_fileIndex = index
            self.skel_data = self.fileMng.GetSkeletonBuildData(index)
            self.skel_date_l.setText(self.skel_data.date)
            self.skel_version_l.setText('%03d' % self.skel_data.version)
            self.skel_prev_btn.setEnabled(index > 0 and self.skel_cb.isChecked())
            self.skel_next_btn.setEnabled(index < (count - 1) and self.skel_cb.isChecked())
        else:
            self._Set_Skeleton_Enabled(False)
    
    def _Update_Behavior(self):
        count = self.fileMng.GetBehaviorFileCount()
        self.bhv_fileCount = count
        if count:
            self._Set_Behavior_Enabled(True)
            index = self.bhv_fileIndex % count
            self.bhv_fileIndex = index
            self.bhv_data = self.fileMng.GetBehaviorBuildData(index)
            self.bhv_date_l.setText(self.bhv_data.date)
            self.bhv_version_l.setText('%03d' % self.bhv_data.version)
            self.bhv_prev_btn.setEnabled(index > 0 and self.bhv_cb.isChecked())
            self.bhv_next_btn.setEnabled(index < (count - 1) and self.bhv_cb.isChecked())
        else:
            self._Set_Behavior_Enabled(False)

    def _Update_Appearance(self):
        count = self.fileMng.GetAppearanceFileCount()
        self.app_fileCount = count
        if count:
            self._Set_Appearance_Enabled(True)
            index = self.app_fileIndex % count
            self.app_fileIndex = index
            self.app_data = self.fileMng.GetAppearanceBuildData(index)
            self.app_date_l.setText(self.app_data.date)
            self.app_version_l.setText('%03d' % self.app_data.version)
            self.app_prev_btn.setEnabled(index > 0 and self.app_cb.isChecked())
            self.app_next_btn.setEnabled(index < (count - 1) and self.app_cb.isChecked())
        else:
            self._Set_Appearance_Enabled(False)

    def _Update_Skinning(self):
        count = self.fileMng.GetSkinningFileCount()
        self.skin_fileCount = count
        if count:
            self._Set_Skinning_Enabled(True)
            index = self.skin_fileIndex % count
            self.skin_fileIndex = index
            self.skin_data = self.fileMng.GetSkinningBuildData(index)
            self.skin_date_l.setText(self.skin_data.date)
            self.skin_version_l.setText('%03d' % self.skin_data.version)
            self.skin_prev_btn.setEnabled(index > 0 and self.skin_cb.isChecked())
            self.skin_next_btn.setEnabled(index < (count - 1) and self.skin_cb.isChecked())
        else:
            self._Set_Skinning_Enabled(False)

    def _Update_LoadBtn(self):
        skel = self.skel_cb.isChecked()
        bhv = self.bhv_cb.isChecked()
        app = self.app_cb.isChecked()
        skin = self.skin_cb.isChecked()
        
        self.folderPath_l.setText(self.fileMng.GetBuildFolderPath())
        pathValid = os.path.isdir(self.folderPath_l.text())
        cbValid = any([skel, bhv, app, skin])

        self.load_btn.setEnabled(pathValid and cbValid)
    
    def _Load(self):
        self.fileMng.InitBuildFilesInfo()
        if self.skel_cb.isChecked():
            self.saveLoadMng.Load_Skel_Limbs(self.skel_data.path)
            self.parent.parent.StatusMsg('Loaded skeleton: "%s"' % self.skel_data.path)
        if self.bhv_cb.isChecked():
            pass
        if self.app_cb.isChecked():
            pass
        if self.skin_cb.isChecked():
            pass
        self.accept()

    def _NavigateToFolder(self):
        filePath = QtWidgets.QFileDialog.getExistingDirectory(self, 
                                                'Select Save Folder')
        if (os.path.isdir(filePath)):
            self.fileMng.SetBuildFolderPath(filePath)
            self.fileMng.InitBuildFilesInfo()
            self._Update_Skeleton()
            self._Update_Behavior()
            self._Update_Appearance()
            self._Update_Skinning()
            self._Update_LoadBtn()

    
#======= ENABLE / DISABLE ROWS ===================================

    def _Set_Skeleton_Enabled(self, isEnabled):
        if not isEnabled:
            self.skel_cb.setCheckState(QtCore.Qt.Unchecked)
        self.skel_cb.setEnabled(isEnabled)
        self.skel_version_l.setEnabled(self.skel_cb.isChecked())
        self.skel_date_l.setEnabled(self.skel_cb.isChecked())
        self.skel_prev_btn.setEnabled(isEnabled)
        self.skel_next_btn.setEnabled(isEnabled)

    def _Set_Behavior_Enabled(self, isEnabled):
        if not isEnabled:
            self.bhv_cb.setCheckState(QtCore.Qt.Unchecked)
        self.bhv_cb.setEnabled(isEnabled)
        self.bhv_version_l.setEnabled(self.bhv_cb.isChecked())
        self.bhv_date_l.setEnabled(self.bhv_cb.isChecked())
        self.bhv_prev_btn.setEnabled(isEnabled)
        self.bhv_next_btn.setEnabled(isEnabled)

    def _Set_Appearance_Enabled(self, isEnabled):
        if not isEnabled:
            self.app_cb.setCheckState(QtCore.Qt.Unchecked)
        self.app_cb.setEnabled(isEnabled)
        self.app_version_l.setEnabled(self.app_cb.isChecked())
        self.app_date_l.setEnabled(self.app_cb.isChecked())
        self.app_prev_btn.setEnabled(isEnabled)
        self.app_next_btn.setEnabled(isEnabled)

    def _Set_Skinning_Enabled(self, isEnabled):
        if not isEnabled:
            self.skin_cb.setCheckState(QtCore.Qt.Unchecked)
        self.skin_cb.setEnabled(isEnabled)
        self.skin_version_l.setEnabled(self.skin_cb.isChecked())
        self.skin_date_l.setEnabled(self.skin_cb.isChecked())
        self.skin_prev_btn.setEnabled(isEnabled)
        self.skin_next_btn.setEnabled(isEnabled)

#======= PREVIOUS / NEXT BUTTONS ===================================

    def _Previous_Skeleton(self):
        self.skel_fileIndex -= 1
        self._Update_Skeleton()

    def _Next_Skeleton(self):
        self.skel_fileIndex += 1
        self._Update_Skeleton()

    def _Previous_Behavior(self):
        self.bhv_fileIndex -= 1
        self._Update_Behavior()

    def _Next_Behavior(self):
        self.bhv_fileIndex += 1
        self._Update_Behavior()

    def _Previous_Appearance(self):
        self.app_fileIndex -= 1
        self._Update_Appearance()

    def _Next_Appearance(self):
        self.app_fileIndex += 1
        self._Update_Appearance()

    def _Previous_Skinning(self):
        self.skin_fileIndex -= 1
        self._Update_Skinning()

    def _Next_Skinning(self):
        self.skin_fileIndex += 1
        self._Update_Skinning()


