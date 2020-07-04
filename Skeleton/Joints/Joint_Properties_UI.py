
import sys

from Qt import QtWidgets, QtCore, QtGui

from Joint_Data import AXES, ROT_AXES
from Joint_Properties import Joint_Properties

class Joint_Properties_UI(QtWidgets.QWidget):
    def __init__(self, parent=None):
        super(Joint_Properties_UI, self).__init__(parent)
        self._jntProp = Joint_Properties()
        self._Setup()
        self._Setup_Connections()
        self._populatingData = False #use for reading in data
    
#========== SETUP ===============================

    def _Setup(self):
        v_layout = QtWidgets.QVBoxLayout(self)
        gb = QtWidgets.QGroupBox('BRANCH Limb Options')
        vl = QtWidgets.QVBoxLayout(gb)

        vl.addLayout(self._Setup_AimAxis())
        vl.addLayout(self._Setup_UpAxis())
        vl.addLayout(self._Setup_RotationOrder())

        v_layout.addWidget(gb)

    def _Setup_AimAxis(self):
        hl = QtWidgets.QHBoxLayout()
        l = QtWidgets.QLabel('Aim Axis')
        self.aimAxis_cb = QtWidgets.QComboBox()
        self.aimAxis_cb.addItems(AXES)
        hl.addWidget(l)
        hl.addWidget(self.aimAxis_cb)
        return hl

    def _Setup_UpAxis(self):
        hl = QtWidgets.QHBoxLayout()
        l = QtWidgets.QLabel('Up Axis')
        self.upAxis_cb = QtWidgets.QComboBox()
        self.upAxis_cb.addItems(AXES)
        hl.addWidget(l)
        hl.addWidget(self.upAxis_cb)
        return hl

    def _Setup_RotationOrder(self):
        hl = QtWidgets.QHBoxLayout()
        l = QtWidgets.QLabel('Rotation Order')
        self.rotationOrder_cb = QtWidgets.QComboBox()
        self.rotationOrder_cb.addItems(ROT_AXES)
        hl.addWidget(l)
        hl.addWidget(self.rotationOrder_cb)
        return hl

#========== FUNCTIONALITY ===============================

    def _Setup_Connections(self):
        self.aimAxis_cb.currentIndexChanged.connect(self._AimAxis_Changed)
        self.upAxis_cb.currentIndexChanged.connect(self._UpAxis_Changed)
        self.rotationOrder_cb.currentIndexChanged.connect(self._RotationOrder_Changed)
    
    def _AimAxis_Changed(self):
        if not self._populatingData:
            self._jntProp.SetAimAxis(self.aimAxis_cb.currentText())

    def _UpAxis_Changed(self):
        if not self._populatingData:
            self._jntProp.SetUpAxis(self.upAxis_cb.currentText())

    def _RotationOrder_Changed(self):
        if not self._populatingData:
            self._jntProp.SetRotationOrder(self.rotationOrder_cb.currentText())


#========== POPULATE ===============================

    def SetJointData(self, jointDataList):
        self._populatingData = True

        self._jntProp.SetJointData(jointDataList)

        aimAxis = self._jntProp.GetAimAxis()
        if aimAxis:
            self.aimAxis_cb.setCurrentIndex(AXES.index(aimAxis))
        else:
            self.aimAxis_cb.setCurrentIndex(-1)

        upAxis = self._jntProp.GetUpAxis()
        if upAxis:
            self.upAxis_cb.setCurrentIndex(AXES.index(upAxis))
        else:
            self.upAxis_cb.setCurrentIndex(-1)

        rotationOrder = self._jntProp.GetRotationOrder()
        if rotationOrder:
            self.rotationOrder_cb.setCurrentIndex(ROT_AXES.index(rotationOrder))
        else:
            self.rotationOrder_cb.setCurrentIndex(-1)

        self._populatingData = False













if __name__ == '__main__':
    app = QtWidgets.QApplication(sys.argv)
    ex = Joint_Properties_UI()

    from Joint_Data import Joint_Data
    j = Joint_Data()
    j.rotationOrder = 'ZXY'
    j.upAxis = 'X'
    j.aimAxis = 'Y'
    j2 = Joint_Data()
    j2.rotationOrder = 'ZXY'
    j2.upAxis = 'Z'
    j2.aimAxis = 'Y'

    ex.SetJointData([j, j2])

    ex.show()
    sys.exit(app.exec_())













