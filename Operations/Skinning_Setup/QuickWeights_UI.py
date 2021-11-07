
import os

import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
import Operations.Skinning_Setup.QuickWeights as qck
import Utilities.Logger as log
import Utilities.UI_Utilities as uiUtil
import Utilities.Skin_Utilities as skinUtil
import Utilities.General_Utilities as genUtil

class QuickWeights_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Quick Weights'
    uiOrderIndex = 210
    operation = qck.QuickWeights()
    
    def __init__(self):
        self._rigRoot = None
        self._allRigRoots = []
        self._limbIDs = {}
        self._meshVertNeighbors = {} # mesh : vertNeighbors{}

    def Setup_UI(self, rigRoot, allRigRoots, pfrsUI):
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._meshVertNeighbors.clear()
        self._selectedMesh = None
        self._selectedLimbs = []
        self.operation._paintWeightsOp.bhvMng = self.operation.bhvMng
        for mesh in pm.listConnections(rigRoot.meshes, sh=1):
            vertNeighbors = self.operation.GetVertNeighbors(mesh)
            self._meshVertNeighbors[mesh] = vertNeighbors

        self._Setup()
        self.PopulateMeshHier()
        self.PopulateLimbHier()
        self.operation.SetupDisplay()
        self.UpdateDisplay()
        self._UpdateSurfaceCrawlButton()
        self.operation.StorePositionData(rigRoot)
        self.operation.Setup_AnimJoints(self._rigRoot)

    def Teardown_UI(self):
        pm.select(self._selectedMesh)
        self.operation.TeardownDisplay()
        if pm.checkBox(self.useJointAnim_cb, q=1, v=1):
            self.operation.Teardown_AnimJoints(self._rigRoot)

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
            with pm.frameLayout('Options', bv=1, mw=7, mh=7):
                with pm.columnLayout(adj=1, rs=5):
                    self._brushMode_rb = pm.radioButtonGrp( nrb=3, 
                                        l='Display Mode: ', 
                                        la3=['Limb', 'Joint', 'Both'], 
                                        cw4=[77,44,44, 44],
                                        sl=1, onc=self.UpdateDisplayMode)
                    pm.separator()
                    self.useJointAnim_cb = pm.checkBox(
                                                l='Use Joint Animations', 
                                                cc=self.SetUseJointAnim)
            with pm.frameLayout('LIMB Mask Actions', bv=1, mw=7, mh=7):
                with pm.columnLayout(adj=1, rs=5):
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
                with pm.columnLayout(adj=1, rs=5):
                    pm.button(l='Apply Closest Joint Mask', c=self.ApplyJointMask)
                    msg = 'Skip Last Joint (Chain Limbs Only)'
                    self.skipLast_cb = pm.checkBox(l=msg, v=1)
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
        useJointAnim = config['paintWeightsUseJointAnim']   
        pm.checkBox(self.useJointAnim_cb, e=1, v=useJointAnim)

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
        self.operation.TeardownDisplay()
        self._selectedMesh = self._meshes[meshIDStrs[0]]
        pm.select(self._selectedMesh)
        self.operation.SetupDisplay()
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
        self.SelectedLimb()

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

        if not pm.checkBox(self.useJointAnim_cb, q=1, v=1):
            return
        joints = []
        for limb in self._selectedLimbs:
            joints += pm.listConnections(limb.joints)
        self.operation.SetTimeRange(joints)

#=========== OPTIONS ====================================

    def UpdateDisplayMode(self, _):
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

    def SetUseJointAnim(self, value):
        log.funcFileDebug()
        filePath = self.GetConfigFilePath()
        config = genUtil.Json.Load(filePath)
        config['paintWeightsUseJointAnim'] = value
        genUtil.Json.Save(filePath, config)
        if value:
            self.operation.Setup_AnimJoints(self._rigRoot)
            joints = []
            for limb in self._selectedLimbs:
                joints += pm.listConnections(limb.joints)
            self.operation.SetTimeRange(joints)
        else:
            self.operation.Teardown_AnimJoints(self._rigRoot)

