
import pymel.core as pm


class LS_Limb_Hierarchy_UI:
    def __init__(self, limbMng, jntMng, nameMng, skelUI):

        self.limbMng = limbMng
        self.jntMng = jntMng
        self.nameMng = nameMng
        self.parent = skelUI

        self._Setup()

    def Populate(self):
        pm.treeView(self.widget, e=1, removeAll=1)
        temp = {} # pfrsName : [limbs]
        for rootLimbID in self.limbMng.GetRootLimbIDs():
            for limbID in self.limbMng.GetLimbCreationOrder(rootLimbID):
                limb = self.limbMng.GetLimb(limbID)
                limbName = limb.pfrsName.get()
                if limbName not in temp:
                    temp[limbName] = []
                temp[limbName].append(limbID)
        for limbName in sorted(list(temp.keys())):
            for limbID in temp[limbName]:
                pm.treeView(self.widget, e=1, ai=(limbID, ''))
                pm.treeView(self.widget, e=1, displayLabel=(limbID, limbName))
                side = self.limbMng.GetLimbSide(limbID)
                if (side == 'L' or side == 'R'):
                    pm.treeView(self.widget, e=1, buttonTextIcon=(limbID, 1, side))
                else:
                    pm.treeView(self.widget, e=1, buttonVisible=(limbID, 1, 0))
        # if (selectedID != -1):
        #     pm.treeView(self.widget, e=1, selectItem=(selectedID, 1))

#=========== SETUP ====================================

    def _Setup(self):
        tt = 'Double click to RENAME.'
        tt += '\nTo set a limb as a MIRROR,'
        tt += '\nname BOTH LIMBS with the SAME NAME'
        self.widget = pm.treeView(ams=0, adr=0, arp=0, ann=tt, nb=1, fb=1)
        pm.treeView(self.widget, e=1,   editLabelCommand=self.Rename,
                                        scc=self.SelectionChanged)
        with pm.popupMenu():
            pm.menuItem(l='Add Limb', c=self.Add)
            pm.menuItem(l='Flip Sides', c=self.FlipSides)
            pm.menuItem(divider=1)
            pm.menuItem(l='Remove Limb', c=self.Remove)

#=========== FUNCTIONALITY ====================================

    def SelectionChanged(self):
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if limbIDStrs:
            self.parent.LimbSelected(int(limbIDStrs[0]))

    def Add(self, ignore):
        selJoints = self.parent.GetSelectedSceneJoints()
        limb = None
        if (len(selJoints) < 2):
            limb = self.limbMng.Add()
            if selJoints:
                self.jntMng.Add(limb, selJoints[0])
                limb.typeIndex.set(1)
        # CHAIN LIMB
        if not limb and self.jntMng.AreJointsChained(selJoints):
            limb = self.limbMng.Add()
            limb.typeIndex.set(2) # Chain
            for joint in self.jntMng.GetJointChain(selJoints):
                self.jntMng.Add(limb, joint)

        # BRANCH LIMB
        if not limb and self.jntMng.AreJointsSiblings(selJoints):
            limb = self.limbMng.Add()
            limb.typeIndex.set(3) # Branch
            for joint in selJoints:
                self.jntMng.Add(limb, joint)
        
        # RAISE WARNING
        if limb:
            self.parent.AddLimb()
        else:
            self.parent.SceneJointsIncorrectDialog()

    def Remove(self, ignore):
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if limbIDStrs:
            if (pm.confirmDialog(   title='Remove Limb', 
                                    icon='warning', 
                                    message='Remove limb?', 
                                    button=['Yes','No'], 
                                    defaultButton='Yes', 
                                    cancelButton='No', 
                                    dismissString='No') == 'Yes'):
                limbID = int(limbIDStrs[0])
                for joint in self.jntMng.GetLimbJoints(limbID):
                    self.jntMng.Remove(joint)
                limb = self.limbMng.GetLimb(limbID)
                mirror = self.limbMng.GetLimbMirror(limb)
                self.limbMng.Remove(limb)
                if mirror:
                    self.jntMng.UpdateLimbJointNames(mirror[0])
                self.parent.RemoveLimb()

    def Rename(self, limbIDStr, newName):
        if self.nameMng.IsValidCharacterLength(newName):
            if self.nameMng.DoesNotStartWithNumber(newName):
                if self.nameMng.AreAllValidCharacters(newName):
                    limbID = int(limbIDStr)
                    limb = self.limbMng.GetLimb(limbID)
                    oldMirror = self.limbMng.GetLimbMirror(limb)
                    self.limbMng.Rename(limbID, newName)
                    newMirror = self.limbMng.GetLimbMirror(limb)

                    if oldMirror:
                        self.jntMng.UpdateLimbJointNames(oldMirror[0])
                    if newMirror:
                        self.jntMng.UpdateLimbJointNames(newMirror[0])
                    self.jntMng.UpdateLimbJointNames(limb)
                    
                    self.parent.RenameLimbs([limb] + oldMirror + newMirror)
        return ''

    def FlipSides(self, ignore):
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if limbIDStrs:
            limbID = int(limbIDStrs[0])
            sourceLimb = self.limbMng.GetLimb(limbID)
            mirrorLimbs = self.limbMng.GetLimbMirror(sourceLimb)
            if mirrorLimbs:
                mirrorLimb = mirrorLimbs[0]
                self.limbMng.FlipSides(limbID)
                self.jntMng.UpdateLimbJointNames(sourceLimb)
                self.jntMng.UpdateLimbJointNames(mirrorLimb)
                self.parent.FlipSides()



