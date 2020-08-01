
import os

from Qt import QtWidgets, QtCore, QtGui

class SaveTemplate_UI(QtWidgets.QDialog):
    def __init__(self, limbMng, nameMng, parent=None):
        super(SaveTemplate_UI, self).__init__(parent)

        self.parent = parent
        self.limbMng = limbMng
        self.nameMng = nameMng

        self._items = {} # ID : Item
        self._isUpdating = False

        self._Setup()
        self.Populate()
        self._UpdateSaveTemplateBtn()
        self._Setup_Connections()

    def Populate(self):
        limbIDs = self.limbMng.GetAllLimbsCreationOrder()
        for limbID in limbIDs:
            name = self.limbMng.GetName(limbID)
            side = self.limbMng.GetSide(limbID)
            parentID = self.limbMng.GetParentID(limbID)
            if (parentID != -1):
                parentItem = self._items[parentID]
                item = QtWidgets.QTreeWidgetItem(parentItem, [name])
            else:
                item = QtWidgets.QTreeWidgetItem(self.limbs_tw, [name])
            item.ID = limbID
            if (side == 'M'):
                item.setIcon(0, self.m_icon)
            elif (side == 'L'):
                item.setIcon(0, self.l_icon)
            elif (side == 'R'):
                item.setIcon(0, self.r_icon)
            self._items[limbID] = item
        self.limbs_tw.expandAll()


#=========== SETUP ====================================

    def _Setup(self):
        self.setWindowTitle('Save Limb Template')
        self.setWindowFlags(self.windowFlags() ^ QtCore.Qt.WindowContextHelpButtonHint)

        vl = QtWidgets.QVBoxLayout(self)
        vl.addLayout(self._Setup_NameTemplate())
        vl.addWidget(self._Setup_Limb_GB())
        vl.addLayout(self._Setup_Buttons())
        self._Setup_Icons()
    
    def _Setup_NameTemplate(self):
        vl = QtWidgets.QVBoxLayout()
        hl = QtWidgets.QHBoxLayout()
        label = QtWidgets.QLabel('Template Name')
        self.templateName_le = QtWidgets.QLineEdit(self)

        hl.addWidget(label)
        hl.addWidget(self.templateName_le)

        self.msg_l = QtWidgets.QLabel()
        vl.addLayout(hl)
        vl.addWidget(self.msg_l)
        return vl

    def _Setup_Limb_GB(self):
        gb = QtWidgets.QGroupBox('Select Limbs to Save')
        vl = QtWidgets.QVBoxLayout(gb)

        self.limbs_tw = QtWidgets.QTreeWidget(self)
        self.limbs_tw.setAlternatingRowColors(True)
        self.limbs_tw.setSelectionMode(self.limbs_tw.ExtendedSelection)
        self.limbs_tw.setHeaderHidden(True)
        self.limbs_tw.setIndentation(10)

        vl.addWidget(self.limbs_tw)
        return gb

    def _Setup_Buttons(self):
        hl = QtWidgets.QHBoxLayout()
        self.cancel_btn = QtWidgets.QPushButton('Cancel')
        self.saveTemplate_btn = QtWidgets.QPushButton('Save Template')
        hl.addWidget(self.cancel_btn)
        hl.addWidget(self.saveTemplate_btn)
        return hl

    def _Setup_Icons(self):
        path = os.path.dirname(__file__)
        path = os.path.dirname(path)
        path = os.path.dirname(path)
        self.l_icon = QtGui.QIcon(os.path.join(path, 'Images', 'Skel_L.png'))
        self.r_icon =  QtGui.QIcon(os.path.join(path, 'Images', 'Skel_R.png'))
        self.m_icon =  QtGui.QIcon(os.path.join(path, 'Images', 'Skel_M.png'))

#=========== FUNCTIONALITY ====================================

    def _Setup_Connections(self):
        self.cancel_btn.clicked.connect(self.reject)
        self.saveTemplate_btn.clicked.connect(self._SaveTemplate)
        self.limbs_tw.itemSelectionChanged.connect(self._UpdateSaveTemplateBtn)
        self.templateName_le.textChanged.connect(self._UpdateSaveTemplateBtn)

    def _UpdateSaveTemplateBtn(self):
        if not self._isUpdating:
            self._isUpdating = True
            for item in self._items.values():
                item.setDisabled(False)

            items = self.limbs_tw.selectedItems()
            text = self.templateName_le.text()
            valid = False
            if self.nameMng.IsValidCharacterLength(text):
                if self.nameMng.DoesNotStartWithNumber(text):
                    if self.nameMng.AreAllValidCharacters(text):
                        if items:
                            valid = True
            self.msg_l.setText(self.nameMng.errorMsg)
            self.saveTemplate_btn.setEnabled(valid)

            limbIDs = [item.ID for item in items]
            for limbID in limbIDs:
                childIDs = self.limbMng.GetLimbCreationOrder(limbID)
                for childID in childIDs[1:]:
                    item = self._items[childID]
                    item.setDisabled(True)
                    self.limbs_tw.setItemSelected(item, False)
                for childID in childIDs:
                    mirrorID = self.limbMng.GetMirror(childID)
                    if (mirrorID != -1):
                        item = self._items[mirrorID]
                        item.setDisabled(True)
                        self.limbs_tw.setItemSelected(item, False)
            items = self.limbs_tw.selectedItems()
            self.saveTemplate_btn.setText('Save %d limb(s)' % len(items))
            self._isUpdating = False
    
    def _SaveTemplate(self):
        items = self.limbs_tw.selectedItems()
        limbIDs = [item.ID for item in items]
        templateName = self.templateName_le.text()
        self.parent._Save_Template(limbIDs, templateName)
        self.accept()





















