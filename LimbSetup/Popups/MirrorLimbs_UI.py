
import os

from Qt import QtWidgets, QtCore, QtGui

class MirrorLimbs_UI(QtWidgets.QDialog):
    def __init__(self, limbMng, parent=None):
        super(MirrorLimbs_UI, self).__init__(parent)

        self.parent = parent
        self.limbMng = limbMng

        self._items = {} # ID : Item
        self._isUpdating = False

        self._Setup()
        self.Populate()
        self._UpdateMirrorLimbBtn()
        self._Setup_Connections()

    def Populate(self):
        limbIDs = self.limbMng.GetRootLimbs()
        while(limbIDs):
            limbID = limbIDs[0]
            del(limbIDs[0])
            if (self.limbMng.GetSide(limbID) == 'M'):
                name = self.limbMng.GetName(limbID)
                parentID = self.limbMng.GetParentID(limbID)
                if (parentID != -1):
                    parentItem = self._items[parentID]
                    item = QtWidgets.QTreeWidgetItem(parentItem, [name])
                else:
                    item = QtWidgets.QTreeWidgetItem(self.limbs_tw, [name])
                item.ID = limbID
                self._items[limbID] = item
                limbIDs += self.limbMng.GetImmediateChildren(limbID)
        self.limbs_tw.expandAll()


#=========== SETUP ====================================

    def _Setup(self):
        self.setWindowTitle('Mirror Limbs')
        self.setWindowFlags(self.windowFlags() ^ QtCore.Qt.WindowContextHelpButtonHint)

        vl = QtWidgets.QVBoxLayout(self)
        vl.addWidget(self._Setup_Limb_GB())
        vl.addLayout(self._Setup_Buttons())
        self._Setup_Icons()
    
    def _Setup_Icons(self):
        path = os.path.dirname(__file__)
        path = os.path.dirname(path)
        path = os.path.dirname(path)
        self.l_icon = QtGui.QIcon(os.path.join(path, 'Images', 'Skel_L.png'))
        self.r_icon =  QtGui.QIcon(os.path.join(path, 'Images', 'Skel_R.png'))
        self.m_icon =  QtGui.QIcon(os.path.join(path, 'Images', 'Skel_M.png'))

    def _Setup_Limb_GB(self):
        gb = QtWidgets.QGroupBox('Select Limbs to Mirror')
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
        self.mirrorLimb_btn = QtWidgets.QPushButton('Mirror Limb')
        hl.addWidget(self.cancel_btn)
        hl.addWidget(self.mirrorLimb_btn)
        return hl

#=========== FUNCTIONALITY ====================================

    def _Setup_Connections(self):
        self.cancel_btn.clicked.connect(self.reject)
        self.mirrorLimb_btn.clicked.connect(self._MirrorLimbs)
        self.limbs_tw.itemSelectionChanged.connect(self._UpdateMirrorLimbBtn)

    def _UpdateMirrorLimbBtn(self):
        if not self._isUpdating:
            self._isUpdating = True
            for item in self._items.values():
                item.setDisabled(False)

            items = self.limbs_tw.selectedItems()
            self.mirrorLimb_btn.setEnabled(bool(items))
            limbIDs = [item.ID for item in items]
            for limbID in limbIDs:
                childIDs = self.limbMng.GetLimbCreationOrder(limbID)
                for childID in childIDs[1:]:
                    item = self._items[childID]
                    item.setDisabled(True)
                    self.limbs_tw.setItemSelected(item, False)
            items = self.limbs_tw.selectedItems()
            self.mirrorLimb_btn.setText('Mirror %d limb(s)' % len(items))
            self._isUpdating = False
    
    def _MirrorLimbs(self):
        items = self.limbs_tw.selectedItems()
        limbIDs = [item.ID for item in items]
        self.parent._Mirror_Limbs(limbIDs)
        self.accept()





