#=========== DEPRICATED ====================================
#=========== DEPRICATED ====================================
#=========== DEPRICATED ====================================
#=========== DEPRICATED ====================================
#=========== DEPRICATED ====================================



# import pymel.core as pm

# import Common.LimbHier_UI as limbHierUI
# reload(limbHierUI)

# class SKEL_Limb_Hierarchy_UI(limbHierUI.Limb_Hierarchy_UI):
#     def __init__(self, limbHierarchy, skelUI):
#         super(SKEL_Limb_Hierarchy_UI, self).__init__(limbHierarchy.limbMng)

#         self.jntMng = limbHierarchy.jntMng
#         self.nameMng = limbHierarchy.nameMng
#         self.parent = skelUI

#         self._Setup()

#     def Populate(self, selectedID = -1):
#         self.Populate_Abstract()
#         if (selectedID != -1):
#             pm.treeView(self.widget, e=1, selectItem=(selectedID, 1))

# #=========== SETUP ====================================

#     def _Setup(self):
#         pm.treeView(self.widget, e=1,   editLabelCommand=self.Rename,
#                                         dragAndDropCommand=self.Reparent,
#                                         scc=self.SelectionChanged)
#         with pm.popupMenu():
#             pm.menuItem('Add', c=pm.Callback(self.Add))
#             pm.menuItem(divider=1)
#             pm.menuItem('Remove', c=pm.Callback(self.Remove))

# #=========== FUNCTIONALITY ====================================

#     def SelectionChanged(self):
#         limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
#         if limbIDStrs:
#             self.parent.LimbSelected(int(limbIDStrs[0]))

#     def Add(self):
#         limbID = self.limbMng.Add().ID.get()
#         self.jntMng.AddLimb(limbID)
#         self.jntMng.Add(limbID, 1)
#         self.parent.AddLimb(limbID)

#     def Remove(self):
#         limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
#         if limbIDStrs:
#             if (pm.confirmDialog(   title='Remove Limb', 
#                                     icon='warning', 
#                                     message='Remove limb?', 
#                                     button=['Yes','No'], 
#                                     defaultButton='Yes', 
#                                     cancelButton='No', 
#                                     dismissString='No') == 'Yes'):
#                 self.parent.RemoveLimb(int(limbIDStrs[0]))

