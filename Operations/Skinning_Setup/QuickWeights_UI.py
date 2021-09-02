
import os

import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import QuickWeights as qck
reload (qck)
import Utilities.Logger as log
reload(log)
import Utilities.UI_Utilities as uiUtil
reload(uiUtil)
import Utilities.Skin_Utilities as skinUtil
reload(skinUtil)
# import Utilities.Rig_Utilities as rigUtil
# reload(rigUtil)
# import Utilities.General_Utilities as genUtil
# reload(genUtil)
# import Data.Rig_Data as rigData
# reload(rigData)

class QuickWeights_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Quick Weights'
    uiOrderIndex = 210
    operation = qck.QuickWeights()
    
    def Setup_UI(self, rigRoot, allRigRoots):
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._selectedMesh = None
        self._selectedLimb = None

        self._Setup()
        self.PopulateLimbHier()
        self.PopulateMeshHier()
        self.operation.SetupDisplay()
        self.operation.DisplayLimb(self._selectedMesh, self._selectedLimb)

    def Teardown_UI(self):
        self.operation.TeardownDisplay()
        # if self._isBrushOn:
        #     self.ToggleBrush(1)

#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Meshes', bv=1):
                self.mesh_tv = pm.treeView(ams=0, adr=0, arp=0,
                                            elc=self.IgnoreRename)
                pm.treeView(self.mesh_tv, e=1, scc=self.SelectedMeshes)
            with pm.frameLayout('Limbs', bv=1):
                self.limb_tv = pm.treeView(ams=0, adr=0, arp=0, nb=1, enk=1,
                                            elc=self.IgnoreRename)
                pm.treeView(self.limb_tv, e=1, scc=self.SelectedLimb)
        with pm.verticalLayout():
            with pm.frameLayout('LIMB Mask Actions', bv=1, mw=7, mh=7):
                with pm.columnLayout(adj=1, rs=7):
                    pm.button(l='Surface Crawl', c=self.LimbMaskSurfaceCrawl)
                    pm.button(l='Closes Influence')
                    with pm.rowLayout(adj=1, nc=2):
                        pm.intSliderGrp(l='Soften Steps', f=1, v=1, 
                                        cw3=(70, 30, 60),
                                        min=1, max=5)
                        pm.button(l='Apply')

            with pm.frameLayout('JOINT Mask Actions', bv=1, mw=7, mh=7):
                with pm.columnLayout(adj=1, rs=7):
                    pm.button(l='Closes Influence')
                    with pm.rowLayout(adj=1, nc=2):
                        pm.intSliderGrp(l='Soften Steps', f=1, v=1, 
                                        cw3=(70, 30, 60),
                                        min=1, max=5)
                        pm.button(l='Apply')

#=========== MESH HIER ====================================
   
    def PopulateMeshHier(self):
        log.funcFileDebug()
        pm.treeView(self.mesh_tv, e=1, removeAll=1)
        meshes = pm.listConnections(self._rigRoot.meshes, sh=1)
        self._meshes = {} # name : meshNode
        for mesh in meshes:
            if not self._selectedMesh:
                self._selectedMesh = mesh
                pm.select(mesh)
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
        self.operation.DisplayLimb(self._selectedMesh, self._selectedLimb)


#=========== LIMB HIER ====================================
   
    def PopulateLimbHier(self):
        log.funcFileDebug()
        self._limbIDs = uiUtil.PopulateLimbHierSkeletal(self.limb_tv, 
                                                self._rigRoot)
        limbs = skinUtil.GetSkeletalLimbOrder(list(self._limbIDs.values()))
        self._selectedLimb = limbs[0]
        limbID = self._selectedLimb.ID.get()
        pm.treeView(self.limb_tv, e=1, selectItem=(limbID, 1))

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

    def SelectedLimb(self):
        log.funcFileInfo()
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        if not limbIDStrs:
            limbID = self._selectedLimb.ID.get()
            pm.treeView(self.limb_tv, e=1, selectItem=(limbID, 1))
            return
        self._selectedLimb = self._limbIDs[limbIDStrs[0]]
        self.operation.DisplayLimb(self._selectedMesh, self._selectedLimb)

    def LimbMaskSurfaceCrawl(self, ignore):
        log.funcFileInfo()
        self.operation.LimbMaskCrawl(   self._rigRoot,
                                        self._selectedMesh, 
                                        self._selectedLimb)
        self.operation.DisplayLimb(self._selectedMesh, self._selectedLimb)


#=========== ACTIONS ====================================




# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