#=========== LIMB ACTIONS ====================================

    def ApplyLimbMaskSurfaceCrawl(self, _):
        log.funcFileInfo()

        # PROGRESS BAR START
        progressBar = pm.mel.eval('$tmp = $gMainProgressBar')
        pm.progressBar(progressBar, e=1, beginProgress=1, max=100, 
                                        st='Limb Surface Mask Crawl...')
        totalSteps = len(self._selectedLimbs) + 1
        step = 1

        vertNeighbors = self._meshVertNeighbors[self._selectedMesh]
        for limb in self._selectedLimbs:
            # PROGRESS BAR STEP
            progress = int(100*(float(step)/totalSteps))
            pm.progressBar(progressBar, e=1, pr=progress)
            step += 1
            self.operation.ApplyLimbMaskCrawl(self._selectedMesh, 
                                              vertNeighbors,
                                              limb)
            
        # PROGRESS BAR END
        pm.progressBar(progressBar, e=1, pr=95)
        self.operation.UpdateMeshWeights(self._rigRoot, self._selectedMesh)
        pm.progressBar(progressBar, e=1, endProgress=1)

        mode = pm.radioButtonGrp(self._brushMode_rb, q=1, sl=1)
        if mode == 2: # joint
            pm.radioButtonGrp(self._brushMode_rb, e=1, sl=1)
        self.UpdateDisplay()

    def UpdateLimbMaskRadius(self, value):
        filePath = self.GetConfigFilePath()
        config = genUtil.Json.Load(filePath)   
        config['quickWeightsLimbMaskRadius'] = value
        genUtil.Json.Save(filePath, config)

    def ApplyLimbMaskRadius(self, _):
        log.funcFileInfo()
        radius = pm.floatFieldGrp(self.limbRadius_ff, q=1, v1=1)
        filePath = self.GetConfigFilePath()
        config = genUtil.Json.Load(filePath)   
        midpoints = config['quickWeightsLimbMaskMidpoints']

        # PROGRESS BAR START
        progressBar = pm.mel.eval('$tmp = $gMainProgressBar')
        pm.progressBar(progressBar, e=1, beginProgress=1, max=100, 
                                        st='Limb Mask Radius...')
        totalSteps = len(self._selectedLimbs) + 1
        step = 1

        for limb in self._selectedLimbs:
            # PROGRESS BAR STEP
            progress = int(100*(float(step)/totalSteps))
            pm.progressBar(progressBar, e=1, pr=progress)
            step += 1
            
            self.operation.ApplyLimbMaskRadius(self._selectedMesh, 
                                        limb,
                                        radius,
                                        midpoints)
        # PROGRESS BAR END
        pm.progressBar(progressBar, e=1, pr=95)
        self.operation.UpdateMeshWeights(self._rigRoot, self._selectedMesh)
        pm.progressBar(progressBar, e=1, endProgress=1)

        mode = pm.radioButtonGrp(self._brushMode_rb, q=1, sl=1)
        if mode == 2: # joint
            pm.radioButtonGrp(self._brushMode_rb, e=1, sl=1)
        self.UpdateDisplay()

    def ApplyLimbMaskSoften(self, _):
        softenSteps =  pm.intSliderGrp(self._softenLimb_is, q=1, v=1)
        vertNeighbors = self._meshVertNeighbors[self._selectedMesh]

        # PROGRESS BAR START
        progressBar = pm.mel.eval('$tmp = $gMainProgressBar')
        pm.progressBar(progressBar, e=1, beginProgress=1, max=100, 
                                        st='Softening Limb Masks...')
        totalSteps = len(self._selectedLimbs) + 1
        step = 1
        for limb in self._selectedLimbs:
            # PROGRESS BAR STEP
            progress = int(100*(float(step)/totalSteps))
            pm.progressBar(progressBar, e=1, pr=progress)
            step += 1

            self.operation.ApplyLimbMaskSoften( self._selectedMesh, 
                                                vertNeighbors,
                                                limb, 
                                                softenSteps)
                                                
        # PROGRESS BAR END
        pm.progressBar(progressBar, e=1, pr=95)
        self.operation.UpdateMeshWeights(self._rigRoot, self._selectedMesh)
        pm.progressBar(progressBar, e=1, endProgress=1)

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

    def ApplyJointMask(self, _):
        skipLast = pm.checkBox(self.skipLast_cb, q=1, v=1)

        # PROGRESS BAR START
        progressBar = pm.mel.eval('$tmp = $gMainProgressBar')
        pm.progressBar(progressBar, e=1, beginProgress=1, max=100, 
                                        st='Applying Joint Masks...')
        totalSteps = len(self._selectedLimbs) + 1
        step = 1
        for limb in self._selectedLimbs:
            # PROGRESS BAR STEP
            progress = int(100*(float(step)/totalSteps))
            pm.progressBar(progressBar, e=1, pr=progress)
            step += 1

            limbType = limb.limbType.get()
            if limbType in (1, 2): # branch
                self.operation.ApplyClosestBranchJoint( self._selectedMesh,
                                                        limb)
            if limbType in (3, 4): # chain
                self.operation.ApplyClosestChainJoint( self._selectedMesh,
                                                        limb,
                                                        skipLast)
        # PROGRESS BAR END
        pm.progressBar(progressBar, e=1, pr=95)
        self.operation.UpdateMeshWeights(self._rigRoot, self._selectedMesh)
        pm.progressBar(progressBar, e=1, endProgress=1)
        
        mode = pm.radioButtonGrp(self._brushMode_rb, q=1, sl=1)
        if mode == 1: # joint
            pm.radioButtonGrp(self._brushMode_rb, e=1, sl=2)
        self.UpdateDisplay()

    def ApplyJointMaskSoften(self, _):
        softenSteps = pm.intSliderGrp(self._softenJoint_is, q=1, v=1)
        vertNeighbors = self._meshVertNeighbors[self._selectedMesh]

        # PROGRESS BAR START
        progressBar = pm.mel.eval('$tmp = $gMainProgressBar')
        pm.progressBar(progressBar, e=1, beginProgress=1, max=100, 
                                        st='Softening Joint Masks...')
        totalSteps = len(self._selectedLimbs) + 1
        step = 1
        for limb in self._selectedLimbs:
            # PROGRESS BAR STEP
            progress = int(100*(float(step)/totalSteps))
            pm.progressBar(progressBar, e=1, pr=progress)
            step += 1
            self.operation.ApplyJointMaskSoften( self._selectedMesh, 
                                                vertNeighbors,
                                                limb, 
                                                softenSteps)
        
        # PROGRESS BAR END
        pm.progressBar(progressBar, e=1, pr=95)
        self.operation.UpdateMeshWeights(self._rigRoot, self._selectedMesh)
        pm.progressBar(progressBar, e=1, endProgress=1)

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

    def ProgressBarUI(self):
        form = pm.setParent(q=True)
        with pm.columnLayout(adj=1, p=form) as cl:
            self.progressBar_pb = pm.progressBar(w=300)
        pm.formLayout(form, e=1, w=300, h=44,
                        attachForm=[(cl, 'top', 5),
                                    (cl, 'left', 5), 
                                    (cl, 'right', 5), 
                                    (cl, 'bottom', 5)])
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
