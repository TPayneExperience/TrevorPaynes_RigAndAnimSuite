
import pymel.core as pm


class RigSetup_UI:
    def __init__(self, nameMng, fileMng, parent=None):
        
        self.nameMng = nameMng
        self.fileMng = fileMng
        self.parent = parent
        
        self.prefix = ''
        self.showPrefix = True
        self.nameOrder = [0,1,2,3,4]

        self.prefixValid = False
        self.meshPathValid = False

        self.rigNaming = [ 'Prefix (CAT, ELF)',
                            'Limb (ARM, LEG)',
                            'Joint (ELBOW, KNEE_02)',
                            'Side (L, M, R)',
                            'Type (JNT, CTR)']
    
    def NewRig_Dialog(self):
        self.startPrefix = 'PFX'
        self.startShowPrefix = True
        self.startNameOrder = [0,1,2,3,4]
        self._CopyInitValues()
        result = pm.layoutDialog(ui=self._Setup, title='Rig Setup')
        if result == 'save':
            self.parent.NewRig(   self.prefix, 
                                    self.nameOrder, 
                                    self.showPrefix)

    def EditRig_Dialog(self, prefix, showPrefix, order, rigRoot):
        self.startPrefix = prefix
        self.startShowPrefix = showPrefix
        self.startNameOrder = order
        self._CopyInitValues()
        result = pm.layoutDialog(ui=self._Setup, title='Rig Setup')
        isPrefixSame = (self.startPrefix != self.prefix)
        isShowPrefixSame = (self.startShowPrefix != self.showPrefix)
        isNameOrderSame = (self.startNameOrder != self.nameOrder)
        namesUpdated = any((isPrefixSame, isShowPrefixSame, isNameOrderSame))
        if result == 'save':
            if (isPrefixSame):
                rigRoot.prefix.set(self.prefix)
            if (isShowPrefixSame):
                rigRoot.showPrefix.set(self.showPrefix)
            if (isNameOrderSame):
                rigRoot.prefixIndex.set(self.nameOrder[0])
                rigRoot.limbIndex.set(self.nameOrder[1])
                rigRoot.jointIndex.set(self.nameOrder[2])
                rigRoot.sideIndex.set(self.nameOrder[3])
                rigRoot.typeIndex.set(self.nameOrder[4])
            if namesUpdated:
                self.parent.UpdateNaming()
    
#============ SETUP ============================

    def _Setup(self):
        form = pm.setParent(q=1)
    
        # ASSET DETAILS
        ass_fl = pm.frameLayout(l='Asset Details', 
                                    bv=1, mh=5, mw=5, p=form)
        self.prefix_grp = pm.textFieldGroup(  l='', adj=1, pht='CAT...', 
                                            tcc=self.PrefixChanged, 
                                            text=self.startPrefix,
                                            cw=(2,80), cal=(1,'left'))

        # EXAMPLE NAMING
        ex_fl = pm.frameLayout(l='Example Results', bv=1, mh=5, mw=5, p=form)
        self.ex0_t = pm.text(l='')
        pm.text(l='------------')
        self.ex1_t = pm.text(l='')
        self.ex2_t = pm.text(l='')
        self.ex3_t = pm.text(l='')
    
        # RIG NAMING
        order_fl = pm.frameLayout(l='Rig Naming', bv=1, mh=5, mw=5, p=form)
        self.showPfx_cb = pm.checkBox(l='Show Prefix', v=self.showPrefix, cc=self.ToggleShowPrefix)
        self.order_tv = pm.treeView(ams=0, arp=0, h=110, dad=self.Update_ExampleLabels)
        for i in range(5):
            part = self.rigNaming[self.startNameOrder[i]]
            pm.treeView(self.order_tv, e=1, ai=(part, ''))
        pm.text(l='[MMB + Drag to reorganize]')

        # BUTTONS + LAYOUT
        self.close_btn = pm.button(l='Close', parent=form, c=self.Close)
        self.save_btn = pm.button(l='Save', parent=form, c=self.Save)
        pm.formLayout(form, edit=True, width=430, height=320,
                        attachForm=[(ass_fl, 'top', 5), 
                                    (ass_fl, 'left', 5), 
                                    (ass_fl, 'right', 5), 
                                    (ex_fl, 'left', 5), 
                                    (order_fl, 'right', 5), 
                                    (self.close_btn, 'left', 5), 
                                    (self.close_btn, 'bottom', 5), 
                                    (self.save_btn, 'bottom', 5), 
                                    (self.save_btn, 'right', 5)],
                        attachControl=[(ex_fl, 'top', 5, ass_fl),
                                        (ex_fl, 'bottom', 5, self.close_btn),
                                        (order_fl, 'top', 5, ass_fl),
                                        (order_fl, 'bottom', 5, self.save_btn)],
                        attachPosition=[(ex_fl, 'right', 5, 50), 
                                        (order_fl, 'left', 5, 50), 
                                        (self.close_btn, 'right', 5, 50), 
                                        (self.save_btn, 'left', 5, 50)])
        self.Update_ExampleLabels(0,0,0,0,0,0,0)
        self.PrefixChanged(self.startPrefix)

