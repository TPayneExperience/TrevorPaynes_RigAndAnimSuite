
import sys

from Common.Qt import QtWidgets, QtCore, QtGui

class BHV_Behavior_Hierarchy_UI(QtWidgets.QListWidget):
    # def __init__(self, jointHierarchy, parent=None):
    def __init__(self, parent=None):
        super(BHV_Behavior_Hierarchy_UI, self).__init__(parent)
        self.parent = parent
        # self.jntHier = jointHierarchy
        self._isPopulating = False

        self._Setup()

    def SetLimb(self, limbID):
        # self.jntHier.SetLimb(limbID)
        self.Populate()

    def Populate(self):
        self._isPopulating = True
        self.clear()
        # jointIDs = self.jntHier.jntMng.GetLimbJointIDs(self.jntHier.limbID)
        # joints = self.jntHier.jntMng.GetJoints(jointIDs)
        # for j in joints:
        #     item = QtWidgets.QListWidgetItem(self)
        #     item.ID = j.ID
        #     item.setText(j.name)
        #     item.isJoint = True # used by limb hier to prevent adding
        #     item.setFlags(item.flags() | QtCore.Qt.ItemIsEditable)
        #     self.addItem(item)
        self._isPopulating = False


#=========== SETUP ====================================

    def _Setup(self):
        self.setAlternatingRowColors(True)
    
#=========== FUNCTIONALITY ====================================












