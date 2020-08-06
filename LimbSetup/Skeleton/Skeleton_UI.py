
from Qt import QtWidgets, QtCore


import Hierarchies.SKEL_Joint_Hierarchy_UI as jointHier_UI
import Hierarchies.SKEL_Limb_Hierarchy_UI as limbHier_UI
reload(jointHier_UI)
reload(limbHier_UI)

import Properties.SKEL_Joint_Properties_UI as jointProp_UI
import Properties.SKEL_Limb_Properties_UI as limbProp_UI
reload(jointProp_UI)
reload(limbProp_UI)


class Skeleton_UI(QtWidgets.QTabWidget):
    def __init__(self, skeleton, mainWindow, parent=None):
        super(Skeleton_UI, self).__init__(parent)
        self.skel = skeleton
        self.skel.parent = self
        self.mainWindow = mainWindow

        self._isPopulating = False
        self._Setup()
        self._Setup_Connections()

    def Populate(self): # CALLED BY MAIN WINDOW
        self.limbHier_tw.Populate()
        self.jntHier_lw.clear()
        self.limbProp_gb.hide()
        self.jntProp_gb.hide()
        self.skel.sceneMng.Teardown_Editable()
        self.skel.sceneMng.Setup_Editable()
        self._UpdateJointCountLabel()
    
#=========== SETUP ====================================

    def _Setup(self):
        h_layout = QtWidgets.QHBoxLayout(self)
        h_layout.addLayout(self._Setup_LimbJointHierarchy())
        h_layout.addLayout(self._Setup_Properties())
    
    def _Setup_LimbJointHierarchy(self):
        v_layout = QtWidgets.QVBoxLayout()

        gb1 = QtWidgets.QGroupBox('LIMB Hierarchy')
        vl = QtWidgets.QVBoxLayout(gb1)
        self.limbHier_tw = limbHier_UI.SKEL_Limb_Hierarchy_UI(self.skel.limbHier, self)
        vl.addWidget(self.limbHier_tw)
        v_layout.addWidget(gb1)

        gb2 = QtWidgets.QGroupBox('Limb JOINT Hierarchy')
        vl = QtWidgets.QVBoxLayout(gb2)
        self.jntHier_lw = jointHier_UI.SKEL_Joint_Hierarchy_UI(self.skel.jntHier, self)
        vl.addWidget(self.jntHier_lw)
        v_layout.addWidget(gb2)

        return v_layout
    
    def _Setup_Properties(self):
        v_layout = QtWidgets.QVBoxLayout()

        gb = QtWidgets.QGroupBox('Properties')
        vl = QtWidgets.QVBoxLayout(gb)

        self.limbProp_gb = limbProp_UI.SKEL_Limb_Properties_UI(self.skel.limbProp, self)
        vl.addWidget(self.limbProp_gb)
        self.jntProp_gb = jointProp_UI.SKEL_Joint_Properties_UI(self.skel.jntProp)
        vl.addWidget(self.jntProp_gb)
        vl.addStretch()
        
        v_layout.addWidget(gb)
        v_layout.addWidget(self._Setup_Properties_Tools())

        return v_layout
    
    def _Setup_Properties_Tools(self):
        gb = QtWidgets.QGroupBox('Tools')
        vl = QtWidgets.QVBoxLayout(gb)

        self.moveToVertCenter_btn = QtWidgets.QPushButton('Move To Selected Center')
        msg = 'Select control in Scene, then select verts/edges/faces..., then press this'
        self.moveToVertCenter_btn.setToolTip(msg)
        vl.addWidget(self.moveToVertCenter_btn)

        hl = QtWidgets.QHBoxLayout()
        hl.addWidget(QtWidgets.QLabel('Display Size'))
        self.displaySize_sb = QtWidgets.QDoubleSpinBox()
        self.displaySize_sb.setValue(1)
        hl.addWidget(self.displaySize_sb)
        vl.addLayout(hl)

        self.jointCount_l = QtWidgets.QLabel('Total Joints: 128')
        self.jointCount_l.setAlignment(QtCore.Qt.AlignHCenter)
        vl.addWidget(self.jointCount_l)

        return gb

#=========== FUNCTIONALITY ====================================

    def _Setup_Connections(self):
        self.limbHier_tw.itemClicked.connect(self._LimbSelected)
        self.jntHier_lw.itemClicked.connect(self._JointSelected)
        self.moveToVertCenter_btn.clicked.connect(self.skel.sceneMng.MoveToVertsCenter)
        self.displaySize_sb.valueChanged.connect(self._UpdateDisplaySize)

