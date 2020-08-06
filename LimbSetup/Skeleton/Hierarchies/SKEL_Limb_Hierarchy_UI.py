
import os

from Qt import QtWidgets, QtCore, QtGui


class SKEL_Limb_Hierarchy_UI(QtWidgets.QTreeWidget):
    def __init__(self, limbHierarchy, parent=None):
        super(SKEL_Limb_Hierarchy_UI, self).__init__(parent)
        self.parent = parent
        self.limbHier = limbHierarchy
        self._items = {} # ID : Item
        self._isPopulating = False
        self._lastItemEdited = -1

        self._Setup()
        self._Setup_Connections()

    def Populate(self, selectedID = -1):
        selectemItem = None
        items = self.selectedItems()
        if (items):
            selectedID = items[0].ID
        self._isPopulating = True
        self.clear()
        self._items.clear()

        idOrder = self.limbHier.limbMng.GetAllLimbsCreationOrder()

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
                                QtCore.Qt.ItemIsEnabled |
                                QtCore.Qt.ItemIsDropEnabled)
            self._items[ID] = item
            if (ID == selectedID):
                selectemItem = item
        self.expandAll()
        self._isPopulating = False
        if (selectemItem):
            self.setCurrentItem(selectemItem)

#=========== SETUP ====================================

    def _Setup(self):
        self.setAlternatingRowColors(True)
        self.setDragDropMode(self.InternalMove)
        self.setHeaderHidden(True)
        self.setIndentation(10)
        self.installEventFilter(self)

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
        add = QtWidgets.QAction('Add', 
                                self, 
                                triggered=self.Add)
        remove = QtWidgets.QAction( 'Remove', 
                                    self, 
                                    triggered=self._Remove)
        menu.addAction(add)

        menu.addSeparator()
        menu.addAction(remove)
        
        # DISABLE ACTIONS
        items = self.selectedItems()
        remove.setEnabled(bool(items))
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
        limbID = self.limbHier.Add()
        self.parent.AddLimb(limbID)
        msg = 'Added limb "%s"' % self.limbHier.limbMng.GetName(limbID)
        self.parent.StatusMsg(msg)

    def _Remove(self):
        '''Remove children then remove this limb'''
        limbID = self.currentItem().ID
        name = self.limbHier.limbMng.GetName(limbID)
        result = QtWidgets.QMessageBox.warning(self, 
                            'REMOVE LIMBS',
                            'Are you sure you want to remove limb "%s"?' % name,
                            QtWidgets.QMessageBox.Cancel, 
                            QtWidgets.QMessageBox.Ok
                            )
        if (result==QtWidgets.QMessageBox.Ok):
            self.parent.RemoveLimb(limbID)

    def _Rename(self, item, column):
        if not self._isPopulating:
            limbID = item.ID
            newName = item.text(0)
            oldName = self.limbHier.limbMng.GetName(limbID)
            valid = False
            if self.limbHier.nameMng.IsValidCharacterLength(newName):
                if self.limbHier.nameMng.DoesNotStartWithNumber(newName):
                    if self.limbHier.nameMng.AreAllValidCharacters(newName):
                        self.limbHier.limbMng.SetLimbName(limbID, newName)
                        self.parent.RenameLimb(limbID)
                        mirrorID = self.limbHier.limbMng.GetMirror(limbID)
                        if (mirrorID != -1):
                            self.parent.RenameLimb(mirrorID)
                            self.Populate()
                        valid = True
                        msg = 'Renamed limb "%s" to "%s"' %(oldName, newName)
                        self.parent.StatusMsg(msg)
            if not valid:
                self._isPopulating = True
                item.setText(0, oldName)
                self.parent.StatusMsg(self.limbHier.nameMng.errorMsg)
                self._isPopulating = False


    def _Reparent(self):
        if not self._isPopulating:
            limbParentDict = self.limbHier.limbMng.GetLimbParentDict()
            for item in self._items.values():
                childID = item.ID
                parentID = -1
                if (item.parent()):
                    parentID = item.parent().ID
                if (limbParentDict[childID] != parentID):
                    oldParentID = self.limbHier.limbMng.GetParentID(childID)
                    self.limbHier.limbMng.SetParent(childID, parentID)
                    self.limbHier.jntMng.SetParentLimb(childID, parentID)
                    self.expandAll()
                    self.parent.ReparentLimb(childID, oldParentID)
                    break
        





