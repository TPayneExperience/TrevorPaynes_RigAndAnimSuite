import os
import sys

from Qt import QtWidgets, QtCore, QtGui

from RigSetup import RigSetup

class RigSetup_UI(QtWidgets.QWidget):
    def __init__(self, RigSetup, parent=None, prefix='', meshPath=''):
        super(RigSetup_UI, self).__init__(parent)
        self._rigSetup = RigSetup
        self._Setup()
        self._Populate_AssetDetails()
        self._Populate_RigNaming()
        self._Update_ExampleLabels()
        self._Update_MeshPathLabel()
        self._Update_PrefixErrorMsg()
        self._Update_SaveBtn()
        self._Setup_Connections()

#============ SETUP ============================

    def _Setup(self):
        v_layout = QtWidgets.QVBoxLayout(self)
        v_layout.addWidget(self._Setup_AssetDetails())
        v_layout.addWidget(self._Setup_RigNaming())
        v_layout.addWidget(self._Setup_ExampleResults())
        v_layout.addLayout(self._Setup_SaveCancel())
        self.setWindowTitle('Rig Setup')
        self.resize(300, 350)
    
    def _Setup_AssetDetails(self):
        gb = QtWidgets.QGroupBox('Asset Details')
        vl = QtWidgets.QVBoxLayout(gb)

        hl1 = QtWidgets.QHBoxLayout()
        hl1.addWidget(QtWidgets.QLabel('Asset Prefix (3-5)'))
        self.prefix_le = QtWidgets.QLineEdit()
        self.prefix_le.setPlaceholderText('CAT, ELF, ...')
        hl1.addWidget(self.prefix_le)
        vl.addLayout(hl1)

        self.prefixErrorMsg_l = QtWidgets.QLabel('SomeError')
        self.prefixErrorMsg_l.setAlignment(QtCore.Qt.AlignRight)
        vl.addWidget(self.prefixErrorMsg_l)

        gb2 = QtWidgets.QGroupBox('Mesh Path')
        hl2  = QtWidgets.QHBoxLayout(gb2)
        self.meshPath_l = QtWidgets.QLabel('C:/Some/File/Path.ma')
        hl2.addWidget(self.meshPath_l)
        self.meshPath_btn = QtWidgets.QPushButton('...')
        self.meshPath_btn.setMaximumSize(25, 100)
        hl2.addWidget(self.meshPath_btn)
        vl.addWidget(gb2)

        return gb

    def _Setup_RigNaming(self):
        gb = QtWidgets.QGroupBox('Rig Naming Scheme')
        vl = QtWidgets.QVBoxLayout(gb)

        self.showPrefix_cb = QtWidgets.QCheckBox('SHOW Prefix')
        self.showPrefix_cb.setChecked(True)
        vl.addWidget(self.showPrefix_cb)
        self.resultNaming_l = QtWidgets.QLabel('asdf')
        vl.addWidget(self.resultNaming_l)

        self.namingOrder_lw = ReorderListWidget(self)
        self.namingOrder_lw.setDragDropMode(QtWidgets.QAbstractItemView.InternalMove) 
        self.namingOrder_lw.setAlternatingRowColors(True)   
        self.namingOrder_lw.setMinimumSize(0, 90)
        vl.addWidget(self.namingOrder_lw)

        return gb
    
    def _Setup_ExampleResults(self):
        gb = QtWidgets.QGroupBox('Examples')
        vl = QtWidgets.QVBoxLayout(gb)

        self.example1_l = QtWidgets.QLabel('asdf1')
        self.example2_l = QtWidgets.QLabel('asdf2')
        self.example3_l = QtWidgets.QLabel('asdf3')
        vl.addWidget(self.example1_l)
        vl.addWidget(self.example2_l)
        vl.addWidget(self.example3_l)

        return gb
    
    def _Setup_SaveCancel(self):
        hl = QtWidgets.QHBoxLayout()
        self.cancel_btn = QtWidgets.QPushButton('Cancel')
        self.save_btn = QtWidgets.QPushButton('Save')
        hl.addWidget(self.cancel_btn)
        hl.addWidget(self.save_btn)
        return hl

