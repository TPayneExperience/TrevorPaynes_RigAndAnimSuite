
from SceneData.AttachPoint import AttachPoint
import os

import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import AttachPoints as att
reload (att)
import Utilities.Logger as log
reload(log)
import Utilities.UI_Utilities as uiUtil
reload(uiUtil)
import Utilities.Skin_Utilities as skinUtil
reload(skinUtil)
# import Utilities.General_Utilities as genUtil
# reload(genUtil)
# import Utilities.Rig_Utilities as rigUtil
# reload(rigUtil)
# import Data.Rig_Data as rigData
# reload(rigData)

class AttachPoints_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Attach Points'
    uiOrderIndex = 110
    operation = att.AttachPoints()
    
    def __init__(self):
        self._rigRoot = None
        self._allRigRoots = None
        self._limbIDs = {}
        self._apIDs = {}
        self._selectedAPs = []

    def Setup_UI(self, rigRoot, allRigRoots):
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._selectedMesh = None
        self._selectedLimb = None
        self._selectedJoint = None
        self._selectedAPs = []
        self._isPaintingLimb = True
        self._Setup()
        self.PopulateMeshHier()
        self.PopulateLimbHier()
        self.PopulateAttachPointHier()

    def Teardown_UI(self):
        pass

#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Meshes', bv=1):
                self.mesh_tv = pm.treeView(ams=0, adr=0, arp=0,
                                            elc=self.IgnoreRename)
                pm.treeView(self.mesh_tv, e=1, scc=self.SelectedMeshes)
            with pm.frameLayout('Limbs', bv=1):
                self.limb_tv = uiUtil.SetupLimbHier(self._limbIDs)
                pm.treeView(self.limb_tv, e=1, elc=self.IgnoreRename,
                                             scc=self.SelectedLimb)
        with pm.verticalLayout():
            with pm.frameLayout('Actions', bv=1, mw=7, mh=7):
                with pm.columnLayout(adj=1, rs=5):
                    pm.button(l='Add Attach Point at selected vertex',
                                c=self.AddAttachPoint)
                    self._remove_b = pm.button(
                                l='Remove Selected Attach Point',
                                c=self.RemoveAttachPoint,
                                en=0)
            with pm.frameLayout('Attach Points Created', bv=1):
                self.ap_tv = pm.treeView(arp=0, adr=0,
                                            elc=self.RenameAttachPoint,
                                            scc=self.SelectedAttachPoint)

#=========== MESH HIER ====================================
   
    def PopulateMeshHier(self):
        log.funcFileDebug()
        pm.treeView(self.mesh_tv, e=1, removeAll=1)
        meshes = pm.listConnections(self._rigRoot.meshes, sh=1)
        self._meshes = {} # name : meshNode
        for mesh in meshes:
            if not self._selectedMesh:
                self._selectedMesh = mesh
            name = mesh.shortName()
            self._meshes[name] = mesh
            pm.treeView(self.mesh_tv, e=1, ai=(name, ''))

        # SELECT FIRST MESH
        if not meshes:
            return
        self._selectedMesh = meshes[0]
        name = self._selectedMesh.shortName()
        pm.treeView(self.mesh_tv, e=1, selectItem=(name, 1))

    def SelectedMeshes(self):
        log.funcFileInfo()
        meshIDStrs = pm.treeView(self.mesh_tv, q=1, selectItem=1)
        if not meshIDStrs:
            name = self._selectedMesh.shortName()
            pm.treeView(self.mesh_tv, e=1, selectItem=(name, 1))
            return
        self._selectedMesh = self._meshes[meshIDStrs[0]]
        self._rigRoot = pm.listConnections(self._selectedMesh.rigRoot)[0]
        self.PopulateAttachPointHier()
        self.PopulateLimbHier()

#=========== LIMB HIER ====================================
   
    def PopulateLimbHier(self):
        log.funcFileDebug()
        self._limbIDs.clear()
        self._limbIDs.update(uiUtil.PopulateLimbHierSkeletal(self.limb_tv, 
                                                self._rigRoot))

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

    def SelectedLimb(self):
        log.funcFileInfo()
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        if not limbIDStrs:
            pm.select(d=1)
            return
        limb = self._limbIDs[limbIDStrs[0]]
        self.operation.SelectedLimbs(limb)

#=========== ATTACH POINT ====================================
   
    def PopulateAttachPointHier(self):
        pm.treeView(self.ap_tv, e=1, removeAll=1)
        self._apIDs.clear()
        self._apIDs.update(uiUtil.PopulateAttachPointsHier(self.ap_tv,
                                                    self._rigRoot))

    def SelectedAttachPoint(self):
        log.funcFileInfo()
        apIDStrs = pm.treeView(self.ap_tv, q=1, selectItem=1)
        pm.button(self._remove_b, e=1, en=0)
        if not apIDStrs:
            return 
        self._selectedAPs = [self._apIDs[ID] for ID in apIDStrs]
        pm.select(self._selectedAPs)
        pm.button(self._remove_b, e=1, en=1)

    def AddAttachPoint(self, ignore):
        log.funcFileInfo()
        self.operation.AddAttachPoint(self._selectedMesh)
        self.PopulateAttachPointHier()

    def RemoveAttachPoint(self, ignore):
        log.funcFileInfo()
        for attachPoint in self._selectedAPs:
            self.operation.RemoveAttachPoint(attachPoint)
        pm.button(self._remove_b, e=1, en=0)
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
