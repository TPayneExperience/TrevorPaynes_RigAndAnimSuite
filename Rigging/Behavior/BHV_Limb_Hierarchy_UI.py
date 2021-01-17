
import pymel.core as pm

class BHV_Limb_Hierarchy_UI:
    def __init__(self, limbMng, jntMng, bhvMng, grpMng, parent):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.bhvMng = bhvMng
        self.grpMng = grpMng
        self.parent = parent
        self.logger = parent.logger

        self._Setup()

    def Populate(self):
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
                side = self.limbMng.GetLimbSide(limb)
                if (side == 'L'):
                    pm.treeView(self.widget, e=1, bti=(limbID, 1, side),
                            lbc=(limbID, 0.1, 0.1, 0.3))
                elif (side == 'R'):
                    pm.treeView(self.widget, e=1, bti=(limbID, 1, side),
                            lbc=(limbID, 0.3, 0.1, 0.1))
                else:
                    pm.treeView(self.widget, e=1, bvf=(limbID, 1, 0))
                # if limb.bhvType.get() in self.bhvMng.parentableIndexes:
                #     pm.treeView(self.widget, e=1, ornament=(limbID, 1, 0, 3))
                self.jntMng.UpdateLimbParentJoint(limb)

#=========== SETUP ====================================

    def _Setup(self):
        msg = '- MMB + Drag + Drop to reparent'
        msg += '\n- Items with the circle can be parented to'
        self.widget = pm.treeView(ams=0, nb=1, ann=msg)
        pm.treeView(self.widget, e=1, scc=self.SelectionChanged)
        pm.treeView(self.widget, e=1, dad=self.Reparent)
        with pm.popupMenu():
            pm.menuItem(l='Load Skeleton Hierarchy', c=self.LoadSkelHier)
            pm.menuItem(l='Load Default Hierarchy', c=self.LoadDefaultHier)
            pm.menuItem(divider=1)
            pm.menuItem(l='Save as Default Hierarchy', c=self.SaveAsDefaultHier)

#=========== FUNCTIONS ====================================

    def SelectionChanged(self):
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if limbIDStrs:
            limb = self.limbMng.GetLimb(int(limbIDStrs[0]))
            msg = '\t\tLimbHier > SELECTED limb "%s"'% limb.pfrsName.get()
            self.logger.info(msg)
            self.parent.LimbSelected(limb)
        else:
            self.logger.info('\t\tLimbHier > DESELECTED limb')
            self.parent.LimbSelected(None)

    
    def Reparent(self, limbIDsStr, oldParents, i2, newParentIDStr, i3, i4, i5):
        if oldParents[0] == newParentIDStr:
            return
        limbID = int(limbIDsStr[0])
        limb = self.limbMng.GetLimb(limbID)
        name = self.limbMng.GetLimb(limbID).pfrsName.get()
        if newParentIDStr:
            parentID = int(newParentIDStr)
            parentLimb = self.limbMng.GetLimb(parentID)
            msg = '\t\tLimbHier > REPARENTING '
            msg += '"%s" to "%s"' % (name, parentLimb.pfrsName.get())
            self.logger.info(msg)
            parentBhvType = parentLimb.bhvType.get()
            if parentBhvType not in self.bhvMng.parentableIndexes:
                self.Populate()
                return
        else:
            self.logger.info('\t\tLimbHier > REPARENTING "%s" to world' % name)
            parentID = -1
        self.limbMng.Reparent(limbID, parentID)
        self.jntMng.UpdateLimbParentJoint(limb)
    
#=========== RMB ====================================

    def LoadSkelHier(self, ignore):
        self.logger.info('\t\tLimbHier > LOAD SKELETON hierarchy')
        limbParents = self.limbMng.GetDefaultLimbHier(self.jntMng)
        for child, parent in limbParents.items():
            if not parent:
                continue
            self.limbMng.Reparent(child.ID.get(), parent.ID.get())
            self.jntMng.UpdateLimbParentJoint(child)
        # self.parent.UpdateLimbUI()
        self.Populate()
    
    def LoadDefaultHier(self, ignore):
        self.logger.info('\t\tLimbHier > LOAD DEFAULT hierarchy')
        for limb in self.limbMng.GetAllLimbs():
            pm.disconnectAttr(limb.parentLimb)
            parents = pm.listConnections(limb.defaultParentLimb)
            if parents:
                pm.connectAttr(parents[0].childrenLimbs, limb.parentLimb)
        self.Populate()
    
    def SaveAsDefaultHier(self, ignore):
        self.logger.info('\t\tLimbHier > SAVE DEFAULT hierarchy')
        for limb in self.limbMng.GetAllLimbs():
            pm.disconnectAttr(limb.defaultParentLimb)
            parents = pm.listConnections(limb.parentLimb)
            if parents:
                pm.connectAttr(parents[0].defaultChildrenLimbs, 
                                limb.defaultParentLimb)

    
    
















































