
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
        path = os.path.dirname(__file__)
        path = os.path.dirname(path)
        path = os.path.dirname(path)
        self.l_icon = QtGui.QIcon(os.path.join(path, 'Images', 'Skel_L.png'))
        self.r_icon =  QtGui.QIcon(os.path.join(path, 'Images', 'Skel_R.png'))
        self.m_icon =  QtGui.QIcon(os.path.join(path, 'Images', 'Skel_M.png'))

        self.setAlternatingRowColors(True)
        self.setDragDropMode(self.DragDrop)
        self.setDefaultDropAction(QtCore.Qt.MoveAction)
        self.setHeaderHidden(True)
        self.setIndentation(10)
        self.viewport().installEventFilter(self)
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
        
        # DISABLE ACTIONS
        items = self.selectedItems()
        if items:
            limbID = items[0].ID
            mirrorID = self.limbHier.limbMng.GetMirror(limbID)

            # DISABLE MIRROR ON ALREADY MIRRORED + REMOVE ON CHILDREN
            if (mirrorID != -1):
                mirrorMenu.setEnabled(False)
                if (mirrorID not in self.limbHier.limbMng.GetLimbMirrorRoots()):
                    remove.setEnabled(False)

            # DISABLE MIRROR ON NON MIRRORED CHILD OF MIRRORED LIMBS
            for parentID in self.limbHier.limbMng.GetAllParents(limbID):
                mirrorID = self.limbHier.limbMng.GetMirror(parentID)
                if (mirrorID != -1):
                    mirrorMenu.setEnabled(False)
                    break

        # DISABLE IF NOTHING SELECTED
        else:
            mirrorMenu.setEnabled(False)
            duplicate.setEnabled(False)
            remove.setEnabled(False)

        menu.exec_(QtGui.QCursor.pos())

    
    def eventFilter(self, sender, event):
        if (event.type() == QtCore.QEvent.ChildRemoved):
            self._Reparent()
        if (event.type() == QtCore.QEvent.Drop):
            filePath = self.parent.templatePath
            if os.path.isfile(filePath):
                self.parent.LoadTemplate(filePath)
                return True
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
        ID = self.currentItem().ID
        name = self.limbHier.limbMng.GetName(ID)
        result = QtWidgets.QMessageBox.warning(self, 
                            'REMOVE LIMBS',
                            'Are you sure you want to remove limb "' + name + '"?',
                            QtWidgets.QMessageBox.Cancel, 
                            QtWidgets.QMessageBox.Ok
                            )
        if (result==QtWidgets.QMessageBox.Ok):
            limbIDs = self.limbHier.limbMng.GetLimbCreationOrder(ID)
            limbNames = [self.limbHier.limbMng.GetName(lID) for lID in limbIDs]
            for limbID in limbIDs[::-1]:
                mirrorID = self.limbHier.limbMng.GetMirror(limbID)
                self.limbHier.Remove(limbID)
                self.parent.RemoveLimb(limbID)
                if (mirrorID != -1):
                    self.parent.RenameLimb(mirrorID)
            msg = 'Removed limbs ' + str(limbNames)
            self.parent.StatusMsg(msg)
            self.Populate()

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
                    self.parent.ReparentLimb(childID, oldParentID)
                    self.expandAll()
                    if (parentID == -1):
                        newParentName = 'World'
                    else:
                        newParentName = self.limbHier.limbMng.GetName(parentID)
                    limbName = self.limbHier.limbMng.GetName(childID)
                    msg = 'Reparenting "%s" to "%s"' % (limbName, newParentName)
                    self.parent.StatusMsg(msg)
                    break
            # else:
            #     self.Populate()

    def _Duplicate(self):
        for limbID in self.limbHier.Duplicate(self.currentItem().ID):
            self.parent.AddLimb(limbID)

    def _Mirror_X(self):
        self._Mirror('X')

    def _Mirror_Y(self):
        self._Mirror('Y')

    def _Mirror_Z(self):
        self._Mirror('Z')
    
    def _Mirror(self, axis):
        limbID = self.currentItem().ID
        for ID_01, ID_02 in self.limbHier.Mirror(limbID, axis):
            self.parent.AddLimb(ID_02)
            self.parent.RenameLimb(ID_01)
        self.limbHier.limbMng.SetLimbMirrorRoot(limbID)
        self.parent.Mirror(limbID)
        





























