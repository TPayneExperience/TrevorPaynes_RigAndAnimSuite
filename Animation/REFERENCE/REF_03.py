
from Qt import QtWidgets, QtCore


import Templates.Default_Templates_UI as defTemp_UI
import Templates.Custom_Templates_UI as cusTemp_UI
import Templates.Save_CustomLimb_UI as saveLimb_UI
reload(defTemp_UI)
reload(cusTemp_UI)
reload(saveLimb_UI)

import Hierarchies.Joint_Hierarchy_UI as jointHier_UI
import Hierarchies.Limb_Hierarchy_UI as limbHier_UI
reload(jointHier_UI)
reload(limbHier_UI)

import Properties.Joint_Properties_UI as jointProp_UI
import Properties.Limb_Properties_UI as limbProp_UI
reload(jointProp_UI)
reload(limbProp_UI)


class Skeleton_UI(QtWidgets.QTabWidget):
    def __init__(self, skeleton, mainWindow, parent=None):
        super(Skeleton_UI, self).__init__(parent)
        self.skel = skeleton
        self.skel.parent = self
        self.parent = parent
        self.mainWindow = mainWindow

        self._isPopulating = False
        self.templatePath = '' # '', 'custom', or 'default' templates

        self._Setup()
        self._Setup_Connections()

    def SetMainWindow(self, window):
        self.mainWindow = window

    def Populate(self): # CALLED BY MAIN WINDOW
        self.limbHier_tw.Populate()
        self.limbProp_gb.hide()
        self.jntProp_gb.hide()
        self.skel.sceneMng.Teardown_Editable()
        self.skel.sceneMng.Setup_Editable()
        self.defaultTemplates_lw.Populate()
        self.customTemplates_lw.Populate()
        self._UpdateJointCountLabel()
    
#=========== SETUP ====================================

    def _Setup(self):
        h_layout = QtWidgets.QHBoxLayout(self)
        h_layout.addLayout(self._Setup_Templates())
        h_layout.addLayout(self._Setup_LimbJointHierarchy())
        h_layout.addLayout(self._Setup_Properties())
    
    def _Setup_Templates(self):
        v_layout = QtWidgets.QVBoxLayout()

        gb1 = QtWidgets.QGroupBox('Default Limb Templates')
        vl = QtWidgets.QVBoxLayout(gb1)
        self.defaultTemplates_lw = defTemp_UI.Default_Templates_UI(self.skel.fileMng, self)
        vl.addWidget(self.defaultTemplates_lw)
        v_layout.addWidget(gb1)

        gb2 = QtWidgets.QGroupBox('Custom Limb Templates')
        vl = QtWidgets.QVBoxLayout(gb2)
        self.customTemplates_lw = cusTemp_UI.Custom_Templates_UI(self.skel.fileMng, self)
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

        gb = QtWidgets.QGroupBox('Properties')
        vl = QtWidgets.QVBoxLayout(gb)

        self.limbProp_gb = limbProp_UI.Limb_Properties_UI(self.skel.limbProp, self)
        vl.addWidget(self.limbProp_gb)
        self.jntProp_gb = jointProp_UI.Joint_Properties_UI(self.skel.jntProp)
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
        vl.addWidget(self.jointCount_l)

        return gb

#=========== FUNCTIONALITY ====================================

    def _Setup_Connections(self):
        self.limbHier_tw.itemClicked.connect(self._LimbSelected)
        self.jntHier_lw.itemClicked.connect(self._JointSelected)
        self.moveToVertCenter_btn.clicked.connect(self.skel.sceneMng.MoveToVertsCenter)
        self.displaySize_sb.valueChanged.connect(self._UpdateDisplaySize)

        # DRAG DROP
        self.defaultTemplates_lw.itemPressed.connect(self.DragDefaultTemplate)
        self.customTemplates_lw.itemPressed.connect(self.DragCustomTemplate)
        self.jntHier_lw.itemPressed.connect(self.DragNull)
        self.limbHier_tw.itemPressed.connect(self.DragNull)

    # def DisplayLogMsg(self, message):
    #     self.mainWindow.statusBar().showMessage(message)

    def LoadTemplate(self, filePath):
        self.skel.saveLoadSkel.saveLoadMng.Load_Skel_Limbs(filePath)
        self.Populate()

    def DragDefaultTemplate(self):
        self.templatePath = self.defaultTemplates_lw.currentItem().toolTip()

    def DragCustomTemplate(self):
        self.templatePath = self.customTemplates_lw.currentItem().toolTip()
    
    def DragNull(self):
        self.templatePath = ''

    def SaveCustomLimb(self):
        limbID = self.limbHier_tw.currentItem().ID
        limbIDs = self.skel.limbMng.GetLimbCreationOrder(limbID)

        saveUI = saveLimb_UI.Save_CustomLimb_UI(limbIDs, self)
        saveUI.exec_()

        self.customTemplates_lw.Populate()

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

    def RemoveLimb(self, limbID):
        self.skel.sceneMng.Remove_Editable_Limb(limbID)
        self._UpdateJointCountLabel()

    def ReparentLimb(self, limbID, oldParentID): # limb hier changed
        self.skel.sceneMng.Reparent_Editable_Limb(limbID, oldParentID)

    def RebuildLimb(self, limbID): # limb type changed
        self.skel.sceneMng.Rebuild_Editable_Limb(limbID)

    def LimbParentJointChanged(self, limbID):
        self.skel.sceneMng.Teardown_External_JointParents(limbID)
        self.skel.sceneMng.Setup_External_JointParents(limbID)

    def RenameLimb(self, limbID):
        self.skel.sceneMng.sceneLimbMng.RenameLimb(limbID)
        mirrorID = self.skel.limbMng.GetMirror(limbID)
        if (mirrorID != -1):
            self.skel.sceneMng.sceneLimbMng.RenameLimb(mirrorID)
    
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

    def Mirror(self, limbID): # called by limb hier UI
        self.limbProp_gb.SetLimb(limbID)
        self.limbProp_gb.Populate()

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

# if __name__ == '__main__':
#     app = QtWidgets.QApplication(sys.argv)
#     ex = Skeleton_UI(None)

#     ex.show()
#     sys.exit(app.exec_())





