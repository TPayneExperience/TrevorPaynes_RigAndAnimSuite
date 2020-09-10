
import pymel.core as pm


class SKEL_Limb_Properties_UI:
    def __init__(self, Limb_Properties, parent=None):

        self.parent = parent
        self.limbMng = Limb_Properties.limbMng
        self.jntMng = Limb_Properties.jntMng

        self.limbID = -1
        self.scriptJobs = []
        self.type_om = None
        self.pJnt_om = None
        self.side_om = None
#         self.limbProps = Limb_Properties
#         self._parentJoints = []
        self._Setup()
    
    def SetLimb(self, limbID):
        if self.scriptJobs:
            self._RemoveListeners(self.limbID)
        self.limbID = limbID
        self.Populate()
        self._AddListeners(limbID)

    def _AddListeners(self, limbID):
        limb = self.limbMng.GetLimb(limbID)
        job1 = pm.scriptJob(ac=[limb.parentJntIndex, self.SetParentJoint])
        job2 = pm.scriptJob(ac=[limb.sideIndex, self.SetSide])
        job3 = pm.scriptJob(ac=[limb.typeIndex, self.SetType])
        
        self.scriptJobs = [job1, job2, job3]

    def _RemoveListeners(self, limbID):
        for job in self.scriptJobs:
            pm.scriptJob(kill=job, force=True)

# #=========== POPULATE ==============================================

    def Populate(self):
        limb = self.limbMng.GetLimb(self.limbID)
        jointCount = len(self.jntMng.GetLimbJointIDs(self.limbID))
        pm.intFieldGrp(self.jntCnt, e=1, v1=jointCount)
        if (self.type_om):
            pm.deleteUI(self.type_om, control=1)
            pm.deleteUI(self.pJnt_om, control=1)
            pm.deleteUI(self.side_om, control=1)
        self.type_om = pm.attrEnumOptionMenuGrp(l='Type', adj=2, cw=(1,70),
                                                at=limb.typeIndex, p=self.layout)
        self.pJnt_om = pm.attrEnumOptionMenuGrp(l='Parent Joint', adj=2, cw=(1,70), 
                                                at=limb.parentJntIndex, p=self.layout)
        self.side_om = pm.attrEnumOptionMenuGrp(l='Side', adj=2, cw=(1,70), 
                                                at=limb.sideIndex, p=self.layout)

#=========== SETUP UI ==============================================

    def _Setup(self):
        with pm.columnLayout(adj=1) as self.layout:
            # self.type_om = pm.attrEnumOptionMenuGrp(l='Type', adj=2, cw=(1,70))
            # self.pJnt_om = pm.attrEnumOptionMenuGrp( l='Parent Joint', adj=2, cw=(1,70))
            # self.side_om = pm.attrEnumOptionMenuGrp( l='Side', adj=2, cw=(1,70))
            self.jntCnt = pm.intFieldGrp(l='Joint Count', nf=1, v1=1, adj=2, cw=(1,70),
                                            cc=self.SetJointCount)

    def SetParentJoint(self):
        self.parent.LimbParentJointChanged(self.limbID)

    def SetSide(self):
        pass

    def SetType(self):
        self.parent.RebuildLimb(self.limbID)

    def SetJointCount(self, newJointCount):
        jointIDs = self.jntMng.GetLimbJointIDs(self.limbID)
        oldJointCount = len(jointIDs)
        if (newJointCount < oldJointCount):
            diff = oldJointCount - newJointCount
            result = pm.confirmDialog(  title='Remove Joints', 
                                        icon='warning', 
                                        message='Remove %d joint(s)?' % diff,
                                        button=['Yes','No'], 
                                        defaultButton='Yes', 
                                        cancelButton='No', 
                                        dismissString='No' )
            if (result == 'Yes'):
                self.parent.RemoveJoints(self.limbID, jointIDs[newJointCount:oldJointCount])
        elif (newJointCount > oldJointCount):
            amount = newJointCount - oldJointCount
            self.parent.AddJoints(self.limbID, amount)



# #=========== FUNCTIONALITY ==============================================

#     def _Setup_Connections(self):
#         self.parentJoint_cb.currentIndexChanged.connect(self._ParentJoint_Changed)
#         self.side_cb.currentIndexChanged.connect(self._Side_Changed)
#         self.type_cb.currentIndexChanged.connect(self._Type_Changed)
#         self.jointCount_sb.valueChanged.connect(self._JointCount_Changed)
        
#     def _ParentJoint_Changed(self):
#         if not self._isPopulating:
#             jointID = self.parentJointIDs[self.parentJoint_cb.currentIndex()]
#             limbID = self.limbProps.limbID
#             self.limbProps.jntMng.SetParentJointId(limbID, jointID)
#             self.parent.LimbParentJointChanged(limbID)

#     def _Type_Changed(self):
#         if not self._isPopulating:
#             limbType = self.type_cb.currentText()
#             limbID = self.limbProps.limbID
#             self.limbProps.limbMng.SetType(limbID, limbType)
#             if (self.limbProps.jntMng.DoesLimbHaveJoints(limbID)):
#                 self.parent.RebuildLimb(limbID)

#     def _Side_Changed(self):
#         if not self._isPopulating:
#             limbID = self.limbProps.limbID
#             self.parent.FlipLimbSides(limbID)

#=========== DEPRICATED ====================================
#=========== DEPRICATED ====================================
#=========== DEPRICATED ====================================



# import sys

# from Common.Qt import QtWidgets, QtCore, QtGui

