
import sys

from Qt import QtWidgets, QtCore, QtGui

class Joint_Properties_UI(QtWidgets.QWidget):
    def __init__(self, jointProperties, parent=None):
        super(Joint_Properties_UI, self).__init__(parent)
        self._jntProp = jointProperties
        self.axes = self._jntProp.jntMng.GetAxes()
        self.rotAxes = self._jntProp.jntMng.GetRotAxes()
        self._Setup()
        self._Setup_Connections()
        self._isPopulating = False #use for reading in data
    
#========== SETUP ===============================

    def _Setup(self):
        vl = QtWidgets.QVBoxLayout(self)

        vl.addLayout(self._Setup_AimAxis())
        vl.addLayout(self._Setup_UpAxis())
        vl.addLayout(self._Setup_RotationOrder())
        vl.addLayout(self._Setup_JointRotation())

    def _Setup_AimAxis(self):
        hl = QtWidgets.QHBoxLayout()
        l = QtWidgets.QLabel('Aim Axis')
        self.aimAxis_cb = QtWidgets.QComboBox()
        self.aimAxis_cb.addItems(self.axes)
        hl.addWidget(l)
        hl.addWidget(self.aimAxis_cb)
        return hl

    def _Setup_UpAxis(self):
        hl = QtWidgets.QHBoxLayout()
        l = QtWidgets.QLabel('Up Axis')
        self.upAxis_cb = QtWidgets.QComboBox()
        self.upAxis_cb.addItems(self.axes)
        hl.addWidget(l)
        hl.addWidget(self.upAxis_cb)
        return hl

    def _Setup_RotationOrder(self):
        hl = QtWidgets.QHBoxLayout()
        l = QtWidgets.QLabel('Rotation Order')
        self.rotationOrder_cb = QtWidgets.QComboBox()
        self.rotationOrder_cb.addItems(self.rotAxes)
        hl.addWidget(l)
        hl.addWidget(self.rotationOrder_cb)
        return hl

    def _Setup_JointRotation(self):
        hl = QtWidgets.QHBoxLayout()
        l = QtWidgets.QLabel('Rotation Offset')
        self.rotOffset_sl = QtWidgets.QSlider(QtCore.Qt.Horizontal)
        hl.addWidget(l)
        hl.addWidget(self.rotOffset_sl)
        return hl

#========== FUNCTIONALITY ===============================

    def _Setup_Connections(self):
        self.aimAxis_cb.currentIndexChanged.connect(self._AimAxis_Changed)
        self.upAxis_cb.currentIndexChanged.connect(self._UpAxis_Changed)
        self.rotationOrder_cb.currentIndexChanged.connect(self._RotationOrder_Changed)
    
    def _AimAxis_Changed(self):
        if not self._isPopulating:
            self._jntProp.SetAimAxis(self.aimAxis_cb.currentText())

    def _UpAxis_Changed(self):
        if not self._isPopulating:
            self._jntProp.SetUpAxis(self.upAxis_cb.currentText())

    def _RotationOrder_Changed(self):
        if not self._isPopulating:
            self._jntProp.SetRotationOrder(self.rotationOrder_cb.currentText())

#========== POPULATE ===============================

    def SetJoints(self, jointList):
        self._isPopulating = True
        self._jntProp.SetJoints(jointList)

        self.aimAxis_cb.setCurrentIndex(-1)
        self.upAxis_cb.setCurrentIndex(-1)
        self.rotationOrder_cb.setCurrentIndex(-1)

        aimAxis = self._jntProp.GetAimAxis()
        if aimAxis:
            self.aimAxis_cb.setCurrentIndex(self.axes.index(aimAxis))

        upAxis = self._jntProp.GetUpAxis()
        if upAxis:
            self.upAxis_cb.setCurrentIndex(self.axes.index(upAxis))

        rotationOrder = self._jntProp.GetRotationOrder()
        if rotationOrder:
            index = self.rotAxes.index(rotationOrder)
            self.rotationOrder_cb.setCurrentIndex(index)

        self._isPopulating = False













# if __name__ == '__main__':
#     app = QtWidgets.QApplication(sys.argv)
#     ex = Joint_Properties_UI(None)

#     ex.show()
#     sys.exit(app.exec_())













