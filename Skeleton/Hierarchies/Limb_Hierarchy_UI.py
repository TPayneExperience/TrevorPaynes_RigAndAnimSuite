
import sys

from Qt import QtWidgets, QtCore, QtGui


class Limb_Hierarchy_UI(QtWidgets.QTreeWidget):
    def __init__(self, limbHierarchy, parent=None):
        super(Joint_Hierarchy_UI, self).__init__(parent)
        self.limbHier = limbHierarchy
        self._isPopulating = False
        self._Setup()
        self._Setup_Connections()

    def Populate(self):
        self._isPopulating = True
        self.clear()
        ids = self.limbHier.limbMng.GetLimbIDs()
        names = self.limbHier.limbMng.GetNames(ids)
        items = {} # ID : Item
        for i in range(len(ids)):
            item = QtWidgets.QTreeWidgetItem(self, names[i])
            item.ID = ids[i]
            item.setFlags(item.flags() | QtCore.Qt.ItemIsEditable)
            items[ids[i]] = item
        for ID in ids:
            parentID = self.limbHier.limbMng.GetLimbParentID(ID)
            if (parentID != -1)
                items[ID].
        self._isPopulating = False

#=========== SETUP ====================================
    def _Setup(self):
        self.setAlternatingRowColors(True)
        self.setDragDropMode(self.InternalMove)

        self.installEventFilter(self)

        self.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
    
    def _RightClickMenu(self):
        menu = QtWidgets.QMenu(self)
        add = QtWidgets.QAction('Add', self, triggered=self._AddJoint)
        remove = QtWidgets.QAction('Remove', self, triggered=self._RemoveJoints)
        menu.addAction(add)
        menu.addAction(remove)
        menu.exec_(QtGui.QCursor.pos())
    
    def eventFilter(self, sender, event):
        if (event.type() == QtCore.QEvent.ChildRemoved):
            self._Reorder()
        return False
    
    def _Setup_Connections(self):
        self.customContextMenuRequested[QtCore.QPoint].connect(self._RightClickMenu)
        self.itemChanged.connect(self._Rename)

#=========== FUNCTIONALITY ====================================

    def _AddJoint(self):
        index = self.currentRow()
        self.jntHier.AddJoint(index)
        self._Populate()
    
    def _RemoveJoints(self):
        ids = [item.ID for item in self.selectedItems()]
        self.jntHier.RemoveJoints(ids)
        self._Populate()

    def _Rename(self, item):
        if not self._isPopulating:
            self.jntHier.RenameJoint(item.ID, item.text())
            self._Populate()

    def _Reorder(self):
        if not self._isPopulating:
            ids = [item.ID for item in self.selectedItems()]
            self.jntHier.Reorder(ids)
            self._Populate()
    































