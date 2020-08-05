import os
import sys

from Qt import QtWidgets, QtCore, QtGui

import Name_Manager as nm
reload(nm)

# from RigSetup import RigSetup

class RigSetup_UI(QtWidgets.QDialog):
    # def __init__(self, RigSetup, parent=None, prefix='', meshPath=''):
    def __init__(self, nameManager, fileManager, parent=None):
        super(RigSetup_UI, self).__init__(parent)
        # self._rigSetup = RigSetup

        self.nameMng = nameManager
        self.fileMng = fileManager
        self.tempNameMng = nm.Name_Manager()
        self.meshFile = ''
        self.outputFile = ''
        self._isPopulating = False

        self.rigNaming = [ 'Prefix (CAT, ELF)',
                            'Limb (ARM, LEG)',
                            'Joint (ELBOW, KNEE_02)',
                            'Side (L, M, R)',
                            'Type (JNT, CTR)']

        self._Setup()
        # self._Populate_AssetDetails()
        # self._Populate_RigNaming()
        self.Update_ExampleLabels()
        # self._Update_MeshPathLabel()
        # self.IsPrefixValid()
        self.Update_SaveBtn()
        self._Setup_Connections()

    def SetData(self, prefix, meshFile, outputFile, showPrefix, nameOrder):
        self._isPopulating = True
        self.prefix_le.setText(prefix)

        self.meshFile = meshFile
        self.meshPath_l.setText('MESH FILE | ' + meshFile)

        self.outputFile = outputFile
        self.outputFile_l.setText('OUTPUT FOLDER | ' + outputFile)

        self.showPrefix_cb.setChecked(showPrefix)
        self.tempNameMng.SetShowPrefix(showPrefix)

        self.namingOrder_lw.clear()
        for i in range(len(nameOrder)):
            self.namingOrder_lw.addItem(self.rigNaming[nameOrder[i]])
        self._isPopulating = False
        self.Update_SaveBtn()
        self.Update_ExampleLabels()

#============ SETUP ============================

    def _Setup(self):
        self.setWindowTitle('Rig Setup')
        self.setWindowFlags(self.windowFlags() ^ QtCore.Qt.WindowContextHelpButtonHint)
        self.resize(500, 400)
    
        v_layout = QtWidgets.QVBoxLayout(self)
        v_layout.addWidget(self._Setup_AssetDetails())
        
        hl = QtWidgets.QHBoxLayout()
        hl.addWidget(self._Setup_ExampleResults())
        hl.addWidget(self._Setup_RigNaming())
        hl.setStretch(0,1)
        hl.setStretch(1,1)


        v_layout.addLayout(hl)
        v_layout.addLayout(self._Setup_SaveCancel())
        
    def _Setup_AssetDetails(self):
        gb = QtWidgets.QGroupBox('Asset Details')
        vl = QtWidgets.QVBoxLayout(gb)

        hl1 = QtWidgets.QHBoxLayout()
        self.prefix_l = QtWidgets.QLabel('ASSET PREFIX | ')
        self.prefix_le = QtWidgets.QLineEdit()
        self.prefix_le.setPlaceholderText('CAT, ELF...')
        self.prefix_le.setMaximumSize(150, 100)
        hl1.addWidget(self.prefix_l)
        hl1.addWidget(self.prefix_le)
        vl.addLayout(hl1)

        # self.prefixErrorMsg_l = QtWidgets.QLabel('SomeError')
        # self.prefixErrorMsg_l.setAlignment(QtCore.Qt.AlignRight)
        # vl.addWidget(self.prefixErrorMsg_l)

        # gb2 = QtWidgets.QGroupBox('MESH PATH: ')
        hl2  = QtWidgets.QHBoxLayout()
        self.meshPath_l = QtWidgets.QLabel('MESH FILE | [Missing]')
        self.meshPath_btn = QtWidgets.QPushButton('...')
        self.meshPath_btn.setMaximumSize(25, 100)
        hl2.addWidget(self.meshPath_l)
        hl2.addWidget(self.meshPath_btn)
        vl.addLayout(hl2)
        # vl.addWidget(gb2)
        
        hl3  = QtWidgets.QHBoxLayout()
        self.outputFile_l = QtWidgets.QLabel('OUTPUT FOLDER | [Missing]')
        self.outputFile_btn = QtWidgets.QPushButton('...')
        self.outputFile_btn.setMaximumSize(25, 100)
        hl3.addWidget(self.outputFile_l)
        hl3.addWidget(self.outputFile_btn)
        vl.addLayout(hl3)

        return gb

    def _Setup_RigNaming(self):
        gb = QtWidgets.QGroupBox('Rig Naming Scheme')
        vl = QtWidgets.QVBoxLayout(gb)

        self.showPrefix_cb = QtWidgets.QCheckBox('Include Prefix')
        self.showPrefix_cb.setChecked(True)
        vl.addWidget(self.showPrefix_cb)
        # self.resultNaming_l = QtWidgets.QLabel('asdf')
        # vl.addWidget(self.resultNaming_l)

        self.namingOrder_lw = ReorderListWidget(self)
        self.namingOrder_lw.addItems(self.rigNaming)
        vl.addWidget(self.namingOrder_lw)
        vl.addStretch()

        return gb
    
    def _Setup_ExampleResults(self):
        gb = QtWidgets.QGroupBox('Example Results')
        vl = QtWidgets.QVBoxLayout(gb)

        self.example1_l = QtWidgets.QLabel('asdf1')
        self.example2_l = QtWidgets.QLabel('asdf2')
        self.example3_l = QtWidgets.QLabel('asdf3')
        vl.addWidget(self.example1_l)
        vl.addWidget(self.example2_l)
        vl.addWidget(self.example3_l)
        vl.addStretch()
        self.resultNaming_l = QtWidgets.QLabel('asdf4')
        vl.addWidget(self.resultNaming_l)

        return gb
    
    def _Setup_SaveCancel(self):
        hl = QtWidgets.QHBoxLayout()
        self.cancel_btn = QtWidgets.QPushButton('Cancel')
        self.save_btn = QtWidgets.QPushButton('Save')
        hl.addWidget(self.cancel_btn)
        hl.addWidget(self.save_btn)
        return hl

