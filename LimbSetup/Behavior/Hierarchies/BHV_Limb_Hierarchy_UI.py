
import os

from Common.Qt import QtWidgets, QtCore, QtGui


class BHV_Limb_Hierarchy_UI(QtWidgets.QTreeWidget):
    # def __init__(self, limbHierarchy, parent=None):
    def __init__(self, parent=None):
        super(BHV_Limb_Hierarchy_UI, self).__init__(parent)

        self.parent = parent

        self._items = {} # ID : Item
        # self.limbHier = limbHierarchy
        # self._isPopulating = False
        # self._lastItemEdited = -1

        self._Setup()
        self._Setup_Connections()

    def Populate(self):
        self.clear()
        self._items.clear()

        # CREATE ITEMS, IN ORDER
        for limbID in self.limbHier.limbMng.GetAllLimbsCreationOrder():
            name = self.limbHier.limbMng.GetName(limbID)
            side = self.limbHier.limbMng.GetSide(limbID)
            parentID = self.limbHier.limbMng.GetParentID(limbID)
            if (parentID != -1):
                parentItem = self._items[parentID]
                item = QtWidgets.QTreeWidgetItem(parentItem, [name])
            else:
                item = QtWidgets.QTreeWidgetItem(self, [name])
            item.ID = limbID
            if (side == 'M'):
                item.setIcon(0, self.m_icon)
                item.setFlags(item.flags() | QtCore.Qt.ItemIsEditable)
            else:
                if (side == 'L'):
                    item.setIcon(0, self.l_icon)
                elif (side == 'R'):
                    item.setIcon(0, self.r_icon)
                item.setFlags(  QtCore.Qt.ItemIsEditable |
                                QtCore.Qt.ItemIsSelectable |
                                QtCore.Qt.ItemIsEnabled |
                                QtCore.Qt.ItemIsDropEnabled)
            self._items[limbID] = item
        self.expandAll()

#=========== SETUP ====================================

    def _Setup(self):
        self.setAlternatingRowColors(True)
        self.setDragDropMode(self.InternalMove)
        self.setHeaderHidden(True)
        self.setIndentation(10)

        self.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)

        self._Setup_Icons()
    
    def _Setup_Icons(self):
        path = os.path.dirname(__file__)
        path = os.path.dirname(path)
        path = os.path.dirname(path)
        path = os.path.dirname(path)
        self.l_icon = QtGui.QIcon(os.path.join(path, 'Images', 'Skel_L.png'))
        self.r_icon =  QtGui.QIcon(os.path.join(path, 'Images', 'Skel_R.png'))
        self.m_icon =  QtGui.QIcon(os.path.join(path, 'Images', 'Skel_M.png'))


    def _RightClickMenu(self):
        menu = QtWidgets.QMenu(self)
        addFK = QtWidgets.QAction('Add FK', 
                                self, 
                                triggered=self.Debug)
        removeFK = QtWidgets.QAction( 'Remove FK', 
                                    self, 
                                    triggered=self.Debug)
        addIKPoleVector = QtWidgets.QAction('Add IK Pole Vector [Requires 3+ chain joints]', 
                                self, 
                                triggered=self.Debug)
        removeIKPoleVector = QtWidgets.QAction( 'Remove IK Pole Vector', 
                                    self, 
                                    triggered=self.Debug)
        menu.addAction(addFK)
        menu.addAction(addIKPoleVector)

        menu.addSeparator()
        menu.addAction(removeFK)
        menu.addAction(removeIKPoleVector)
        
        menu.exec_(QtGui.QCursor.pos())

    
    def _Setup_Connections(self):
        self.customContextMenuRequested[QtCore.QPoint].connect(self._RightClickMenu)

#=========== FUNCTIONALITY ====================================

    def Debug(self):
        print ('Working, you sexy beast you!')
        





























