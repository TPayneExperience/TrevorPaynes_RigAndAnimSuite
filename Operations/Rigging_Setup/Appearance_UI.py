
from collections import OrderedDict

import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
import Operations.Rigging_Setup.Appearance as app
import Utilities.UI_Utilities as uiUtil
import Utilities.Rig_Utilities as rigUtil
import Utilities.Logger as log

class Appearance_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Appearance'
    uiOrderIndex = 300
    operation = app.Appearance()
    
    def __init__(self):
        self._rigRoot = None
        self._allRigRoots = []
        self._limbIDs = OrderedDict()
        self._selectedLimbs = []
        self._limbGroups = []

    def Setup_UI(self, rigRoot, allRigRoots, pfrsUI): 
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._selectedLimbs = []
        self._limbGroups = []
        self._Setup()
        self.PopulateLimbHier()
        self.operation.SetupOp(self._rigRoot)

    def Teardown_UI(self):
        self.operation.TeardownOp(self._rigRoot)

#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limbs', bv=1):
                self.limb_tv = uiUtil.SetupLimbHier(self._limbIDs)
                pm.treeView(self.limb_tv, e=1, ams=1, elc=self.IgnoreRename,
                                            scc=self.SelectedLimb)
                with pm.popupMenu():
                    self._reimport_mi = pm.menuItem(l='Reimport Control Shapes', 
                                                    c=self.ReimportControlShapes)
            with pm.frameLayout('Controls', bv=1):
                self.control_tv = pm.treeView(arp=0, adr=0,
                                            elc=self.IgnoreRename)
                pm.treeView(self.control_tv, e=1, scc=self.SelectedControl)
        with pm.verticalLayout():
            with pm.frameLayout('Control Channelboxes (see tooltips)', bv=1, mw=7, mh=7):
                with pm.columnLayout(adj=1, co=('left', 70)):
                    msg = 'Joint = FK Chain + Reverse, FK Branch Controls'
                    self.jointPos = pm.checkBox(l='Joint Translate', ann=msg, 
                                                        cc=self.SetJointCtrPos)
                    self.jointRot = pm.checkBox(l='Joint Rotate', ann=msg, 
                                                        cc=self.SetJointCtrRot)
                    self.jointScale = pm.checkBox(l='Joint Scale', ann=msg, 
                                                        cc=self.SetJointCtrScale)
                    msg = 'Limb = Look At, IK Pole Vector, IK Spline, Empty, FK Relative'
                    self.limbPos = pm.checkBox(l='Limb Translate', ann=msg, 
                                                        cc=self.SetLimbCtrPos)
                    self.limbRot = pm.checkBox(l='Limb Rotate', ann=msg, 
                                                        cc=self.SetLimbCtrRot)
                    self.limbScale = pm.checkBox(l='Limb Scale', ann=msg, 
                                                        cc=self.SetLimbCtrScale)
            with pm.frameLayout('Control Colors', bv=1, mw=7, mh=7) as self.mtr_fl:
                with pm.columnLayout(adj=1):
                    self.clrL_cg = pm.attrColorSliderGrp(l='L Color', cw4=(55,44,33,22),
                                                    at='perspShape.backgroundColor')
                    self.opL_cg = pm.attrColorSliderGrp(l='L Opacity', cw4=(55,44,33,22),
                                                    at='perspShape.backgroundColor')
                    self.clrM_cg = pm.attrColorSliderGrp(l='M Color', cw4=(55,44,33,22),
                                                    at='perspShape.backgroundColor')
                    self.opM_cg = pm.attrColorSliderGrp(l='M Opacity', cw4=(55,44,33,22),
                                                    at='perspShape.backgroundColor')
                    self.clrR_cg = pm.attrColorSliderGrp(l='R Color', cw4=(55,44,33,22),
                                                    at='perspShape.backgroundColor')
                    self.opR_cg = pm.attrColorSliderGrp(l='R Opacity', cw4=(55,44,33,22),
                                                    at='perspShape.backgroundColor')
                    
            with pm.frameLayout('Control Shapes', bv=1, mw=7, mh=7) as self.ctrShapes_fl:
                self.ctrShapes_cl = pm.columnLayout(adj=1)

#=========== LIMB HIER ====================================
   
    def PopulateLimbHier(self):
        log.funcFileDebug()
        self._limbIDs.clear()
        self._limbIDs.update(uiUtil.PopulateLimbHierNormal(self.limb_tv, 
                                                self._rigRoot,
                                                self._allRigRoots))
        limb = list(self._limbIDs.values())[0]
        self._selectedLimbs = [limb]
        limbID = '%d_%d' % (self._rigRoot.ID.get(), limb.ID.get())
        pm.treeView(self.limb_tv, e=1, selectItem=(limbID, 1))
        self.PopulateControlHier()
        self.PopulateLimbProperties()
        self.PopulateControlShapes()
        self.PopulateControlMaterials()

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

    def SelectedLimb(self):
        log.funcFileInfo()
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        if not limbIDStrs:
            rigRootID = self._rigRoot.ID.get()
            for limb in self._selectedLimbs:
                limbID = '%d_%d' % (rigRootID, limb.ID.get())
                pm.treeView(self.limb_tv, e=1, selectItem=(limbID, 1))
            return
        self._selectedLimbs = [self._limbIDs[ID] for ID in limbIDStrs]
        self.PopulateControlHier()
        self.PopulateLimbProperties()
        self.PopulateControlMaterials()
        self.PopulateControlShapes()

    def ReimportControlShapes(self, ignore):
        log.funcFileInfo()
        self.operation.ReimportControlShapes(self._rigRoot)

