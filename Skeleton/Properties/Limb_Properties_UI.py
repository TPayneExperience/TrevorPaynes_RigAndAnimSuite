import sys

from Qt import QtWidgets, QtCore, QtGui

class Limb_Properties_UI(QtWidgets.QGroupBox):
    def __init__(self, Limb_Properties, parent=None):
        super(Limb_Properties_UI, self).__init__(parent)
        self._limbProps = Limb_Properties
        self._parentJoints = []
        self._Setup()
        self._Setup_Connections()
    
#=========== SETUP UI ==============================================

    def _Setup(self):
        vl = QtWidgets.QVBoxLayout(self)
        self.setTitle('LIMB Properties')
        vl.addLayout(self._Setup_ParentJoint())
        vl.addLayout(self._Setup_Types())
        vl.addLayout(self._Setup_Side())
        vl.addLayout(self._Setup_JointCount())

    def _Setup_ParentJoint(self):
        hl = QtWidgets.QHBoxLayout()
        l = QtWidgets.QLabel('Parent Joint')
        self.parentJoint_cb = QtWidgets.QComboBox()
        hl.addWidget(l)
        hl.addWidget(self.parentJoint_cb)
        return hl

    def _Setup_Types(self):
        hl = QtWidgets.QHBoxLayout()
        l = QtWidgets.QLabel('Type')
        self.type_cb = QtWidgets.QComboBox()
        self.type_cb.addItems(self._limbProps.GetLimbTypes())
        hl.addWidget(l)
        hl.addWidget(self.type_cb)
        return hl

    def _Setup_Side(self):
        hl = QtWidgets.QHBoxLayout()
        l = QtWidgets.QLabel('Side')
        self.side_cb = QtWidgets.QComboBox()
        self.side_cb.addItems(self._limbProps.GetLimbSides())
        hl.addWidget(l)
        hl.addWidget(self.side_cb)
        return hl

    def _Setup_JointCount(self):
        hl = QtWidgets.QHBoxLayout()
        l = QtWidgets.QLabel('Joint Count')
        self.jointCount_sb = QtWidgets.QSpinBox()
        hl.addWidget(l)
        hl.addWidget(self.jointCount_sb)
        return hl

#=========== SETUP UI VALUES ==============================================

    def SetLimb(self, limb):
        self._limbProps.SetLimb(limb)
        self._SetParentJoint()
        self._SetType()
        self._SetSide()
        self._SetJointCount()

    def _SetParentJoint(self):
        self.parentJoint_cb.clear()
        names = self._limbProps.GetParentJointNames()
        self.parentJoint_cb.addItems(names)
        parentName = self._limbProps.GetParentJointName()
        if parentName:
            index = names.index(parentName)
        else:
            index = -1
        self.parentJoint_cb.setCurrentIndex(index)
    
    def _SetType(self):
        limbType = self._limbProps.GetLimbType()
        types = self._limbProps.GetLimbTypes()
        index = types.index(limbTypes)
        self.type_cb.setCurrentIndex(index)

    def _SetSide(self):
        side = self._limbProps.GetSide()
        index = self._limbProps.GetSideList().index(side)
        self.side_cb.setCurrentIndex(index)

    def _SetJointCount(self):
        self.jointCount_sb.setValue(self._limbProps.GetJointCount())
    
#=========== FUNCTIONALITY ==============================================

    def _Setup_Connections(self):
        self.parentJoint_cb.currentIndexChanged.connect(self._ParentJoint_Changed)
        self.side_cb.currentIndexChanged.connect(self._Side_Changed)
        self.jointCount_sb.valueChanged.connect(self._JointCount_Changed)
        
    def _ParentJoint_Changed(self):
        self._limbProps.SetParentJoint(self.parentJoint_cb.currentText())

    def _Side_Changed(self):
        self._limbProps.SetSide(self.side_cb.currentText())

    def _JointCount_Changed(self):
        count = self.jointCount_sb.value()
        val = self._limbProps.IsJointCountValid(count)
        if val == 1:
            self._limbProps.SetJointCount(count)
        elif val == 0:
            result = QtWidgets.QMessageBox.warning( self, 
                                                    'Joint Warning',
                                                    self._limbProps.msg,
                                                    QtWidgets.QMessageBox.Ok,
                                                    QtWidgets.QMessageBox.Cancel)
            print (result)


if __name__ == '__main__':
    app = QtWidgets.QApplication(sys.argv)
    ex = Limb_Properties_UI()
    ex._Populate_ParentJoint_CB(['joint1', 'joint2','joint3'])
    ex._SetParentJoint('joint2')
    ex._SetSide('R')
    ex._SetJointCount(3)

    ex.show()
    sys.exit(app.exec_())









