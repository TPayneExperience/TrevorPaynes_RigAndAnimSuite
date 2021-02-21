
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

class APP_Control_Hierarchy_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.rigBHV = parent.rigBHV
        self.grpMng = parent.grpMng
        self.ctrMng = parent.ctrMng
        self.nameMng = parent.nameMng
        self.logger = parent.logger

        self.limb = None

        self._Setup()

    def SetLimb(self, limb):
        self.logger.debug('\tApp_ControlHier > SetLimb')
        self.limb = limb
        self.Populate()
    
    def Populate(self):
        self.logger.debug('\tApp_ControlHier > Populate')
        self.Depopulate()
        if not self.limb:
            return
        bhvType = self.limb.bhvType.get()
        groups = []
        bhvFilter = rigData.FK_CHAIN_BHV_INDEXES
        bhvFilter += rigData.FK_BRANCH_BHV_INDEXES
        bhvFilter += rigData.RFK_BHV_INDEXES
        # bhvFilter += self.rigBHV.emptyLimbIndexes
        bhvFilter += rigData.EMPTY_BHV_INDEXES
        if bhvType in bhvFilter:
            groups += self.grpMng.GetJointGroups(self.limb)
            if bhvType in rigData.REVERSE_BHV_INDEXES:
                groups = groups[::-1]
            # if bhvType in self.rigBHV.omitLastJointTypes:
            if bhvType in rigData.OMIT_LAST_JOINT_BHV_INDEXES:
                groups = groups[:-1]
            if bhvType in rigData.RFK_BHV_INDEXES:
                groups = [groups[0]]
        groups += self.grpMng.GetLimbGroups(self.limb)
        for group in groups:
            control = pm.listConnections(group.control)[0]
            controlID = control.ID.get()
            name = control.shortName()
            pm.treeView(self.widget, e=1, addItem=(controlID, ''))
            pm.treeView(self.widget, e=1, displayLabel=(controlID, name))

    def Depopulate(self):
        pm.treeView(self.widget, e=1, removeAll=1)

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
            ctr = self.ctrMng.GetControl(int(ctrStr[0]))
            msg = '\tCtrHier > SELECTED control "%s"'% str(ctr)
            self.logger.info(msg)
            pm.select(ctr)
        else:
            self.logger.info('\tCtrHier > DESELECTED control')






