
import imp
import os

import pymel.core as pm

import Utilities.General_Utilities as genUtil
import Utilities.Logger as log
import Popups.Export as xprt

class Export_UI:
    def __init__(self):
        self.exporter = xprt.Export()
        pm.layoutDialog(ui=self.Setup, title='Export Anim Rigs')

    def close(self):
        pm.layoutDialog(dis='close')

#=========== SETUP UI ====================================

    def Setup(self):
        form = pm.setParent(q=1)
        with pm.frameLayout('Rig Roots', p=form) as self.rigRoots_fl:
            self.rigRoot_tv = pm.treeView(adr=0, arp=0)
            pm.treeView(self.rigRoot_tv, e=1, scc=self.SelectedRigRoots,
                                        elc=self.IgnoreRename)
        with pm.columnLayout(adj=1, rs=5, p=form) as self.cl:
            self.removeJnts_chk = pm.checkBox(l='Remove Unweighted Joints', v=1)
            self.reduceKeys_chk = pm.checkBox(l='Reduce Keys', v=1)
        with pm.horizontalLayout() as self.buttons_hl:
            pm.button(l='Cancel', c=self.close)
            self.save_b = pm.button(l='Save as File', c=self.SaveAsFile)
            self.export_b = pm.button(l='Export FBX', c=self.ExportFBX)
        pm.formLayout(form, e=1, width=200, height=300,
            attachForm=[(self.rigRoots_fl, 'top', 5), 
                        (self.rigRoots_fl, 'left', 5), 
                        (self.rigRoots_fl, 'right', 5),
                        (self.cl, 'left', 5),
                        (self.cl, 'right', 5),  
                        (self.buttons_hl, 'left', 5),
                        (self.buttons_hl, 'right', 5), 
                        (self.buttons_hl, 'bottom', 5)],
            attachControl=[(self.rigRoots_fl, 'bottom', 5, self.cl),
                            (self.cl, 'bottom', 5, self.buttons_hl)])
        self.PopulateRigRootHier()
    
#=========== RIG ROOT HIER ====================================
   
    def PopulateRigRootHier(self):
        log.funcFileDebug()
        self.rigRoots = {} # ID : rigRoot
        self._selectedRigRoots = genUtil.GetRigRoots()
        for rigRoot in self._selectedRigRoots:
            rigRootID = str(rigRoot.ID.get())
            name = rigRoot.pfrsName.get()
            pm.treeView(self.rigRoot_tv, e=1, addItem=(rigRootID, ''))
            pm.treeView(self.rigRoot_tv, e=1, displayLabel=(rigRootID, name))
            pm.treeView(self.rigRoot_tv, e=1, selectItem=(rigRootID, 1))
            self.rigRoots[rigRootID] = rigRoot

    def SelectedRigRoots(self):
        log.funcFileInfo()
        self.PopulateAnimationHier()
        rigRootIDStrs = pm.treeView(self.rigRoot_tv, q=1, selectItem=1)
        if not rigRootIDStrs:
            for rigRoot in self._selectedRigRoots:
                rigRootID = str(rigRoot.ID.get())
                pm.treeView(self.rigRoot_tv, e=1, selectItem=(rigRootID, 1))
            return
        self._rigRoots = [self.rigRoots[ID] for ID in rigRootIDStrs]

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

#=========== BUTTONS ====================================
   
    def SaveAsFile(self, ignore):
        log.funcFileInfo()
        setupFile = pm.sceneName()
        sceneFolderPath = os.path.dirname(setupFile)
        results = pm.fileDialog2(fm=3, 
                                dir=sceneFolderPath, 
                                cap='Save Export Ready Rigs')
        if not results:
            return
        folderPath = results[0]
        reduceKeys = pm.checkBox(self.reduceKeys_chk, q=1, v=1)
        removeJoints = pm.checkBox(self.removeJnts_chk, q=1, v=1)
        for rigRoot in self._selectedRigRoots:
            fileName = '%s_AnimBakeForExport.ma' % rigRoot.pfrsName.get()
            filePath = os.path.join(folderPath, fileName)
            self.exporter.SaveAsFile(   rigRoot, 
                                        filePath, 
                                        reduceKeys, 
                                        removeJoints)
        self.close()
        
    def ExportFBX(self, ignore):
        log.funcFileInfo()
        setupFile = pm.sceneName()
        sceneFolderPath = os.path.dirname(setupFile)
        results = pm.fileDialog2(fm=3, 
                                dir=sceneFolderPath, 
                                cap='Save Export Ready Rigs')
        if not results:
            return
        folderPath = results[0]
        reduceKeys = pm.checkBox(self.reduceKeys_chk, q=1, v=1)
        removeJoints = pm.checkBox(self.removeJnts_chk, q=1, v=1)
        for rigRoot in self._selectedRigRoots:
            fileName = '%s_AnimBakeForExport.fbx' % rigRoot.pfrsName.get()
            filePath = os.path.join(folderPath, fileName)
            self.exporter.SaveAsFile(   rigRoot, 
                                        filePath, 
                                        reduceKeys, 
                                        removeJoints)
        self.close()
        

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
