
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

class APP_Limb_Hierarchy_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.rigBHV = parent.rigBHV
        self.logger = parent.logger

        self._Setup()

    def Populate(self):
        self.logger.debug('\tApp_LimbHier > Populate')
        pm.treeView(self.widget, e=1, removeAll=1)
        self.limbMng.RebuildLimbDict()
        for rootLimb in self.limbMng.GetRootLimbs()[::-1]:
            prefix = pm.listConnections(rootLimb.rigRoot)[0].prefix.get()
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                limbID = limb.ID.get()
                name = '%s_%s' % (prefix, limb.pfrsName.get())
                parent = self.limbMng.GetLimbParent(limb)
                parentID = ''
                if parent:
                    parentID = parent.ID.get()
                pm.treeView(self.widget, e=1, ai=(limbID, parentID))
                pm.treeView(self.widget, e=1, dl=(limbID, name))
                # side = self.limbMng.GetLimbSide(limb)
                side = rigData.LIMB_SIDES[limb.side.get()]
                if (side == 'L'):
                    pm.treeView(self.widget, e=1, bti=(limbID, 1, side),
                            lbc=(limbID, 0.1, 0.1, 0.3))
                elif (side == 'R'):
                    pm.treeView(self.widget, e=1, bti=(limbID, 1, side),
                            lbc=(limbID, 0.3, 0.1, 0.1))
                else:
                    pm.treeView(self.widget, e=1, bvf=(limbID, 1, 0))

#=========== SETUP ====================================

    def _Setup(self):
        self.widget = pm.treeView(ams=0, adr=0, arp=0, nb=1, elc=self.IgnoreRename)
        pm.treeView(self.widget, e=1, scc=self.SelectionChanged)

#=========== FUNCTIONS ====================================

    def IgnoreRename(self, idStr, newName):
        self.logger.debug('\tApp_LimbHier > IgnoreRename')
        return ''

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
    
    
    
















































