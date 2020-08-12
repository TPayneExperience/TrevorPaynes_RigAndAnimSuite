
import os

from Common.Qt import QtWidgets, QtCore, QtGui


class Limb_Hierarchy_TW(QtWidgets.QTreeWidget):
    def __init__(self, limbMng, parent=None):
        super(Limb_Hierarchy_TW, self).__init__(parent)

        self.limbMng = limbMng
        self._items = {} # ID : Item

        self._Setup_Abstract()

    def _Setup_Abstract(self):
        self.setAlternatingRowColors(True)
        self.setHeaderHidden(True)
        self.setIndentation(10)

        path = os.path.dirname(__file__)
        path = os.path.dirname(path)
        self.l_icon = QtGui.QIcon(os.path.join(path, 'Images', 'Skel_L.png'))
        self.r_icon =  QtGui.QIcon(os.path.join(path, 'Images', 'Skel_R.png'))
        self.m_icon =  QtGui.QIcon(os.path.join(path, 'Images', 'Skel_M.png'))

    def Populate_Abstract(self):
        self.clear()
        self._items.clear()

        idOrder = self.limbMng.GetAllLimbsCreationOrder()

        # CREATE ITEMS, IN ORDER
        for limbID in idOrder:
            name = self.limbMng.GetName(limbID)
            side = self.limbMng.GetSide(limbID)
            parentID = self.limbMng.GetParentID(limbID)
            if (parentID != -1):
                parentItem = self._items[parentID]
                item = QtWidgets.QTreeWidgetItem(parentItem, [name])
            else:
                item = QtWidgets.QTreeWidgetItem(self, [name])
            item.ID = limbID
            if (side == 'M'):
                item.setIcon(0, self.m_icon)
            else:
                if (side == 'L'):
                    item.setIcon(0, self.l_icon)
                elif (side == 'R'):
                    item.setIcon(0, self.r_icon)
            self._items[limbID] = item
        self.expandAll()

























