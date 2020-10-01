
import pymel.core as pm

class BHV_Limb_Properties_UI:
    def __init__(self, limbMng, jntMng, grpMng, parent):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.grpMng = grpMng
        self.parent = parent

        self.limb = None

        self._Setup()
    
    def SelectedLimb(self, limbID):
        self.limb = self.limbMng.GetLimb(limbID)
        pm.frameLayout(self.limbLayout, en=1)

        # BEHAVIOR DATA
        pm.optionMenu(self.bhvType_om, e=1, sl=(self.limb.bhvType.get()+1))
        pm.optionMenu(self.bhvParentType_om, e=1, sl=self.limb.bhvParentTypeIndex.get()+1)
        limbNames = pm.optionMenu(self.bhvParentLimb_om, q=1, ill=1)
        bhvParentLimbID = self.limb.bhvParentLimbID.get()
        bhvParentIndex = limbNames.index(str(bhvParentLimbID))
        pm.optionMenu(self.bhvParentLimb_om, e=1, sl=(bhvParentIndex+1))
        self.SetBhvParentLimb(bhvParentLimbID)

        # CONSTRAINT DATA
        pm.attrEnumOptionMenu(self.cstType_om, e=1, at=self.limb.bhvCstTypeIndex)
        cstTargetLimbID = self.limb.bhvCstTargetLimbID.get()
        cstTargetIndex = limbNames.index(str(cstTargetLimbID))
        pm.optionMenu(self.cstTargetLimb_om, e=1, sl=(cstTargetIndex+1))
        self.SetCstTargetLimb(cstTargetLimbID)
        

    def DeselectedLimb(self):
        pm.frameLayout(self.limbLayout, en=0)
        pm.frameLayout(self.cstLayout, vis=0)

    def Populate(self): # CALL WHEN TAB SELECTED
        pm.optionMenu(self.bhvParentLimb_om, e=1, dai=1)
        for rootLimbID in self.limbMng.GetRootLimbIDs():
            for limbID in self.limbMng.GetLimbCreationOrder(rootLimbID):
                limb = self.limbMng.GetLimb(limbID)
                side = self.limbMng.limbSides[limb.side.get()]
                name = '%s_%s' % (limb.pfrsName.get(), side)
                pm.menuItem(limbID, l=name, p=self.bhvParentLimb_om)
                pm.menuItem(limbID, l=name, p=self.cstLimb_om)


#=========== SETUP UI ==============================================

    def _Setup(self):
        '''Create frame layouts here because we have limb + cst frames'''
        with pm.frameLayout('Limb BEHAVIOR Properties', bv=1, en=0) as self.limbLayout:
            with pm.columnLayout(adj=1):
                self.bhvType_om = pm.optionMenuGrp(l='Bhv Type', adj=2, cw=(1,70), cc=self.SetBhvType)
                with pm.optionMenuGrp(l='Bhv Parent', adj=2, cw=(1,70)) as self.bhvParentType_om:
                    for parentType in self.grpMng.bhvParents:
                        pm.menuItem(l=parentType)
                pm.optionMenuGrp(self.bhvParentType_om, e=1, cc=self.SetBhvParent)
                self.bhvParentLimb_om = pm.optionMenuGrp(l='Parent Limb', adj=2, cw=(1,70),
                                                        cc=self.SetBhvParentLimb)
                self.bhvParentGrp_om = pm.optionMenuGrp(l='Parent Group', adj=2, cw=(1,70),
                                                        cc=self.SetBhvParentGrp)
        
        with pm.frameLayout('Limb CONSTRAINT Properties', bv=1) as self.cstLayout:
            with pm.columnLayout(adj=1):
                self.cstType_om = pm.attrEnumOptionMenuGrp(l='Cst Type', adj=2, cw=(1,70), 
                                                        at='perspShape.filmFit')
                self.cstTargetLimb_om = pm.optionMenuGrp(l='Limb Target', adj=2, cw=(1,70))
                self.cstTargetJnt_om = pm.optionMenuGrp(l='Joint Target', adj=2, cw=(1,70))

#=========== FUNCTIONALITY ==============================================

    def SetBhvType(self, bhvTypeStr):
        print (bhvTypeStr)
        pm.frameLayout(self.cstLayout, e=1, vis=(bhvTypeStr == 'Constraint'))
        self.limb.bhvType.set(self.grpMng.bhvTypes.index(bhvTypeStr))
        # self.parent.SetLimbBhv(self.limb) 

    def SetBhvParent(self, parentTypeStr):
        isLimbDefined = (self.limb.bhvParentTypeIndex.get() == 0)
        pm.optionMenu(self.bhvParentLimb_om, e=1, vis=isLimbDefined)
        pm.optionMenu(self.bhvParentGrp_om, e=1, vis=isLimbDefined)

    def SetBhvParentLimb(self, limbID):
        pm.optionMenu(self.bhvParentGrp_om, e=1, dai=1)
        self.limb.bhvParentLimbID.set(int(limbID))
        for groupID in self.grpMng.GetLimbGrpIDs(int(limbID)):
            name = self.grpMng.GetGroup(groupID).pfrsName.get()
            pm.menuItem(groupID, l=name, p=self.bhvParentGrp_om)
    
    def SetBhvParentGrp(self, groupID):
        self.limb.bhvParentGrpID.set(int(groupID))

    def SetCstTargetLimb(self, limbID):
        self.limb.bhvCstTargetLimbID.set(limbID)
        pm.optionMenu(self.cstTargetJnt_om, e=1, dai=1)
        for jointID in self.jntMng.GetLimbJntIDs(int(limbID)):
            name = self.jntMng.GetJoint(jointID).pfrsName.get()
            pm.menuItem(jointID, l=name, p=self.cstTargetJnt_om)





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