#=========== LIMBS ====================================

    def _LimbSelected(self):
        limbID = self.limbHier_tw.currentItem().ID
        self.jntHier_lw.SetLimb(limbID)
        self.limbProp_gb.SetLimb(limbID)
        self.limbProp_gb.show()
        self.jntProp_gb.hide()
        jointCount = len(self.skel.jntMng.GetLimbJointIDs(limbID))
        if (jointCount > 0):
            self.skel.sceneMng.SelectLimbControl(limbID)
        else:
            self.skel.sceneMng.DeselectAll()
    
    def AddLimb(self, limbID):
        self.limbHier_tw.Populate(limbID)
        self.skel.sceneMng.Add_Editable_Limb(limbID)
        self._LimbSelected()
        self._UpdateJointCountLabel()

    def RemoveLimb(self, rootLimbID):
        limbIDs = self.skel.limbMng.GetLimbCreationOrder(rootLimbID)
        limbNames = [self.skel.limbMng.GetName(ID) for ID in limbIDs]
        for limbID in limbIDs[::-1]:
            mirrorID = self.skel.limbMng.GetMirror(limbID)
            self.limbHier_tw.limbHier.Remove(limbID)
            # self.RemoveLimb(limbID)
            if (mirrorID != -1):
                self.RenameLimb(mirrorID)
        self.StatusMsg('Removed limbs ' + str(limbNames))
        self.limbHier_tw.Populate()
        self.jntHier_lw.Depopulate()
        self.limbProp_gb.hide()
        self.jntProp_gb.hide()
        self.skel.sceneMng.Remove_Editable_Limb(rootLimbID)
        self._UpdateJointCountLabel()

    def ReparentLimb(self, limbID, oldParentID): # limb hier changed
        self.skel.sceneMng.Reparent_Editable_Limb(limbID, oldParentID)
        items = self.limbHier_tw.selectedItems()
        if (items):
            limbID = items[0].ID
            self.limbProp_gb.SetLimb(limbID)
            self.limbProp_gb.Populate()

        newParentID = self.skel.limbMng.GetParentID(limbID)
        limbName = self.skel.limbMng.GetName(limbID)
        if (newParentID == -1):
            newParentName = 'World'
        else:
            newParentName = self.skel.limbMng.GetName(newParentID)
        msg = 'Reparenting "%s" to "%s"' % (limbName, newParentName)
        self.StatusMsg(msg)

    def RebuildLimb(self, limbID): # limb type changed
        self.skel.sceneMng.Rebuild_Editable_Limb(limbID)

    def LimbParentJointChanged(self, limbID):
        self.skel.sceneMng.Teardown_External_JointParents(limbID)
        self.skel.sceneMng.Setup_External_JointParents(limbID)
        self.skel.sceneMng.SelectLimbControl(limbID)

    def RenameLimb(self, limbID):
        self.skel.sceneMng.sceneLimbMng.RenameLimb(limbID)
        # mirrorID = self.skel.limbMng.GetMirror(limbID)
        # if (mirrorID != -1):
        #     self.skel.sceneMng.sceneLimbMng.RenameLimb(mirrorID)
    
    def FlipLimbSides(self, limbID): # for L/R switching
        limbIDs = self.skel.limbMng.GetLimbCreationOrder(limbID) #children
        mirrorID = self.skel.limbMng.GetMirror(limbID)
        mirrorIDs = self.skel.limbMng.GetLimbCreationOrder(mirrorID)
        side_01 = self.skel.limbMng.GetSide(limbID)
        side_02 = self.skel.limbMng.GetSide(mirrorID)
        for ID in limbIDs:
            self.skel.limbMng.SetSide(ID, 'temp')
            if self.skel.jntMng.DoesLimbHaveJoints(ID):
                self.skel.sceneMng.sceneLimbMng.RenameLimb(ID)
        for ID in mirrorIDs:
            self.skel.limbMng.SetSide(ID, side_01)
            if self.skel.jntMng.DoesLimbHaveJoints(ID):
                self.skel.sceneMng.sceneLimbMng.RenameLimb(ID)
        for ID in limbIDs:
            self.skel.limbMng.SetSide(ID, side_02)
            if self.skel.jntMng.DoesLimbHaveJoints(ID):
                self.skel.sceneMng.sceneLimbMng.RenameLimb(ID)

        self.limbHier_tw.Populate()


