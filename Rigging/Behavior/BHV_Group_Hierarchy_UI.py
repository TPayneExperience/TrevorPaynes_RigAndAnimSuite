
import pymel.core as pm

class BHV_Group_Hierarchy_UI:
    def __init__(self, limbMng, grpMng, parent):
        self.limbMng = limbMng
        self.grpMng = grpMng
        self.parent = parent
        self.logger = parent.logger

        self.limb = None

        self._Setup()

    def Populate(self):
        self.logger.debug('\tBhv_GroupHier > Populate')
        self.Depopulate()
        if not self.limb:
            return
        for group in self.grpMng.GetLimbGroups(self.limb):
            # ONLY FK, Cst, Empty, IK Chain
            if group.groupType.get() in [0, 1]: 
                groupID = group.ID.get()
                name = group.shortName()
                # if pm.listConnections(group.joint):
                #     name = self.grpMng.GetJointGroupName(group)
                # else:
                #     name = self.grpMng.GetLimbGroupName(group)
                pm.treeView(self.widget, e=1, ai=(groupID, ''))
                pm.treeView(self.widget, e=1, dl=(groupID, name))
    
    def Depopulate(self):
        pm.treeView(self.widget, e=1, removeAll=1)

# #=========== SETUP ====================================

    def _Setup(self):
        self.widget = pm.treeView(allowReparenting=0, adr=0, ams=0)
        pm.treeView(self.widget, e=1, scc=self.SelectionChanged)
    
#=========== FUNCTIONALITY ====================================

    def SetLimb(self, limb):
        self.logger.debug('\tBhv_GroupHier > SetLimb')
        self.limb = limb
        self.Populate()

    def SelectionChanged(self):
        self.logger.debug('\tBhv_GroupHier > SelectionChanged')
        groupIDStr = pm.treeView(self.widget, q=1, selectItem=1)
        if groupIDStr:
            group = self.grpMng.GetGroup(int(groupIDStr[0]))
            msg = '\tGroupHier > SELECTED group "%s"'% group
            self.logger.info(msg)
            self.parent.GroupSelected(group)
        else:
            self.logger.info('\tGroupHier > DESELECTED group')














