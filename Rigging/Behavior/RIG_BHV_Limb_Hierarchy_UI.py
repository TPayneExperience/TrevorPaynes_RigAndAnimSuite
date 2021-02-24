
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

class RIG_BHV_Limb_Hierarchy_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
        self.rigBHV = parent.rigBHV
        self.grpMng = parent.grpMng
        self.nameMng = parent.nameMng
        self.logger = parent.logger
        self.pfrs = parent.pfrs
        self.rootMng = self.pfrs.rootMng

        self._limbs = {} # rootID_limbID : limb
        self._validLimbs = []

        self._Setup()

    def Populate(self): 
        self.logger.debug('\tBhv_LimbHier > Populate')
        # SAME AS APP LIMB HIER
        pm.treeView(self.widget, e=1, removeAll=1)
        curRoot = self.pfrs.root
        self._limbs = {}
        self._validLimbs = []
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
                pm.treeView(self.widget, e=1, dl=(limbID, name), enl=enable)
                if enable:
                    self._validLimbs.append(limbID)
                side = rigData.LIMB_SIDES[limb.side.get()]
                if (side == 'L'):
                    pm.treeView(self.widget, e=1, bti=(limbID, 1, side),
                            lbc=(limbID, 0.1, 0.1, 0.3))
                elif (side == 'R'):
                    pm.treeView(self.widget, e=1, bti=(limbID, 1, side),
                            lbc=(limbID, 0.3, 0.1, 0.1))
                else:
                    pm.treeView(self.widget, e=1, bvf=(limbID, 1, 0))
                # NOT IN APP HIER
                if limb.bhvType.get() in rigData.EMPTY_BHV_INDEXES:
                    pm.treeView(self.widget, e=1, ornament=(limbID, 1, 0, 3))

#=========== SETUP ====================================

    def _Setup(self):
        msg = '- MMB + Drag + Drop to reparent'
        msg += '\n- Red Dots indicate Empty Limbs'
        msg += '\n- Double Click to rename Empty Limbs'
        self.widget = pm.treeView(ams=0, nb=1, ann=msg)
        pm.treeView(self.widget, e=1, scc=self.SelectionChanged,
                                        sc=self.ValidateSelection,
                                        elc=self.RenameLimb,
                                        dad=self.ReparentLimb)
        with pm.popupMenu():
            pm.menuItem(l='Add Empty Limb', c=self.AddEmptyRigLimb)
            self.remove_mi = pm.menuItem(l='Remove Empty Rig Limb', 
                                        en=0, c=self.RemoveEmptyLimb)
            pm.menuItem(d=1)
            pm.menuItem(l='Load Skeleton Hierarchy', c=self.LoadSkelHier)
            pm.menuItem(l='Load Default Hierarchy', c=self.LoadDefaultHier)
            pm.menuItem(d=1)
            pm.menuItem(l='Save as Default Hierarchy', c=self.SaveAsDefaultHier)


#=========== FUNCTIONS ====================================

    def ValidateSelection(self, limbIDStr, itemNum):
        return limbIDStr in self._validLimbs

    def SelectionChanged(self):
        self.logger.debug('\tBhv_LimbHier > SelectionChanged')
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        pm.menuItem(self.remove_mi, e=1, en=bool(limbIDStrs))
        limb = self._limbs[limbIDStrs[0]]
        msg = '\tLimbHier > SELECTED limb "%s"'% limb.pfrsName.get()
        self.logger.info(msg)
        self.parent.LimbSelected(limb)

    def ReparentLimb(self, limbIDsStr, oldParents, i2, newParentIDStr, i3, i4, i5):
        self.logger.debug('\tBhv_LimbHier > ReparentLimb')
        if oldParents[0] == newParentIDStr:
            return
        child = self._limbs[limbIDsStr[0]]
        name = child.pfrsName.get()
        if newParentIDStr:
            parent = self._limbs[newParentIDStr]
            msg = '\tLimbHier > REPARENTING '
            msg += '"%s" to "%s"' % (name, parent.pfrsName.get())
            self.logger.info(msg)
        else:
            parent = None
            self.logger.info('\tLimbHier > REPARENTING "%s" to world' % name)
        self.limbMng.ReparentLimb(child, parent)
        self.jntMng.UpdateLimbParentJoint(child)
    
    def RenameLimb(self, limbIDStr, newName):
        self.logger.debug('\tBhv_LimbHier > RenameLimb')
        limb = self._limbs[limbIDStr]
        # if limb.bhvType.get() not in self.rigBHV.emptyLimbIndexes:
        if limb.bhvType.get() not in rigData.EMPTY_BHV_INDEXES:
            return ''
        oldName = limb.pfrsName.get()
        msg = '\tLimbHier > RENAMING "%s" to "%s"' % (oldName, newName)
        self.logger.info(msg)

        if not self.nameMng.IsValidCharacterLength(newName):
            return ''
        if not self.nameMng.DoesNotStartWithNumber(newName):
            return ''
        if not self.nameMng.AreAllValidCharacters(newName):
            return ''
        if not self.limbMng.RenameLimb(limb, newName):
            msg = '**** Two limbs MAX may have same name'
            self.logger.error(msg)
        group = pm.listConnections(limb.bhvEmptyGroup)[0]
        self.grpMng.UpdateGroupName(group)
        self.Populate()
        return ''

#=========== RMB ====================================

    def AddEmptyRigLimb(self, ignore):
        self.rigBHV.AddEmptyRigLimb()
        self.Populate()

    def RemoveEmptyLimb(self, ignore):
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        limb = self._limbs[limbIDStrs[0]]
        self.rigBHV.RemoveEmptyLimb(limb)
        self.Populate()

    def LoadSkelHier(self, ignore):
        self.logger.info('\tLimbHier > LOAD SKELETON hierarchy')
        self.limbMng.ParentLimbsBySkeleton()
        # self.parent.UpdateLimbUI()
        self.Populate()
    
    def LoadDefaultHier(self, ignore):
        self.logger.info('\tLimbHier > LOAD DEFAULT hierarchy')
        limbs = pm.listConnections(self.pfrs.root.jointLimbs)
        limbs += pm.listConnections(self.pfrs.root.emptyLimbs)
        for limb in limbs:
            pm.disconnectAttr(limb.limbParent)
            parents = pm.listConnections(limb.defaultLimbParent)
            if parents:
                pm.connectAttr(parents[0].limbChildren, limb.limbParent)
        self.Populate()
    
    def SaveAsDefaultHier(self, ignore):
        self.logger.info('\tLimbHier > SAVE DEFAULT hierarchy')
        limbs = pm.listConnections(self.pfrs.root.jointLimbs)
        limbs += pm.listConnections(self.pfrs.root.emptyLimbs)
        for limb in limbs:
            pm.disconnectAttr(limb.defaultLimbParent)
            parents = pm.listConnections(limb.limbParent)
            if parents:
                pm.connectAttr(parents[0].defaultLimbChildren, 
                                limb.defaultLimbParent)

    
    















































