
import pymel.core as pm

class BHV_Group_Hierarchy_UI:
    def __init__(self, grpMng, parent):
        self.parent = parent
        self.grpMng = grpMng

        self.limbID = -1

        self._Setup()

    def Populate(self):
        self.Depopulate()
        for groupID in self.grpMng.GetLimbGrpIDs(self.limbID):
            group = self.grpMng.GetGroup(groupID)
            name = group.pfrsName.get()
            pm.treeView(self.widget, e=1, addItem=(groupID, ''))
            pm.treeView(self.widget, e=1, displayLabel=(groupID, name))
    
    def Depopulate(self):
        pm.treeView(self.widget, e=1, removeAll=1)

# #=========== SETUP ====================================

    def _Setup(self):
        self.widget = pm.treeView(allowReparenting=0, adr=0, ams=0)
        pm.treeView(self.widget, e=1, scc=self.SelectionChanged)
    
#=========== FUNCTIONALITY ====================================

    def SetLimb(self, limbID):
        self.limbID = limbID
        self.Populate()

    def SelectionChanged(self):
        print 'group selected!'
        # groupIDsStr = pm.treeView(self.widget, q=1, selectItem=1)
        # if groupIDsStr:
        #     self.parent.GroupSelected([int(ID) for ID in groupIDsStr])







#============= DEPRICATED ============================
#============= DEPRICATED ============================
#============= DEPRICATED ============================






# import sys

# from Common.Qt import QtWidgets, QtCore, QtGui

# class BHV_Behavior_Hierarchy_UI(QtWidgets.QListWidget):
#     # def __init__(self, jointHierarchy, parent=None):
#     def __init__(self, parent=None):
#         super(BHV_Behavior_Hierarchy_UI, self).__init__(parent)
#         self.parent = parent
#         # self.jntHier = jointHierarchy
#         self._isPopulating = False

#         self._Setup()

#     def SetLimb(self, limbID):
#         # self.jntHier.SetLimb(limbID)
#         self.Populate()

#     def Populate(self):
#         self._isPopulating = True
#         self.clear()
#         # jointIDs = self.jntHier.jntMng.GetLimbJointIDs(self.jntHier.limbID)
#         # joints = self.jntHier.jntMng.GetJoints(jointIDs)
#         # for j in joints:
#         #     item = QtWidgets.QListWidgetItem(self)
#         #     item.ID = j.ID
#         #     item.setText(j.name)
#         #     item.isJoint = True # used by limb hier to prevent adding
#         #     item.setFlags(item.flags() | QtCore.Qt.ItemIsEditable)
#         #     self.addItem(item)
#         self._isPopulating = False


# #=========== SETUP ====================================

#     def _Setup(self):
#         self.setAlternatingRowColors(True)
    
# #=========== FUNCTIONALITY ====================================












