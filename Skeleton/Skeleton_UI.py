
from Qt import QtWidgets, QtCore


import Hierarchies.Joint_Hierarchy_UI as jointHier_UI
import Hierarchies.Limb_Hierarchy_UI as limbHier_UI
import Properties.Joint_Properties_UI as jointProp_UI
import Properties.Limb_Properties_UI as limbProp_UI

reload(jointHier_UI)
reload(limbHier_UI)
reload(jointProp_UI)
reload(limbProp_UI)


class Skeleton_UI(QtWidgets.QTabWidget):
    def __init__(self, skeleton, parent=None):
        super(Skeleton_UI, self).__init__(parent)
        self.skel = skeleton
        self._Setup()
        self._Setup_Connections()

    def Populate(self): # CALLED BY MAIN WINDOW
        # self.limbHier_tw.Add()
        # self.limbHier_tw.Add()
        self.limbHier_tw.Populate()
        self.limbProp_gb.hide()
        self.jntProp_gb.hide()
        self.skel.sceneMng.SetSkeletonUI(self)
        self.skel.sceneMng.Setup_Editable()
        self._UpdateJointCountLabel()
    
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

        self.moveToVertCenter_btn = QtWidgets.QPushButton('Move To Selected Center')
        msg = 'Select control in Scene, then select verts/edges/faces..., then press this'
        self.moveToVertCenter_btn.setToolTip(msg)
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
        self.moveToVertCenter_btn.clicked.connect(self.skel.sceneMng.MoveToVertsCenter)

#=========== LIMBS ====================================

    def _LimbSelected(self):
        limbID = self.limbHier_tw.currentItem().ID
        self.jntHier_lw.SetLimb(limbID)
        self.limbProp_gb.SetLimb(limbID)
        self.limbProp_gb.show()
        self.jntProp_gb.hide()
        self.skel.sceneMng.SelectLimbControl(limbID)
    
    def AddLimb(self, limbID):
        self.limbHier_tw.Populate()
        self.skel.sceneMng.Add_Editable_Limb(limbID)
        self._UpdateJointCountLabel()

    def RemoveLimb(self, limbID):
        self.limbHier_tw.Populate()
        self.skel.sceneMng.Remove_Editable_Limb(limbID)
        self._UpdateJointCountLabel()

    def ReparentLimb(self, limbID):
        self.skel.sceneMng.Reparent_Editable_Limb(limbID)

    def RenameLimb(self, limbID):
        self.skel.sceneMng.RenameLimb(limbID)
        mirrorID = self.skel.limbMng.GetMirror(limbID)
        if (mirrorID != -1):
            self.skel.sceneMng.RenameLimb(mirrorID)
    
    def FlipLimbSides(self, limbID): # for L/R switching
        limbIDs = self.skel.limbMng.GetChildrenIDs(limbID)
        limbIDs.append(limbID)
        mirrorID = self.skel.limbMng.GetMirror(limbID)
        mirrorIDs = self.skel.limbMng.GetChildrenIDs(mirrorID)
        mirrorIDs.append(mirrorID)
        side_01 = self.skel.limbMng.GetSide(limbID)
        side_02 = self.skel.limbMng.GetSide(mirrorID)
        for ID in limbIDs:
            self.skel.limbMng.SetSide(ID, 'temp')
            self.skel.sceneMng.RenameLimb(ID)
        for ID in mirrorIDs:
            self.skel.limbMng.SetSide(ID, side_01)
            self.skel.sceneMng.RenameLimb(ID)
        for ID in limbIDs:
            self.skel.limbMng.SetSide(ID, side_02)
            self.skel.sceneMng.RenameLimb(ID)
        self.limbHier_tw.Populate()

    def RebuildLimb(self, limbID):
        self.skel.sceneMng.Remove_Editable_Limb(limbID)
        self.skel.sceneMng.Add_Editable_Limb(limbID)
        mirrorID = self.skel.limbMng.GetMirror(limbID)
        if (mirrorID != -1):
            self.skel.sceneMng.Remove_Editable_Limb(mirrorID)
            self.skel.sceneMng.Add_Editable_Limb(mirrorID)


#=========== JOINTS ====================================

    def _JointSelected(self):
        jointIDs = [item.ID for item in self.jntHier_lw.selectedItems()]
        joints = self.skel.jntMng.GetJoints(jointIDs)
        self.jntProp_gb.SetJoints(joints)
        self.limbProp_gb.hide()
        limbID = self.limbHier_tw.currentItem().ID
        limbType = self.skel.limbMng.GetType(limbID)
        if 'Chain' in limbType:
            self.jntProp_gb.show()
        self.skel.sceneMng.SelectJointControls(jointIDs)

    def JointCountChanged(self): # Add, Remove
        self.jntHier_lw.Populate()
        self.limbProp_gb.Populate()
        limbID = self.limbHier_tw.currentItem().ID
        self.skel.sceneMng.Rebuild_Editable_Limb(limbID)
        self._UpdateJointCountLabel()
    
    def ReorderJoints(self):
        self.jntHier_lw.Populate()
        limbID = self.limbHier_tw.currentItem().ID
        self.skel.sceneMng.Rebuild_Editable_Limb(limbID)
        mirrorID = self.skel.limbMng.GetMirror(limbID)
        if (mirrorID != -1):
            self.skel.sceneMng.Rebuild_Editable_Limb(mirrorID)
        self._UpdateJointCountLabel()

    def RenameJoint(self, limbID, jointID):
        self.skel.sceneMng.RenameJoint(limbID, jointID)
        mirrorLimbID = self.skel.limbMng.GetMirror(limbID)
        if (mirrorLimbID != -1):
            mirrorJointID = self.skel.jntMng.GetMirrorJoint(jointID)
            self.skel.sceneMng.RenameJoint(mirrorLimbID, mirrorJointID)
    
    
#=========== MISC ====================================

    def _UpdateJointCountLabel(self):
        count = self.skel.jntMng.GetJointCount()
        self.jointCount_l.setText('Total Joints: ' + str(count))


# if __name__ == '__main__':
#     app = QtWidgets.QApplication(sys.argv)
#     ex = Skeleton_UI(None)

#     ex.show()
#     sys.exit(app.exec_())