#     def Rename(self, limbIDStr, newName):
#         if self.nameMng.IsValidCharacterLength(newName):
#             if self.nameMng.DoesNotStartWithNumber(newName):
#                 if self.nameMng.AreAllValidCharacters(newName):
#                     if self.limbMng.IsNameUnique(newName):
#                         limb = self.limbMng.GetLimb(int(limbIDStr))
#                         limb.pfrsName.set(newName)
#                         self.parent.SetLimbName(int(limbIDStr))
#                         pm.treeView(self.widget, e=1, displayLabel=(limbIDStr, newName))
#         return ''

#     def Reparent(self, limbIDStrs, oldParents, oldIndex, newParent, newIndex, i1, i2):
#         if (limbIDStrs[0] == newParent):
#             return self.Populate()
#         limb = self.limbMng.GetLimb(int(limbIDStrs[0]))
#         oldParentID = limb.parentLimbID.get()
#         if not newParent:
#             newParent = '-1'
#         limb.parentLimbID.set(int(newParent))
#         self.parent.UpdateParentJntIndex(int(limbIDStrs[0]))
#         self.parent.ReparentLimb(limb.ID.get(), oldParentID)
#         # if (newParent in self._limbs):
#         #     newParentID = self._limbs[newParent]
#             # jointIDs = self.jntMng.GetLimbJointIDs(limb.ID.get())
#             # jointNames = [self.jntMng.GetJoint(ID).pfrsName.get() for ID in jointIDs]
#             # pm.addAttr(limb.parentJntIndex, e=1, enumName=':'.join(jointNames))
#         # else:
#         #     newParentID = -1
#             # pm.addAttr(limb.parentJntIndex, e=1, enumName='None')
        
#         # if not self._isPopulating:
#         #     for item in self._items.values():
#         #         limbID = item.ID
#         #         oldParentID = self.limbHier.limbMng.GetParentLimbID(limbID)
#         #         newParentID = -1
#         #         if (item.parent()):
#         #             newParentID = item.parent().ID
#         #         if (oldParentID != newParentID):
#         #             self.limbHier.limbMng.SetParentLimbID(limbID, newParentID)
#         #             self.limbHier.limbMng.SetParentJointID(limbID, -1)
#         #             # self.limbHier.jntMng.SetParentLimb(limbID, newParentID)
#         #             self.expandAll()
#         #             self.parent.ReparentLimb(limbID, oldParentID)
#         #             break
        



# #=========== DEPRICATED ====================================
# #=========== DEPRICATED ====================================
# #=========== DEPRICATED ====================================


# import os

# from Common.Qt import QtWidgets, QtCore, QtGui

# import Common.LimbHier_TW as limbHierTW
# reload(limbHierTW)

# class SKEL_Limb_Hierarchy_TW(limbHierTW.Limb_Hierarchy_TW):
#     def __init__(self, limbHierarchy, parent=None):
#         super(SKEL_Limb_Hierarchy_TW, self).__init__(limbHierarchy.limbMng, parent)

#         self.parent = parent
#         self.limbHier = limbHierarchy

#         self._isPopulating = False

#         self._Setup()
#         self._Setup_Connections()

#     def Populate(self, selectedID = -1):
#         self._isPopulating = True
#         items = self.selectedItems()
#         if (items and selectedID == -1):
#             selectedID = items[0].ID
#         self.Populate_Abstract()
#         for limbID, item in self._items.items():
#             index = self.limbMng.GetSideIndex(limbID)
#             if (index == 0 or index == 3):
#                 item.setFlags(item.flags() | QtCore.Qt.ItemIsEditable)
#             else:
#                 item.setFlags(  QtCore.Qt.ItemIsEditable |
#                                 QtCore.Qt.ItemIsSelectable |
#                                 QtCore.Qt.ItemIsEnabled |
#                                 QtCore.Qt.ItemIsDropEnabled)
#             if (limbID == selectedID):
#                 self.setCurrentItem(item)
#         self._isPopulating = False
#         if (selectedID != -1):
#             self.edit(self.currentIndex())

# #=========== SETUP ====================================

#     def _Setup(self):
#         self.setDragDropMode(self.InternalMove)
#         self.installEventFilter(self)

#         self.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)

# #=========== MENUS + LISTENER ====================================

