
import sys

import pymel.core as pm

class SKEL_Joint_Hierarchy_UI():
    def __init__(self, jointHierarchy, parent=None):
        # super(SKEL_Joint_Hierarchy_UI, self).__init__(parent)
        self.parent = parent
        self.jntHier = jointHierarchy
        self.jntMng = self.jntHier.jntMng
        self.nameMng = jointHierarchy.nameMng
        self.limbID = -1
        self.selectedJntIDs = []
        self._joints = {} # jointName : jointID
        # self._lastItemEdited = -1 # jointID

        self._Setup()

# #=========== SETUP ====================================

    def _Setup(self):
        self.widget = pm.treeView(allowReparenting=0)
        pm.treeView(self.widget, e=1, selectCommand=self.SelectJoints)
        pm.treeView(self.widget, e=1, itemRenamedCommand=self.Rename)
        pm.treeView(self.widget, e=1, dragAndDropCommand=self.Reorder)
        with pm.popupMenu():
            pm.menuItem('Add', c=pm.Callback(self.Add))
            pm.menuItem(divider=1)
            pm.menuItem('Remove', c=pm.Callback(self.Remove))
    
# #=========== FUNCTIONALITY ====================================

    def SetLimbID(self, limbID):
        self.limbID = limbID
        if (limbID == -1):
            pm.treeView(self.widget, e=1, removeAll=1)
        else:
            self.Populate()

    def SelectJoints(self, jointName, state):
        if 'Terminator' == jointName:
            return False
        if state:
            self.selectedJntIDs.append(self._joints[jointName])
        else:
            self.selectedJntIDs.remove(self._joints[jointName])
        self.parent.JointSelected(self.selectedJntIDs)
        return True

    def Add(self):
        self.parent.AddJoints(self.limbID, 1)
        self.Populate()
    
    def Remove(self):
        jointNames = pm.treeView(self.widget, q=1, selectItem=1)
        jointIDs = [self._joints[jointName] for jointName in jointNames]
        result = pm.confirmDialog(  title='Remove Joints', 
                                    icon='warning', 
                                    message='Remove %d joints?' % len(jointIDs), 
                                    button=['Yes','No'], 
                                    defaultButton='Yes', 
                                    cancelButton='No', 
                                    dismissString='No' )
        if (result == 'Yes'):
            self.parent.RemoveJoints(self.limbID, jointIDs)
            self.Populate()

    def Populate(self):
        self.Depopulate()
        if (self.limbID != -1):
            for jointID in self.jntMng.GetLimbJointIDs(self.limbID):
                joint = self.jntMng.GetJoint(jointID)
                name = joint.pfrsName.get()
                self._joints[name] = jointID
                pm.treeView(self.widget, e=1, addItem=(name, ''))
    
    def Depopulate(self):
        pm.treeView(self.widget, e=1, removeAll=1)
        self._joints.clear()
        self.selectedJntIDs = []

    def Rename(self, oldName, newName):
        if (oldName in self._joints):
            valid = False
            if self.nameMng.IsValidCharacterLength(newName):
                if self.nameMng.DoesNotStartWithNumber(newName):
                    if self.nameMng.AreAllValidCharacters(newName):
                        if (newName not in self._joints):
                            self._joints[newName] = self._joints[oldName]
                            del(self._joints[oldName])
                            joint = self.jntMng.GetJoint(self._joints[newName])
                            joint.pfrsName.set(newName)
                            self.parent.SetJointName(self.limbID, joint.ID.get())
                            valid = True
            if not valid:
                self.Populate()

    def Reorder(self, limbNames, oldParents, oldIndex, newParent, newIndex, i1, i2):
        for jointName, jointID in self._joints.items():
            if (jointName != 'Terminator'):
                joint = self.jntMng.GetJoint(jointID)
                index = pm.treeView(self.widget, q=1, itemIndex=jointName)
                joint.limbIndex.set(index)
        self.parent.RebuildLimb(self.limbID)
                





# ================= DEPRICATED ================================
# ================= DEPRICATED ==================================
# ================= DEPRICATED ==================================

# import sys

# from Common.Qt import QtWidgets, QtCore, QtGui

# class SKEL_Joint_Hierarchy_LW(QtWidgets.QListWidget):
#     def __init__(self, jointHierarchy, parent=None):
#         super(SKEL_Joint_Hierarchy_LW, self).__init__(parent)
#         self.parent = parent
#         self.jntHier = jointHierarchy
#         self._isPopulating = False
#         self._lastItemEdited = -1 # jointID

#         self._Setup()
#         self._Setup_Connections()

#     def SetLimb(self, limbID):
#         self.jntHier.SetLimb(limbID)
#         self.Populate()