#============ POPULATE + UPDATE ============================

    def _CopyInitValues(self):
        self.prefix = self.startPrefix 
        self.showPrefix = self.startShowPrefix
        self.nameOrder = self.startNameOrder[:]

    def _GetName(self, prefix, limb, joint, side, objType):
        temp = {self.nameOrder[1]:limb,
                self.nameOrder[2]:joint,
                self.nameOrder[3]:side,
                self.nameOrder[4]:objType}
        if self.showPrefix:
            temp[self.nameOrder[0]] = prefix
        partNames = [temp[i] for i in sorted(list(temp.keys()))]
        return '_'.join(partNames)

    def Update_ExampleLabels(self, i1, i2, i3, i4, i5, i6, i7):
        for i in range(5):
            index = pm.treeView(self.order_tv, q=1, idx=self.rigNaming[i])
            self.nameOrder[i] = index
        ex0 = self._GetName('PREFIX', 'LIMB', 'JOINT', 'SIDE', 'TYPE')
        ex1 = self._GetName('CAT', 'BLEG', 'KNEE', 'L', 'CTR')
        ex2 = self._GetName('MMonroe', 'SexyArm', 'SexyElbow', 'R', 'JNT')
        ex3 = self._GetName('JohnWick', 'Head', 'MidBrow', 'L', 'JNT')
        pm.text(self.ex0_t, e=1, l=ex0)
        pm.text(self.ex1_t, e=1, l=ex1)
        pm.text(self.ex2_t, e=1, l=ex2)
        pm.text(self.ex3_t, e=1, l=ex3)

    def ToggleShowPrefix(self, state):
        self.showPrefix = state
        self.Update_ExampleLabels(0,0,0,0,0,0,0)

    def PrefixChanged(self, text):
        self.prefix = text
        self.prefixValid = False
        if self.nameMng.IsValidCharacterLength(text):
            if self.nameMng.DoesNotStartWithNumber(text):
                if self.nameMng.AreAllValidCharacters(text):
                    self.prefixValid = True
        msg = 'ASSET PREFIX |  '+ self.nameMng.errorMsg[5:]
        pm.textFieldGroup(self.prefix_grp, e=1, l=msg)
        self.Update_SaveBtn()
    
    def Update_SaveBtn(self):
        combo = self.prefixValid and self.meshPathValid
        pm.button(self.save_btn, e=1, enable=combo)

    def Close(self, ignore):
        pm.layoutDialog(dis='close')
    
    def Save(self, ignore):
        pm.layoutDialog(dis='save')


#=========== DEPRICATED ====================================
#=========== DEPRICATED ====================================
#=========== DEPRICATED ====================================



# import os
# import sys

# from Common.Qt import QtWidgets, QtCore, QtGui

# import Name_Manager as nm
# reload(nm)


# class RigSetup_UI(QtWidgets.QDialog):
#     def __init__(self, nameManager, fileManager, parent=None):
#         super(RigSetup_UI, self).__init__(parent)

#         self.nameMng = nameManager
#         self.fileMng = fileManager
#         self.tempNameMng = nm.Name_Manager()
#         self.meshFile = ''
#         self.outputFile = ''
#         self._isPopulating = False

#         self.rigNaming = [ 'Prefix (CAT, ELF)',
#                             'Limb (ARM, LEG)',
#                             'Joint (ELBOW, KNEE_02)',
#                             'Side (L, M, R)',
#                             'Type (JNT, CTR)']

#         self._Setup()
#         self.Update_ExampleLabels()
#         self.Update_SaveBtn()
#         self._Setup_Connections()

#     def SetData(self, prefix, meshFile, outputFile, showPrefix, nameOrder):
#         self._isPopulating = True
#         self.prefix_le.setText(prefix)

#         self.meshFile = meshFile
#         self.meshPath_l.setText('MESH FILE | ' + meshFile)

#         self.outputFile = outputFile
#         self.outputFile_l.setText('OUTPUT FOLDER | ' + outputFile)

