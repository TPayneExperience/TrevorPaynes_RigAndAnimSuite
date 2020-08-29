
import sys

import pymel.core as pm

class SKEL_Joint_Properties_UI:
    def __init__(self, jointProperties, parent=None):

        self._jntProp = jointProperties
        self.jntMng = jointProperties.jntMng

        self.rotAxes = ['', 'XYZ', 'YZX', 'ZXY', 'XZY', 'YXZ', 'ZYX']
        self.jntTypes = [   '', 
                            'None', 
                            'Root', 
                            'Hip', 
                            'Knee', 
                            'Foot', 
                            'Toe', 
                            'Spine', 
                            'Neck', 
                            'Head', 
                            'Collar', 
                            'Shoulder', 
                            'Elbow', 
                            'Hand', 
                            'Finger', 
                            'Thumb', 
                            'PropA', 
                            'PropB', 
                            'PropC', 
                            'Other', 
                            'Index Finger', 
                            'Middle Finger', 
                            'Ring Finger', 
                            'Pinky Finger', 
                            'Extra Finger', 
                            'Big Toe', 
                            'Index Toe', 
                            'Middle Toe', 
                            'Ring Toe', 
                            'Pinky Toe', 
                            'Foot Thumb']

        self.joints = []
        
        self._Setup()
        # self._Setup_Connections()
    
    def SetJoints(self, jointIDs):
        print jointIDs
        self.joints = [self.jntMng.GetJoint(ID) for ID in jointIDs]
        if self.joints:
            first = self.joints[0]
            aim = first.aimAxis.get()
            up = first.upAxis.get()
            rotOrderIndex = pm.getAttr(first.rotateOrder)
            jntTypeIndex = pm.getAttr(first.name() + '.type')
            for joint in self.joints[1:]:
                if (aim != joint.aimAxis.get()):
                    aim = (0,0,0)
                if (up != joint.upAxis.get()):
                    up = (0,0,0)
                if (rotOrderIndex != pm.getAttr(joint.rotateOrder)):
                    rotOrderIndex = -1
                if (jntTypeIndex != pm.getAttr(joint.name() + '.type')):
                    jntTypeIndex = -1
            pm.floatFieldGrp(self.aimAxis, e=1, v1=aim[0], v2=aim[1], v3=aim[2])
            pm.floatFieldGrp(self.upAxis, e=1, v1=up[0], v2=up[1], v3=up[2])
            pm.optionMenuGrp(self.rotOrder, e=1, v=self.rotAxes[rotOrderIndex + 1])
            pm.optionMenuGrp(self.label, e=1, v=self.jntTypes[jntTypeIndex + 1])



#========== SETUP ===============================

    def _Setup(self):
        with pm.columnLayout(adj=1):
            self.aimAxis = pm.floatFieldGrp(l='Aim Axis', 
                                            nf=3, 
                                            cw=((1,70), (2,30), (3,30), (4,30)),
                                            cc=self._AimAxis_Changed)
            self.upAxis = pm.floatFieldGrp(l='Up Axis', 
                                            nf=3, 
                                            cw=((1,70), (2,30), (3,30), (4,30)),
                                            cc=self._UpAxis_Changed)
            with pm.optionMenuGrp(l='Rot Order', adj=2, cw=(1,70)) as self.rotOrder:
                for axis in self.rotAxes:
                    pm.menuItem(l=axis)
            with pm.optionMenuGrp( l='Label', adj=2, cw=(1,70)) as self.label:
                for jntType in self.jntTypes:
                    pm.menuItem(l=jntType)
            pm.optionMenuGrp(self.rotOrder, e=1, cc=self._RotationOrder_Changed)
            pm.optionMenuGrp(self.label, e=1, cc=self._JointLabel_Changed)

# #========== FUNCTIONALITY ===============================

    def _AimAxis_Changed(self, xVal, yVal, zVal):
        print (xVal, yVal, zVal)
        for joint in self.joints:
            joint.aimX.set(xVal)
            joint.aimY.set(yVal)
            joint.aimZ.set(zVal)

    def _UpAxis_Changed(self, xVal, yVal, zVal):
        print (xVal, yVal, zVal)
        for joint in self.joints:
            joint.upX.set(xVal)
            joint.upY.set(yVal)
            joint.upZ.set(zVal)

    def _RotationOrder_Changed(self, val):
        index = self.rotAxes.index(val)-1
        if (index != -1):
            for joint in self.joints:
                pm.setAttr(joint.rotateOrder, index)

    def _JointLabel_Changed(self, val):
        index = self.jntTypes.index(val)-1
        if (index != -1):
            for joint in self.joints:
                pm.setAttr(joint.name() + '.type', index)

# #========== POPULATE ===============================

#     def SetJoints(self, jointList):
#         self._isPopulating = True
#         self._jntProp.SetJoints(jointList)

#         self.aimAxis_cb.setCurrentIndex(-1)
#         self.upAxis_cb.setCurrentIndex(-1)
#         self.rotationOrder_cb.setCurrentIndex(-1)

#         aimAxis = self._jntProp.GetAimAxis()
#         if aimAxis:
#             self.aimAxis_cb.setCurrentIndex(self.axes.index(aimAxis))

