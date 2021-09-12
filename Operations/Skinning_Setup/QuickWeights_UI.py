
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
import Utilities.General_Utilities as genUtil
reload(genUtil)
# import Utilities.Rig_Utilities as rigUtil
# reload(rigUtil)
# import Data.Rig_Data as rigData
# reload(rigData)

class QuickWeights_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Quick Weights'
    uiOrderIndex = 210
    operation = qck.QuickWeights()
    
    def __init__(self):
        self._rigRoot = None
        self._allRigRoots = None
        self._limbIDs = {}

    def Setup_UI(self, rigRoot, allRigRoots):
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._selectedMesh = None
        self._selectedLimbs = []

        self._Setup()
        self.PopulateLimbHier()
        self.PopulateMeshHier()
        self.operation.SetupDisplay()
        self.UpdateDisplay()
        self._UpdateSurfaceCrawlButton()
        self.operation.StorePositionData(rigRoot)

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
                self.limb_tv = uiUtil.SetupLimbHier(self._limbIDs)
                pm.treeView(self.limb_tv, e=1, ams=1, 
                                            elc=self.IgnoreRename,
                                            scc=self.SelectedLimb)
        with pm.verticalLayout():
            with pm.frameLayout('LIMB Mask Actions', bv=1, mw=7, mh=7):
                with pm.columnLayout(adj=1, rs=7):
                    self._brushMode_rb = pm.radioButtonGrp( nrb=3, 
                                        l='Display Mode: ', 
                                        la3=['Limb', 'Joint', 'Both'], 
                                        cw4=[77,44,44, 44],
                                        sl=1, onc=self.UpdateDisplayMode)
                    pm.separator()
                    self._surface_b = pm.button(l='Apply Surface Crawl Limb Mask', 
                                        c=self.ApplyLimbMaskSurfaceCrawl)
                    pm.separator()
                    self.limbRadius_ff = pm.floatFieldGrp(  nf=1, 
                                                            l='Radius', 
                                                            v1=1,
                                                            cc=self.UpdateLimbMaskRadius)
                    pm.button(l='Apply Limb Radius Mask', c=self.ApplyLimbMaskRadius)
                    pm.separator()
                    with pm.rowLayout(adj=1, nc=2):
                        self._softenLimb_is = pm.intSliderGrp(l='Soften Steps', 
                                        f=1, v=1, 
                                        cw3=(70, 30, 60),
                                        min=1, max=5)
                        pm.button(l='Soften', c=self.ApplyLimbMaskSoften)

            with pm.frameLayout('JOINT Mask Actions', bv=1, mw=7, mh=7):
                with pm.columnLayout(adj=1, rs=7):
                    pm.button(l='Apply Closest Joint Mask', c=self.ApplyJointMask)
                    msg = 'Skip Last Joint (Chain Limbs Only)'
                    self.skipLast_cb = pm.checkBox(l=msg, v=1)
                    pm.separator()
                    with pm.rowLayout(adj=1, nc=2):
                        self._softenJoint_is =  pm.intSliderGrp(l='Soften Steps', 
                                        f=1, v=1, 
                                        cw3=(70, 30, 60),
                                        min=1, max=5)
                        pm.button(l='Soften', c=self.ApplyJointMaskSoften)

        filePath = self.GetConfigFilePath()
        config = genUtil.Json.Load(filePath)   
        mode = config['quickWeightsDisplayMode']
        pm.radioButtonGrp(self._brushMode_rb, e=1, sl=mode)
        radius = config['quickWeightsLimbMaskRadius']
        pm.floatFieldGrp(self.limbRadius_ff, e=1, v1=radius)

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
        self.operation.SetMesh(self._selectedMesh)

    def SelectedMeshes(self):
        log.funcFileInfo()
        meshIDStrs = pm.treeView(self.mesh_tv, q=1, selectItem=1)
        if not meshIDStrs:
            name = self._selectedMesh.shortName()
            pm.treeView(self.mesh_tv, e=1, selectItem=(name, 1))
            return
        self._selectedMesh = self._meshes[meshIDStrs[0]]
        self.UpdateDisplay()

#=========== LIMB HIER ====================================
   
    def PopulateLimbHier(self):
        log.funcFileDebug()
        self._limbIDs.clear()
        self._limbIDs.update(uiUtil.PopulateLimbHierSkeletal(self.limb_tv, 
                                                self._rigRoot))
        limbs = skinUtil.GetSkeletalLimbOrder(list(self._limbIDs.values()))
        self._selectedLimbs = [limbs[0]]
        rigRootID = self._rigRoot.ID.get()
        limbID = '%d_%d' % (rigRootID, limbs[0].ID.get())
        pm.treeView(self.limb_tv, e=1, selectItem=(limbID, 1))
        self.operation.SetLimb(self._selectedLimbs[0])

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

    def SelectedLimb(self):
        log.funcFileInfo()
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        if not limbIDStrs:
            limb = self._selectedLimbs[0]
            rigRootID = self._rigRoot.ID.get()
            limbID = '%d_%d' % (rigRootID, limb.ID.get())
            pm.treeView(self.limb_tv, e=1, selectItem=(limbID, 1))
            return
        self._selectedLimbs = [self._limbIDs[ID] for ID in limbIDStrs]
        self.operation.SetLimb(self._selectedLimbs[0])
        self.UpdateDisplay()
        self._UpdateSurfaceCrawlButton()

