
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

class APP_Limb_Hierarchy_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.rigBHV = parent.rigBHV
        self.logger = parent.logger
        self.pfrs = parent.pfrs
        self.rootMng = self.pfrs.rootMng

        self._limbs = {} # rootID_limbID : limb

        self._Setup()

    def Populate(self):
        self.logger.debug('\tApp_LimbHier > Populate')
        pm.treeView(self.widget, e=1, removeAll=1)
        curRoot = self.pfrs.root
        self._limbs = {}
        rootLimbs = []
        for root in self.rootMng.GetSceneRoots():
            rootLimbs += self.limbMng.GetRootLimbs(root)
        for rootLimb in rootLimbs[::-1]:
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                root = pm.listConnections(limb.rigRoot)[0]
                rootID = root.ID.get()
                prefix = root.prefix.get()
                enable = (root == curRoot)
                limbID = '%d_%d' % (rootID, limb.ID.get())
                self._limbs[limbID] = limb
                name = '%s_%s' % (prefix, limb.pfrsName.get())
                parent = pm.listConnections(limb.limbParent)
                parentID = ''
                if parent:
                    parentID = parent.ID.get()
                pm.treeView(self.widget, e=1, ai=(limbID, parentID))
                pm.treeView(self.widget, e=1, dl=(limbID, name), en=enable)
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
            limb = self._limbs[limbIDStrs[0]]
            msg = '\tLimbHier > SELECTED limb "%s"'% limb.pfrsName.get()
            self.logger.info(msg)
            self.parent.LimbSelected(limb)
        else:
            self.logger.info('\tLimbHier > DESELECTED limb')
            self.parent.LimbSelected(None)
    
    
    
















