#============ POPULATE + UPDATE ============================

    # def _Populate_AssetDetails(self):
    #     self.prefix_le.setText(self._rigSetup.GetPrefix())
    #     self._Update_MeshPathLabel()
    
    # def _Populate_RigNaming(self):
    #     order = self._rigSetup.GetStartOrder()
    #     newOrder = [self.rigNaming[i] for i in order]
    #     self.namingOrder_lw.addItems(newOrder)
    
    def Update_ExampleLabels(self):
        ex0 = self.tempNameMng.GetName('PREFIX', 'LIMB', 'JOINT', 'SIDE', 'TYPE')
        ex1 = self.tempNameMng.GetName('CAT', 'BLEG', 'KNEE', 'L', 'CTR')
        ex2 = self.tempNameMng.GetName('MMonroe', 'SexyArm', 'SexyElbow', 'R', 'JNT')
        ex3 = self.tempNameMng.GetName('JohnWick', 'Head', 'MidBrow', 'L', 'JNT')

        self.resultNaming_l.setText(ex0)
        self.example1_l.setText(ex1)
        self.example2_l.setText(ex2)
        self.example3_l.setText(ex3)
    
    def Update_SaveBtn(self):
        if not self._isPopulating:
            prefixValid = self.IsPrefixValid()
            meshFileValid = os.path.isfile(self.meshFile)
            outputValid = bool(self.outputFile)
            combo = prefixValid and meshFileValid and outputValid
            self.save_btn.setEnabled(combo)
            if combo:
                self.tempNameMng.SetPrefix(self.prefix_le.text())
        # if (not self._rigSetup.IsPrefixValid()):
        #     self.save_btn.setEnabled(False)
        #     self.save_btn.setText('Save (prefix invalid)')
        # elif (not self._rigSetup.IsMeshPathValid()):
        #     self.save_btn.setEnabled(False)
        #     self.save_btn.setText('Save (missing mesh path)')
        # else:
        #     self.save_btn.setEnabled(True)
        #     self.save_btn.setText('Save')

    def IsPrefixValid(self):
        text = self.prefix_le.text()
        valid = False
        if self.tempNameMng.IsValidCharacterLength(text):
            if self.tempNameMng.DoesNotStartWithNumber(text):
                if self.tempNameMng.AreAllValidCharacters(text):
                    valid = True
        msg = 'ASSET PREFIX |  '+ self.tempNameMng.errorMsg[5:]
        self.prefix_l.setText(msg)
        return valid
        # if (self._rigSetup.IsPrefixValid()):
        #     self.prefixErrorMsg_l.hide()
        # else:
        #     self.prefixErrorMsg_l.show()
        #     self.prefixErrorMsg_l.setText(self._rigSetup.prefixErrorMsg)

    # def _Update_MeshPathLabel(self):
    #     self.meshPath_l.setText(self._rigSetup.GetMeshPath())
    
