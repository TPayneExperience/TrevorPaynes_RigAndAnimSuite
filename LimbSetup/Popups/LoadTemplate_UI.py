
import pymel.core as pm

class LoadTemplate_UI:
    def LoadTemplate_Dialog(self, templateFiles):
        self.selectedFiles = []
        self.templateFiles = templateFiles # dict {name, path}
        result = pm.layoutDialog(ui=self._Setup, title='Save Template')
        if (result == 'load'):
            return self.selectedFiles
        return None

#=========== SETUP ====================================

    def _Setup(self):
        form = pm.setParent(q=1)
        temp_fl = pm.frameLayout(l='Select Template(s) to LOAD', 
                                    bv=1, mh=5, mw=5, p=form)
        self.limbs_tv = pm.treeView(adr=0, arp=0, ann='CTR or Shift + LMB to multi-select',
                                    elc=lambda x,y: '', 
                                    scc=self.LimbSelected)
        for name, path in self.templateFiles.items():
            pm.treeView(self.limbs_tv, e=1, addItem=(path, ''))
            pm.treeView(self.limbs_tv, e=1, displayLabel=(path, name))
        
        self.close_btn = pm.button(l='Close', parent=form, c=self.Close)
        self.load_btn = pm.button(l='Load', parent=form, c=self.Load, en=0)
        pm.formLayout(form, edit=True, width=430, height=320,
                        attachForm=[(temp_fl, 'top', 5), 
                                    (temp_fl, 'left', 5), 
                                    (temp_fl, 'right', 5), 
                                    (self.close_btn, 'left', 5), 
                                    (self.close_btn, 'bottom', 5), 
                                    (self.load_btn, 'bottom', 5), 
                                    (self.load_btn, 'right', 5)],
                        attachControl=[(temp_fl, 'bottom', 5, self.load_btn)],
                        attachPosition=[(self.close_btn, 'right', 5, 50), 
                                        (self.load_btn, 'left', 5, 50)])

#=========== FUNCTIONALITY ====================================

    def LimbSelected(self):
        self.selectedFiles = pm.treeView(self.limbs_tv, q=1, si=1)
        pm.button(self.load_btn, e=1, enable=bool(self.selectedFiles))

    def Close(self, ignore):
        pm.layoutDialog(dis='close')
    
    def Load(self, ignore):
        pm.layoutDialog(dis='load')



#=========== DEPRICATED ====================================
#=========== DEPRICATED ====================================
#=========== DEPRICATED ====================================


# import os

# from Common.Qt import QtWidgets, QtCore, QtGui

# class LoadTemplate_UI(QtWidgets.QDialog):
#     def __init__(self, templateFiles, parent=None):
#         super(LoadTemplate_UI, self).__init__(parent)

#         self.parent = parent
#         self.templateFiles = templateFiles

#         self._Setup()
#         self.Populate()
#         self._UpdateLoadTemplateBtn()
#         self._Setup_Connections()

#     def Populate(self):
#         for fileName in sorted(self.templateFiles.keys()):
#             path = self.templateFiles[fileName]
#             item = QtWidgets.QListWidgetItem(self.limbs_lw)
#             item.setText(fileName)
#             item.path = path
#             self.limbs_lw.addItem(item)


# #=========== SETUP ====================================

#     def _Setup(self):
#         self.setWindowTitle('Load Limb Template')
#         self.setWindowFlags(self.windowFlags() ^ QtCore.Qt.WindowContextHelpButtonHint)

#         vl = QtWidgets.QVBoxLayout(self)
#         vl.addWidget(self._Setup_Templates_GB())
#         vl.addLayout(self._Setup_Buttons())
    
#     def _Setup_Templates_GB(self):
#         gb = QtWidgets.QGroupBox('Select Limbs to Load')
#         vl = QtWidgets.QVBoxLayout(gb)

#         self.limbs_lw = QtWidgets.QListWidget(self)
#         self.limbs_lw.setAlternatingRowColors(True)
#         self.limbs_lw.setSelectionMode(self.limbs_lw.ExtendedSelection)
#         self.limbs_lw.setToolTip('Ctr + click = multi select!')

#         vl.addWidget(self.limbs_lw)
#         return gb

#     def _Setup_Buttons(self):
#         hl = QtWidgets.QHBoxLayout()
#         self.cancel_btn = QtWidgets.QPushButton('Cancel')

#         self.loadTemplate_btn = QtWidgets.QPushButton('Load Templates')
#         hl.addWidget(self.cancel_btn)
#         hl.addWidget(self.loadTemplate_btn)
#         return hl

# #=========== FUNCTIONALITY ====================================

#     def _Setup_Connections(self):
#         self.cancel_btn.clicked.connect(self.reject)
#         self.loadTemplate_btn.clicked.connect(self._LoadTemplate)
#         self.limbs_lw.itemSelectionChanged.connect(self._UpdateLoadTemplateBtn)

#     def _UpdateLoadTemplateBtn(self):
#         items = self.limbs_lw.selectedItems()
#         self.loadTemplate_btn.setEnabled(bool(items))
#         self.loadTemplate_btn.setText('Load %d limb(s)' % len(items))

#     def _LoadTemplate(self):
#         items = self.limbs_lw.selectedItems()
#         filePaths = [item.path for item in items]
#         self.parent._Load_Template(filePaths)
#         self.accept()


