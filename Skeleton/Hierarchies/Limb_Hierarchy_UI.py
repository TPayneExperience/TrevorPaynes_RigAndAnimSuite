
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
        selectemItem = None
        selectedID = -1
        items = self.selectedItems()
        if (items):
            selectedID = items[0].ID
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
                                QtCore.Qt.ItemIsEnabled)
            self._items[ID] = item
            if (ID == selectedID):
                selectemItem = item
        self.expandAll()
        self._isPopulating = False
        if (selectemItem):
            self.setCurrentItem(selectemItem)

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

        items = self.selectedItems()
        if items:
            limbID = items[0].ID
            mirrorID = self.limbHier.limbMng.GetMirror(limbID)
            if (mirrorID != -1):
                mirrorMenu.setEnabled(False)
                if (mirrorID not in self.limbHier.limbMng.GetLimbMirrorRoots()):
                    remove.setEnabled(False)

        menu.addAction(duplicate)
        menu.addSeparator()
        menu.addAction(remove)
        menu.exec_(QtGui.QCursor.pos())
    
    def eventFilter(self, sender, event):
        if (event.type() == QtCore.QEvent.ChildRemoved):
            self._Reparent()
        return False
    
    def _Setup_Connections(self):
        self.customContextMenuRequested[QtCore.QPoint].connect(self._RightClickMenu)
        self.itemChanged.connect(self._Rename)

#=========== FUNCTIONALITY ====================================

    def Add(self):
        self.parent.AddLimb(self.limbHier.Add())

    def _Remove(self):
        # MISSING WARNING CONFIRMATION DIALOG
        ID = self.currentItem().ID
        self.limbHier.Remove(ID)
        self.parent.RemoveLimb(ID)

    def _Rename(self, item):
        if not self._isPopulating:
            limbID = item.ID
            self.limbHier.limbMng.SetLimbName(limbID, item.text(0))
            self.parent.RenameLimb(limbID)
            mirrorID = self.limbHier.limbMng.GetMirror(limbID)
            if (mirrorID != -1):
                self.parent.RenameLimb(mirrorID)
                self.Populate()


    def _Reparent(self):
        if not self._isPopulating:
            limbParentDict = self.limbHier.limbMng.GetLimbParentDict()
            for item in self._items.values():
                childID = item.ID
                parentID = -1
                if (item.parent()):
                    parentID = item.parent().ID
                if (limbParentDict[childID] != parentID):
                    self.limbHier.limbMng.SetParent(childID, parentID)
                    self.limbHier.jntMng.SetParentLimb(childID, parentID)
                    self.parent.ReparentLimb(childID)
                    self.expandAll()
                    break

    def _Duplicate(self):
        newLimbIDs = self.limbHier.Duplicate(self.currentItem().ID)
        for limbID in newLimbIDs:
            self.parent.AddLimb(limbID)
        # self.parent.RebuildHierarchy()

    def _Mirror_X(self):
        self._Mirror('X')

    def _Mirror_Y(self):
        self._Mirror('Y')

    def _Mirror_Z(self):
        self._Mirror('Z')
    
    def _Mirror(self, axis):
        limbID = self.currentItem().ID
        limbMirrorDict = self.limbHier.Mirror(limbID, axis) 
        self.limbHier.limbMng.SetLimbMirrorRoot(limbID)
        for ID_01, ID_02 in limbMirrorDict.items():
            self.parent.AddLimb(ID_02)
            self.parent.RenameLimb(ID_01)
        # self.parent.RebuildHierarchy()      
    































