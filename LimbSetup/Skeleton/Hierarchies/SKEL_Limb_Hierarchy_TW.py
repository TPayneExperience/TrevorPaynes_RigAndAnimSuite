
import os

from Common.Qt import QtWidgets, QtCore, QtGui

import Common.LimbHier_TW as limbHierTW
reload(limbHierTW)

class SKEL_Limb_Hierarchy_TW(limbHierTW.Limb_Hierarchy_TW):
    def __init__(self, limbHierarchy, parent=None):
        super(SKEL_Limb_Hierarchy_TW, self).__init__(limbHierarchy.limbMng, parent)

        self.parent = parent
        self.limbHier = limbHierarchy

        self._isPopulating = False

        self._Setup()
        self._Setup_Connections()

    def Populate(self, selectedID = -1):
        self._isPopulating = True
        items = self.selectedItems()
        if (items and selectedID == -1):
            selectedID = items[0].ID
        self.Populate_Abstract()
        for limbID, item in self._items.items():
            side = self.limbMng.GetSide(limbID)
            if (side == 'M'):
                item.setFlags(item.flags() | QtCore.Qt.ItemIsEditable)
            else:
                item.setFlags(  QtCore.Qt.ItemIsEditable |
                                QtCore.Qt.ItemIsSelectable |
                                QtCore.Qt.ItemIsEnabled |
                                QtCore.Qt.ItemIsDropEnabled)
            if (limbID == selectedID):
                self.setCurrentItem(item)
        self._isPopulating = False
        if (selectedID != -1):
            self.edit(self.currentIndex())

#=========== SETUP ====================================

    def _Setup(self):
        self.setDragDropMode(self.InternalMove)
        self.installEventFilter(self)

        self.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)

#=========== MENUS + LISTENER ====================================

    def _Setup_Connections(self):
        self.customContextMenuRequested[QtCore.QPoint].connect(self._RightClickMenu)
        self.itemChanged.connect(self._Rename)

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
        





