
import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import Appearance as app
reload(app)
import Common.UI_Utilities as uiUtil
reload(uiUtil)
# import Common.General_Utilities as genUtil
# reload(genUtil)
import Common.Logger as log
reload(log)
# import Data.Rig_Data as rigData
# reload(rigData)
# import SceneData.Control as ctr
# reload(ctr)

import SceneData.RigRoot as rrt
reload(rrt)
# import SceneData.Behavior_Manager as bhvMng
# reload(bhvMng)

class Appearance_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Appearance'
    orderIndex = 300
    operation = app.Appearance()
    def __init__(self):
        self._bhvNames = []
        self._currentBhv = None # for verifying group selection
        self._selectedGroup = None
        self._rigRoot = None

    def Setup_UI(self, rigRoot, allRigRoots): 
        self._Setup()
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self.PopulateLimbHier()
        
#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limbs', bv=1):
                self.limb_tv = pm.treeView(ams=0, adr=0, arp=0, nb=1, enk=1,
                                            elc=self.IgnoreRename)
                pm.treeView(self.limb_tv, e=1, scc=self.SelectedLimb)
            with pm.frameLayout('Controls', bv=1):
                self.control_tv = pm.treeView(arp=0, adr=0, ams=0,
                                            elc=self.IgnoreRename)
                pm.treeView(self.control_tv, e=1, scc=self.SelectedControl)
        with pm.verticalLayout():
            with pm.frameLayout('Set Control Channelboxes', bv=1, en=0) as self.limbProp_fl:
                with pm.columnLayout(co=('left', -100)) as self.appLimbLockHide_cl:
                    msg = 'FK = Joint FK, Empty'
                    self.jointPos = pm.attrControlGrp(l='FK Translate', ann=msg,
                                                    a='perspShape.shakeEnabled')
                    self.jointRot = pm.attrControlGrp(l='FK Rotate', ann=msg,
                                                    a='perspShape.shakeEnabled')
                    self.jointScale = pm.attrControlGrp(l='FK Scale', ann=msg,
                                                    a='perspShape.shakeEnabled')
                    msg = 'Misc = Look At, IK Pole Vector'
                    self.limbPos = pm.attrControlGrp(l='MISC Translate', ann=msg,
                                                    a='perspShape.shakeEnabled')
                    self.limbRot = pm.attrControlGrp(l='MISC Rotate', ann=msg,
                                                    a='perspShape.shakeEnabled')
                    self._limbscale = pm.attrControlGrp(l='MISC Scale', ann=msg,
                                                    a='perspShape.shakeEnabled')
            with pm.frameLayout('Set Control Shapes', bv=1, en=0) as self.ctrShapes_fl:
                self.ctrShapes_cl = pm.columnLayout(adj=1)

#=========== LIMB HIER ====================================
   
    def PopulateLimbHier(self):
        log.funcFileDebug()
        self.PopulateControlHier(None)
        self.PopulateLimbProperties(None)
        pm.frameLayout(self.ctrShapes_fl, e=1, en=0)
        self._limbIDs = uiUtil.PopulateLimbHier(self.limb_tv, 
                                                self._rigRoot,
                                                self._allRigRoots)

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

    def SelectedLimb(self):
        log.funcFileInfo()
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        pm.frameLayout(self.ctrShapes_fl, e=1, en=bool(limbIDStrs))
        self.PopulateLimbProperties(None)
        self.PopulateControlHier(None)
        if not limbIDStrs:
            return
        self._selectedLimbs = [self._limbIDs[ID] for ID in limbIDStrs]
        for limb in self._selectedLimbs:
            log.debug('\t\t' + limb.pfrsName.get())
        if len(self._selectedLimbs) == 1:
            limb = self._selectedLimbs[0]
            self.PopulateLimbProperties(limb)
            self.PopulateControlHier(limb)
            rigRoot = pm.listConnections(limb.rigRoot)[0]
            self.PopulateControlShapes(rigRoot)
         
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
        if groupIDStr:
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
        pm.attrControlGrp(self._limbscale, e=1, a=limb.channelBoxLimbCtrScale)

#=========== RIG CONTROL SHAPES ====================================

    def PopulateControlShapes(self, rigRoot):
        log.funcFileDebug()
        if self._rigRoot == rigRoot:
            return
        self._rigRoot = rigRoot
        self._shapes_om = []
        pm.deleteUI(self.ctrShapes_cl)
        self._controlTemplates = self.operation.GetShapeTemplates(rigRoot)
        groupTypes = ['Joint']
        for limb in pm.listConnections(rigRoot.limbs):
            for group in pm.listConnections(limb.limbGroups):
                groupType = group.groupType.get() 
                if groupType not in groupTypes:
                    groupTypes.append(groupType)
        # Populate
        with pm.columnLayout(adj=1, p=self.ctrShapes_fl) as self.ctrShapes_cl:
            for groupType in groupTypes:
                i = 1
                label = '\t%s Shape' % groupType
                with pm.optionMenu(l=label, 
                                    cc=pm.Callback( self.SetControlShape, 
                                                    groupType,
                                                    i-1)) as om:
                    attr = '%s.%sShape' % (rigRoot, groupType)
                    curShape = pm.listConnections(attr)[0]
                    for shapeName, shape in self._controlTemplates.items():
                        pm.menuItem(l=shapeName)
                        if curShape == shape:
                            pm.optionMenu(om, e=1, sl=i)
                        i += 1
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



                        