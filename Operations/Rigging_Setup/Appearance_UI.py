
import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import Appearance as app
reload(app)
import Utilities.UI_Utilities as uiUtil
reload(uiUtil)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import Utilities.Logger as log
reload(log)

class Appearance_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Appearance'
    uiOrderIndex = 300
    operation = app.Appearance()
    def __init__(self):
        self._rigRoot = None
        self._allRigRoots = None
        self._limbIDs = []
        self._selectedLimbs = []
        self._limbGroups = []

    def Setup_UI(self, rigRoot, allRigRoots): 
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._limbIDs = []
        self._selectedLimbs = []
        self._limbGroups = []
        self._Setup()
        self.PopulateLimbHierNormal()
        for rigRoot in allRigRoots:
            for limb in pm.listConnections(rigRoot.limbs):
                bhv = self.operation.bhvMng.bhvs[limb.bhvFile.get()]
                if bhv.groupMoveable:
                    continue
                for group in pm.listConnections(limb.usedGroups):
                    control = pm.listConnections(group.control)[0]
                    rigUtil.ChannelBoxAttrs(control, 0, 1, 1, 0)

    def Teardown_UI(self):
        for rigRoot in self._allRigRoots:
            if not rigRoot or not pm.objExists(rigRoot):
                continue
            for limb in pm.listConnections(rigRoot.limbs):
                bhv = self.operation.bhvMng.bhvs[limb.bhvFile.get()]
                if bhv.groupMoveable:
                    continue
                for group in pm.listConnections(limb.usedGroups):
                    control = pm.listConnections(group.control)[0]
                    rigUtil.ChannelBoxAttrs(control, 1, 1, 1, 0)

#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limbs', bv=1):
                self.limb_tv = pm.treeView(ams=0, adr=0, arp=0, nb=1, enk=1,
                                            elc=self.IgnoreRename)
                pm.treeView(self.limb_tv, e=1, scc=self.SelectedLimb)
                with pm.popupMenu(): #as self.rmb_ui:
                    self._reimport_mi = pm.menuItem(l='Reimport Control Shapes', 
                                                    c=self.ReimportControlShapes)
            with pm.frameLayout('Controls', bv=1):
                self.control_tv = pm.treeView(arp=0, adr=0, ams=0,
                                            elc=self.IgnoreRename)
                pm.treeView(self.control_tv, e=1, scc=self.SelectedControl)
        with pm.verticalLayout():
            with pm.frameLayout('Control Channelboxes (see tooltips)', bv=1, en=0) as self.limbProp_fl:
                with pm.columnLayout(co=('left', -100)) as self.appLimbLockHide_cl:
                    msg = 'Joint = FK Chain + Reverse, FK Branch Controls'
                    self.jointPos = pm.attrControlGrp(l='Joint Translate', ann=msg,
                                                    a='perspShape.shakeEnabled')
                    self.jointRot = pm.attrControlGrp(l='Joint Rotate', ann=msg,
                                                    a='perspShape.shakeEnabled')
                    self.jointScale = pm.attrControlGrp(l='Joint Scale', ann=msg,
                                                    a='perspShape.shakeEnabled')
                    msg = 'Limb = Look At, IK Pole Vector, IK Spline, Empty, FK Relative'
                    self.limbPos = pm.attrControlGrp(l='Limb Translate', ann=msg,
                                                    a='perspShape.shakeEnabled')
                    self.limbRot = pm.attrControlGrp(l='Limb Rotate', ann=msg,
                                                    a='perspShape.shakeEnabled')
                    self._limbScale = pm.attrControlGrp(l='Limb Scale', ann=msg,
                                                    a='perspShape.shakeEnabled')
            with pm.frameLayout('Control Colors', bv=1, en=0) as self.mtr_fl:
                with pm.columnLayout(adj=1, co=('both', 5)):
                    self.clrL_cg = pm.attrColorSliderGrp(l='L Color', cw4=(66,44,44,22),
                                                    at='perspShape.backgroundColor')
                    self.opL_cg = pm.attrColorSliderGrp(l='L Opacity', cw4=(66,44,44,22),
                                                    at='perspShape.backgroundColor')
                    self.clrM_cg = pm.attrColorSliderGrp(l='M Color', cw4=(66,44,44,22),
                                                    at='perspShape.backgroundColor')
                    self.opM_cg = pm.attrColorSliderGrp(l='M Opacity', cw4=(66,44,44,22),
                                                    at='perspShape.backgroundColor')
                    self.clrR_cg = pm.attrColorSliderGrp(l='R Color', cw4=(66,44,44,22),
                                                    at='perspShape.backgroundColor')
                    self.opR_cg = pm.attrColorSliderGrp(l='R Opacity', cw4=(66,44,44,22),
                                                    at='perspShape.backgroundColor')
                    
            with pm.frameLayout('Control Shapes', bv=1, en=0) as self.ctrShapes_fl:
                self.ctrShapes_cl = pm.columnLayout(adj=1, co=('both', 5))