#=========== DISPLAY ====================================

    def UpdateDisplayMode(self, ignore):
        mode = pm.radioButtonGrp(self._brushMode_rb, q=1, sl=1)
        filePath = self.GetConfigFilePath()
        config = genUtil.Json.Load(filePath)   
        config['quickWeightsDisplayMode'] = mode
        genUtil.Json.Save(filePath, config)
        self.UpdateDisplay()

    def UpdateDisplay(self):
        mode = pm.radioButtonGrp(self._brushMode_rb, q=1, sl=1)
        if mode == 1:
            self.operation.DisplayLimbVertexColors()
        elif mode == 2:
            self.operation.DisplayJointVertexColors(self._selectedMesh,
                                                    self._selectedLimbs[0])
        else:
            self.operation.DisplayLimbJointVertexColors(self._selectedMesh,
                                                    self._selectedLimbs[0])

#=========== LIMB ACTIONS ====================================

    def ApplyLimbMaskSurfaceCrawl(self, ignore):
        log.funcFileInfo()
        for limb in self._selectedLimbs:
            self.operation.ApplyLimbMaskCrawl(self._selectedMesh, limb)
        self.operation.UpdateLimbWeights(self._selectedMesh, 
                                        self._selectedLimbs[0])
        mode = pm.radioButtonGrp(self._brushMode_rb, q=1, sl=1)
        if mode == 2: # joint
            pm.radioButtonGrp(self._brushMode_rb, e=1, sl=1)
        self.UpdateDisplay()

    def UpdateLimbMaskRadius(self, value):
        filePath = self.GetConfigFilePath()
        config = genUtil.Json.Load(filePath)   
        config['quickWeightsLimbMaskRadius'] = value
        genUtil.Json.Save(filePath, config)

    def ApplyLimbMaskRadius(self, ignore):
        log.funcFileInfo()
        radius = pm.floatFieldGrp(self.limbRadius_ff, q=1, v1=1)
        filePath = self.GetConfigFilePath()
        config = genUtil.Json.Load(filePath)   
        midpoints = config['quickWeightsLimbMaskMidpoints']
        for limb in self._selectedLimbs:
            self.operation.ApplyLimbMaskRadius(self._selectedMesh, 
                                        limb,
                                        radius,
                                        midpoints)
        self.operation.UpdateLimbWeights(self._selectedMesh, 
                                        self._selectedLimbs[0])
        mode = pm.radioButtonGrp(self._brushMode_rb, q=1, sl=1)
        if mode == 2: # joint
            pm.radioButtonGrp(self._brushMode_rb, e=1, sl=1)
        self.UpdateDisplay()

    def ApplyLimbMaskSoften(self, ignore):
        softenSteps =  pm.intSliderGrp(self._softenLimb_is, q=1, v=1)
        for limb in self._selectedLimbs:
            self.operation.ApplyLimbMaskSoften( self._selectedMesh, 
                                                limb, 
                                                softenSteps)
        self.operation.UpdateLimbWeights(self._selectedMesh, 
                                        self._selectedLimbs[0])
        mode = pm.radioButtonGrp(self._brushMode_rb, q=1, sl=1)
        if mode == 2: # joint
            pm.radioButtonGrp(self._brushMode_rb, e=1, sl=1)
        self.UpdateDisplay()

    def _UpdateSurfaceCrawlButton(self):
        enableBtn = True
        enableCb = False
        for limb in self._selectedLimbs:
            if limb.limbType.get() in (3, 4): # Chains
                enableCb = True
            if limb.limbType.get() not in (3, 4): # Chains
                enableBtn = False
        pm.button(self._surface_b, e=1, en=enableBtn)
        pm.checkBox(self.skipLast_cb, e=1, en=enableCb)

#=========== JOINT ACTIONS ====================================

    def ApplyJointMask(self, ignore):
        skipLast = pm.checkBox(self.skipLast_cb, q=1, v=1)
        for limb in self._selectedLimbs:
            limbType = limb.limbType.get()
            if limbType in (1, 2): # branch
                self.operation.ApplyClosestBranchJoint( self._selectedMesh,
                                                        limb)
            if limbType in (3, 4): # chain
                self.operation.ApplyClosestChainJoint( self._selectedMesh,
                                                        limb,
                                                        skipLast)
        self.operation.UpdateLimbWeights(self._selectedMesh, 
                                        self._selectedLimbs[0])
        mode = pm.radioButtonGrp(self._brushMode_rb, q=1, sl=1)
        if mode == 1: # joint
            pm.radioButtonGrp(self._brushMode_rb, e=1, sl=2)
        self.UpdateDisplay()

    def ApplyJointMaskSoften(self, ignore):
        softenSteps = pm.intSliderGrp(self._softenJoint_is, q=1, v=1)
        for limb in self._selectedLimbs:
            self.operation.ApplyJointMaskSoften( self._selectedMesh, 
                                                limb, 
                                                softenSteps)
        self.operation.UpdateLimbWeights(self._selectedMesh, 
                                        self._selectedLimbs[0])
        mode = pm.radioButtonGrp(self._brushMode_rb, q=1, sl=1)
        if mode == 1: # limb
            pm.radioButtonGrp(self._brushMode_rb, e=1, sl=2)
        self.UpdateDisplay()

#=========== MISC ====================================

    def GetConfigFilePath(self):
        folder = os.path.dirname(__file__)
        folder = os.path.dirname(folder)
        folder = os.path.dirname(folder)
        folder = os.path.join(folder, 'Data')
        return os.path.join(folder, 'Config.json')



# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
