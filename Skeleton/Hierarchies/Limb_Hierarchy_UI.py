
import os
import sys

from Qt import QtWidgets, QtCore, QtGui


class Limb_Hierarchy_UI(QtWidgets.QTreeWidget):
    def __init__(self, limbHierarchy, parent=None):
        super(Limb_Hierarchy_UI, self).__init__(parent)
        self.parent = parent
        self.limbHier = limbHierarchy
        self._items = {} # ID : Item
        self._isPopulating = False
        self._Setup()
        self._Setup_Connections()

    def Populate(self):
        self._isPopulating = True
        self.clear()
        self._items.clear()

        # PARENTS FIRST ALGORITHM
        limbParents = self.limbHier.limbMng.GetLimbParentDict()
        idOrder = []
        while (limbParents):
            for k,v in limbParents.items():
                if (v == -1) or (v in idOrder):
                    idOrder.append(k)
                    del(limbParents[k])
                    break

        # CREATE ITEMS, IN ORDER
        for ID in idOrder:
            name = self.limbHier.limbMng.GetName(ID)
            side = self.limbHier.limbMng.GetSide(ID)
            parentID = self.limbHier.limbMng.GetParentID(ID)
            if (parentID != -1):
                parentItem = self._items[parentID]
                item = QtWidgets.QTreeWidgetItem(parentItem, [name])
            else:
                item = QtWidgets.QTreeWidgetItem(self, [name])
            item.ID = ID
            if (side == 'L'):
                item.setIcon(0, self.l_icon)
            elif (side == 'R'):
                item.setIcon(0, self.r_icon)
            elif (side == 'M'):
                item.setIcon(0, self.m_icon)
            item.setFlags(item.flags() | QtCore.Qt.ItemIsEditable)
            self._items[ID] = item
        self.expandAll()
        self._isPopulating = False

#=========== SETUP ====================================

    def _Setup(self):
        path = os.path.dirname(__file__)
        path = os.path.dirname(path)
        path = os.path.dirname(path)
        self.l_icon = QtGui.QIcon(os.path.join(path, 'Images/Skel_L.png'))
        self.r_icon =  QtGui.QIcon(os.path.join(path, 'Images/Skel_R.png'))
        self.m_icon =  QtGui.QIcon(os.path.join(path, 'Images/Skel_M.png'))

        self.setAlternatingRowColors(True)
        self.setDragDropMode(self.InternalMove)
        self.setHeaderHidden(True)
        self.setIndentation(10)
        self.installEventFilter(self)

        self.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
        
    def _RightClickMenu(self):
        menu = QtWidgets.QMenu(self)
        add = QtWidgets.QAction('Add', 
                                self, 
                                triggered=self.Add)
        duplicate = QtWidgets.QAction(  'Duplicate', 
                                        self, 
                                        triggered=self._Duplicate)
        remove = QtWidgets.QAction( 'Remove', 
                                    self, 
                                    triggered=self._Remove)
        mirrorX = QtWidgets.QAction('X Axis', 
                                    self, 
                                    triggered=self._Mirror_X)
        mirrorY = QtWidgets.QAction('Y Axis', 
                                    self, 
                                    triggered=self._Mirror_Y)
        mirrorZ = QtWidgets.QAction('Z Axis', 
                                    self, 
                                    triggered=self._Mirror_Z)
        menu.addAction(add)

        mirrorMenu = menu.addMenu('Mirror')
        mirrorMenu.addAction(mirrorX)
        mirrorMenu.addAction(mirrorY)
        mirrorMenu.addAction(mirrorZ)

        menu.addAction(duplicate)
        menu.addSeparator()
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

    def Add(self):
        self.limbHier.Add()
        self.Populate()

    def _Remove(self):
        # MISSING WARNING CONFIRMATION DIALOG
        ID = self.currentItem().ID
        self.limbHier.Remove(ID)
        self.Populate()

    def _Rename(self, item):
        if not self._isPopulating:
            self.limbHier.limbMng.SetLimbName(item.ID, item.text(0))
            self.parent.UpdateLimbs()

    def _Reorder(self):
        if not self._isPopulating:
            newChildParentDict = {}
            for item in list(self._items.values()):
                newChildParentDict[item.ID] = -1
                parent = item.parent()
                if parent:
                    newChildParentDict[item.ID] = parent.ID
            self.limbHier.limbMng.ReorderTree(newChildParentDict)
            self.Populate()
    
    def _Duplicate(self):
        limbID = self.currentItem().ID
        self.limbHier.Duplicate(limbID)
        self.Populate()

    def _Mirror_X(self):
        limbID = self.currentItem().ID
        self.limbHier.Mirror(limbID, 'X')
        self.Populate()

    def _Mirror_Y(self):
        limbID = self.currentItem().ID
        self.limbHier.Mirror(limbID, 'Y')
        self.Populate()

    def _Mirror_Z(self):
        limbID = self.currentItem().ID
        self.limbHier.Mirror(limbID, 'Z')
        self.Populate()
    































