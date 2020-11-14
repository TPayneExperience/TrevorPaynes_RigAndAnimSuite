
import pymel.core as pm

class APP_Control_Hierarchy_UI:
    def __init__(self, limbMng, bhvMng, grpMng, ctrMng, nameMng, parent):
        self.limbMng = limbMng
        self.bhvMng = bhvMng
        self.grpMng = grpMng
        self.ctrMng = ctrMng
        self.nameMng = nameMng
        self.parent = parent

        self.limb = None
        # self.ctrSuffixes = ['FK',
        #                     'FKIKS',
        #                     'LKAT']

        self._Setup()

    def SetLimb(self, limbID):
        self.limb = self.limbMng.GetLimb(limbID)
        self.Populate()
    
    def Populate(self):
        self.Depopulate()
        for group in self.grpMng.GetLimbGroups(self.limb):
            control = pm.listConnections(group.control)[0]
            controlID = control.ID.get()
            name = control.shortName()
            pm.treeView(self.widget, e=1, addItem=(controlID, ''))
            pm.treeView(self.widget, e=1, displayLabel=(controlID, name))
        # for group in self.grpMng.GetLimbGroups(self.limb):
        #     if group.groupType.get() in [0, 2, 4, 5]: # Skip IK / Constraint
        #         controls = self.ctrMng.GetGroupControl(group)
        #         if controls:
        #             controlID = controls[0].ID.get()
        #             name = group.shortName()
        #             if group.groupType.get() in [0, 4]:
        #                 name = self.grpMng.GetJointGroupName(group)
        #             else:
        #                 name = self.grpMng.GetLimbGroupName(group)
        #             pm.treeView(self.widget, e=1, addItem=(controlID, ''))
        #             pm.treeView(self.widget, e=1, displayLabel=(controlID, name))
    
    def Depopulate(self):
        pm.treeView(self.widget, e=1, removeAll=1)

#=========== SETUP ====================================

    def _Setup(self):
        self.widget = pm.treeView(  arp=0, adr=0, ams=0, 
                                    scc=self.SelectionChanged)

#=========== FUNCTIONALITY ====================================

    def SelectionChanged(self):
        ctrStr = pm.treeView(self.widget, q=1, selectItem=1)
        if ctrStr:
            pm.select(self.ctrMng.GetControl(int(ctrStr[0])))






