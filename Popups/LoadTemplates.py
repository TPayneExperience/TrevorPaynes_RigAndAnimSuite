
import os

import pymel.core as pm

import Utilities.Logger as log
reload(log)
import Operations.Rigging_Setup.LimbSetup as ls
reload(ls)

class LoadTemplates:
    def __init__(self, rigRoot, templatesFolder):
        self._folder = templatesFolder
        self._rigRoot = rigRoot
        self._selected = []

        pm.layoutDialog(ui=self._Setup, title='Load templates')

#=========== SETUP ====================================

    def _Setup(self):
        form = pm.setParent(q=1)
        temp_fl = pm.frameLayout(l='Templates Available', 
                                    bv=1, mh=5, mw=5, p=form)
        msg = 'CTR + LMB to multi-select'
        self.widget = pm.treeView(adr=0, arp=0, ann=msg,
                                    scc=self._SelectionChanged,
                                    elc=self.IgnoreRename)
        self.suffix_grp = pm.textFieldGrp(  l='Suffix', adj=1, pht='Upper...',
                                            cw=(2,80), cal=(1,'left'), p=form)
        self.cancel_btn = pm.button(l='Cancel', p=form, 
                                    c=lambda x: pm.layoutDialog(dis='close'))
        self.load_btn = pm.button(l='Load Selected', p=form, en=0, 
                                    c=self.Load)
        pm.formLayout(form, edit=True, width=200, height=320,
                        attachForm=[(temp_fl, 'top', 5), 
                                    (temp_fl, 'left', 5), 
                                    (temp_fl, 'right', 5),  
                                    (self.suffix_grp, 'left', 5), 
                                    (self.suffix_grp, 'right', 5), 
                                    (self.load_btn, 'bottom', 5), 
                                    (self.load_btn, 'right', 5),
                                    (self.cancel_btn, 'left', 5), 
                                    (self.cancel_btn, 'bottom', 5)],
                        # attachControl=[(temp_fl, 'bottom', 5, self.load_btn)],
                        attachControl=[(temp_fl, 'bottom', 5, self.suffix_grp),
                                    (self.suffix_grp, 'bottom', 5, self.load_btn),
                                    (self.suffix_grp, 'bottom', 5, self.cancel_btn)],
                        # attachControl=[(temp_fl, 'bottom', 5, self.suffix_grp),
                        #                 (self.suffix_grp, 'bottom', 5, self.load_btn)],
                        attachPosition=[(self.cancel_btn, 'right', 5, 50), 
                                        (self.load_btn, 'left', 5, 50)])
        self.Populate()
    
#=========== MISC ====================================

    def Populate(self):
        log.funcFileDebug()
        pm.button(self.load_btn, e=1, en=0)
        pm.treeView(self.widget, e=1, ra=1)
        self._files = {} # fileName : filePath
        for f in os.listdir(self._folder):
            filePath = os.path.join(self._folder, f)
            fileName = os.path.splitext(f)[0]
            self._files[fileName] = filePath
            pm.treeView(self.widget, e=1, ai=(fileName, ''))

    def _SelectionChanged(self):
        log.funcFileDebug()
        self._selected = []
        fileNames = pm.treeView(self.widget, q=1, selectItem=1)
        enabled = bool(fileNames)
        pm.button(self.load_btn, e=1, en=enabled)
        if enabled:
            self._selected = [self._files[f] for f in fileNames]

    def Load(self, ignore):
        log.funcFileDebug()
        limbSetup = ls.LimbSetup()
        suffix = pm.textFieldGrp(self.suffix_grp, q=1, tx=1)
        for filePath in self._selected:
            limbSetup.LoadTemplate(self._rigRoot, filePath, suffix)
        pm.layoutDialog(dis='load')

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''



# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
