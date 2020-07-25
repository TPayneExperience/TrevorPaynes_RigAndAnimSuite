
from Qt import QtWidgets, QtCore

class Save_CustomLimb_UI(QtWidgets.QDialog):
    def __init__(self, limbIDs, parent=None):
        super(Save_CustomLimb_UI, self).__init__(parent)

        self.limbIDs = limbIDs

        skel = parent.skel
        self.nameMng = skel.namgMng
        self.fileMng = skel.fileMng
        self.saveLoadMng = skel.saveLoadSkel.saveLoadMng

        self._Setup()
        self._Setup_Connections()
        self._UpdateSaveBtn()
    
    def _Setup(self):
        self.setWindowTitle('Save New Template')

        vl = QtWidgets.QVBoxLayout(self)
        self.name_le = QtWidgets.QLineEdit()
        self.msg_l = QtWidgets.QLabel('asdf')

        vl.addWidget(self.name_le)
        vl.addWidget(self.msg_l)
        vl.addLayout(self._Setup_Buttons())
    
    def _Setup_Buttons(self):
        hl = QtWidgets.QHBoxLayout()
        self.cancel_btn = QtWidgets.QPushButton('Cancel')
        self.save_btn = QtWidgets.QPushButton('Save')
        hl.addWidget(self.cancel_btn)
        hl.addWidget(self.save_btn)
        return hl

    def _Setup_Connections(self):
        self.cancel_btn.clicked.connect(self.reject)
        self.save_btn.clicked.connect(self._Save)
        self.name_le.textChanged.connect(self._UpdateSaveBtn)

    def _UpdateSaveBtn(self):
        text = self.name_le.text()
        self.save_btn.setEnabled(False)
        if self.nameMng.IsValidCharacterLength(text):
            if self.nameMng.DoesNotStartWithNumber(text):
                if self.nameMng.AreAllValidCharacters(text):
                    self.save_btn.setEnabled(True)
        self.msg_l.setText(self.nameMng.errorMsg)
    
    def _Save(self):
        name = self.name_le.text()
        filePath = self.fileMng.GetNextSkeletonCustomTemplatePath(name)
        self.saveLoadMng.Save_Skel_Limbs(filePath, self.limbIDs)
        self.accept()

