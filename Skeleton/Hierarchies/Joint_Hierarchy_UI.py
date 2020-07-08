
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
        jointIDs = self.jntHier.jntMng.GetLimbJointIDs(self.jntHier.limb.ID)
        joints = self.jntHier.jntMng.GetJoints(jointIDs)
        for j in joints:
            item = QtWidgets.QListWidgetItem(self)
            item.ID = j.ID
            item.setText = j.name
            item.setFlags(item.flags() | QtCore.Qt.ItemIsEditable)
        # names = self.jntHier.jntMng.GetNames(jointIDs)
        # self.addItems(names)
        # for i in range(self.count()):
        #     item = self.item(i)
        #     item.ID = jointIDs[i]
        #     item.setFlags(item.flags() | QtCore.Qt.ItemIsEditable)
        self._isPopulating = False

#=========== SETUP ====================================
    def _Setup(self):
        self.setAlternatingRowColors(True)
        self.setDragDropMode(self.InternalMove)

        self.installEventFilter(self)

        self.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
    
    def _RightClickMenu(self):
        menu = QtWidgets.QMenu(self)
        add = QtWidgets.QAction('Add', self, triggered=self._Add)
        remove = QtWidgets.QAction('Remove', self, triggered=self._Remove)
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

    def _Add(self):
        index = self.currentRow()
        self.jntHier.jntMng.Add(self.jntHier.limb.ID, 1)
        self._Populate()
    
    def _Remove(self):
        ids = [item.ID for item in self.selectedItems()]
        self.jntHier.jntMng.Remove(self.jntHier.limb.ID, ids)
        self._Populate()

    def _Rename(self, item):
        if not self._isPopulating:
            self.jntHier.RenameJoint(item.ID, item.text())
            self._Populate()

    def _Reorder(self):
        if not self._isPopulating:
            ids = [item.ID for item in self.selectedItems()]
            self.jntHier.jntMng.SetLimbJointIDs(self.jntHier.limb.ID, ids)
            self._Populate()
    






if __name__ == '__main__':
    app = QtWidgets.QApplication(sys.argv)
    
    ex = Limb_Joints_UI(None, None)
    ex.show()
    sys.exit(app.exec_())