#         self.showPrefix_cb.setChecked(showPrefix)
#         self.tempNameMng.SetShowPrefix(showPrefix)

#         self.namingOrder_lw.clear()
#         for i in range(len(nameOrder)):
#             self.namingOrder_lw.addItem(self.rigNaming[nameOrder[i]])
#         self._isPopulating = False
#         self.Update_SaveBtn()
#         self.Update_ExampleLabels()

# #============ SETUP ============================

#     def _Setup(self):
#         self.setWindowTitle('Rig Setup')
#         self.setWindowFlags(self.windowFlags() ^ QtCore.Qt.WindowContextHelpButtonHint)
#         self.resize(500, 400)
    
#         v_layout = QtWidgets.QVBoxLayout(self)
#         v_layout.addWidget(self._Setup_AssetDetails())
        
#         hl = QtWidgets.QHBoxLayout()
#         hl.addWidget(self._Setup_ExampleResults())
#         hl.addWidget(self._Setup_RigNaming())
#         hl.setStretch(0,1)
#         hl.setStretch(1,1)


#         v_layout.addLayout(hl)
#         v_layout.addLayout(self._Setup_SaveCancel())
        
#     def _Setup_AssetDetails(self):
#         gb = QtWidgets.QGroupBox('Asset Details')
#         vl = QtWidgets.QVBoxLayout(gb)

#         hl1 = QtWidgets.QHBoxLayout()
#         self.prefix_l = QtWidgets.QLabel('ASSET PREFIX | ')
#         self.prefix_le = QtWidgets.QLineEdit()
#         self.prefix_le.setPlaceholderText('CAT, ELF...')
#         self.prefix_le.setMaximumSize(150, 100)
#         hl1.addWidget(self.prefix_l)
#         hl1.addWidget(self.prefix_le)
#         vl.addLayout(hl1)

#         hl2  = QtWidgets.QHBoxLayout()
#         self.meshPath_l = QtWidgets.QLabel('MESH FILE | [Missing]')
#         self.meshPath_btn = QtWidgets.QPushButton('...')
#         self.meshPath_btn.setMaximumSize(25, 100)
#         hl2.addWidget(self.meshPath_l)
#         hl2.addWidget(self.meshPath_btn)
#         vl.addLayout(hl2)
        
#         hl3  = QtWidgets.QHBoxLayout()
#         self.outputFile_l = QtWidgets.QLabel('OUTPUT FOLDER | [Missing]')
#         self.outputFile_btn = QtWidgets.QPushButton('...')
#         self.outputFile_btn.setMaximumSize(25, 100)
#         hl3.addWidget(self.outputFile_l)
#         hl3.addWidget(self.outputFile_btn)
#         vl.addLayout(hl3)

#         return gb

#     def _Setup_RigNaming(self):
#         gb = QtWidgets.QGroupBox('Rig Naming Scheme')
#         vl = QtWidgets.QVBoxLayout(gb)

#         self.showPrefix_cb = QtWidgets.QCheckBox('Include Prefix')
#         self.showPrefix_cb.setChecked(True)
#         vl.addWidget(self.showPrefix_cb)

#         self.namingOrder_lw = ReorderListWidget(self)
#         self.namingOrder_lw.addItems(self.rigNaming)
#         vl.addWidget(self.namingOrder_lw)
#         vl.addStretch()

#         return gb
    
#     def _Setup_ExampleResults(self):
#         gb = QtWidgets.QGroupBox('Example Results')
#         vl = QtWidgets.QVBoxLayout(gb)

#         self.example1_l = QtWidgets.QLabel('asdf1')
#         self.example2_l = QtWidgets.QLabel('asdf2')
#         self.example3_l = QtWidgets.QLabel('asdf3')
#         vl.addWidget(self.example1_l)
#         vl.addWidget(self.example2_l)
#         vl.addWidget(self.example3_l)
#         vl.addStretch()
#         self.resultNaming_l = QtWidgets.QLabel('asdf4')
#         vl.addWidget(self.resultNaming_l)

#         return gb
    
#     def _Setup_SaveCancel(self):
#         hl = QtWidgets.QHBoxLayout()
#         self.cancel_btn = QtWidgets.QPushButton('Cancel')
#         self.save_btn = QtWidgets.QPushButton('Save')
#         hl.addWidget(self.cancel_btn)
#         hl.addWidget(self.save_btn)
#         return hl

# #============ POPULATE + UPDATE ============================

