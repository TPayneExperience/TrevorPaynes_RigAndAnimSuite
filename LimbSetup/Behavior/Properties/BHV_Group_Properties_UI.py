
import pymel.core as pm

class BHV_Group_Properties_UI:
    def __init__(self, grpMng, parent):

        self.grpMng = grpMng
        self.parent = parent

        self._Setup()
    

#========== SETUP ===============================

    def _Setup(self):
        with pm.columnLayout(adj=1):
            pm.attrFieldGrp(l='Cst Weight', adj=2, cw=(1,70), 
                            at='perspShape.lensSqueezeRatio')
            # IK/FK switch jnt
            # Ctr distance
            # IK Parent Limb
            # IK Parent Grp

#     def _Setup_Constraint_GB(self):
#         self.constraint_gb = QtWidgets.QGroupBox('Constraint Options')

#         hl = QtWidgets.QHBoxLayout(self.constraint_gb)
#         l = QtWidgets.QLabel('Weight')
#         self.cstWeight_sb = QtWidgets.QDoubleSpinBox()

#         hl.addWidget(l)
#         hl.addWidget(self.cstWeight_sb)

#         return self.constraint_gb
    
#     def _Setup_IKParent_GB(self):
#         self.ikParent_gb = QtWidgets.QGroupBox('Parent IK part to FK Behavior')

#         vl = QtWidgets.QVBoxLayout(self.ikParent_gb)
#         self.search_le = QtWidgets.QLineEdit()
#         self.search_le.setPlaceholderText('Search...')

#         self.fk_lw = QtWidgets.QListWidget()
#         self.fk_lw.setAlternatingRowColors(True)

#         vl.addWidget(self.search_le)
#         vl.addWidget(self.fk_lw)

#         return self.ikParent_gb


# #========== FUNCTIONALITY ===============================

#     def _Setup_Connections(self):
#         self.search_le.textChanged.connect(self.Search)

#     def SetBehavior(self, behavior):
#         pass

#     def Search(self):
#         if not self._isPopulating:
#             texts = self.search_le.text().split(' ')
#             for item in list(self._items.values()):
#                 valid = True
#                 for text in texts:
#                     if text not in item.text():
#                         valid = False
#                 item.setEnabled(valid)

    

#============= DEPRICATED ============================
#============= DEPRICATED ============================
#============= DEPRICATED ============================











# import sys

# from Common.Qt import QtWidgets, QtCore, QtGui

# class BHV_Behavior_Properties_UI(QtWidgets.QWidget):
#     # def __init__(self, jointProperties, parent=None):
#     def __init__(self, parent=None):
#         super(BHV_Behavior_Properties_UI, self).__init__(parent)
#         # self._jntProp = jointProperties
#         # self.axes = self._jntProp.jntMng.GetAxes()
#         # self.rotAxes = self._jntProp.jntMng.GetRotAxes()

#         self._items = {} # bhvID : listWidgetItem
#         self._isPopulating = False #use for reading in data

#         self._Setup()
#         self._Setup_Connections()
    
#     def Populate(self):
#         self._isPopulating = True
#         # missing
#         self._isPopulating = False

# #========== SETUP ===============================

#     def _Setup(self):
#         vl = QtWidgets.QVBoxLayout(self)
#         vl.addWidget(self._Setup_Constraint_GB())
#         vl.addWidget(self._Setup_IKParent_GB())

#     def _Setup_Constraint_GB(self):
#         self.constraint_gb = QtWidgets.QGroupBox('Constraint Options')

#         hl = QtWidgets.QHBoxLayout(self.constraint_gb)
#         l = QtWidgets.QLabel('Weight')
#         self.cstWeight_sb = QtWidgets.QDoubleSpinBox()

#         hl.addWidget(l)
#         hl.addWidget(self.cstWeight_sb)

#         return self.constraint_gb
    
#     def _Setup_IKParent_GB(self):
#         self.ikParent_gb = QtWidgets.QGroupBox('Parent IK part to FK Behavior')

#         vl = QtWidgets.QVBoxLayout(self.ikParent_gb)
#         self.search_le = QtWidgets.QLineEdit()
#         self.search_le.setPlaceholderText('Search...')

#         self.fk_lw = QtWidgets.QListWidget()
#         self.fk_lw.setAlternatingRowColors(True)

#         vl.addWidget(self.search_le)
#         vl.addWidget(self.fk_lw)

#         return self.ikParent_gb


# #========== FUNCTIONALITY ===============================

#     def _Setup_Connections(self):
#         self.search_le.textChanged.connect(self.Search)

#     def SetBehavior(self, behavior):
#         pass

