
import imp

import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
#imp.reload(absOpUI)
import AttachPoints as att
#imp.reload(att)
import Utilities.Logger as log
#imp.reload(log)
import Utilities.UI_Utilities as uiUtil
#imp.reload(uiUtil)
import Utilities.Skin_Utilities as skinUtil
#imp.reload(skinUtil)

class AttachPoints_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Attach Points'
    uiOrderIndex = 110
    operation = att.AttachPoints()
    
    def __init__(self):
        self._rigRoot = None
        self._allRigRoots = []
        self._rigRootIDs = dict()
        self._apIDs = {}

    def Setup_UI(self, rigRoot, allRigRoots, pfrsUI):
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._Setup()
        self.PopulateRigRootHier()
        self.PopulateAttachPointHier()

    def Teardown_UI(self):
        pass

#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Rig Roots', bv=1):
                self.rigRoot_tv = pm.treeView(ams=0, adr=0, arp=0,
                                            elc=self.IgnoreRename,
                                            scc=self.SelectedRigRoot)
                with pm.popupMenu():
                    pm.menuItem(l='Add Attach Point at Selected Vertex', 
                                            c=self.AddAttachPoint)
        with pm.verticalLayout():
            with pm.frameLayout('Attach Points Created', bv=1):
                self.ap_tv = pm.treeView(arp=0, adr=0,
                                            elc=self.RenameAttachPoint,
                                            scc=self.SelectedAttachPoint)
                with pm.popupMenu():
                    self.remove_b = pm.menuItem(l='Remove Attach Point(s)', 
                                                    c=self.RemoveAttachPoint,
                                                    en=0)

#=========== RIG ROOT HIER ====================================
   
    def PopulateRigRootHier(self):
        log.funcFileDebug()
        pm.treeView(self.rigRoot_tv, e=1, removeAll=1)
        self._rigRootIDs.clear()
        names = list()
        for rigRoot in self._allRigRoots:
            name = rigRoot.pfrsName.get()
            self._rigRootIDs[name] = rigRoot
            names.append(name)
        names = sorted(names)
        for name in names:
            pm.treeView(self.rigRoot_tv, e=1, ai=(name, ''))
        name = self._rigRoot.pfrsName.get()
        pm.treeView(self.rigRoot_tv, e=1, selectItem=(name, 1))
    def SelectedRigRoot(self):
        log.funcFileInfo()
        rigRootIDStrs = pm.treeView(self.rigRoot_tv, q=1, selectItem=1)
        if not rigRootIDStrs:
            name = self._rigRoot.pfrsName.get()
            pm.treeView(self.rigRoot_tv, e=1, selectItem=(name, 1))
            return
        self._rigRoot = self._rigRootIDs[rigRootIDStrs[0]]
        self.PopulateAttachPointHier()

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

#=========== ATTACH POINT ====================================
   
    def PopulateAttachPointHier(self):
        pm.treeView(self.ap_tv, e=1, removeAll=1)
        self._apIDs.clear()
        self._apIDs.update(uiUtil.PopulateAttachPointsHier(self.ap_tv,
                                                    self._rigRoot))

    def SelectedAttachPoint(self):
        log.funcFileInfo()
        apIDStrs = pm.treeView(self.ap_tv, q=1, selectItem=1)
        pm.menuItem(self.remove_b, e=1, en=bool(apIDStrs))
        if not apIDStrs:
            return 
        self._selectedAPs = [self._apIDs[ID] for ID in apIDStrs]
        pm.select(self._selectedAPs)

    def AddAttachPoint(self, ignore):
        log.funcFileInfo()
        vertices = pm.ls(sl=1)
        if not vertices:
            msg = 'Please select a Vertex to create Attach Point for'
            pm.confirmDialog(   t='Attach Point Error', 
                                m=msg, 
                                icon='error', 
                                b='Ok')
        vertex = vertices[0]
        if 'MeshVertex' not in str(type(vertex)):
            msg = 'Selection must be a mesh vertex'
            pm.confirmDialog(   t='Attach Point Error', 
                                m=msg, 
                                icon='error', 
                                b='Ok')
        self.operation.AddAttachPoint(self._rigRoot, vertex)
        self.PopulateAttachPointHier()

    def RemoveAttachPoint(self, ignore):
        log.funcFileInfo()
        for attachPoint in self._selectedAPs:
            self.operation.RemoveAttachPoint(attachPoint)
        pm.menuItem(self.remove_b, e=1, en=0)
        self.PopulateAttachPointHier()

    def RenameAttachPoint(self, idStr, newName):
        log.funcFileInfo()
        oldNames = [ap.shortName() for ap in list(self._apIDs.values())]
        if newName in oldNames:
            msg = 'Every attach point name must be unique'
            log.error(msg)
            return ''
        attachPoint = self._apIDs[idStr]
        self.operation.RenameAttachPoint(attachPoint, newName)
        self.PopulateAttachPointHier()



# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