#============ POPULATE + UPDATE ============================

    def _Populate_AssetDetails(self):
        self.prefix_le.setText(self._rigSetup.GetPrefix())
        self._Update_MeshPathLabel()
    
    def _Populate_RigNaming(self):
        self._rigNaming = [ 'Prefix (CAT, ELF)',
                            'Limb (ARM, LEG)',
                            'Joint (ELBOW, KNEE_02)',
                            'Side (L, M, R)',
                            'Type (JNT, CTR)']
        order = self._rigSetup.GetStartOrder()
        newOrder = [self._rigNaming[i] for i in order]
        self.namingOrder_lw.addItems(newOrder)
    
    def _Update_ExampleLabels(self):
        nameScheme = self._rigSetup.GetName('PREFIX',
                                            'LIMB',
                                            'Joint',
                                            'SIDE',
                                            'TYPE')
        ex1 = self._rigSetup.GetName('CAT',
                                    'BACKLEG',
                                    'KNEE',
                                    'L',
                                    'CTR')
        ex2 = self._rigSetup.GetName('ELF',
                                    'ARM',
                                    'Elbow',
                                    'R',
                                    'JNT')
        ex3 = self._rigSetup.GetName('JohnWick',
                                    'SPINE',
                                    'Neck',
                                    'M',
                                    'JNT')

        self.resultNaming_l.setText(nameScheme)
        self.example1_l.setText(ex1)
        self.example2_l.setText(ex2)
        self.example3_l.setText(ex3)
    
    def _Update_SaveBtn(self):
        if (not self._rigSetup.IsPrefixValid()):
            self.save_btn.setEnabled(False)
            self.save_btn.setText('Save (prefix invalid)')
        elif (not self._rigSetup.IsMeshPathValid()):
            self.save_btn.setEnabled(False)
            self.save_btn.setText('Save (missing mesh path)')
        else:
            self.save_btn.setEnabled(True)
            self.save_btn.setText('Save')

    def _Update_PrefixErrorMsg(self):
        if (self._rigSetup.IsPrefixValid()):
            self.prefixErrorMsg_l.hide()
        else:
            self.prefixErrorMsg_l.show()
            self.prefixErrorMsg_l.setText(self._rigSetup.prefixErrorMsg)

    def _Update_MeshPathLabel(self):
        self.meshPath_l.setText(self._rigSetup.GetMeshPath())
    
#============ FUNCTIONALITY ============================

    def _Setup_Connections(self):
        self.prefix_le.textChanged.connect(self._Save_Prefix)
        self.meshPath_btn.clicked.connect(self._FindMesh)
        self.cancel_btn.clicked.connect(self.close)
        self.save_btn.clicked.connect(self._SaveAndClose)
        self.showPrefix_cb.clicked.connect(self._ToggleShowPrefix)

    def _SaveAndClose(self):
        self._rigSetup.Save()
        self.close()

    def closeEvent(self, event):
        self._rigSetup.Cancel()
        event.accept()
    
    def _Save_Prefix(self):
        self._rigSetup.SetPrefix(self.prefix_le.text())
        self._Update_PrefixErrorMsg()
        self._Update_SaveBtn()

    def _Save_RigNamingOrder(self):
        temp = []
        for i in range(self.namingOrder_lw.count()):
            temp.append(self.namingOrder_lw.item(i).text())
        newOrder = [temp.index(i) for i in self._rigNaming]
        self._rigSetup.Reorder( newOrder[0], 
                                newOrder[1], 
                                newOrder[2], 
                                newOrder[3], 
                                newOrder[4])
        self._Update_ExampleLabels()

    def _FindMesh(self):
        filePath, ignore = QtWidgets.QFileDialog.getOpenFileName(self, 
                                                    'Select Mesh File',
                                                    self._rigSetup.GetMeshPath(),
                                                    '*.ma')
        if (os.path.isfile(filePath)):
            self._rigSetup.SetMeshPath(filePath)
            self._Update_MeshPathLabel()
            self._Update_SaveBtn()

    def _ToggleShowPrefix(self):
        self._rigSetup.SetShowPrefix(self.showPrefix_cb.isChecked())
        self._Update_ExampleLabels()

class ReorderListWidget(QtWidgets.QListWidget):
    def __init__(self, parent=None):
        super(ReorderListWidget, self).__init__(parent)
        self.parent = parent
        self.setDragDropMode(self.InternalMove)
        self.installEventFilter(self)
    
    def eventFilter(self, sender, event):
        if (event.type() == QtCore.QEvent.ChildRemoved):
            self.onOrderChanged()
        return False
    
    def onOrderChanged(self):
        self.parent._Save_RigNamingOrder()


if __name__ == '__main__':
    app = QtWidgets.QApplication(sys.argv)
    
    ex = RigSetup_UI()
    ex.show()
    sys.exit(app.exec_())


