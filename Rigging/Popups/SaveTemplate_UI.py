
import pymel.core as pm


class SaveTemplate_UI:
    def __init__(self, parent):

        self.limbMng = parent.limbMng
        self.nameMng = parent.nameMng

        self.selectedLimbs = []
        self.templateName = ''

    def SaveTemplate_Dialog(self):
        result = pm.layoutDialog(ui=self._Setup, title='Save Template')
        if (result == 'save'):
            limbIDs = []
            for limbID in self.selectedLimbs:
                limbIDs += self.limbMng.GetLimbCreationOrder(int(limbID))
            return (limbIDs, self.templateName)
        return (None, None)

#=========== SETUP ====================================

    def _Setup(self):
        form = pm.setParent(q=1)
        self.name_grp = pm.textFieldGroup(  l='', adj=1, pht='Biped Arm...', 
                                            tcc=self.NameChanged, cw=(2,80), 
                                            cal=(1,'left'), p=form)
        temp_fl = pm.frameLayout(l='Select limbs to SAVE in Template', 
                                    bv=1, mh=5, mw=5, p=form)
        self.limbs_tv = pm.treeView(adr=0, arp=0, ann='CTR or Shift + LMB to multi-select',
                                    elc=lambda x,y: '', 
                                    selectCommand=self.LimbSelected)
        for rootLimbID in self.limbMng.GetRootLimbIDs():
            for limbID in self.limbMng.GetLimbCreationOrder(rootLimbID):
                limb = self.limbMng.GetLimb(limbID)
                name = limb.pfrsName.get()
                parentID = limb.parentLimbID.get()
                # if (parentID == -1):
                #     parentID = ''
                pm.treeView(self.limbs_tv, e=1, addItem=(limbID, str(parentID)))
                pm.treeView(self.limbs_tv, e=1, displayLabel=(limbID, name))
        
        self.close_btn = pm.button(l='Close', parent=form, 
                                c=lambda x: pm.layoutDialog(dis='close'))
        self.save_btn = pm.button(l='Save', parent=form, 
                                c=lambda x: pm.layoutDialog(dis='save'))
        pm.formLayout(form, edit=True, width=430, height=320,
                        attachForm=[(self.name_grp, 'top', 5), 
                                    (self.name_grp, 'left', 5), 
                                    (self.name_grp, 'right', 5), 
                                    (temp_fl, 'left', 5), 
                                    (temp_fl, 'right', 5), 
                                    (self.close_btn, 'left', 5), 
                                    (self.close_btn, 'bottom', 5), 
                                    (self.save_btn, 'bottom', 5), 
                                    (self.save_btn, 'right', 5)],
                        attachControl=[(temp_fl, 'bottom', 5, self.save_btn),
                                        (temp_fl, 'top', 5, self.name_grp)],
                        attachPosition=[(self.close_btn, 'right', 5, 50), 
                                        (self.save_btn, 'left', 5, 50)])
        self.NameChanged('')

#=========== FUNCTIONALITY ====================================

    def LimbSelected(self, limbName, state):
        if state:
            if (limbName not in self.selectedLimbs):
                # PREVENT SELECTING CHILD OF ALREADY SELECTED PARENT
                parent = pm.treeView(self.limbs_tv, q=1, ip=limbName)
                isValid = True
                while (parent):
                    if (parent in self.selectedLimbs):
                        return False
                    parent = pm.treeView(self.limbs_tv, q=1, ip=parent)

                # DESELECT CHILDREN
                for selected in self.selectedLimbs[:]:
                    parent = pm.treeView(self.limbs_tv, q=1, ip=selected)
                    while (parent):
                        if (parent == limbName):
                            pm.treeView(self.limbs_tv, e=1, si=(selected, 0))
                            self.selectedLimbs.remove(selected)
                        parent = pm.treeView(self.limbs_tv, q=1, ip=parent)
                if isValid:
                    self.selectedLimbs.append(limbName)

        elif (limbName in self.selectedLimbs):
            self.selectedLimbs.remove(limbName)
        self.Update_SaveBtn()
        return True

    def NameChanged(self, text):
        self.templateName = text
        self.nameValid = False
        if self.nameMng.IsValidCharacterLength(text):
            if self.nameMng.DoesNotStartWithNumber(text):
                if self.nameMng.AreAllValidCharacters(text):
                    self.nameValid = True
        msg = 'TEMPLATE NAME | '+ self.nameMng.errorMsg[5:]
        pm.textFieldGroup(self.name_grp, e=1, l=msg)
        self.Update_SaveBtn()

    def Update_SaveBtn(self):
        combo = self.nameValid and bool(self.selectedLimbs)
        pm.button(self.save_btn, e=1, enable=combo)

        





#=========== DEPRICATED ====================================
#=========== DEPRICATED ====================================
#=========== DEPRICATED ====================================





# import os

# from Common.Qt import QtWidgets, QtCore, QtGui

# class SaveTemplate_UI(QtWidgets.QDialog):
#     def __init__(self, limbMng, nameMng, parent=None):
#         super(SaveTemplate_UI, self).__init__(parent)

#         self.parent = parent
#         self.limbMng = limbMng
#         self.nameMng = nameMng

#         self._items = {} # ID : Item
#         self._isUpdating = False

#         self._Setup()
#         self.Populate()
#         self._UpdateSaveTemplateBtn()
#         self._Setup_Connections()

