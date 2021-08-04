
import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import PaintWeights as pnt
reload (pnt)
import Utilities.UI_Utilities as uiUtil
reload(uiUtil)
import Utilities.Logger as log
reload(log)

class PaintWeights_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Paint Weights'
    uiOrderIndex = 210
    operation = pnt.PaintWeights()
    
    def Setup_UI(self, rigRoot, allRigRoots):
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._selectedMeshes = []
        self._selectedLimb = None
        self._Setup()
        self.PopulateLimbHier()
        self.PopulateMeshHier()

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
                self.limb_tv = pm.treeView(ams=0, adr=0, arp=0, nb=1, enk=1,
                                            elc=self.IgnoreRename)
                pm.treeView(self.limb_tv, e=1, scc=self.SelectedLimb)
        with pm.verticalLayout():
            with pm.frameLayout('Brush', bv=1):
                with pm.columnLayout(adj=1, rs=7):
                    pm.button(l='Paint Brush', c=self.PaintBrush)
                    self._brushMode_rb = pm.radioButtonGrp( nrb=2, l='Brush Mode', 
                                        la2=['Add', 'Replace'], cw3=[77,44,44],
                                        sl=1, onc=self.SetMode)
                    self.val_sl = pm.floatSliderGrp( l='Value', f=1, min=0.0, 
                                        max=1.0, v=1, s=0.001,
                                        cw=((1, 50), (2, 40), (3, 60)),
                                        cc=self.SetValue)
                    self.rad_sl = pm.floatSliderGrp( l='Radius', f=1, min=0.01, 
                                        max=10.0, v=1, s=0.001, fmn=0.001, fmx=1000.0,
                                        cw=((1, 50), (2, 40), (3, 60)),
                                        cc=self.SetRadius)
                    self.soft_sl = pm.floatSliderGrp( l='Softness', f=1, min=0.01, 
                                        max=10.0, v=1, s=0.001, fmn=0.001, fmx=1000.0,
                                        cw=((1, 50), (2, 40), (3, 60)),
                                        cc=self.SetSoftness)
                    
                    pm.button(l='Flood', c=self.Flood)
            with pm.frameLayout('Joints', bv=1):
                self.joint_tv = pm.treeView(arp=0, adr=0, ams=0,
                                            elc=self.IgnoreRename)
                pm.treeView(self.joint_tv, e=1, scc=self.SelectedControl)

#=========== MESH HIER ====================================
   
    def PopulateMeshHier(self):
        log.funcFileDebug()
        pm.treeView(self.mesh_tv, e=1, removeAll=1)
        meshes = pm.listConnections(self._rigRoot.meshes)
        self._meshes = {} # name : meshNode
        for mesh in meshes:
            name = mesh.shortName()
            self._meshes[name] = mesh
            pm.treeView(self.mesh_tv, e=1, ai=(name, ''))

    def SelectedMeshes(self):
        log.funcFileInfo()
        meshIDStrs = pm.treeView(self.mesh_tv, q=1, selectItem=1)
        self.PopulateJointHier(None)
        self._selectedMeshes = []
        if not meshIDStrs:
            return
        self._selectedMeshes = [self._meshes[ID] for ID in meshIDStrs]

#=========== LIMB HIER ====================================
   
    def PopulateLimbHier(self):
        log.funcFileDebug()
        self.PopulateJointHier(None)
        self._limbIDs = uiUtil.PopulateLimbHier(self.limb_tv, 
                                                self._rigRoot,
                                                self._allRigRoots)

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

    def SelectedLimb(self):
        log.funcFileInfo()
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        self.PopulateJointHier(None)
        if not limbIDStrs:
            pm.select(d=1)
            return
        self._selectedLimb = self._limbIDs[limbIDStrs[0]]
        self.PopulateJointHier(self._selectedLimb)

#=========== BRUSH SETTINGS ====================================

    def PaintBrush(self, ignore):
        log.funcFileDebug()
        self.operation.PaintBrush()

    def Flood(self, ignore):
        log.funcFileDebug()
        mode = pm.radioButtonGrp(self._brushMode_rb, q=1, sl=1)
        weight = 1 # FIX LATER
        for mesh in self._selectedMeshes:
            if mode == 1:
                self.operation.FloodAdd(mesh, weight)
            elif mode == 2:
                self.operation.FloodReplace(mesh, weight)

    def Flood(self, ignore):
        log.funcFileDebug()
    
    def SetMode(self, ignore):
        log.funcFileDebug()
        mode = pm.radioButtonGrp(self._brushMode_rb, q=1, sl=1)
        if mode == 1:
            self.operation.SetPaintModeAdd()
        elif mode == 2:
            self.operation.SetPaintModeReplace()

    def SetValue(self, value):
        log.funcFileDebug()
        print (value)
        # pm.artUserPaintCtx(self.ctx, e=1, val=value) 

    def SetRadius(self, value):
        log.funcFileDebug()
        print (value)
        # pm.artUserPaintCtx(self.ctx, e=1, r=radius) 

    def SetSoftness(self, value):
        log.funcFileDebug()
        print (value)
        # radius = pm.floatSliderGrp(self.rad_sl, q=1, v=1)
        # softVal = pm.floatSliderGrp(self.soft_sl, q=1, v=1)
        # soft = min(softVal, radius)
        # if soft != softVal:
        #     pm.floatSliderGrp(self.soft_sl, e=1, v=soft)
        # pm.artUserPaintCtx(self.ctx, e=1, lr=soft) 

#=========== JOINT HIER ====================================

    def PopulateJointHier(self, limb):
        log.funcFileDebug()
        pm.treeView(self.joint_tv, e=1, removeAll=1)
        if not limb:
            return
        self._joints = uiUtil.PopulateJointHier(self.joint_tv, 
                                                    limb)
        
    def SelectedControl(self):
        log.funcFileDebug()
        jointIDStr = pm.treeView(self.joint_tv, q=1, selectItem=1)
        if jointIDStr:
            joint = self._joints[jointIDStr[0]]
            # control = pm.listConnections(group.control)[0]
            # log.info('\t"%s"'% control)
            # pm.select(control)
        # else:
        #     pm.select(d=1)

            
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
