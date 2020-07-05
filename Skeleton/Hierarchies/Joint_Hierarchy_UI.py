
import sys

from Qt import QtWidgets, QtCore, QtGui

class Joint_Hierarchy_UI(QtWidgets.QListWidget):
    def __init__(self, jointHierarchy, parent=None):
        super(Joint_Hierarchy_UI, self).__init__(parent)
        self.jntHier = jointHierarchy
        self._isPopulating = False
        self._Setup()
        self._Setup_Connections()

    def SetLimb(self, limb):
        self.jntHier.SetLimb(limb)
        self._Populate()

    def _Populate(self):
        self._isPopulating = True
        self.clear()
        self.addItems(self.jntHier.jntMng.GetNames(limb.jointIDs))
        for i in range(self.count()):
            item = self.item(i)
            item.ID = jointIdList[i]
            item.setFlags(item.flags() | QtCore.Qt.ItemIsEditable)
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
    






if __name__ == '__main__':
    app = QtWidgets.QApplication(sys.argv)
    
    ex = Limb_Joints_UI(None, None)
    ex.show()
    sys.exit(app.exec_())