#     def Populate(self):
#         limbIDs = self.limbMng.GetAllLimbsCreationOrder()
#         for limbID in limbIDs:
#             name = self.limbMng.GetName(limbID)
#             side = self.limbMng.GetSide(limbID)
#             parentID = self.limbMng.GetParentID(limbID)
#             if (parentID != -1):
#                 parentItem = self._items[parentID]
#                 item = QtWidgets.QTreeWidgetItem(parentItem, [name])
#             else:
#                 item = QtWidgets.QTreeWidgetItem(self.limbs_tw, [name])
#             item.ID = limbID
#             if (side == 'M'):
#                 item.setIcon(0, self.m_icon)
#             elif (side == 'L'):
#                 item.setIcon(0, self.l_icon)
#             elif (side == 'R'):
#                 item.setIcon(0, self.r_icon)
#             self._items[limbID] = item
#         self.limbs_tw.expandAll()


# #=========== SETUP ====================================

#     def _Setup(self):
#         self.setWindowTitle('Save Limb Template')
#         self.setWindowFlags(self.windowFlags() ^ QtCore.Qt.WindowContextHelpButtonHint)

#         vl = QtWidgets.QVBoxLayout(self)
#         vl.addLayout(self._Setup_NameTemplate())
#         vl.addWidget(self._Setup_Limb_GB())
#         vl.addLayout(self._Setup_Buttons())
#         self._Setup_Icons()
    
#     def _Setup_NameTemplate(self):
#         vl = QtWidgets.QVBoxLayout()
#         hl = QtWidgets.QHBoxLayout()
#         label = QtWidgets.QLabel('Template Name')
#         self.templateName_le = QtWidgets.QLineEdit(self)

#         hl.addWidget(label)
#         hl.addWidget(self.templateName_le)

#         self.msg_l = QtWidgets.QLabel()
#         vl.addLayout(hl)
#         vl.addWidget(self.msg_l)
#         return vl

#     def _Setup_Limb_GB(self):
#         gb = QtWidgets.QGroupBox('Select Limbs to Save')
#         vl = QtWidgets.QVBoxLayout(gb)

#         self.limbs_tw = QtWidgets.QTreeWidget(self)
#         self.limbs_tw.setAlternatingRowColors(True)
#         self.limbs_tw.setSelectionMode(self.limbs_tw.ExtendedSelection)
#         self.limbs_tw.setHeaderHidden(True)
#         self.limbs_tw.setIndentation(10)

#         vl.addWidget(self.limbs_tw)
#         return gb

#     def _Setup_Buttons(self):
#         hl = QtWidgets.QHBoxLayout()
#         self.cancel_btn = QtWidgets.QPushButton('Cancel')
#         self.saveTemplate_btn = QtWidgets.QPushButton('Save Template')
#         hl.addWidget(self.cancel_btn)
#         hl.addWidget(self.saveTemplate_btn)
#         return hl

#     def _Setup_Icons(self):
#         path = os.path.dirname(__file__)
#         path = os.path.dirname(path)
#         path = os.path.dirname(path)
#         self.l_icon = QtGui.QIcon(os.path.join(path, 'Images', 'Skel_L.png'))
#         self.r_icon =  QtGui.QIcon(os.path.join(path, 'Images', 'Skel_R.png'))
#         self.m_icon =  QtGui.QIcon(os.path.join(path, 'Images', 'Skel_M.png'))

# #=========== FUNCTIONALITY ====================================

#     def _Setup_Connections(self):
#         self.cancel_btn.clicked.connect(self.reject)
#         self.saveTemplate_btn.clicked.connect(self._SaveTemplate)
#         self.limbs_tw.itemSelectionChanged.connect(self._UpdateSaveTemplateBtn)
#         self.templateName_le.textChanged.connect(self._UpdateSaveTemplateBtn)

#     def _UpdateSaveTemplateBtn(self):
#         if not self._isUpdating:
#             self._isUpdating = True
#             for item in self._items.values():
#                 item.setDisabled(False)

#             items = self.limbs_tw.selectedItems()
#             text = self.templateName_le.text()
#             valid = False
#             if self.nameMng.IsValidCharacterLength(text):
#                 if self.nameMng.DoesNotStartWithNumber(text):
#                     if self.nameMng.AreAllValidCharacters(text):
#                         if items:
#                             valid = True
#             self.msg_l.setText(self.nameMng.errorMsg)
#             self.saveTemplate_btn.setEnabled(valid)

#             limbIDs = [item.ID for item in items]
#             for limbID in limbIDs:
#                 childIDs = self.limbMng.GetLimbCreationOrder(limbID)
#                 for childID in childIDs[1:]:
#                     item = self._items[childID]
#                     item.setDisabled(True)
#                     self.limbs_tw.setItemSelected(item, False)
#                 for childID in childIDs:
#                     mirrorID = self.limbMng.GetMirror(childID)
#                     if (mirrorID != -1):
#                         item = self._items[mirrorID]
#                         item.setDisabled(True)
#                         self.limbs_tw.setItemSelected(item, False)
#             items = self.limbs_tw.selectedItems()
#             self.saveTemplate_btn.setText('Save %d limb(s)' % len(items))
#             self._isUpdating = False
    
#     def _SaveTemplate(self):
#         items = self.limbs_tw.selectedItems()
#         limbIDs = [item.ID for item in items]
#         templateName = self.templateName_le.text()
#         self.parent._Save_Template(limbIDs, templateName)
#         self.accept()





















