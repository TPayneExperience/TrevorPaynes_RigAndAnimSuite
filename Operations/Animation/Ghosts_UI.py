

import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
import Operations.Animation.Ghosts as gst
import Utilities.Logger as log

class Ghost_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Ghosts'
    uiOrderIndex = 410
    operation = gst.Ghosts()
    
    def __init__(self):
        self._rigRoot = None
        self._allRigRoots = []
        self._rigRootIDs = dict()
        self._ghostIDs = dict() # ghostID : ghost
        self.ghostMtr_ui = list()

    def Setup_UI(self, rigRoot, allRigRoots, pfrsUI):
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self.ghostMtr_ui = list()
        self._Setup()
        self.PopulateRigRootHier()
        self.PopulateGhostHier()
        self.PopulateGhostMaterials()

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
                    pm.menuItem(l='Add Ghost', 
                                            c=self.AddGhost)
            with pm.frameLayout('Ghosts', bv=1):
                self.ghost_tv = pm.treeView(arp=0, adr=0,
                                            elc=self.RenameGhost,
                                            scc=self.SelectedGhost)
                with pm.popupMenu():
                    self.remove_b = pm.menuItem(l='Remove Ghost(s)', 
                                                    c=self.RemoveGhost,
                                                    en=0)
        with pm.verticalLayout():
            with pm.frameLayout('Ghost Materials', bv=1, mw=7, mh=7):
                with pm.columnLayout(adj=1, rs=5) as self.gm_l:
                    pass

# =========== RIG ROOT HIER ====================================
   
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
        self.PopulateGhostHier()
        self.PopulateGhostMaterials()

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

# =========== GHOSTS ====================================
   
    def PopulateGhostHier(self):
        pm.treeView(self.ghost_tv, e=1, removeAll=1)
        self._ghostIDs.clear()
        group = pm.listConnections(self._rigRoot.ghosts)[0]
        ghosts = pm.listRelatives(group, c=1)
        rigRootID = self._rigRoot.ID.get()
        for ghost in ghosts:
            ghostID = '%d_%d' % (rigRootID, ghost.ID.get())
            name = ghost.shortName()
            pm.treeView(self.ghost_tv, e=1, addItem=(ghostID, ''))
            pm.treeView(self.ghost_tv, e=1, displayLabel=(ghostID, name))
            self._ghostIDs[ghostID] = ghost

    def SelectedGhost(self):
        log.funcFileInfo()
        ghostIDStrs = pm.treeView(self.ghost_tv, q=1, selectItem=1)
        pm.menuItem(self.remove_b, e=1, en=bool(ghostIDStrs))
        if not ghostIDStrs:
            return 
        self._selectedGhosts = [self._ghostIDs[ID] for ID in ghostIDStrs]
        pm.select(self._selectedGhosts)

    def AddGhost(self, ignore):
        log.funcFileInfo()
        self.operation.AddGhost(self._rigRoot)
        self.PopulateGhostHier()
        self.PopulateGhostMaterials()

    def RemoveGhost(self, ignore):
        log.funcFileInfo()
        for ghost in self._selectedGhosts:
            self.operation.RemoveGhost(ghost)
        pm.menuItem(self.remove_b, e=1, en=0)
        self.PopulateGhostHier()
        self.PopulateGhostMaterials()

    def RenameGhost(self, idStr, newName):
        log.funcFileInfo()
        oldNames = [g.shortName() for g in list(self._ghostIDs.values())]
        if newName in oldNames:
            msg = 'Every ghost name must be unique'
            log.error(msg)
            return ''
        ghost = self._ghostIDs[idStr]
        self.operation.RenameGhost(ghost, newName)
        self.PopulateGhostHier()
        self.PopulateGhostMaterials()

# =========== MATERIALS ====================================

    def PopulateGhostMaterials(self):
        if self.ghostMtr_ui:
            pm.evalDeferred('import pymel.core as pm')
            for ui in self.ghostMtr_ui:
                pm.evalDeferred('pm.deleteUI("' + ui + '")')
        self.ghostMtr_ui = list()
        if not self._rigRoot:
            return
        group = pm.listConnections(self._rigRoot.ghosts)[0]
        ghosts = pm.listRelatives(group, c=1)
        for ghost in ghosts:
            sgL = pm.listConnections(ghost.ghostMtr)[0]
            mtrL = pm.listConnections(sgL.surfaceShader)[0]
            ui1 = pm.attrColorSliderGrp(l='%s Color' % ghost, 
                                    cw4=(99,44,22,22),
                                    at=mtrL.color,
                                    p=self.gm_l)
            ui2 = pm.attrColorSliderGrp(l='Transparency', 
                                    cw4=(77,11,55,22),
                                    at=mtrL.transparency,
                                    p=self.gm_l)
            self.ghostMtr_ui.append(ui1)
            self.ghostMtr_ui.append(ui2)



# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
