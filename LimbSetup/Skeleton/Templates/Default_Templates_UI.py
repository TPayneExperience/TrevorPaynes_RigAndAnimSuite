
import sys

from Qt import QtWidgets, QtCore, QtGui

class Default_Templates_UI(QtWidgets.QListWidget):
    def __init__(self, fileManager, parent=None):
        super(Default_Templates_UI, self).__init__(parent)
    
        self.fileMng = fileManager
        
        self._Setup()
    
    def _Setup(self):
        self.setAlternatingRowColors(True)
        self.setDragDropMode(self.DragOnly)

    
#=========== FUNCTIONALITY ====================================

    def Populate(self):
        self.clear()
        tempDict = self.fileMng.GetSkeletonDefaultTemplates()
        self.setEnabled(bool(tempDict))
        for name, path in tempDict.items():
            item = QtWidgets.QListWidgetItem(self)
            item.setText(name[:-4])
            item.fullName = name
            item.setToolTip(path)
            self.addItem(item)

