#     def Populate(self):
#         self._isPopulating = True
#         self.clear()
#         jointIDs = self.jntHier.jntMng.GetLimbJointIDs(self.jntHier.limbID)
#         for jointID in jointIDs:
#             item = QtWidgets.QListWidgetItem(self)
#             item.ID = jointID
#             item.setText(self.jntHier.jntMng.GetPFRSName(jointID))
#             # item.isJoint = True # used by limb hier to prevent adding
#             item.setFlags(item.flags() | QtCore.Qt.ItemIsEditable)
#             # self.addItem(item)
#         # joints = self.jntHier.jntMng.GetJoints(jointIDs)
#         # for j in joints:
#         #     item = QtWidgets.QListWidgetItem(self)
#         #     item.ID = j.ID
#         #     item.setText(j.name)
#         #     item.isJoint = True # used by limb hier to prevent adding
#         #     item.setFlags(item.flags() | QtCore.Qt.ItemIsEditable)
#         #     self.addItem(item)
#         self._isPopulating = False
    
#     def Depopulate(self):
#         self._isPopulating = True
#         self.clear()
#         self._isPopulating = False


# #=========== SETUP ====================================

#     def _Setup(self):
#         self.setAlternatingRowColors(True)
#         self.setDragDropMode(self.InternalMove)
#         self.setSelectionMode(self.ExtendedSelection)

#         self.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
    
#     def _RightClickMenu(self):
#         menu = QtWidgets.QMenu(self)
#         add = QtWidgets.QAction('Add', self, triggered=self.Add)
#         remove = QtWidgets.QAction('Remove', self, triggered=self.Remove)
#         menu.addAction(add)
#         menu.addAction(remove)

#         # DISABLE ACTIONS
#         items = self.selectedItems()
#         remove.setEnabled(bool(items))
#         menu.exec_(QtGui.QCursor.pos())
    
#     def eventFilter(self, sender, event):
#         if (event.type() == QtCore.QEvent.ChildRemoved):
#             self.Reorder()
#         elif (event.type() == QtCore.QEvent.KeyPress and event.key() == QtCore.Qt.Key_Tab):
#             self._TabPressed()
#             return True
#         return False
    
#     def _Setup_Connections(self):
#         self.installEventFilter(self)
#         self.customContextMenuRequested[QtCore.QPoint].connect(self._RightClickMenu)
#         self.itemChanged.connect(self.SetName)

# #=========== FUNCTIONALITY ====================================

#     def Add(self):
#         self.parent.AddJoints(self.jntHier.limbID, 1)
    
#     def Remove(self):
#         jointIDs = [item.ID for item in self.selectedItems()]
#         self.parent.RemoveJoints(self.jntHier.limbID, jointIDs)

#     def SetName(self, item):
#         if not self._isPopulating:
#             newName = item.text()
#             oldName = self.jntHier.jntMng.GetPFRSName(item.ID)
#             valid = False
#             if self.jntHier.nameMng.IsValidCharacterLength(newName):
#                 if self.jntHier.nameMng.DoesNotStartWithNumber(newName):
#                     if self.jntHier.nameMng.AreAllValidCharacters(newName):
#                         limbID = self.jntHier.limbID
#                         self.jntHier.jntMng.SetPFRSName(item.ID, newName)
#                         # self.jntHier.jntMng.SetName(limbID, item.ID, newName)
#                         self.parent.RenameJoint(limbID, item.ID)
#                         valid = True
#                         msg = 'Renamed joint "%s" to "%s"' %(oldName, newName)
#                         self.parent.StatusMsg(msg)
#             if not valid:
#                 self._isPopulating = True
#                 item.setText(oldName)
#                 self.parent.StatusMsg(self.jntHier.nameMng.errorMsg)
#                 self._isPopulating = False

#     def Reorder(self):
#         if not self._isPopulating:
#             jointIDs = [self.item(i).ID for i in range(self.count())]
#             limbID = self.jntHier.limbID
#             limbName = self.jntHier.limbMng.GetPFRSName(limbID)
#             # mirrorID = self.jntHier.limbMng.GetMirror(limbID)
#             self.jntHier.jntMng.SetLimbJointIDs(limbID, jointIDs)
#             # self.jntHier.jntMng.SetLimbJointIDs(limbID, mirrorID, jointIDs)
#             self.parent.ReorderJoints()
#             self.parent.StatusMsg('Reording joints of limb "%s"' % limbName)
    
#     def _TabPressed(self):
#         item = self.currentItem()
#         if (item):
#             row = self.currentRow()
#             if (item.ID == self._lastItemEdited):
#                 row = (row + 1) % self.count()
#             index = (self.model().index(row))
#             self.edit(index)
#             self._lastItemEdited = item.ID
        





# if __name__ == '__main__':
#     app = QtWidgets.QApplication(sys.argv)
    
#     ex = Limb_Joints_UI(None, None)
#     ex.show()
#     sys.exit(app.exec_())








