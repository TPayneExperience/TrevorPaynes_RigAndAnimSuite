
import pymel.core as pm

class PW_Joint_Hierarchy_UI:
    def __init__(self, limbMng, jntMng, parent):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.parent = parent

        self.limb = None

        self._Setup()
    
    
    def Populate(self):
        self.Depopulate()
        for joint in self.jntMng.GetLimbJoints(self.limb):
            jointID = joint.ID.get()
            name = joint.pfrsName.get()
            pm.treeView(self.widget, e=1, ai=(jointID, ''))
            pm.treeView(self.widget, e=1, dl=(jointID, name))
    
    def Depopulate(self):
        pm.treeView(self.widget, e=1, removeAll=1)

#=========== SETUP ====================================

    def _Setup(self):
        self.widget = pm.treeView(arp=0, adr=0, ams=0, 
                                        scc=self.SelectionChanged)

#=========== FUNCTIONALITY ====================================

    def SelectionChanged(self):
        jntStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if not jntStrs:
            return
        joint = self.jntMng.GetJoint(int(jntStrs[0]))

    def SetLimb(self, limbID):
        self.limb = self.limbMng.GetLimb(limbID)
        self.Populate()