#============ FUNCTIONALITY ============================

    def _Setup_Connections(self):
        self.prefix_le.textChanged.connect(self.Update_SaveBtn)
        self.meshPath_btn.clicked.connect(self.FindMeshFile)
        self.outputFile_btn.clicked.connect(self.SetOutputFile)
        
        self.showPrefix_cb.clicked.connect(self.ToggleShowPrefix)

        self.cancel_btn.clicked.connect(self.reject)
        self.save_btn.clicked.connect(self.Save)

    # def closeEvent(self, event):
    #     self._rigSetup.Cancel()
    #     event.accept()
    
    # def _Save_Prefix(self):
    #     self._rigSetup.SetPrefix(self.prefix_le.text())
    #     self.IsPrefixValid()
    #     self.Update_SaveBtn()

    def SetNamingOrder(self):
        temp = []
        for i in range(self.namingOrder_lw.count()):
            temp.append(self.namingOrder_lw.item(i).text())
        newOrder = [temp.index(i) for i in self.rigNaming]
        self.tempNameMng.SetNamingOrder(newOrder)
        self.Update_ExampleLabels()

    def FindMeshFile(self):
        filePath, ignore = QtWidgets.QFileDialog.getOpenFileName(self, 
                                                    'Select Mesh File',
                                                    # self._rigSetup.GetMeshPath(),
                                                    self.fileMng.GetMeshPath(),
                                                    '*.ma')
        if (os.path.isfile(filePath)):
            # self._rigSetup.SetMeshPath(filePath)
            # self._Update_MeshPathLabel()
            self.meshFile = filePath
            self.meshPath_l.setText('MESH FILE | ' + filePath)
            self.Update_SaveBtn()

    def SetOutputFile(self):
        filePath, ignore = QtWidgets.QFileDialog.getSaveFileName(self, 
                                                        'Save Rig File',
                                                        self.fileMng.GetOutputFile(),
                                                        '*.json')
        if (filePath):
            self.outputFile = filePath
            self.outputFile_l.setText('OUTPUT FOLDER | ' + filePath)
            self.Update_SaveBtn()

    def ToggleShowPrefix(self):
        # self._rigSetup.SetShowPrefix(self.showPrefix_cb.isChecked())
        self.tempNameMng.SetShowPrefix(self.showPrefix_cb.isChecked())
        self.Update_ExampleLabels()

    def Save(self):
        # self._rigSetup.Save()
        if not self._isPopulating:
            self.nameMng.SetPrefix(self.tempNameMng.GetPrefix())
            self.nameMng.SetNamingOrder(self.tempNameMng.GetNamingOrder())
            self.nameMng.SetShowPrefix(self.tempNameMng.GetShowPrefix())
            self.fileMng.SetMeshPath(self.meshFile)
            self.fileMng.SetOutputFile(self.outputFile)
            self.accept()

        
#======= CUSTOM REORDER WIDGET ========================================


class ReorderListWidget(QtWidgets.QListWidget):
    def __init__(self, parent=None):
        super(ReorderListWidget, self).__init__(parent)
        self.parent = parent
        self.setDragDropMode(self.InternalMove)
        self.installEventFilter(self)

        self.setAlternatingRowColors(True)   
        self.setMaximumSize(1111, 100)
    
    def eventFilter(self, sender, event):
        if (event.type() == QtCore.QEvent.ChildRemoved):
            self.onOrderChanged()
        return False
    
    def onOrderChanged(self):
        self.parent.SetNamingOrder()


# if __name__ == '__main__':
#     app = QtWidgets.QApplication(sys.argv)
    
#     ex = RigSetup_UI()
#     ex.show()
#     sys.exit(app.exec_())


