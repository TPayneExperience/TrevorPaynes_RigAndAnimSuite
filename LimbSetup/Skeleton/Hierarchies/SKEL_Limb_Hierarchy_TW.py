
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
            index = self.limbMng.GetSideIndex(limbID)
            if (index == 0 or index == 3):
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
        self.itemChanged.connect(self.SetName)

    def _RightClickMenu(self):
        menu = QtWidgets.QMenu(self)
        add = QtWidgets.QAction('Add', 
                                self, 
                                triggered=self.Add)
        remove = QtWidgets.QAction( 'Remove', 
                                    self, 
                                    triggered=self.Remove)
        menu.addAction(add)

        menu.addSeparator()
        menu.addAction(remove)
        
        # DISABLE ACTIONS
        items = self.selectedItems()
        remove.setEnabled(bool(items))
        menu.exec_(QtGui.QCursor.pos())

    def eventFilter(self, sender, event):
        if (event.type() == QtCore.QEvent.ChildRemoved):
            self.Reparent()
        return False
    
#=========== FUNCTIONALITY ====================================

    def Add(self):
        limbID = self.limbHier.limbMng.Add()
        self.limbHier.jntMng.AddLimb(limbID)
        self.limbHier.jntMng.Add(limbID, 1, 1)
        self.parent.AddLimb(limbID)

    def Remove(self):
        '''Remove children then remove this limb'''
        limbID = self.currentItem().ID
        name = self.limbHier.limbMng.GetPFRSName(limbID)
        result = QtWidgets.QMessageBox.warning(self, 
                            'REMOVE LIMBS',
                            'Are you sure you want to remove limb "%s"?' % name,
                            QtWidgets.QMessageBox.Cancel, 
                            QtWidgets.QMessageBox.Ok
                            )
        if (result==QtWidgets.QMessageBox.Ok):
            self.parent.RemoveLimb(limbID)

    def SetName(self, item, column):
        if not self._isPopulating:
            limbID = item.ID
            newName = item.text(0)
            oldName = self.limbHier.limbMng.GetPFRSName(limbID)
            valid = False
            limbNames = set()
            for rootID in self.limbHier.limbMng.GetRootLimbs():
                for limbID in self.limbHier.limbMng.GetLimbCreationOrder(rootID):
                    limbNames.add(self.limbHier.limbMng.GetPFRSName(limbID))
            if (newName in limbNames):
                item.setText(0, oldName)
                return self.parent.StatusMsg('NAME ERROR: Limb names must be Unique')
            if self.limbHier.nameMng.IsValidCharacterLength(newName):
                if self.limbHier.nameMng.DoesNotStartWithNumber(newName):
                    if self.limbHier.nameMng.AreAllValidCharacters(newName):
                        self.limbHier.limbMng.SetPFRSName(limbID, newName)
                        self.parent.SetLimbName(limbID)
                        # mirrorID = self.limbHier.limbMng.GetMirror(limbID)
                        # if (mirrorID != -1):
                        #     self.parent.SetLimbName(mirrorID)
                        #     self.Populate()
                        valid = True
                        msg = 'Renamed limb "%s" to "%s"' %(oldName, newName)
                        self.parent.StatusMsg(msg)
            if not valid:
                self._isPopulating = True
                item.setText(0, oldName)
                self.parent.StatusMsg(self.limbHier.nameMng.errorMsg)
                self._isPopulating = False

    def Reparent(self):
        if not self._isPopulating:
            for item in self._items.values():
                limbID = item.ID
                oldParentID = self.limbHier.limbMng.GetParentLimbID(limbID)
                newParentID = -1
                if (item.parent()):
                    newParentID = item.parent().ID
                if (oldParentID != newParentID):
                    self.limbHier.limbMng.SetParentLimbID(limbID, newParentID)
                    self.limbHier.limbMng.SetParentJointID(limbID, -1)
                    # self.limbHier.jntMng.SetParentLimb(limbID, newParentID)
                    self.expandAll()
                    self.parent.ReparentLimb(limbID, oldParentID)
                    break
        