#=========== LIMB HIER ====================================
   
    def PopulateLimbHierNormal(self):
        log.funcFileDebug()
        self.PopulateControlHier(None)
        self.PopulateLimbProperties(None)
        self._limbIDs = uiUtil.PopulateLimbHierNormal(self.limb_tv, 
                                                self._rigRoot,
                                                self._allRigRoots)

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

    def SelectedLimb(self):
        log.funcFileInfo()
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        self._rigRoot = None
        self.PopulateLimbProperties(None)
        self.PopulateControlHier(None)
        self.PopulateControlMaterials(None)
        self.PopulateControlShapes()
        if not limbIDStrs:
            return
        self._selectedLimbs = [self._limbIDs[ID] for ID in limbIDStrs]
        for limb in self._selectedLimbs:
            log.debug('\t\t' + limb.pfrsName.get())
        if len(self._selectedLimbs) == 1:
            limb = self._selectedLimbs[0]
            self._rigRoot = pm.listConnections(limb.rigRoot)[0]
            self.PopulateControlHier(limb)
            self.PopulateLimbProperties(limb)
            self.PopulateControlMaterials(self._rigRoot)
            self.PopulateControlShapes()

    def ReimportControlShapes(self, ignore):
        log.funcFileInfo()
        self.operation.ReimportControlShapes(self._rigRoot)

#=========== CONTROL HIER ====================================

    def PopulateControlHier(self, limb):
        log.funcFileDebug()
        pm.treeView(self.control_tv, e=1, removeAll=1)
        if not limb:
            return
        self._limbGroups = uiUtil.PopulateControlHier(self.control_tv, 
                                                    limb)
        
    def SelectedControl(self):
        log.funcFileDebug()
        groupIDStr = pm.treeView(self.control_tv, q=1, selectItem=1)
        if groupIDStr and self._rigRoot.rigMode.get() == 0:
            group = self._limbGroups[groupIDStr[0]]
            control = pm.listConnections(group.control)[0]
            log.info('\t"%s"'% control)
            pm.select(control)
        else:
            pm.select(d=1)

#=========== LIMB PROPERTIES ====================================

    def PopulateLimbProperties(self, limb):
        log.funcFileDebug()
        pm.frameLayout(self.limbProp_fl, e=1, en=bool(limb))
        if not limb:
            return
        pm.attrControlGrp(self.jointPos, e=1, a=limb.channelBoxJointCtrPos)
        pm.attrControlGrp(self.jointRot, e=1, a=limb.channelBoxJointCtrRot)
        pm.attrControlGrp(self.jointScale, e=1, a=limb.channelBoxJointCtrScale)
        pm.attrControlGrp(self.limbPos, e=1, a=limb.channelBoxLimbCtrPos)
        pm.attrControlGrp(self.limbRot, e=1, a=limb.channelBoxLimbCtrRot)
        pm.attrControlGrp(self._limbScale, e=1, a=limb.channelBoxLimbCtrScale)

#=========== MATERIAL PROPERTIES ====================================

    def PopulateControlMaterials(self, rigRoot):
        log.funcFileDebug()
        pm.frameLayout(self.mtr_fl, e=1, en=bool(rigRoot))
        if not rigRoot:
            return
        sgL = pm.listConnections(rigRoot.controlMtrL)[0]
        sgM = pm.listConnections(rigRoot.controlMtrM)[0]
        sgR = pm.listConnections(rigRoot.controlMtrR)[0]
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
        with pm.columnLayout(adj=1, co=('both', 5), rs=5, p=self.ctrShapes_fl) as self.ctrShapes_cl:
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


                        