#     def _Setup_Connections(self):
#         self.customContextMenuRequested[QtCore.QPoint].connect(self._RightClickMenu)
#         self.itemChanged.connect(self.SetName)

#     def _RightClickMenu(self):
#         menu = QtWidgets.QMenu(self)
#         add = QtWidgets.QAction('Add', 
#                                 self, 
#                                 triggered=self.Add)
#         remove = QtWidgets.QAction( 'Remove', 
#                                     self, 
#                                     triggered=self.Remove)
#         menu.addAction(add)

#         menu.addSeparator()
#         menu.addAction(remove)
        
#         # DISABLE ACTIONS
#         items = self.selectedItems()
#         remove.setEnabled(bool(items))
#         menu.exec_(QtGui.QCursor.pos())

#     def eventFilter(self, sender, event):
#         if (event.type() == QtCore.QEvent.ChildRemoved):
#             self.Reparent()
#         return False
    
# #=========== FUNCTIONALITY ====================================

#     def Add(self):
#         limbID = self.limbHier.limbMng.Add()
#         self.limbHier.jntMng.AddLimb(limbID)
#         self.limbHier.jntMng.Add(limbID, 1, 1)
#         self.parent.AddLimb(limbID)

#     def Remove(self):
#         '''Remove children then remove this limb'''
#         limbID = self.currentItem().ID
#         name = self.limbHier.limbMng.GetPFRSName(limbID)
#         result = QtWidgets.QMessageBox.warning(self, 
#                             'REMOVE LIMBS',
#                             'Are you sure you want to remove limb "%s"?' % name,
#                             QtWidgets.QMessageBox.Cancel, 
#                             QtWidgets.QMessageBox.Ok
#                             )
#         if (result==QtWidgets.QMessageBox.Ok):
#             self.parent.RemoveLimb(limbID)

#     def SetName(self, item, column):
#         if not self._isPopulating:
#             limbID = item.ID
#             newName = item.text(0)
#             oldName = self.limbHier.limbMng.GetPFRSName(limbID)
#             valid = False
#             limbNames = set()
#             for rootID in self.limbHier.limbMng.GetRootLimbs():
#                 for limbID in self.limbHier.limbMng.GetLimbCreationOrder(rootID):
#                     limbNames.add(self.limbHier.limbMng.GetPFRSName(limbID))
#             if (newName in limbNames):
#                 item.setText(0, oldName)
#                 return self.parent.StatusMsg('NAME ERROR: Limb names must be Unique')
#             if self.limbHier.nameMng.IsValidCharacterLength(newName):
#                 if self.limbHier.nameMng.DoesNotStartWithNumber(newName):
#                     if self.limbHier.nameMng.AreAllValidCharacters(newName):
#                         self.limbHier.limbMng.SetPFRSName(limbID, newName)
#                         self.parent.SetLimbName(limbID)
#                         # mirrorID = self.limbHier.limbMng.GetMirror(limbID)
#                         # if (mirrorID != -1):
#                         #     self.parent.SetLimbName(mirrorID)
#                         #     self.Populate()
#                         valid = True
#                         msg = 'Renamed limb "%s" to "%s"' %(oldName, newName)
#                         self.parent.StatusMsg(msg)
#             if not valid:
#                 self._isPopulating = True
#                 item.setText(0, oldName)
#                 self.parent.StatusMsg(self.limbHier.nameMng.errorMsg)
#                 self._isPopulating = False

#     def Reparent(self):
#         if not self._isPopulating:
#             for item in self._items.values():
#                 limbID = item.ID
#                 oldParentID = self.limbHier.limbMng.GetParentLimbID(limbID)
#                 newParentID = -1
#                 if (item.parent()):
#                     newParentID = item.parent().ID
#                 if (oldParentID != newParentID):
#                     self.limbHier.limbMng.SetParentLimbID(limbID, newParentID)
#                     self.limbHier.limbMng.SetParentJointID(limbID, -1)
#                     # self.limbHier.jntMng.SetParentLimb(limbID, newParentID)
#                     self.expandAll()
#                     self.parent.ReparentLimb(limbID, oldParentID)
#                     break
        





