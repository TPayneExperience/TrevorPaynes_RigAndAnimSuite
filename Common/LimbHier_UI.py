
import pymel.core as pm

class Limb_Hierarchy_UI(object):
    def __init__(self, limbMng):
        self.limbMng = limbMng
        self.widget = pm.treeView(allowMultiSelection=0)

    def Populate_Abstract(self):
        pm.treeView(self.widget, e=1, removeAll=1)
        for rootLimbID in self.limbMng.GetRootLimbIDs():
            for limbID in self.limbMng.GetLimbCreationOrder(rootLimbID):
                limb = self.limbMng.GetLimb(limbID)
                limbName = limb.pfrsName.get()
                parentID = limb.parentLimbID.get()
                pm.treeView(self.widget, e=1, ai=(limbID, parentID))
                pm.treeView(self.widget, e=1, displayLabel=(limbID, limbName))






