#=========== MANIPULATE JOINTS ====================================

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

    def ReorderJoints(self):
        self.jntHier_lw.Populate()
        limbID = self.limbHier_tw.currentItem().ID
        self.skel.sceneMng.Rebuild_Editable_Limb(limbID)
        mirrorID = self.skel.limbMng.GetMirror(limbID)
        if (mirrorID != -1):
            self.skel.sceneMng.Rebuild_Editable_Limb(mirrorID)
        self._UpdateJointCountLabel()

    def RenameJoint(self, limbID, jointID):
        self.skel.sceneMng.sceneLimbMng.RenameJoint(limbID, jointID)
        mirrorLimbID = self.skel.limbMng.GetMirror(limbID)
        if (mirrorLimbID != -1):
            mirrorJointID = self.skel.jntMng.GetMirrorJoint(jointID)
            self.skel.sceneMng.sceneLimbMng.RenameJoint(mirrorLimbID, mirrorJointID)
    
    def SetJointCount(self, limbID, newJointCount):
        jointIDs = self.skel.jntMng.GetLimbJointIDs(limbID)
        oldJointCount = len(jointIDs)
        if (newJointCount < oldJointCount):
            self.RemoveJoints(limbID, jointIDs[newJointCount:oldJointCount])
        elif (newJointCount > oldJointCount):
            amount = newJointCount - oldJointCount
            self.AddJoints(limbID, amount)

    def _UpdateJointWidgets(self, limbID):
        self.jntHier_lw.Populate()
        self.limbProp_gb.Populate()
        self._UpdateJointCountLabel()


#=========== ADD + REMOVE JOINTS ====================================

    def RemoveJoints(self, limbID, removeJointIDs):
        count = len(removeJointIDs)
        result = QtWidgets.QMessageBox.warning(self, 
                            'REMOVE LIMBS',
                            'Are you sure you want to remove %d joints?' % count,
                            QtWidgets.QMessageBox.Cancel, 
                            QtWidgets.QMessageBox.Ok
                            )
        if (result==QtWidgets.QMessageBox.Ok):
            mirrorID = self.skel.limbMng.GetMirror(limbID)
            if (mirrorID != -1):
                mirrorJointIDs = [self.skel.jntMng.GetMirrorJoint(ID) for ID in removeJointIDs]
                self._RemoveJoints(mirrorID, mirrorJointIDs)
            self._RemoveJoints(limbID, removeJointIDs)
            self._UpdateJointWidgets(limbID)
    
    def _RemoveJoints(self, limbID, removeJointIDs):
        jointNames = [self.skel.jntMng.GetName(ID) for ID in removeJointIDs]
        limbName = self.skel.limbMng.GetName(limbID)
        self.skel.jntMng.Remove(limbID, removeJointIDs)
        if (self.skel.jntMng.DoesLimbHaveJoints(limbID)):
            self.skel.sceneMng.Rebuild_Editable_Limb(limbID)
        else:
            for childID in self.skel.limbMng.GetImmediateChildren(limbID):
                self.skel.jntMng.SetParentJointId(childID, -1)
            self.skel.sceneMng.Remove_Editable_Limb(limbID)
        msg = 'Removed joints "%s"' % str(jointNames)
        msg += ' from limb "%s"' % limbName
        self.StatusMsg(msg)

    def AddJoints(self, limbID, count):
        hadJoints = self.skel.jntMng.DoesLimbHaveJoints(limbID)
        mirrorID = self.skel.limbMng.GetMirror(limbID)
        self.skel.jntMng.Add(limbID, mirrorID, count)
        self._AddJoints(hadJoints, limbID, count)
        if (mirrorID != -1):
            self._AddJoints(hadJoints, mirrorID, count)
        self._UpdateJointWidgets(limbID)

    def _AddJoints(self, hadJoints, limbID, count):
        limbName = self.skel.limbMng.GetName(limbID)
        if hadJoints:
            self.skel.sceneMng.Rebuild_Editable_Limb(limbID)
        else:
            jointID = self.skel.jntMng.GetLimbJointIDs(limbID)[0]
            for childID in self.skel.limbMng.GetImmediateChildren(limbID):
                self.skel.jntMng.SetParentJointId(childID, jointID)
            self.skel.sceneMng.Add_Editable_Limb(limbID)
        msg = 'Added %d joints to limb "%s"' % (count, limbName)
        self.StatusMsg(msg)

#=========== DISPLAY SIZE ====================================

    def _UpdateDisplaySize(self, size):
        self.skel.sceneMng.SetDisplaySize(size)
    
#=========== MISC ====================================

    def _UpdateJointCountLabel(self):
        count = self.skel.jntMng.GetJointCount()
        self.jointCount_l.setText('Total Joints: ' + str(count))

    def StatusMsg(self, message):
        self.mainWindow.StatusMsg(message)
    
    def NewRig(self, rootGrp):
        self.skel.jntMng.NewRig()
        self.skel.limbMng.NewRig()
        self.skel.sceneMng.NewRig(rootGrp)
        self.Populate()
    
    def UpdateNaming(self):
        self.skel.sceneMng.Teardown_Editable()
        self.skel.sceneMng.Setup_Editable()

    def TeardownRig(self):
        self.skel.sceneMng.Teardown_Editable()
        self.skel.sceneMng.KillScriptJobs()





