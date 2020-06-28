
from Qt import QtWidgets, QtCore

class Skeleton_UI_TabWidget(QtWidgets.QTabWidget):
    def __init__(self, parent=None):
        super(Skeleton_UI_TabWidget, self).__init__(parent)
        self._setup()

    def _setup(self):
        h_layout = QtWidgets.QHBoxLayout(self)
        h_layout.addLayout(self._setup_Templates())
        h_layout.addLayout(self._setup_LimbJointHierarchy())
        h_layout.addLayout(self._setup_Inspector())
    
    def _setup_Templates(self):
        v_layout = QtWidgets.QVBoxLayout()

        gb1 = QtWidgets.QGroupBox('Limb Templates')
        vl = QtWidgets.QVBoxLayout(gb1)
        self.limbTemplates_lw = QtWidgets.QListWidget()
        self.limbTemplates_lw.addItem('test1')
        vl.addWidget(self.limbTemplates_lw)
        v_layout.addWidget(gb1)

        gb2 = QtWidgets.QGroupBox('Custom Limb Templates')
        vl = QtWidgets.QVBoxLayout(gb2)
        self.searchCustomTemplates_le = QtWidgets.QLineEdit()
        self.searchCustomTemplates_le.setPlaceholderText('Search...')
        vl.addWidget(self.searchCustomTemplates_le)
        self.customTemplates_lw = QtWidgets.QListWidget()
        self.customTemplates_lw.addItem('test2')
        vl.addWidget(self.customTemplates_lw)
        v_layout.addWidget(gb2)

        return v_layout
    
    def _setup_LimbJointHierarchy(self):
        v_layout = QtWidgets.QVBoxLayout()

        gb1 = QtWidgets.QGroupBox('Limb Hierarchy')
        vl = QtWidgets.QVBoxLayout(gb1)
        self.limbHierarchy_tw = QtWidgets.QTreeWidget()
        self.limbHierarchy_tw.setHeaderHidden(True)
        item = QtWidgets.QTreeWidgetItem(['tw test'])
        self.limbHierarchy_tw.addTopLevelItem(item)
        vl.addWidget(self.limbHierarchy_tw)
        v_layout.addWidget(gb1)

        gb2 = QtWidgets.QGroupBox('Limb Joints')
        vl = QtWidgets.QVBoxLayout(gb2)
        self.limbJoints_tw = QtWidgets.QTreeWidget()
        self.limbJoints_tw.setHeaderHidden(True)
        item = QtWidgets.QTreeWidgetItem(['tw test'])
        self.limbJoints_tw.addTopLevelItem(item)
        vl.addWidget(self.limbJoints_tw)
        v_layout.addWidget(gb2)

        return v_layout
    
    def _setup_Inspector(self):
        v_layout = QtWidgets.QVBoxLayout()

        gb = QtWidgets.QGroupBox('Inspector')
        vl = QtWidgets.QVBoxLayout(gb)

        vl.addWidget(self._setup_Inspector_LimbOptions())
        vl.addWidget(self._setup_Inspector_JointOptions())
        vl.addStretch()
        vl.addWidget(self._setup_Inspector_Tools())
        
        v_layout.addWidget(gb)

        return v_layout
    
    def _setup_Inspector_LimbOptions(self):
        self.limbOptions_gb = QtWidgets.QGroupBox('Limb Options')
        vl = QtWidgets.QVBoxLayout(self.limbOptions_gb)

        hl = QtWidgets.QHBoxLayout()
        hl.addWidget(QtWidgets.QLabel('Name'))
        self.limbName_le = QtWidgets.QLineEdit()
        self.limbName_le.setPlaceholderText('ARM')
        hl.addWidget(self.limbName_le)
        vl.addLayout(hl)

        hl = QtWidgets.QHBoxLayout()
        hl.addWidget(QtWidgets.QLabel('Parent Joint'))
        self.parentJoint_cb = QtWidgets.QComboBox()
        hl.addWidget(self.parentJoint_cb)
        vl.addLayout(hl)

        hl = QtWidgets.QHBoxLayout()
        hl.addWidget(QtWidgets.QLabel('Side'))
        self.side_cb = QtWidgets.QComboBox()
        self.side_cb.addItems(['M', 'L', 'R'])
        hl.addWidget(self.side_cb)
        vl.addLayout(hl)

        hl = QtWidgets.QHBoxLayout()
        self.branchCount_l = QtWidgets.QLabel('Branch Count')
        self.branchCount_sb = QtWidgets.QSpinBox()
        hl.addWidget(self.branchCount_l)
        hl.addWidget(self.branchCount_sb)
        vl.addLayout(hl)

        hl = QtWidgets.QHBoxLayout()
        self.chainCount_l = QtWidgets.QLabel('Chain Count')
        self.chainCount_sb = QtWidgets.QSpinBox()
        hl.addWidget(self.chainCount_l)
        hl.addWidget(self.chainCount_sb)
        vl.addLayout(hl)

        return self.limbOptions_gb

    def _setup_Inspector_JointOptions(self):
        self.jointOptions_gb = QtWidgets.QGroupBox('Joint Options')
        vl = QtWidgets.QVBoxLayout(self.jointOptions_gb)

        hl = QtWidgets.QHBoxLayout()
        hl.addWidget(QtWidgets.QLabel('Rot Order'))
        self.rotOrder_cb = QtWidgets.QComboBox()
        self.rotOrder_cb.addItems(['XYZ', 'XZY', 'YXZ', 'YZX', 'ZXY', 'ZYX'])
        hl.addWidget(self.rotOrder_cb)
        vl.addLayout(hl)

        return self.jointOptions_gb

    def _setup_Inspector_Tools(self):
        gb = QtWidgets.QGroupBox('Tools')
        vl = QtWidgets.QVBoxLayout(gb)

        self.moveToVertCenter_btn = QtWidgets.QPushButton('Move To Verts Center')
        vl.addWidget(self.moveToVertCenter_btn)

        hl = QtWidgets.QHBoxLayout()
        hl.addWidget(QtWidgets.QLabel('Joint Size'))
        self.jointSize_sl = QtWidgets.QSlider(QtCore.Qt.Horizontal)
        self.jointSize_sl.setValue(50)
        self.jointSize_le = QtWidgets.QLineEdit()
        self.jointSize_le.setText('5.0')
        hl.addWidget(self.jointSize_sl)
        hl.addWidget(self.jointSize_le)
        vl.addLayout(hl)

        self.jointCount_l = QtWidgets.QLabel('Total Joints: 128')
        vl.addWidget(self.jointCount_l)

        return gb









