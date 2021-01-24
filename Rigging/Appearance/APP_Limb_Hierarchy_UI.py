
import pymel.core as pm


class APP_Limb_Hierarchy_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.bhvMng = parent.bhvMng
        self.logger = parent.logger

        self._Setup()

    def Populate(self):
        self.logger.debug('\tApp_LimbHier > Populate')
        pm.treeView(self.widget, e=1, removeAll=1)
        self.limbMng.RebuildLimbDict()
        for rootLimb in self.limbMng.GetRootLimbs():
            prefix = pm.listConnections(rootLimb.rigRoot)[0].prefix.get()
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                bhvType = limb.bhvType.get()
                if bhvType in self.bhvMng.ctrTypeIndexes: # Avoid IK Chain, CST
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
        self.logger.debug('\tApp_LimbHier > SelectionChanged')
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if limbIDStrs:
            limb = self.limbMng.GetLimb(int(limbIDStrs[0]))
            msg = '\tLimbHier > SELECTED limb "%s"'% limb.pfrsName.get()
            self.logger.info(msg)
            self.parent.LimbSelected(limb)
        else:
            self.logger.info('\tLimbHier > DESELECTED limb')
            self.parent.LimbSelected(None)
    
    
    
















































