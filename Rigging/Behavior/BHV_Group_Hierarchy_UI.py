
import pymel.core as pm

class BHV_Group_Hierarchy_UI:
    def __init__(self, limbMng, grpMng, parent):
        self.limbMng = limbMng
        self.grpMng = grpMng
        self.parent = parent

        self.limb = None

        self._Setup()

    def Populate(self):
        pm.treeView(self.widget, e=1, removeAll=1)
        for group in self.grpMng.GetLimbGroups(self.limb):
            groupID = group.ID.get()
            if pm.listConnections(group.joint):
                name = self.grpMng.GetJointGroupName(group)
            else:
                name = self.grpMng.GetLimbGroupName(group)
            pm.treeView(self.widget, e=1, ai=(groupID, ''))
            pm.treeView(self.widget, e=1, dl=(groupID, name))
    
    def Depopulate(self):
        self.limb = None
        pm.treeView(self.widget, e=1, removeAll=1)

# #=========== SETUP ====================================

    def _Setup(self):
        self.widget = pm.treeView(allowReparenting=0, adr=0, ams=0)
        pm.treeView(self.widget, e=1, scc=self.SelectionChanged)
    
#=========== FUNCTIONALITY ====================================

    def SetLimb(self, limbID):
        self.limb = self.limbMng.GetLimb(limbID)
        self.Populate()

    def SelectionChanged(self):
        groupIDStr = pm.treeView(self.widget, q=1, selectItem=1)
        if groupIDStr:
            self.parent.GroupSelected(int(groupIDStr[0]))