#     def Search(self):
#         if not self._isPopulating:
#             texts = self.search_le.text().split(' ')
#             for item in list(self._items.values()):
#                 valid = True
#                 for text in texts:
#                     if text not in item.text():
#                         valid = False
#                 item.setEnabled(valid)

    

#     # def _Setup_AimAxis(self):
#     #     hl = QtWidgets.QHBoxLayout()
#     #     l = QtWidgets.QLabel('Aim Axis')
#     #     self.aimAxis_cb = QtWidgets.QComboBox()
#     #     self.aimAxis_cb.addItems(self.axes)
#     #     hl.addWidget(l)
#     #     hl.addWidget(self.aimAxis_cb)
#     #     return hl

#     # def _Setup_UpAxis(self):
#     #     hl = QtWidgets.QHBoxLayout()
#     #     l = QtWidgets.QLabel('Up Axis')
#     #     self.upAxis_cb = QtWidgets.QComboBox()
#     #     self.upAxis_cb.addItems(self.axes)
#     #     hl.addWidget(l)
#     #     hl.addWidget(self.upAxis_cb)
#     #     return hl

#     # def _Setup_RotationOrder(self):
#     #     hl = QtWidgets.QHBoxLayout()
#     #     l = QtWidgets.QLabel('Rotation Order')
#     #     self.rotationOrder_cb = QtWidgets.QComboBox()
#     #     self.rotationOrder_cb.addItems(self.rotAxes)
#     #     hl.addWidget(l)
#     #     hl.addWidget(self.rotationOrder_cb)
#     #     return hl

#     # def _Setup_JointRotation(self):
#     #     hl = QtWidgets.QHBoxLayout()
#     #     l = QtWidgets.QLabel('Rotation Offset')
#     #     self.rotOffset_sl = QtWidgets.QSlider(QtCore.Qt.Horizontal)
#     #     hl.addWidget(l)
#     #     hl.addWidget(self.rotOffset_sl)
#     #     return hl

# #========== FUNCTIONALITY ===============================

#     # def _Setup_Connections(self):
#     #     self.aimAxis_cb.currentIndexChanged.connect(self._AimAxis_Changed)
#     #     self.upAxis_cb.currentIndexChanged.connect(self._UpAxis_Changed)
#     #     self.rotationOrder_cb.currentIndexChanged.connect(self._RotationOrder_Changed)
    
#     # def _AimAxis_Changed(self):
#     #     if not self._isPopulating:
#     #         aimAxis = self.aimAxis_cb.currentText()
#     #         upAxis = self._jntProp.SetAimAxis(aimAxis)
#     #         if (upAxis != self.upAxis_cb.currentText()):
#     #             self._isPopulating = True
#     #             self.upAxis_cb.setCurrentIndex(self.axes.index(upAxis))
#     #             self._isPopulating = False

#     # def _UpAxis_Changed(self):
#     #     if not self._isPopulating:
#     #         upAxis = self.upAxis_cb.currentText()
#     #         aimAxis = self._jntProp.SetUpAxis(upAxis)
#     #         if (aimAxis != self.aimAxis_cb.currentText()):
#     #             self._isPopulating = True
#     #             self.aimAxis_cb.setCurrentIndex(self.axes.index(aimAxis))
#     #             self._isPopulating = False

#     # def _RotationOrder_Changed(self):
#     #     if not self._isPopulating:
#     #         self._jntProp.SetRotationOrder(self.rotationOrder_cb.currentText())

# #========== POPULATE ===============================

#     # def SetJoints(self, jointList):
#     #     self._isPopulating = True
#     #     self._jntProp.SetJoints(jointList)

#     #     self.aimAxis_cb.setCurrentIndex(-1)
#     #     self.upAxis_cb.setCurrentIndex(-1)
#     #     self.rotationOrder_cb.setCurrentIndex(-1)

#     #     aimAxis = self._jntProp.GetAimAxis()
#     #     if aimAxis:
#     #         self.aimAxis_cb.setCurrentIndex(self.axes.index(aimAxis))

#     #     upAxis = self._jntProp.GetUpAxis()
#     #     if upAxis:
#     #         self.upAxis_cb.setCurrentIndex(self.axes.index(upAxis))

#     #     rotationOrder = self._jntProp.GetRotationOrder()
#     #     if rotationOrder:
#     #         index = self.rotAxes.index(rotationOrder)
#     #         self.rotationOrder_cb.setCurrentIndex(index)

#     #     self._isPopulating = False













# # if __name__ == '__main__':
# #     app = QtWidgets.QApplication(sys.argv)
# #     ex = Joint_Properties_UI(None)

# #     ex.show()
# #     sys.exit(app.exec_())













