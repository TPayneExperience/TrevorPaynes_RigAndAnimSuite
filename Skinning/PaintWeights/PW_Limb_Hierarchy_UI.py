
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

class PW_Limb_Hierarchy_UI:
    def __init__(self, parent):
        self.parent = parent
        self.bhvMng = parent.bhvMng
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
        # self.bhvMng = bhvMng
        self.logger = parent.logger

        self._Setup()
        
    def Populate(self):
        pm.treeView(self.widget, e=1, removeAll=1)
        # SKEL HIER
        limbParents = self.bhvMng.GetDefaultLimbHier()
        tempParents = limbParents.copy()
        if not tempParents:
            return
        limbCreationOrder = []
        for i in range(99):
            if not tempParents:
                break
            parents = set(list(tempParents.values()))
            for child in list(tempParents.keys()):
                if child not in parents:
                    limbCreationOrder.append(child)
                    del(tempParents[child])
        prefix = self.parent.parent.rigRoot.prefix.get()
        for limb in limbCreationOrder[::-1]:
            limbID = limb.ID.get()
            name = '%s_%s' % (prefix, limb.pfrsName.get())
            parent = limbParents[limb]
            parentID = ''
            if parent:
                parentID = str(parent.ID.get())
            pm.treeView(self.widget, e=1, ai=(limbID, parentID))
            pm.treeView(self.widget, e=1, dl=(limbID, name))
            # side = self.limbMng.GetLimbSide(limb)
            side = rigData.LIMB_SIDES[limb.side.get()]
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
            limb = self.limbMng.GetLimb(int(limbIDStrs[0]))
            msg = '\tLimbHier > SELECTED limb "%s"'% limb.pfrsName.get()
            self.logger.info(msg)
            self.parent.LimbSelected(limb)
        else:
            msg = '\tLimbHier > DESELECTED limb'% limb.pfrsName.get()
            self.logger.info(msg)
            self.parent.LimbSelected(None)
    