
import sys

from Qt import QtWidgets, QtCore, QtGui

class Joint_Hierarchy_UI(QtWidgets.QListWidget):
    def __init__(self, jointHierarchy, parent=None):
        super(Joint_Hierarchy_UI, self).__init__(parent)
        self.parent = parent
        self.jntHier = jointHierarchy
        self._isPopulating = False
        self._Setup()
        self._Setup_Connections()

    def SetLimb(self, limbID):
        self.jntHier.SetLimb(limbID)
        self.Populate()

    def Populate(self):
        self._isPopulating = True
        self.clear()
        jointIDs = self.jntHier.jntMng.GetLimbJointIDs(self.jntHier.limbID)
        joints = self.jntHier.jntMng.GetJoints(jointIDs)
        for j in joints:
            item = QtWidgets.QListWidgetItem(self)
            item.ID = j.ID
            item.setText(j.name)
            item.setFlags(item.flags() | QtCore.Qt.ItemIsEditable)
            self.addItem(item)
        self._isPopulating = False


#=========== SETUP ====================================

    def _Setup(self):
        self.setAlternatingRowColors(True)
        self.setDragDropMode(self.InternalMove)
        self.setSelectionMode(self.ExtendedSelection)

        self.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
    
    def _RightClickMenu(self):
        menu = QtWidgets.QMenu(self)
        add = QtWidgets.QAction('Add', self, triggered=self.Add)
        remove = QtWidgets.QAction('Remove', self, triggered=self._Remove)
        menu.addAction(add)
        menu.addAction(remove)
        menu.exec_(QtGui.QCursor.pos())
    
    def eventFilter(self, sender, event):
        if (event.type() == QtCore.QEvent.ChildRemoved):
            self._Reorder()
        return False
    
    def _Setup_Connections(self):
        self.installEventFilter(self)
        self.customContextMenuRequested[QtCore.QPoint].connect(self._RightClickMenu)
        self.itemChanged.connect(self._Rename)

#=========== FUNCTIONALITY ====================================

    def Add(self):
        self.parent.AddJoints(self.jntHier.limbID, 1)
    
    def _Remove(self):
        jointIDs = [item.ID for item in self.selectedItems()]
        self.parent.RemoveJoints(self.jntHier.limbID, jointIDs)

    def _Rename(self, item):
        if not self._isPopulating:
            newName = item.text()
            validLen = self.jntHier.nameMng.IsValidCharacterLength(newName)
            validStart = self.jntHier.nameMng.DoesNotStartWithNumber(newName)
            allValid = self.jntHier.nameMng.AreAllValidCharacters(newName)
            if validLen and validStart and allValid:
                limbID = self.jntHier.limbID
                self.jntHier.jntMng.SetName(limbID, item.ID, newName)
                self.parent.RenameJoint(limbID, item.ID)
            else:
                item.setText(self.jntHier.jntMng.GetJoint(item.ID).name)
                self.parent.DisplayLogMsg(self.jntHier.nameMng.errorMsg)

    def _Reorder(self):
        if not self._isPopulating:
            ids = [self.item(i).ID for i in range(self.count())]
            limbID = self.jntHier.limbID
            mirrorID = self.jntHier.limbMng.GetMirror(limbID)
            self.jntHier.jntMng.SetLimbJointIDs(limbID, mirrorID, ids)
            self.parent.ReorderJoints()
    






if __name__ == '__main__':
    app = QtWidgets.QApplication(sys.argv)
    
    ex = Limb_Joints_UI(None, None)
    ex.show()
    sys.exit(app.exec_())








