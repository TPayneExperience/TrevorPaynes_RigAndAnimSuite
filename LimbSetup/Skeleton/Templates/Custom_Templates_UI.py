
import os
import sys

from Qt import QtWidgets, QtCore, QtGui

class Custom_Templates_UI(QtWidgets.QListWidget):
    def __init__(self, fileManager, parent=None):
        super(Custom_Templates_UI, self).__init__(parent)

        self.fileMng = fileManager
        self.parent = parent
        msg = 'Drag + Drop TO limb hierarchy = add limbs'
        msg += '\nDrag + Drop FROM limb hierarchy = create new template'
        msg += '\n[Set path via "Options > Set Custom Template Path..."]'
        self.setToolTip(msg)
    
        self._Setup()

    def Populate(self):
        self.clear()
        tempDict = self.fileMng.GetSkeletonCustomTemplates()
        self.setEnabled(bool(tempDict))
        for name, path in tempDict.items():
            item = QtWidgets.QListWidgetItem(self)
            item.setText(name[:-4])
            item.fullName = name
            item.setToolTip(path)
            self.addItem(item)

#=========== SETUP ====================================

    def _Setup(self):
        self.setAlternatingRowColors(True)
        self.setDragDropMode(self.DragDrop)
        self.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
        self.customContextMenuRequested[QtCore.QPoint].connect(self._RightClickMenu)
        
        self.viewport().installEventFilter(self)

    def eventFilter(self, sender, event):
        if (event.type() == QtCore.QEvent.Drop):
            self.parent.SaveCustomLimb()
            return True
        return False
    
    def _RightClickMenu(self):
        menu = QtWidgets.QMenu(self)
        deleteAct = QtWidgets.QAction('Delete', self, triggered=self._Delete)
        menu.addAction(deleteAct)
        menu.exec_(QtGui.QCursor.pos())
    
    def _Delete(self):
        item = self.currentItem()
        if item:
            name = item.fullName
            msg = 'Are you sure you want to delete custom '
            msg += 'template "%s"?' % name
            result = QtWidgets.QMessageBox.warning(self, 
                                'Delete Custom Template',
                                msg,
                                QtWidgets.QMessageBox.Ok,
                                QtWidgets.QMessageBox.Cancel)
            if (result == QtWidgets.QMessageBox.Ok):
                self.fileMng.DeleteSkeletonCustomTemplate(name)
                self.takeItem(self.currentRow())
                del(item)
                self.parent.StatusMsg('Deleted custom limb: "%s"' % name)
    