#=========== CONTROL HIER ====================================

    def PopulateControlHier(self):
        log.funcFileDebug()
        pm.treeView(self.control_tv, e=1, removeAll=1)
        self._limbGroups = uiUtil.PopulateControlHier(self.control_tv, 
                                                    self._selectedLimbs[0])
        
    def SelectedControl(self):
        log.funcFileDebug()
        groupIDStrs = pm.treeView(self.control_tv, q=1, selectItem=1)
        if groupIDStrs and self._rigRoot.rigMode.get() == 0:
            groups = [self._limbGroups[ID] for ID in groupIDStrs]
            controls = [pm.listConnections(g.control)[0] for g in groups]
            pm.select(controls)
        else:
            pm.select(d=1)

#=========== LIMB PROPERTIES ====================================

    def PopulateLimbProperties(self):
        log.funcFileDebug()
        limb = self._selectedLimbs[0]
        pm.checkBox(self.jointPos, e=1, v=limb.channelBoxJointCtrPos.get())
        pm.checkBox(self.jointRot, e=1, v=limb.channelBoxJointCtrRot.get())
        pm.checkBox(self.jointScale, e=1, v=limb.channelBoxJointCtrScale.get())
        pm.checkBox(self.limbPos, e=1, v=limb.channelBoxLimbCtrPos.get())
        pm.checkBox(self.limbRot, e=1, v=limb.channelBoxLimbCtrRot.get())
        pm.checkBox(self.limbScale, e=1, v=limb.channelBoxLimbCtrScale.get())

    def SetJointCtrPos(self, value):
        for limb in self._selectedLimbs:
            limb.channelBoxJointCtrPos.set(value)

    def SetJointCtrRot(self, value):
        for limb in self._selectedLimbs:
            limb.channelBoxJointCtrRot.set(value)

    def SetJointCtrScale(self, value):
        for limb in self._selectedLimbs:
            limb.channelBoxJointCtrScale.set(value)

    def SetLimbCtrPos(self, value):
        for limb in self._selectedLimbs:
            limb.channelBoxLimbCtrPos.set(value)

    def SetLimbCtrRot(self, value):
        for limb in self._selectedLimbs:
            limb.channelBoxLimbCtrRot.set(value)

    def SetLimbCtrScale(self, value):
        for limb in self._selectedLimbs:
            limb.channelBoxLimbCtrScale.set(value)

#=========== MATERIAL PROPERTIES ====================================

    def PopulateControlMaterials(self):
        log.funcFileDebug()
        sgL = pm.listConnections(self._rigRoot.controlMtrL)[0]
        sgM = pm.listConnections(self._rigRoot.controlMtrM)[0]
        sgR = pm.listConnections(self._rigRoot.controlMtrR)[0]
        mtrL = pm.listConnections(sgL.surfaceShader)[0]
        mtrM = pm.listConnections(sgM.surfaceShader)[0]
        mtrR = pm.listConnections(sgR.surfaceShader)[0]
        pm.attrColorSliderGrp(self.clrL_cg, e=1, at=mtrL.outColor)
        pm.attrColorSliderGrp(self.opL_cg, e=1, at=mtrL.outTransparency)
        pm.attrColorSliderGrp(self.clrM_cg, e=1, at=mtrM.outColor)
        pm.attrColorSliderGrp(self.opM_cg, e=1, at=mtrM.outTransparency)
        pm.attrColorSliderGrp(self.clrR_cg, e=1, at=mtrR.outColor)
        pm.attrColorSliderGrp(self.opR_cg, e=1, at=mtrR.outTransparency)

#=========== RIG CONTROL SHAPES ====================================

    def PopulateControlShapes(self):
        log.funcFileDebug()
        pm.frameLayout(self.ctrShapes_fl, e=1, en=0)
        if not self._rigRoot:
            return
        rigRoot = self._rigRoot
        pm.frameLayout(self.ctrShapes_fl, e=1, en=1)
        self._shapes_om = []
        pm.deleteUI(self.ctrShapes_cl)
        self._controlTemplates = self.operation.GetShapeTemplates(rigRoot)

        # Get Limb Groups Types ('FK', 'IKPV', 'RFK')
        groupTypes = ['Joint']
        for limb in pm.listConnections(rigRoot.limbs):
            for group in pm.listConnections(limb.limbGroups):
                groupType = group.groupType.get() 
                if groupType not in groupTypes:
                    groupTypes.append(groupType)

        # Populate with Option Menues
        with pm.columnLayout(adj=1, rs=5, p=self.ctrShapes_fl) as self.ctrShapes_cl:
            for i in range(len(groupTypes)):
                groupType = groupTypes[i]
                label = '\t%s Shape' % groupType
                with pm.optionMenu(l=label, 
                                    cc=pm.Callback( self.SetControlShape, 
                                                    groupType,
                                                    i)) as om:
                    attr = '%s.%sShape' % (rigRoot, groupType)
                    curShape = pm.listConnections(attr)[0]
                    j = 1
                    for shapeName, shape in self._controlTemplates.items():
                        pm.menuItem(l=shapeName)
                        if curShape == shape:
                            pm.optionMenu(om, e=1, sl=j)
                        j += 1
                self._shapes_om.append(om)

    def SetControlShape(self, groupType, omIndex):
        log.funcFileDebug()
        om = self._shapes_om[omIndex]
        selIndex = pm.optionMenu(om, q=1, sl=1) - 1
        shapeName = list(self._controlTemplates.keys())[selIndex]
        shape = self._controlTemplates[shapeName]
        self.operation.SetControlShape( self._rigRoot, 
                                        groupType, 
                                        shape)
        for limb in pm.listConnections(self._rigRoot.limbs):
            rigUtil.UpdateUsedControlMaterials(self._rigRoot, limb)


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"


                        