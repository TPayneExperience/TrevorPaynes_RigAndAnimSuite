
import sys

from Qt import QtWidgets, QtCore, QtGui

class Limb_Branch_Joints_UI(QtWidgets.QWidget):
    def __init__(self, jointMng, limbMng, parent=None):
        super(Limb_Branch_Joints_UI, self).__init__(parent)
        self._jointMng = jointMng
        self._limbMng = limbMng
        self._limb = None
        self._ids = [] # these three lists must maintain orders
        self._names = []
        # self._items = []
        # self._isPopulating = False
        self._Setup()
        self.tempPopulate()

#=========== SETUP ====================================

    def _Setup(self):
        v_layout = QtWidgets.QVBoxLayout(self)
        gb = QtWidgets.QGroupBox('BRANCH Limb Joints')
        vl = QtWidgets.QVBoxLayout(gb)

        self.joints_lw = BranchJoints_ListWidget(self)
        vl.addWidget(self.joints_lw)
        
        v_layout.addWidget(gb)

#=========== FUNCTIONALITY ====================================

    def _Setup_Connections(self):
        # self.itemChanged.connect(self._NamesChanged)
        pass

    def _NamesChanged(self):
        if not self._isPopulating:
            for ID,item in self._treeWidgetItems.items():
                self._jntMng.jointIdToData[ID]

    def Reorder(self):
        print('reordering')
        # temp = zip(self._names, self._ids)
        # names = [self.joints_lw.item(i).text() for i in range(len(self._ids))]
        # self._ids = [temp[name] for name in names]
        # self._limb.jointIDs = self._ids[:]
    
    def AddJoint(self):
        pring('adding')

#=========== POPULATE ====================================
    def tempPopulate(self):
        self.joints_lw.addItems(['1', '2', '7', '4', '3', ])

    # def SetJoints(self, limbID):
    #     self._isPopulating = True

    #     self._limb = self._limbMng.GetLimb(limbID)

    #     self._ids.clear()
    #     self._names.clear()
    #     self._items.clear()
    #     self.clear()

    #     self._ids = [t.id for t in jointTreeDataList]
    #     self._names = self._jointMng.GetNames(ids)
    #     for ID, name in zip(self._ids, self._names):
    #         item = QtWidgets.QTreeWidgetItem(self, [name])
    #         self._items.append(item)
    #     self.addItems(self._items)

    #     self._isPopulating = False





class BranchJoints_ListWidget(QtWidgets.QListWidget):
    def __init__(self, parent=None):
        super(BranchJoints_ListWidget, self).__init__(parent)
        self.parent = parent
        self.setDragDropMode(self.InternalMove)
        self.setAlternatingRowColors(True)
        self.installEventFilter(self)
        self.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
        self.customContextMenuRequested[QtCore.QPoint].connect(self.RightClicked)
    
    def eventFilter(self, sender, event):
        if (event.type() == QtCore.QEvent.ChildRemoved):
            self.onOrderChanged()
        return False
    
    def onOrderChanged(self):
        self.parent.Reorder()
    
    def RightClicked(self):
        menu = QtGui.QMenu(self)
        add = QtGui.QAction('Add', self, )





if __name__ == '__main__':
    app = QtWidgets.QApplication(sys.argv)
    
    ex = Limb_Branch_Joints_UI(None, None)
    ex.show()
    sys.exit(app.exec_())








