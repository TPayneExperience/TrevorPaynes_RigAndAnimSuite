
from Qt import QtWidgets, QtCore

from Skeleton import Skeleton

import Skeleton as skel

import Hierarchies.Joint_Hierarchy_UI as jointHier_UI
import Hierarchies.Limb_Hierarchy_UI as limbHier_UI
import Properties.Joint_Properties_UI as jointProp_UI
import Properties.Limb_Properties_UI as limbProp_UI

reload(skel)
reload(jointHier_UI)
reload(limbHier_UI)
reload(jointProp_UI)
reload(limbProp_UI)


class Skeleton_UI(QtWidgets.QTabWidget):
    def __init__(self, parent=None):
        super(Skeleton_UI, self).__init__(parent)
        self.skel = skel.Skeleton()
        print(111)
        self._Setup()
        self._Setup_Connections()
        self.limbHier_tw.Add()
        self.limbHier_tw.Add()
        # self.Populate()

#=========== SETUP ====================================

    def _Setup(self):
        h_layout = QtWidgets.QHBoxLayout(self)
        h_layout.addLayout(self._Setup_Templates())
        h_layout.addLayout(self._Setup_LimbJointHierarchy())
        h_layout.addLayout(self._Setup_Properties())
    
    def _Setup_Templates(self):
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
    
    def _Setup_LimbJointHierarchy(self):
        v_layout = QtWidgets.QVBoxLayout()

        gb1 = QtWidgets.QGroupBox('LIMB Hierarchy')
        vl = QtWidgets.QVBoxLayout(gb1)
        self.limbHier_tw = limbHier_UI.Limb_Hierarchy_UI(self.skel.limbHier, self)
        vl.addWidget(self.limbHier_tw)
        v_layout.addWidget(gb1)

        gb2 = QtWidgets.QGroupBox('Limb JOINT Hierarchy')
        vl = QtWidgets.QVBoxLayout(gb2)
        self.jntHier_lw = jointHier_UI.Joint_Hierarchy_UI(self.skel.jntHier, self)
        vl.addWidget(self.jntHier_lw)
        v_layout.addWidget(gb2)

        return v_layout
    
    def _Setup_Properties(self):
        v_layout = QtWidgets.QVBoxLayout()

        gb = QtWidgets.QGroupBox('Inspector')
        vl = QtWidgets.QVBoxLayout(gb)

        self.limbProp_gb = limbProp_UI.Limb_Properties_UI(self.skel.limbProp, self)
        vl.addWidget(self.limbProp_gb)
        self.jntProp_gb = jointProp_UI.Joint_Properties_UI(self.skel.jntProp)
        vl.addWidget(self.jntProp_gb)
        vl.addStretch()
        vl.addWidget(self._Setup_Properties_Tools())
        
        v_layout.addWidget(gb)

        return v_layout
    

    def _Setup_Properties_Tools(self):
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

#=========== FUNCTIONALITY ====================================

    def _Setup_Connections(self):
        self.limbHier_tw.itemClicked.connect(self._LimbSelected)
        self.jntHier_lw.itemClicked.connect(self._JointSelected)

    def _LimbSelected(self):
        limbID = self.limbHier_tw.currentItem().ID
        self.jntHier_lw.SetLimb(limbID)
        self.limbProp_gb.SetLimb(limbID)
        self.limbProp_gb.show()
        self.jntProp_gb.hide()
    
    def _JointSelected(self):
        ids = [item.ID for item in self.jntHier_lw.selectedItems()]
        joints = self.skel.jntMng.GetJoints(ids)
        self.jntProp_gb.SetJoints(joints)
        self.limbProp_gb.hide()
        self.jntProp_gb.show()

    def Populate(self):
        self.limbHier_tw.Populate()
        self.limbProp_gb.hide()
        self.jntProp_gb.hide()
    
    def UpdateJoints(self):
        self.jntHier_lw.Populate()
        self.limbProp_gb.Populate()

    def UpdateLimbs(self):
        self.limbHier_tw.Populate()


# if __name__ == '__main__':
#     app = QtWidgets.QApplication(sys.argv)
#     ex = Skeleton_UI(None)

#     ex.show()
#     sys.exit(app.exec_())





