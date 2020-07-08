import sys

from Qt import QtWidgets, QtCore, QtGui

class Limb_Properties_UI(QtWidgets.QGroupBox):
    def __init__(self, Limb_Properties, parent=None):
        super(Limb_Properties_UI, self).__init__(parent)
        self.limbProps = Limb_Properties
        self._parentJoints = []
        self._Setup()
        self._Setup_Connections()
    
    def SetLimb(self, limb):
        self.limbProps.SetLimb(limb)
        self._SetParentJoint()
        self._SetType()
        self._SetSide()
        self._SetJointCount()

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
        self.type_cb.addItems(self.limbProps.limbMng.GetTypes())
        hl.addWidget(l)
        hl.addWidget(self.type_cb)
        return hl

    def _Setup_Side(self):
        hl = QtWidgets.QHBoxLayout()
        self.side_l = QtWidgets.QLabel('Side')
        self.side_cb = QtWidgets.QComboBox()
        self.side_cb.addItems(self.limbProps.limbMng.GetSides()[1:])
        hl.addWidget(self.side_l)
        hl.addWidget(self.side_cb)
        return hl

    def _Setup_JointCount(self):
        hl = QtWidgets.QHBoxLayout()
        l = QtWidgets.QLabel('Joint Count')
        self.jointCount_sb = QtWidgets.QSpinBox()
        hl.addWidget(l)
        hl.addWidget(self.jointCount_sb)
        return hl

#=========== POPULATE ==============================================

    def _SetParentJoint(self):
        self.parentJoint_cb.clear()
        limbID = self.limbProps.limb.ID
        parentID = self.limbProps.limbMng.GetParentID(limbID)
        self.parentJoint_cb.setCurrentIndex(-1)
        if (parentID != -1):
            self.parentJointIDs = self.limbProps.jntMng.GetLimbJointIDs(parentID)
            names = [joint.name for joint in self.limbProps.jntMng.GetJoints(self.parentJointIDs)]
            self.parentJoint_cb.addItems(names)
            parentName = self.limbProps.jntMng.GetParentJointId(limbID)
            if parentName:
                self.parentJoint_cb.setCurrentIndex(names.index(parentName))
    
    def _SetType(self):
        types = self.limbProps.limbMng.GetTypes()
        index = types.index(self.limbProps.limb.limbType)
        self.type_cb.setCurrentIndex(index)

    def _SetSide(self):
        side = self.limbProps.limb.side
        sides = self.limbProps.limbMng.GetSides()[1:]
        if side in sides:
            index = sides.index(side)
            self.side_l.show()
            self.side_cb.show()
            self.side_cb.setCurrentIndex(index)
        else:
            self.side_l.hide()
            self.side_cb.hide()

    def _SetJointCount(self):
        jointIDs = self.limbProps.jntMng.GetLimbJointIDs(self.limbProps.limb.ID)
        self.jointCount_sb.setValue(len(jointIDs))
    
#=========== FUNCTIONALITY ==============================================

    def _Setup_Connections(self):
        self.parentJoint_cb.currentIndexChanged.connect(self._ParentJoint_Changed)
        self.side_cb.currentIndexChanged.connect(self._Side_Changed)
        self.jointCount_sb.valueChanged.connect(self._JointCount_Changed)
        
    def _ParentJoint_Changed(self):
        index = self.parentJoint_cb.currentIndex()
        self.limbProps.jntMng.SetParentJointId(self.parentJointIDs[index])

    def _Side_Changed(self):
        side = self.side_cb.currentText()
        self.limbProps.limbMng.SetLimbSide(self.limbProps.limb.ID, side)

    def _JointCount_Changed(self):
        count = self.jointCount_sb.value()
        val = self.limbProps.IsJointCountValid(count)
        if val == 1:
            self.limbProps.SetJointCount(count)
        elif val == 0:
            result = QtWidgets.QMessageBox.warning( self, 
                                                    'Joint Warning',
                                                    self.limbProps.msg,
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