#         upAxis = self._jntProp.GetUpAxis()
#         if upAxis:
#             self.upAxis_cb.setCurrentIndex(self.axes.index(upAxis))

#         rotationOrder = self._jntProp.GetRotationOrder()
#         if rotationOrder:
#             index = self.rotAxes.index(rotationOrder)
#             self.rotationOrder_cb.setCurrentIndex(index)

#         self._isPopulating = False


# #============= DEPRICATED ============================
# #============= DEPRICATED ============================
# #============= DEPRICATED ============================



# import sys

# from Common.Qt import QtWidgets, QtCore, QtGui

# class SKEL_Joint_Properties_UI(QtWidgets.QWidget):
#     def __init__(self, jointProperties, parent=None):
#         super(SKEL_Joint_Properties_UI, self).__init__(parent)
#         self._jntProp = jointProperties
#         self.axes = self._jntProp.jntMng.GetAxes()
#         self.rotAxes = self._jntProp.jntMng.GetRotAxes()
#         self._Setup()
#         self._Setup_Connections()
#         self._isPopulating = False #use for reading in data
    
# #========== SETUP ===============================

#     def _Setup(self):
#         vl = QtWidgets.QVBoxLayout(self)

#         vl.addLayout(self._Setup_AimAxis())
#         vl.addLayout(self._Setup_UpAxis())
#         vl.addLayout(self._Setup_RotationOrder())
#         vl.addLayout(self._Setup_JointRotation())

#     def _Setup_AimAxis(self):
#         hl = QtWidgets.QHBoxLayout()
#         l = QtWidgets.QLabel('Aim Axis')
#         self.aimAxis_cb = QtWidgets.QComboBox()
#         self.aimAxis_cb.addItems(self.axes)
#         hl.addWidget(l)
#         hl.addWidget(self.aimAxis_cb)
#         return hl

#     def _Setup_UpAxis(self):
#         hl = QtWidgets.QHBoxLayout()
#         l = QtWidgets.QLabel('Up Axis')
#         self.upAxis_cb = QtWidgets.QComboBox()
#         self.upAxis_cb.addItems(self.axes)
#         hl.addWidget(l)
#         hl.addWidget(self.upAxis_cb)
#         return hl

#     def _Setup_RotationOrder(self):
#         hl = QtWidgets.QHBoxLayout()
#         l = QtWidgets.QLabel('Rotation Order')
#         self.rotationOrder_cb = QtWidgets.QComboBox()
#         self.rotationOrder_cb.addItems(self.rotAxes)
#         hl.addWidget(l)
#         hl.addWidget(self.rotationOrder_cb)
#         return hl

#     def _Setup_JointRotation(self):
#         hl = QtWidgets.QHBoxLayout()
#         l = QtWidgets.QLabel('Rotation Offset')
#         self.rotOffset_sl = QtWidgets.QSlider(QtCore.Qt.Horizontal)
#         hl.addWidget(l)
#         hl.addWidget(self.rotOffset_sl)
#         return hl

# #========== FUNCTIONALITY ===============================

#     def _Setup_Connections(self):
#         self.aimAxis_cb.currentIndexChanged.connect(self._AimAxis_Changed)
#         self.upAxis_cb.currentIndexChanged.connect(self._UpAxis_Changed)
#         self.rotationOrder_cb.currentIndexChanged.connect(self._RotationOrder_Changed)
    
#     def _AimAxis_Changed(self):
#         if not self._isPopulating:
#             aimAxis = self.aimAxis_cb.currentText()
#             upAxis = self._jntProp.SetAimAxis(aimAxis)
#             if (upAxis != self.upAxis_cb.currentText()):
#                 self._isPopulating = True
#                 self.upAxis_cb.setCurrentIndex(self.axes.index(upAxis))
#                 self._isPopulating = False

#     def _UpAxis_Changed(self):
#         if not self._isPopulating:
#             upAxis = self.upAxis_cb.currentText()
#             aimAxis = self._jntProp.SetUpAxis(upAxis)
#             if (aimAxis != self.aimAxis_cb.currentText()):
#                 self._isPopulating = True
#                 self.aimAxis_cb.setCurrentIndex(self.axes.index(aimAxis))
#                 self._isPopulating = False

#     def _RotationOrder_Changed(self):
#         if not self._isPopulating:
#             self._jntProp.SetRotationOrder(self.rotationOrder_cb.currentText())

# #========== POPULATE ===============================

#     def SetJoints(self, jointList):
#         self._isPopulating = True
#         self._jntProp.SetJoints(jointList)

#         self.aimAxis_cb.setCurrentIndex(-1)
#         self.upAxis_cb.setCurrentIndex(-1)
#         self.rotationOrder_cb.setCurrentIndex(-1)

#         aimAxis = self._jntProp.GetAimAxis()
#         if aimAxis:
#             self.aimAxis_cb.setCurrentIndex(self.axes.index(aimAxis))

#         upAxis = self._jntProp.GetUpAxis()
#         if upAxis:
#             self.upAxis_cb.setCurrentIndex(self.axes.index(upAxis))

#         rotationOrder = self._jntProp.GetRotationOrder()
#         if rotationOrder:
#             index = self.rotAxes.index(rotationOrder)
#             self.rotationOrder_cb.setCurrentIndex(index)

#         self._isPopulating = False








