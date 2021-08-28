
import os

import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import PaintWeights as pnt
reload (pnt)
import Utilities.UI_Utilities as uiUtil
reload(uiUtil)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import Utilities.Logger as log
reload(log)
import Utilities.General_Utilities as genUtil
reload(genUtil)
import Data.Rig_Data as rigData
reload(rigData)
import Utilities.Skin_Utilities as skinUtil
reload(skinUtil)

class PaintWeights_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Paint Weights'
    uiOrderIndex = 210
    operation = pnt.PaintWeights()
    
    def Setup_UI(self, rigRoot, allRigRoots):
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._selectedMesh = None
        self._selectedLimb = None
        self._selectedJoint = None
        self._isBrushOn = False
        self._isBrushSet = False
        self._isPaintingLimb = True
        self._Setup()
        self.PopulateLimbHier()
        self.PopulateMeshHier()

    def Teardown_UI(self):
        if self._isBrushOn:
            self.ToggleBrush(1)

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
                with pm.columnLayout(adj=1, rs=7, co=('both', 5)):
                    self.useJointAnim_cb = pm.checkBox(l='Use Joint Animations', 
                                                        cc=self.SetUseJointAnim)
                    self.brush_btn = pm.button(l='Paint Brush OFF: Move Controls', 
                                                        c=self.ToggleBrush)
                    with pm.columnLayout(adj=1, rs=7, en=0) as self.buttons_l:
                        self._brushMode_rb = pm.radioButtonGrp( nrb=2, l='Brush Mode', 
                                            la2=['Add', 'Replace'], cw3=[77,44,44],
                                            sl=1, onc=self.SetMode)
                        self.value_sl = pm.floatSliderGrp( l='Value', f=1, min=0.0, 
                                            max=1.0, s=0.001,
                                            cw=((1, 50), (2, 40), (3, 60)),
                                            cc=self.SetValue)
                        self.radius_sl = pm.floatSliderGrp( l='Radius', f=1, min=0.01, 
                                            max=10.0, s=0.001, fmn=0.001, fmx=1000.0,
                                            cw=((1, 50), (2, 40), (3, 60)), 
                                            cc=self.SetRadius)
                        self.softness_sl = pm.floatSliderGrp( l='Softness', f=1, min=0.01, 
                                            max=10.0, s=0.001, fmn=0.001, fmx=1000.0,
                                            cw=((1, 50), (2, 40), (3, 60)),
                                            cc=self.SetSoftness)
                        pm.button(l='Flood', c=self.Flood)

                    # Apply User Settings
                    filePath = self.GetConfigFilePath()
                    config = genUtil.Json.Load(filePath)      
                    mode = config['paintWeightsMode']   
                    pm.radioButtonGrp(self._brushMode_rb, e=1, sl=mode)
                    useJointAnim = config['paintWeightsUseJointAnim']   
                    pm.checkBox(self.useJointAnim_cb, e=1, v=useJointAnim)
                    self._UpdateBrushSettings()

            with pm.frameLayout('Joints', bv=1):
                self.joint_tv = pm.treeView(arp=0, adr=0, ams=0,
                                            elc=self.IgnoreRename)
                pm.treeView(self.joint_tv, e=1, scc=self.SelectedJoint)

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
        self.UpdateTool()
        self.operation.SetMesh(self._selectedMesh)

    def SelectedMeshes(self):
        log.funcFileInfo()
        meshIDStrs = pm.treeView(self.mesh_tv, q=1, selectItem=1)
        if not meshIDStrs:
            name = self._selectedMesh.shortName()
            pm.treeView(self.mesh_tv, e=1, selectItem=(name, 1))
            self.UpdateTool()
            return
        self._selectedMesh = self._meshes[meshIDStrs[0]]
        self.UpdateTool()
        self.operation.SetMesh(self._selectedMesh)

