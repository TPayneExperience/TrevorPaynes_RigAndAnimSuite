
import os

from Qt import QtWidgets, QtCore, QtGui

class LoadTemplate_UI(QtWidgets.QDialog):
    def __init__(self, templateFiles, parent=None):
        super(LoadTemplate_UI, self).__init__(parent)

        self.parent = parent
        self.templateFiles = templateFiles

        self._Setup()
        self.Populate()
        self._UpdateLoadTemplateBtn()
        self._Setup_Connections()

    def Populate(self):
        for fileName in sorted(self.templateFiles.keys()):
            path = self.templateFiles[fileName]
            item = QtWidgets.QListWidgetItem(self.limbs_lw)
            item.setText(fileName)
            item.path = path
            self.limbs_lw.addItem(item)


#=========== SETUP ====================================

    def _Setup(self):
        self.setWindowTitle('Load Limb Template')
        self.setWindowFlags(self.windowFlags() ^ QtCore.Qt.WindowContextHelpButtonHint)

        vl = QtWidgets.QVBoxLayout(self)
        vl.addWidget(self._Setup_Templates_GB())
        vl.addLayout(self._Setup_Buttons())
    
    def _Setup_Templates_GB(self):
        gb = QtWidgets.QGroupBox('Select Limbs to Load')
        vl = QtWidgets.QVBoxLayout(gb)

        self.limbs_lw = QtWidgets.QListWidget(self)
        self.limbs_lw.setAlternatingRowColors(True)
        self.limbs_lw.setSelectionMode(self.limbs_lw.ExtendedSelection)
        # self.limbs_lw.setHeaderHidden(True)
        # self.limbs_lw.setIndentation(10)

        vl.addWidget(self.limbs_lw)
        return gb

    def _Setup_Buttons(self):
        hl = QtWidgets.QHBoxLayout()
        self.cancel_btn = QtWidgets.QPushButton('Cancel')

        self.loadTemplate_btn = QtWidgets.QPushButton('Load Templates')
        hl.addWidget(self.cancel_btn)
        hl.addWidget(self.loadTemplate_btn)
        return hl

#=========== FUNCTIONALITY ====================================

    def _Setup_Connections(self):
        self.cancel_btn.clicked.connect(self.reject)
        self.loadTemplate_btn.clicked.connect(self._LoadTemplate)
        self.limbs_lw.itemSelectionChanged.connect(self._UpdateLoadTemplateBtn)

    def _UpdateLoadTemplateBtn(self):
        items = self.limbs_lw.selectedItems()
        self.loadTemplate_btn.setEnabled(bool(items))
        self.loadTemplate_btn.setText('Load %d limb(s)' % len(items))

    def _LoadTemplate(self):
        items = self.limbs_lw.selectedItems()
        filePaths = [item.path for item in items]
        self.parent._Load_Template(filePaths)
        self.accept()





















