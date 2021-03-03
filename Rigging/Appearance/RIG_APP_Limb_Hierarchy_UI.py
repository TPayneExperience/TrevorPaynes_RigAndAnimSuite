
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

class RIG_APP_Limb_Hierarchy_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.rigBHV = parent.rigBHV
        self.logger = parent.logger
        self.pfrs = parent.pfrs
        self.rootMng = self.pfrs.rootMng

        self._limbs = {} # rootID_limbID : limb
        self._validLimbs = []

        self._Setup()

    def Populate(self):
        self.logger.debug('\tApp_LimbHier > Populate')
        pm.treeView(self.widget, e=1, removeAll=1)
        curRoot = self.pfrs.root
        self._limbs = {}
        self._validLimbs = []
        rootLimbs = []
        for root in self.rootMng.GetSceneRoots():
            rootLimbs += self.limbMng.GetRootLimbs(root)
        for rootLimb in rootLimbs[::-1]:
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                self.logger.debug('\t\tlimb ' + str(limb))
                root = pm.listConnections(limb.rigRoot)[0]
                self.logger.debug('\t\troot ' + str(root))
                rootID = root.ID.get()
                prefix = root.prefix.get()
                self.logger.debug('\t\tprefix ' + str(prefix))
                limbID = '%d_%d' % (rootID, limb.ID.get())
                self.logger.debug('\t\tlimbid ' + str(limbID))
                if root.rigMode.get() == 0: # Setup Rig
                    enable = limb.enableLimb.get()
                    self._validLimbs.append(limbID)
                elif root.rigMode.get() == 1: # Setup Rig
                    enable = (root == curRoot)
                    if enable:
                        self._validLimbs.append(limbID)
                self._limbs[limbID] = limb
                name = '%s_%s' % (prefix, limb.pfrsName.get())
                self.logger.debug('\t\tname ' + str(name))
                parent = pm.listConnections(limb.limbParent)
                parentID = ''
                if parent:
                    parent = parent[0]
                    self.logger.debug('\t\tParent: ' + str(parent))
                    parentRoot = pm.listConnections(parent.rigRoot)[0]
                    parentRootID = parentRoot.ID.get()
                    parentID = '%d_%d' % (parentRootID, parent.ID.get())
                self.logger.debug('\t\tParent id: ' + str(parentID))
                pm.treeView(self.widget, e=1, ai=(limbID, parentID))
                pm.treeView(self.widget, e=1, dl=(limbID, name), en=enable)
                self.logger.debug('\t\tSame root? ' + str(enable))
                side = rigData.LIMB_SIDES[limb.side.get()]
                self.logger.debug('\t\tSide? ' + str(side))
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
        self.widget = pm.treeView(ams=0, adr=0, arp=0, nb=1, enk=1,
                                        elc=self.IgnoreRename)
        pm.treeView(self.widget, e=1, scc=self.SelectionChanged)

#=========== FUNCTIONS ====================================

    def IgnoreRename(self, idStr, newName):
        self.logger.debug('\tApp_LimbHier > IgnoreRename')
        return ''

    def ValidateSelection(self, limbIDStr, itemNum):
        return limbIDStr in self._validLimbs

    def SelectionChanged(self):
        self.logger.debug('\tApp_LimbHier > SelectionChanged')
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        limb = self._limbs[limbIDStrs[0]]
        msg = '\tLimbHier > SELECTED limb "%s"'% limb.pfrsName.get()
        self.logger.info(msg)
        self.parent.LimbSelected(limb)
    
    
    
















