#=========== LIMB HIER ====================================
   
    def PopulateLimbHier(self):
        log.funcFileDebug()
        self._limbIDs = uiUtil.PopulateLimbHierSkeletal(self.limb_tv, 
                                                self._rigRoot)
        limbs = skinUtil.GetSkeletalLimbOrder(list(self._limbIDs.values()))
        self._selectedLimb = limbs[0]
        limbID = self._selectedLimb.ID.get()
        pm.treeView(self.limb_tv, e=1, selectItem=(limbID, 1))
        self.SelectedLimb()
        self.PopulateJointHier(self._selectedLimb)

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

    def SelectedLimb(self):
        log.funcFileInfo()
        self._isPaintingLimb = True
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        if not limbIDStrs:
            limbID = self._selectedLimb.ID.get()
            pm.treeView(self.limb_tv, e=1, selectItem=(limbID, 1))
            self.UpdateTool()
            return
        self._selectedLimb = self._limbIDs[limbIDStrs[0]]
        self.operation.SetLimb(self._rigRoot, self._selectedLimb)
        self.UpdateTool()
        self.PopulateJointHier(self._selectedLimb)

        if not self._isBrushOn:
            return

        # Display
        mode = self._GetMode()
        value = self._GetValue()
        radius = self._GetRadius()
        softness = self._GetSoftness()
        self.operation.PaintBrushOn_Limbs(mode, value, radius, softness)
        if self._selectedMesh:
            pm.select(self._selectedMesh)
            self.operation.DisplayLimbVertexColors()

        # Anim Joints
        if not pm.checkBox(self.useJointAnim_cb, q=1, v=1):
            return
        joints = pm.listConnections(self._selectedLimb.joints)
        self.operation.SetTimeRange(joints)

#=========== BRUSH SETTINGS ====================================

    def _GetMode(self):
        return pm.radioButtonGrp(self._brushMode_rb, q=1, sl=1)

    def _GetValue(self):
        return pm.floatSliderGrp(self.value_sl, q=1, v=1)

    def _GetRadius(self):
        return pm.floatSliderGrp(self.radius_sl, q=1, v=1)

    def _GetSoftness(self):
        return pm.floatSliderGrp(self.softness_sl, q=1, v=1)

    def _UpdateBrushSettings(self):
        filePath = self.GetConfigFilePath()
        config = genUtil.Json.Load(filePath)      
        mode = config['paintWeightsMode']
        if mode == 1:
            value = config['paintWeightsAddValue']  
            radius = config['paintWeightsAddRadius']    
            softness = config['paintWeightsAddSoftness']     
        else: 
            value = config['paintWeightsReplaceValue']   
            radius = config['paintWeightsReplaceRadius']    
            softness = config['paintWeightsReplaceSoftness']     
        pm.floatSliderGrp(self.value_sl, e=1, v=value)
        pm.floatSliderGrp(self.radius_sl, e=1, v=radius)
        pm.floatSliderGrp(self.softness_sl, e=1, v=softness)
        if self.operation.ctx:
            self.operation.SetValue(value)
            self.operation.SetRadius(radius)
            self.operation.SetSoftness(softness)

    def ToggleBrush(self, ignore):
        log.funcFileDebug()
        if self._isBrushOn:
            pm.button(self.brush_btn, e=1, l='Paint Brush OFF: Move Controls')
            pm.columnLayout(self.buttons_l, e=1, en=0)
            self.operation.PaintBrushOff()
            pm.checkBox(self.useJointAnim_cb, e=1, en=1)
            if pm.checkBox(self.useJointAnim_cb, q=1, v=1):
                self.operation.Teardown_AnimJoints(self._rigRoot)
        else:
            pm.button(self.brush_btn, e=1, l='Paint Brush ON: Paint')
            pm.columnLayout(self.buttons_l, e=1, en=1)
            mode = self._GetMode()
            value = self._GetValue()
            radius = self._GetRadius()
            softness = self._GetSoftness()
            pm.checkBox(self.useJointAnim_cb, e=1, en=0)
            if pm.checkBox(self.useJointAnim_cb, q=1, v=1):
                self.operation.Setup_AnimJoints(self._rigRoot)
            pm.select(self._selectedMesh)
            useJointAnim = pm.checkBox(self.useJointAnim_cb, q=1, v=1)
            if self._isPaintingLimb:
                self.operation.PaintBrushOn_Limbs(mode, value, radius, softness)
                self.operation.DisplayLimbVertexColors()
                # Anim Joints
                if useJointAnim:
                    joints = pm.listConnections(self._selectedLimb.joints)
                    self.operation.SetTimeRange(joints)
            else:
                self.operation.PaintBrushOn_Joints(mode, value, radius, softness)
                self.operation.DisplayJointVertexColors()
                # Anim Joints
                if useJointAnim:
                    self.operation.SetTimeRange([self._selectedJoint])

        self._isBrushOn = not self._isBrushOn

    def SetUseJointAnim(self, value):
        log.funcFileDebug()
        filePath = self.GetConfigFilePath()
        config = genUtil.Json.Load(filePath)
        config['paintWeightsUseJointAnim'] = value
        genUtil.Json.Save(filePath, config)

    def Flood(self, ignore):
        log.funcFileDebug()
        mode = self._GetMode()
        weight = 1 # FIX LATER
        for mesh in self._selectedMesh:
            if mode == 1:
                self.operation.FloodAdd(mesh, weight)
            elif mode == 2:
                self.operation.FloodReplace(mesh, weight)

    def Flood(self, ignore):
        log.funcFileDebug()
    
    def SetMode(self, ignore):
        log.funcFileDebug()
        mode = self._GetMode()
        filePath = self.GetConfigFilePath()
        config = genUtil.Json.Load(filePath)
        config['paintWeightsMode'] = mode
        genUtil.Json.Save(filePath, config)
        if mode == 1:
            self.operation.SetPaintModeAdd()
        elif mode == 2:
            self.operation.SetPaintModeReplace()
        self._UpdateBrushSettings()

    def SetValue(self, value):
        log.funcFileDebug()
        filePath = self.GetConfigFilePath()
        config = genUtil.Json.Load(filePath)
        if config['paintWeightsMode'] == 1:
            config['paintWeightsAddValue'] = value
        else:
            config['paintWeightsReplaceValue'] = value
        genUtil.Json.Save(filePath, config)
        self.operation.SetValue(value)

    def SetRadius(self, radius):
        log.funcFileDebug()
        filePath = self.GetConfigFilePath()
        config = genUtil.Json.Load(filePath)
        if config['paintWeightsMode'] == 1:
            config['paintWeightsAddRadius'] = radius
        else:
            config['paintWeightsReplaceRadius'] = radius
        genUtil.Json.Save(filePath, config)
        self.operation.SetRadius(radius)

    def SetSoftness(self, softness):
        log.funcFileDebug()
        filePath = self.GetConfigFilePath()
        config = genUtil.Json.Load(filePath)
        if config['paintWeightsMode'] == 1:
            config['paintWeightsAddSoftness'] = softness
        else:
            config['paintWeightsReplaceSoftness'] = softness
        genUtil.Json.Save(filePath, config)
        self.operation.SetSoftness(softness)

