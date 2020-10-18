
import pymel.core as pm


class APP_Limb_Hierarchy_UI:
    def __init__(self, limbMng, parent):
        self.limbMng = limbMng
        self.parent = parent

        self._Setup()

    def Populate(self):
        pm.treeView(self.widget, e=1, removeAll=1)
        self.limbMng.RebuildLimbDict()
        for rootLimb in self.limbMng.GetRootLimbs():
            prefix = pm.listConnections(rootLimb.rigRoot)[0].prefix.get()
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                if limb.bhvType.get() in [0, 2, 4, 6, 7, 8]: # only limbs w/ctrs
                    limbID = limb.ID.get()
                    name = '%s_%s' % (prefix, limb.pfrsName.get())
                    pm.treeView(self.widget, e=1, ai=(limbID, ''))
                    pm.treeView(self.widget, e=1, dl=(limbID, name))
                    side = self.limbMng.GetLimbSide(limb)
                    if (side == 'L' or side == 'R'):
                        pm.treeView(self.widget, e=1, bti=(limbID, 1, side))
                    else:
                        pm.treeView(self.widget, e=1, bvf=(limbID, 1, 0))

#=========== SETUP ====================================

    def _Setup(self):
        self.widget = pm.treeView(ams=0, adr=0, arp=0, nb=1)
        pm.treeView(self.widget, e=1, scc=self.SelectionChanged)

#=========== FUNCTIONS ====================================

    def SelectionChanged(self):
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if limbIDStrs:
            self.parent.LimbSelected(int(limbIDStrs[0]))
    
    
    
















































