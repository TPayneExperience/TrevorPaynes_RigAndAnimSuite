
import pymel.core as pm

class BHV_Limb_Properties_UI:
    def __init__(self, limbMng, grpMng, parent):
        self.limbMng = limbMng
        self.grpMng = grpMng
        self.parent = parent

        self.limb = None

        self._Setup()
    
    def SelectedLimb(self, limbID):
        self.limb = self.limbMng.GetLimb(limbID)
        pm.frameLayout(self.layout, en=1)
        self.type_om = pm.attrEnumOptionMenuGrp(l='Type', adj=2, cw=(1,70),
                                                at=self.limb.bhvIndex, 
                                                p=self.layout)
        
        # self.bhvType_grp = pm.optionMenu(l='Behavior')

        # with pm.optionMenu(l='Cst Type') as self.cstType_grp:
        #     for cst in self.grpMng.cstTypes:
        #         pm.menuItem(l=cst)
        # self.cstTargetLimb_grp = pm.optionMenu(l='Cst Target Limb')
        # self.cstTargetJnt_grp = pm.optionMenu(l='Cst Target Joint')
        
        # self.bhvParent_grp = pm.optionMenu(l='Bhv Parent')
        # self.bhvParentLimb_grp = pm.optionMenu(l='Bhv Parent Limb')
        # self.bhvParentGrp_grp = pm.optionMenu(l='Bhv Parent Grp')
        # - bhv = attrenum
        # - bhv par = attr enum
        # - bhv par limb = option menu
        # - bhv par grp = option menu
        # - cst type = attr enum
        # - cst target limb = option menu
        # - cst target joint = option menu

    def Disable(self):
        pm.frameLayout(self.layout, en=0)

#=========== SETUP UI ==============================================

    def _Setup(self):
        self.layout = pm.frameLayout('Limb Properties', bv=1, en=0)
    
#=========== POPULATE ==============================================



#=========== FUNCTIONALITY ==============================================

    # def _Setup_Connections(self):
    #     self.parentJoint_cb.currentIndexChanged.connect(self._ParentJoint_Changed)
    #     self.side_cb.currentIndexChanged.connect(self._Side_Changed)
    #     self.type_cb.currentIndexChanged.connect(self._Type_Changed)
    #     self.jointCount_sb.valueChanged.connect(self._JointCount_Changed)
        
    # def _ParentJoint_Changed(self):
    #     if not self._isPopulating:
    #         jointID = self.parentJointIDs[self.parentJoint_cb.currentIndex()]
    #         limbID = self.limbProps.limbID
    #         self.limbProps.jntMng.SetParentJointId(limbID, jointID)
    #         self.parent.LimbParentJointChanged(limbID)

    # def _Type_Changed(self):
    #     if not self._isPopulating:
    #         limbType = self.type_cb.currentText()
    #         limbID = self.limbProps.limbID
    #         self.limbProps.limbMng.SetType(limbID, limbType)
    #         if (self.limbProps.jntMng.DoesLimbHaveJoints(limbID)):
    #             self.parent.RebuildLimb(limbID)

    # def _Side_Changed(self):
    #     if not self._isPopulating:
    #         limbID = self.limbProps.limbID
    #         self.parent.FlipLimbSides(limbID)

    # def _JointCount_Changed(self):
    #     if not self._isPopulating:
    #         self.parent.SetJointCount(self.limbProps.limbID, self.jointCount_sb.value())





#============= DEPRICATED ============================
#============= DEPRICATED ============================
#============= DEPRICATED ============================






# import sys

# from Common.Qt import QtWidgets, QtCore, QtGui

# # class Limb_Properties_UI(QtWidgets.QGroupBox)
# class BHV_Limb_Properties_UI(QtWidgets.QWidget):
#     # def __init__(self, Limb_Properties, parent=None):
#     def __init__(self, parent=None):
#         super(BHV_Limb_Properties_UI, self).__init__(parent)
#         self.parent = parent
#         # self.limbProps = Limb_Properties
#         # self._parentJoints = []
#         self._isPopulating = False
#         self._Setup()
#         # self._Setup_Connections()
    
#     # def SetLimb(self, limb):
#     #     self.limbProps.SetLimb(limb)
#     #     self.Populate()

# #=========== SETUP UI ==============================================

#     def _Setup(self):
#         vl = QtWidgets.QVBoxLayout(self)
#         vl.addWidget(self._Setup_LimbConstraint_GB())
    
#     def _Setup_LimbConstraint_GB(self):
#         self.singleBhv_gb = QtWidgets.QGroupBox('Single Behavior Options')
#         vl = QtWidgets.QVBoxLayout(self.singleBhv_gb)

#         hl1 = QtWidgets.QHBoxLayout()
#         l = QtWidgets.QLabel('Constraint Type')
#         self.cstType_cb = QtWidgets.QComboBox()
#         hl1.addWidget(l)
#         hl1.addWidget(self.cstType_cb)

#         hl2 = QtWidgets.QHBoxLayout()
#         l = QtWidgets.QLabel('Target Joint')
#         self.selectLimb_cb = QtWidgets.QComboBox()
#         hl2.addWidget(l)
#         hl2.addWidget(self.selectLimb_cb)

#         vl.addLayout(hl1)
#         vl.addLayout(hl2)

#         return self.singleBhv_gb

