import sys

from Qt import QtWidgets, QtCore, QtGui

class Limb_Branch_Properties_UI(QtWidgets.QWidget):
    def __init__(self, parent=None):
        super(Limb_Branch_Properties_UI, self).__init__(parent)
        self.sideOptions = ['M', 'L', 'R']
        self.parentJoints = []
        self._Setup()
        self._Setup_Connections()
    
#=========== SETUP UI ==============================================

    def _Setup(self):
        v_layout = QtWidgets.QVBoxLayout(self)
        gb = QtWidgets.QGroupBox('BRANCH Limb Options')
        vl = QtWidgets.QVBoxLayout(gb)

        vl.addLayout(self._Setup_ParentJoint())
        vl.addLayout(self._Setup_Side())
        vl.addLayout(self._Setup_JointCount())
        self.addJntsAtSelectedVerts_btn = QtWidgets.QPushButton('Add Joints AT Selected Verts')
        vl.addWidget(self.addJntsAtSelectedVerts_btn)

        v_layout.addWidget(gb)

    def _Setup_ParentJoint(self):
        hl = QtWidgets.QHBoxLayout()
        l = QtWidgets.QLabel('Parent Joint')
        self.parentJoint_cb = QtWidgets.QComboBox()
        hl.addWidget(l)
        hl.addWidget(self.parentJoint_cb)
        return hl

    def _Setup_Side(self):
        hl = QtWidgets.QHBoxLayout()
        l = QtWidgets.QLabel('Side')
        self.side_cb = QtWidgets.QComboBox()
        self.side_cb.addItems(self.sideOptions)
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

    def _Populate_ParentJoint_CB(self, jointList):
        self.parentJoints = jointList
        self.parentJoint_cb.clear()
        self.parentJoint_cb.addItems(jointList)
    
    def _SetParentJoint(self, jointName):
        self.parentJoint_cb.setCurrentIndex(self.parentJoints.index(jointName))

    def _SetJointCount(self, num):
        self.jointCount_sb.setValue(num)
    
    def _SetSide(self, side):
        self.side_cb.setCurrentIndex(self.sideOptions.index(side))

#=========== FUNCTIONALITY ==============================================

    def _Setup_Connections(self):
        self.parentJoint_cb.currentIndexChanged.connect(self._ParentJoint_Changed)
        self.side_cb.currentIndexChanged.connect(self._Side_Changed)
        self.jointCount_sb.valueChanged.connect(self._JointCount_Changed)
        self.addJntsAtSelectedVerts_btn.clicked.connect(self._AddJointsAtSelectedVerts_Clicked)

    def _ParentJoint_Changed(self):
        pass

    def _Side_Changed(self):
        pass

    def _JointCount_Changed(self):
        pass

    def _AddJointsAtSelectedVerts_Clicked(self):
        pass


if __name__ == '__main__':
    app = QtWidgets.QApplication(sys.argv)
    ex = Limb_Branch_Properties_UI()
    ex._Populate_ParentJoint_CB(['joint1', 'joint2','joint3'])
    ex._SetParentJoint('joint2')
    ex._SetSide('R')
    ex._SetJointCount(3)

    ex.show()
    sys.exit(app.exec_())