#=========== JOINT HIER ====================================

    def PopulateJointHier(self, limb):
        log.funcFileDebug()
        pm.treeView(self.joint_tv, e=1, removeAll=1)
        self._joints = uiUtil.PopulateJointHier(self.joint_tv, 
                                                    limb)
        
    def SelectedJoint(self):
        log.funcFileDebug()
        self._selectedJoint = None
        jointIDStr = pm.treeView(self.joint_tv, q=1, selectItem=1)
        if not jointIDStr:
            return
        self._selectedJoint = self._joints[jointIDStr[0]]
        self._isPaintingLimb = False

        self.operation.SetJoint(self._selectedLimb, self._selectedJoint)
        if not self._isBrushOn:
            return

        # Display
        mode = self._GetMode()
        value = self._GetValue()
        radius = self._GetRadius()
        softness = self._GetSoftness()
        self.operation.PaintBrushOn_Joints(mode, value, radius, softness)
        if self._selectedMesh:
            pm.select(self._selectedMesh)
            self.operation.DisplayJointVertexColors()

        # Anim Joints
        if not pm.checkBox(self.useJointAnim_cb, q=1, v=1):
            return
        self.operation.SetTimeRange([self._selectedJoint])

#=========== MISC ====================================

    def GetConfigFilePath(self):
        folder = os.path.dirname(__file__)
        folder = os.path.dirname(folder)
        folder = os.path.dirname(folder)
        folder = os.path.join(folder, 'Data')
        return os.path.join(folder, 'Config.json')

    def UpdateTool(self):
        if not self._isBrushOn:
            return
        if not self._isBrushSet:
            if self._selectedLimb:
                if self._selectedMesh:
                    self._isBrushSet = True
                    mode = self._GetMode()
                    value = self._GetValue()
                    radius = self._GetRadius()
                    softness = self._GetSoftness()
                    if self._isPaintingLimb:
                        self.operation.PaintBrushOn_Limbs(mode, value, 
                                                        radius, softness)
                    else:
                        self.operation.PaintBrushOn_Joints(mode, value, 
                                                        radius, softness)
                    return
        else:
            if not self._selectedLimb or not self._selectedMesh:
                self._isBrushSet = False
                self.operation.PaintBrushOff()


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