#     # def _Setup_ParentJoint(self):
#     #     hl = QtWidgets.QHBoxLayout()
#     #     l = QtWidgets.QLabel('Parent Joint')
#     #     self.parentJoint_cb = QtWidgets.QComboBox()
#     #     hl.addWidget(l)
#     #     hl.addWidget(self.parentJoint_cb)
#     #     return hl

#     # def _Setup_Types(self):
#     #     hl = QtWidgets.QHBoxLayout()
#     #     l = QtWidgets.QLabel('Type')
#     #     self.type_cb = QtWidgets.QComboBox()
#     #     self.type_cb.addItems(self.limbProps.limbMng.GetTypes())
#     #     hl.addWidget(l)
#     #     hl.addWidget(self.type_cb)
#     #     return hl

#     # def _Setup_Side(self):
#     #     hl = QtWidgets.QHBoxLayout()
#     #     self.side_l = QtWidgets.QLabel('Side')
#     #     self.side_cb = QtWidgets.QComboBox()
#     #     self.side_cb.addItems(self.limbProps.limbMng.GetSides()[1:])
#     #     hl.addWidget(self.side_l)
#     #     hl.addWidget(self.side_cb)
#     #     return hl

#     # def _Setup_JointCount(self):
#     #     hl = QtWidgets.QHBoxLayout()
#     #     l = QtWidgets.QLabel('Joint Count')
#     #     self.jointCount_sb = QtWidgets.QSpinBox()
#     #     self.jointCount_sb.setKeyboardTracking(False)
#     #     hl.addWidget(l)
#     #     hl.addWidget(self.jointCount_sb)
#     #     return hl

# #=========== POPULATE ==============================================

#     # def Populate(self):
#     #     # PARENT JOINTS
#     #     self._isPopulating = True
#     #     self.parentJoint_cb.clear()
#     #     limbID = self.limbProps.limbID
#     #     parentLimbID = self.limbProps.limbMng.GetParentID(limbID)
#     #     self.parentJoint_cb.setCurrentIndex(-1)
#     #     if (parentLimbID != -1):
#     #         self.parentJointIDs = self.limbProps.jntMng.GetLimbJointIDs(parentLimbID)
#     #         jointNames = [joint.name for joint in self.limbProps.jntMng.GetJoints(self.parentJointIDs)]
#     #         self.parentJoint_cb.addItems(jointNames)
#     #         parentJointID = self.limbProps.jntMng.GetParentJointId(limbID)
#     #         if parentJointID != -1 and parentJointID in self.parentJointIDs:
#     #             index = self.parentJointIDs.index(parentJointID)
#     #             self.parentJoint_cb.setCurrentIndex(index)
    
#     #     # TYPE
#     #     types = self.limbProps.limbMng.GetTypes()
#     #     index = types.index(self.limbProps.limbMng.GetType(limbID))
#     #     self.type_cb.setCurrentIndex(index)

#     #     # SIDE
#     #     side = self.limbProps.limbMng.GetSide(limbID)
#     #     sides = self.limbProps.limbMng.GetSides()[1:]
#     #     mirrorRoots = self.limbProps.limbMng.GetLimbMirrorRoots()
#     #     if side in sides and limbID in mirrorRoots:
#     #         index = sides.index(side)
#     #         self.side_l.show()
#     #         self.side_cb.show()
#     #         self.side_cb.setCurrentIndex(index)
#     #     else:
#     #         self.side_l.hide()
#     #         self.side_cb.hide()

#     #     # JOINT COUNT
#     #     jointIDs = self.limbProps.jntMng.GetLimbJointIDs(self.limbProps.limbID)
#     #     self.jointCount_sb.setValue(len(jointIDs))
#     #     self._isPopulating = False
    
# #=========== FUNCTIONALITY ==============================================

#     # def _Setup_Connections(self):
#     #     self.parentJoint_cb.currentIndexChanged.connect(self._ParentJoint_Changed)
#     #     self.side_cb.currentIndexChanged.connect(self._Side_Changed)
#     #     self.type_cb.currentIndexChanged.connect(self._Type_Changed)
#     #     self.jointCount_sb.valueChanged.connect(self._JointCount_Changed)
        
#     # def _ParentJoint_Changed(self):
#     #     if not self._isPopulating:
#     #         jointID = self.parentJointIDs[self.parentJoint_cb.currentIndex()]
#     #         limbID = self.limbProps.limbID
#     #         self.limbProps.jntMng.SetParentJointId(limbID, jointID)
#     #         self.parent.LimbParentJointChanged(limbID)

#     # def _Type_Changed(self):
#     #     if not self._isPopulating:
#     #         limbType = self.type_cb.currentText()
#     #         limbID = self.limbProps.limbID
#     #         self.limbProps.limbMng.SetType(limbID, limbType)
#     #         if (self.limbProps.jntMng.DoesLimbHaveJoints(limbID)):
#     #             self.parent.RebuildLimb(limbID)

#     # def _Side_Changed(self):
#     #     if not self._isPopulating:
#     #         limbID = self.limbProps.limbID
#     #         self.parent.FlipLimbSides(limbID)

#     # def _JointCount_Changed(self):
#     #     if not self._isPopulating:
#     #         self.parent.SetJointCount(self.limbProps.limbID, self.jointCount_sb.value())



# if __name__ == '__main__':
#     app = QtWidgets.QApplication(sys.argv)
#     ex = Limb_Properties_UI()

#     ex.show()
#     sys.exit(app.exec_())









