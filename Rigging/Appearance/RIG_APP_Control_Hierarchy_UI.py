
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

class RIG_APP_Control_Hierarchy_UI:
    def __init__(self, parent):
        self.parent = parent
        self.grpMng = parent.pfrs.grpMng
        self.logger = parent.pfrs.logger

        self.limb = None
        self.controls = {} # ID : control

        self._Setup()

    def SetLimb(self, limb):
        self.logger.debug('\tApp_ControlHier > SetLimb')
        self.limb = limb
        self.Populate()
    
    def Populate(self):
        self.logger.debug('\tApp_ControlHier > Populate')
        pm.treeView(self.widget, e=1, removeAll=1)
        self.controls = {}
        if not self.limb:
            return
        bhvType = self.limb.bhvType.get()
        groups = []
        bhvFilter = rigData.FK_CHAIN_BHV_INDEXES
        bhvFilter += rigData.FK_BRANCH_BHV_INDEXES
        bhvFilter += rigData.RFK_BHV_INDEXES
        bhvFilter += rigData.EMPTY_BHV_INDEXES
        if bhvType in bhvFilter:
            groups += self.grpMng.GetJointGroups(self.limb)
            if bhvType in rigData.REVERSE_BHV_INDEXES:
                groups = groups[::-1]
            if bhvType in rigData.RFK_BHV_INDEXES:
                groups = [groups[0]]
        groups += self.grpMng.GetLimbGroups(self.limb)
        for group in groups:
            control = pm.listConnections(group.control)[0]
            controlID = control.ID.get()
            self.controls[controlID] = control
            name = control.shortName()
            pm.treeView(self.widget, e=1, addItem=(controlID, ''))
            pm.treeView(self.widget, e=1, displayLabel=(controlID, name))


#=========== SETUP ====================================

    def _Setup(self):
        self.widget = pm.treeView(  arp=0, adr=0, ams=0, elc=self.IgnoreRename,
                                    scc=self.SelectionChanged)

#=========== FUNCTIONALITY ====================================

    def IgnoreRename(self, idStr, newName):
        self.logger.debug('\tApp_CtrHier > IgnoreRename')
        return ''

    def SelectionChanged(self):
        self.logger.debug('\tApp_ControlHier > SelectionChanged')
        ctrStr = pm.treeView(self.widget, q=1, selectItem=1)
        if ctrStr:
            ctr = self.controls[int(ctrStr[0])]
            msg = '\tCtrHier > SELECTED control "%s"'% str(ctr)
            self.logger.info(msg)
            pm.select(ctr)
        else:
            self.logger.info('\tCtrHier > DESELECTED control')