# class SKEL_Limb_Properties_UI(QtWidgets.QWidget):
#     def __init__(self, Limb_Properties, parent=None):
#         super(SKEL_Limb_Properties_UI, self).__init__(parent)
#         self.parent = parent
#         self.limbProps = Limb_Properties
#         self._parentJoints = []
#         self._isPopulating = False
#         self._Setup()
#         self._Setup_Connections()
    
#     def SetLimb(self, limb):
#         self.limbProps.SetLimb(limb)
#         self.Populate()

# #=========== SETUP UI ==============================================

#     def _Setup(self):
#         vl = QtWidgets.QVBoxLayout(self)
#         vl.addLayout(self._Setup_ParentJoint())
#         vl.addLayout(self._Setup_Types())
#         vl.addLayout(self._Setup_Side())
#         vl.addLayout(self._Setup_JointCount())

#     def _Setup_ParentJoint(self):
#         hl = QtWidgets.QHBoxLayout()
#         l = QtWidgets.QLabel('Parent Joint')
#         self.parentJoint_cb = QtWidgets.QComboBox()
#         hl.addWidget(l)
#         hl.addWidget(self.parentJoint_cb)
#         return hl

#     def _Setup_Types(self):
#         hl = QtWidgets.QHBoxLayout()
#         l = QtWidgets.QLabel('Type')
#         self.type_cb = QtWidgets.QComboBox()
#         self.type_cb.addItems(self.limbProps.limbMng.GetTypes())
#         hl.addWidget(l)
#         hl.addWidget(self.type_cb)
#         return hl

#     def _Setup_Side(self):
#         hl = QtWidgets.QHBoxLayout()
#         self.side_l = QtWidgets.QLabel('Side')
#         self.side_cb = QtWidgets.QComboBox()
#         self.side_cb.addItems(self.limbProps.limbMng.GetSides()[1:])
#         hl.addWidget(self.side_l)
#         hl.addWidget(self.side_cb)
#         return hl

#     def _Setup_JointCount(self):
#         hl = QtWidgets.QHBoxLayout()
#         l = QtWidgets.QLabel('Joint Count')
#         self.jointCount_sb = QtWidgets.QSpinBox()
#         self.jointCount_sb.setKeyboardTracking(False)
#         hl.addWidget(l)
#         hl.addWidget(self.jointCount_sb)
#         return hl

# #=========== POPULATE ==============================================

#     def Populate(self):
#         # PARENT JOINTS
#         self._isPopulating = True
#         self.parentJoint_cb.clear()
#         limbID = self.limbProps.limbID
#         parentLimbID = self.limbProps.limbMng.GetParentID(limbID)
#         self.parentJoint_cb.setCurrentIndex(-1)
#         if (parentLimbID != -1):
#             self.parentJointIDs = self.limbProps.jntMng.GetLimbJointIDs(parentLimbID)
#             jointNames = [joint.name for joint in self.limbProps.jntMng.GetJoints(self.parentJointIDs)]
#             self.parentJoint_cb.addItems(jointNames)
#             parentJointID = self.limbProps.jntMng.GetParentJointId(limbID)
#             if parentJointID != -1 and parentJointID in self.parentJointIDs:
#                 index = self.parentJointIDs.index(parentJointID)
#                 self.parentJoint_cb.setCurrentIndex(index)
    
#         # TYPE
#         types = self.limbProps.limbMng.GetTypes()
#         index = types.index(self.limbProps.limbMng.GetType(limbID))
#         self.type_cb.setCurrentIndex(index)

#         # SIDE
#         side = self.limbProps.limbMng.GetSide(limbID)
#         sides = self.limbProps.limbMng.GetSides()[1:]
#         mirrorRoots = self.limbProps.limbMng.GetLimbMirrorRoots()
#         if side in sides and limbID in mirrorRoots:
#             index = sides.index(side)
#             self.side_l.show()
#             self.side_cb.show()
#             self.side_cb.setCurrentIndex(index)
#         else:
#             self.side_l.hide()
#             self.side_cb.hide()

#         # JOINT COUNT
#         jointIDs = self.limbProps.jntMng.GetLimbJointIDs(self.limbProps.limbID)
#         self.jointCount_sb.setValue(len(jointIDs))
#         self._isPopulating = False
    
# #=========== FUNCTIONALITY ==============================================

#     def _Setup_Connections(self):
#         self.parentJoint_cb.currentIndexChanged.connect(self._ParentJoint_Changed)
#         self.side_cb.currentIndexChanged.connect(self._Side_Changed)
#         self.type_cb.currentIndexChanged.connect(self._Type_Changed)
#         self.jointCount_sb.valueChanged.connect(self._JointCount_Changed)
        
#     def _ParentJoint_Changed(self):
#         if not self._isPopulating:
#             jointID = self.parentJointIDs[self.parentJoint_cb.currentIndex()]
#             limbID = self.limbProps.limbID
#             self.limbProps.jntMng.SetParentJointId(limbID, jointID)
#             self.parent.LimbParentJointChanged(limbID)

#     def _Type_Changed(self):
#         if not self._isPopulating:
#             limbType = self.type_cb.currentText()
#             limbID = self.limbProps.limbID
#             self.limbProps.limbMng.SetType(limbID, limbType)
#             if (self.limbProps.jntMng.DoesLimbHaveJoints(limbID)):
#                 self.parent.RebuildLimb(limbID)

#     def _Side_Changed(self):
#         if not self._isPopulating:
#             limbID = self.limbProps.limbID
#             self.parent.FlipLimbSides(limbID)

#     def _JointCount_Changed(self):
#         if not self._isPopulating:
#             self.parent.SetJointCount(self.limbProps.limbID, self.jointCount_sb.value())







