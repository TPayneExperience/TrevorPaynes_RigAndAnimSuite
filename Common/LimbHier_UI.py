
import os

import pymel.core as pm


class Limb_Hierarchy_UI(object):
    def __init__(self, limbMng):

        self.limbMng = limbMng
        self._limbs = {} # limbName : limbID

        self._Setup_Abstract()

    def _Setup_Abstract(self):
        self.widget = pm.treeView(allowMultiSelection=0)
        # self.setAlternatingRowColors(True)
        # self.setHeaderHidden(True)
        # self.setIndentation(10)

        # path = os.path.dirname(__file__)
        # path = os.path.dirname(path)
        # self.l_icon = QtGui.QIcon(os.path.join(path, 'Images', 'Skel_L.png'))
        # self.r_icon =  QtGui.QIcon(os.path.join(path, 'Images', 'Skel_R.png'))
        # self.m_icon =  QtGui.QIcon(os.path.join(path, 'Images', 'Skel_M.png'))

    def Populate_Abstract(self):
        self._limbs.clear()
        pm.treeView(self.widget, e=1, removeAll=1)
        
        for rootLimbID in self.limbMng.GetRootLimbIDs():
            for limbID in self.limbMng.GetLimbCreationOrder(rootLimbID):
                limb = self.limbMng.GetLimb(limbID)
                limbName = limb.pfrsName.get()
                parentID = limb.parentLimbID.get()
                parentName = ''
                if parentID != -1:
                    parentName = self.limbMng.GetLimb(parentID).pfrsName.get()
                pm.treeView(self.widget, e=1, ai=((limbName, parentName)))
                self._limbs[limbName] = limbID
        #         name = self.limbMng.GetPFRSName(limbID)
        #         sideIndex = self.limbMng.GetSideIndex(limbID)
        #         parentID = self.limbMng.GetParentLimbID(limbID)
        #         if (parentID != -1):
        #             parentItem = self._items[parentID]
        #             item = QtWidgets.QTreeWidgetItem(parentItem, [name])
        #         else:
        #             item = QtWidgets.QTreeWidgetItem(self, [name])
        #         item.ID = limbID
        #         if (sideIndex == 1):
        #             item.setIcon(0, self.l_icon)
        #         elif (sideIndex == 2):
        #             item.setIcon(0, self.r_icon)
        #         else:
        #             item.setIcon(0, self.m_icon)
        #         self._items[limbID] = item
        # self.expandAll()


#=========== DEPRICATED ====================================

# import os

# from Common.Qt import QtWidgets, QtCore, QtGui


# class Limb_Hierarchy_TW(QtWidgets.QTreeWidget):
#     def __init__(self, limbMng, parent=None):
#         super(Limb_Hierarchy_TW, self).__init__(parent)

#         self.limbMng = limbMng
#         self._items = {} # ID : Item

#         self._Setup_Abstract()

#     def _Setup_Abstract(self):
#         self.setAlternatingRowColors(True)
#         self.setHeaderHidden(True)
#         self.setIndentation(10)

#         path = os.path.dirname(__file__)
#         path = os.path.dirname(path)
#         self.l_icon = QtGui.QIcon(os.path.join(path, 'Images', 'Skel_L.png'))
#         self.r_icon =  QtGui.QIcon(os.path.join(path, 'Images', 'Skel_R.png'))
#         self.m_icon =  QtGui.QIcon(os.path.join(path, 'Images', 'Skel_M.png'))

#     def Populate_Abstract(self):
#         self.clear()
#         self._items.clear()

#         # idOrder = self.limbMng.GetLimbCreationOrder()
#         for rootLimbID in self.limbMng.GetRootLimbs():
#             for limbID in self.limbMng.GetLimbCreationOrder(rootLimbID):
#                 name = self.limbMng.GetPFRSName(limbID)
#                 sideIndex = self.limbMng.GetSideIndex(limbID)
#                 parentID = self.limbMng.GetParentLimbID(limbID)
#                 if (parentID != -1):
#                     parentItem = self._items[parentID]
#                     item = QtWidgets.QTreeWidgetItem(parentItem, [name])
#                 else:
#                     item = QtWidgets.QTreeWidgetItem(self, [name])
#                 item.ID = limbID
#                 if (sideIndex == 1):
#                     item.setIcon(0, self.l_icon)
#                 elif (sideIndex == 2):
#                     item.setIcon(0, self.r_icon)
#                 else:
#                     item.setIcon(0, self.m_icon)
#                 self._items[limbID] = item
#         self.expandAll()























