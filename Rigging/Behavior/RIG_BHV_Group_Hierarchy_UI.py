
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

class RIG_BHV_Group_Hierarchy_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.grpMng = parent.grpMng
        self.rigBHV = parent.rigBHV
        self.logger = parent.logger

        self.limb = None
        self.groups = {} # ID : group

        self._Setup()

    def Populate(self):
        self.logger.debug('\tBhv_GroupHier > Populate')
        pm.treeView(self.widget, e=1, removeAll=1)
        self.groups = {}
        if not self.limb:
            return
        bhvType = self.limb.bhvType.get()
        bhvFilter = rigData.FK_BRANCH_BHV_INDEXES
        bhvFilter += rigData.FK_CHAIN_BHV_INDEXES
        bhvFilter += rigData.CST_BHV_INDEXES
        # bhvFilter += rigData.IK_CHAIN_BHV_INDEXES
        bhvFilter += rigData.RFK_BHV_INDEXES
        bhvFilter += rigData.EMPTY_BHV_INDEXES
        if bhvType not in bhvFilter:
            return
        groups = self.grpMng.GetJointGroups(self.limb)
        if bhvType in rigData.REVERSE_BHV_INDEXES:
            groups = groups[::-1]
        # if bhvType in rigData.OMIT_LAST_JOINT_BHV_INDEXES:
        #     groups = groups[:-1]
        if bhvType in rigData.RFK_BHV_INDEXES:
            groups = [groups[0]]
        for group in groups:
            groupID = group.ID.get()
            self.groups[groupID] = group
            name = group.shortName()
            pm.treeView(self.widget, e=1, ai=(groupID, ''))
            pm.treeView(self.widget, e=1, dl=(groupID, name))
    
#=========== SETUP ====================================

    def _Setup(self):
        self.widget = pm.treeView(arp=0, adr=0, ams=0, elc=self.IgnoreRename)
        pm.treeView(self.widget, e=1, scc=self.SelectionChanged)
    
#=========== FUNCTIONALITY ====================================

    def IgnoreRename(self, idStr, newName):
        self.logger.debug('\tBhv_GroupHier > IgnoreRename')
        return ''

    def SetLimb(self, limb):
        self.logger.debug('\tBhv_GroupHier > SetLimb')
        self.limb = limb
        self.Populate()

    def SelectionChanged(self):
        self.logger.debug('\tBhv_GroupHier > SelectionChanged')
        groupIDStr = pm.treeView(self.widget, q=1, selectItem=1)
        if groupIDStr:
            group = self.groups[int(groupIDStr[0])]
            msg = '\tGroupHier > SELECTED group "%s"'% group
            self.logger.info(msg)
            self.parent.GroupSelected(group)
        else:
            self.logger.info('\tGroupHier > DESELECTED group')