#     def Update_ExampleLabels(self):
#         ex0 = self.tempNameMng.GetName('PREFIX', 'LIMB', 'JOINT', 'SIDE', 'TYPE')
#         ex1 = self.tempNameMng.GetName('CAT', 'BLEG', 'KNEE', 'L', 'CTR')
#         ex2 = self.tempNameMng.GetName('MMonroe', 'SexyArm', 'SexyElbow', 'R', 'JNT')
#         ex3 = self.tempNameMng.GetName('JohnWick', 'Head', 'MidBrow', 'L', 'JNT')

#         self.resultNaming_l.setText(ex0)
#         self.example1_l.setText(ex1)
#         self.example2_l.setText(ex2)
#         self.example3_l.setText(ex3)
    
#     def Update_SaveBtn(self):
#         if not self._isPopulating:
#             prefixValid = self.IsPrefixValid()
#             meshFileValid = os.path.isfile(self.meshFile)
#             outputValid = bool(self.outputFile)
#             combo = prefixValid and meshFileValid and outputValid
#             self.save_btn.setEnabled(combo)
#             if combo:
#                 self.tempNameMng.SetPrefix(self.prefix_le.text())

#     def IsPrefixValid(self):
#         text = self.prefix_le.text()
#         valid = False
#         if self.tempNameMng.IsValidCharacterLength(text):
#             if self.tempNameMng.DoesNotStartWithNumber(text):
#                 if self.tempNameMng.AreAllValidCharacters(text):
#                     valid = True
#         msg = 'ASSET PREFIX |  '+ self.tempNameMng.errorMsg[5:]
#         self.prefix_l.setText(msg)
#         return valid
    
# #============ FUNCTIONALITY ============================

#     def _Setup_Connections(self):
#         self.prefix_le.textChanged.connect(self.Update_SaveBtn)
#         self.meshPath_btn.clicked.connect(self.FindMeshFile)
#         self.outputFile_btn.clicked.connect(self.SetOutputFile)
        
#         self.showPrefix_cb.clicked.connect(self.ToggleShowPrefix)

#         self.cancel_btn.clicked.connect(self.reject)
#         self.save_btn.clicked.connect(self.Save)

#     def SetNamingOrder(self):
#         temp = []
#         for i in range(self.namingOrder_lw.count()):
#             temp.append(self.namingOrder_lw.item(i).text())
#         newOrder = [temp.index(i) for i in self.rigNaming]
#         self.tempNameMng.SetNamingOrder(newOrder)
#         self.Update_ExampleLabels()

#     def FindMeshFile(self):
#         filePath, ignore = QtWidgets.QFileDialog.getOpenFileName(self, 
#                                                     'Select Mesh File',
#                                                     # self._rigSetup.GetMeshPath(),
#                                                     self.fileMng.GetMeshPath(),
#                                                     '*.ma')
#         if (os.path.isfile(filePath)):
#             self.meshFile = filePath
#             self.meshPath_l.setText('MESH FILE | ' + filePath)
#             self.Update_SaveBtn()

#     def SetOutputFile(self):
#         filePath, ignore = QtWidgets.QFileDialog.getSaveFileName(self, 
#                                                         'Save Rig File',
#                                                         self.fileMng.GetOutputFile(),
#                                                         '*.json')
#         if (filePath):
#             self.outputFile = filePath
#             self.outputFile_l.setText('OUTPUT FOLDER | ' + filePath)
#             self.Update_SaveBtn()

#     def ToggleShowPrefix(self):
#         self.tempNameMng.SetShowPrefix(self.showPrefix_cb.isChecked())
#         self.Update_ExampleLabels()

#     def Save(self):
#         if not self._isPopulating:
#             self.nameMng.SetPrefix(self.tempNameMng.GetPrefix())
#             self.nameMng.SetNamingOrder(self.tempNameMng.GetNamingOrder())
#             self.nameMng.SetShowPrefix(self.tempNameMng.GetShowPrefix())
#             self.fileMng.SetMeshPath(self.meshFile)
#             self.fileMng.SetOutputFile(self.outputFile)
#             self.accept()

        
# #======= CUSTOM REORDER WIDGET ========================================


# class ReorderListWidget(QtWidgets.QListWidget):
#     def __init__(self, parent=None):
#         super(ReorderListWidget, self).__init__(parent)
#         self.parent = parent
#         self.setDragDropMode(self.InternalMove)
#         self.installEventFilter(self)

#         self.setAlternatingRowColors(True)   
#         self.setMaximumSize(1111, 100)
    
#     def eventFilter(self, sender, event):
#         if (event.type() == QtCore.QEvent.ChildRemoved):
#             self.onOrderChanged()
#         return False
    
#     def onOrderChanged(self):
#         self.parent.SetNamingOrder()



