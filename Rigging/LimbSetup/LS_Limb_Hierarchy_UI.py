
import pymel.core as pm


class LS_Limb_Hierarchy_UI:
    def __init__(self, limbMng, jntMng, grpMng, ctrMng, nameMng, parent):

        self.limbMng = limbMng
        self.jntMng = jntMng
        self.grpMng = grpMng
        self.ctrMng = ctrMng
        self.nameMng = nameMng
        self.parent = parent
        self.logger = parent.logger

        self._Setup()

    def Populate(self):
        pm.treeView(self.widget, e=1, removeAll=1)
        temp = {} # pfrsName : [limbs]
        for limb in self.limbMng.GetAllLimbs():
            limbID = limb.ID.get()
            limbName = limb.pfrsName.get()
            if limbName not in temp:
                temp[limbName] = []
            temp[limbName].append(limb)
        for limbName in sorted(list(temp.keys())):
            for limb in temp[limbName]:
                limbID = limb.ID.get()
                pm.treeView(self.widget, e=1, ai=(limbID, ''))
                pm.treeView(self.widget, e=1, dl=(limbID, limbName))
                side = self.limbMng.GetLimbSide(limb)
                if (side == 'L'):
                    pm.treeView(self.widget, e=1, bti=(limbID, 1, side),
                            lbc=(limbID, 0.1, 0.1, 0.3))
                elif (side == 'R'):
                    pm.treeView(self.widget, e=1, bti=(limbID, 1, side),
                            lbc=(limbID, 0.3, 0.1, 0.1))
                else:
                    pm.treeView(self.widget, e=1, bvf=(limbID, 1, 0))
                # joints = self.jntMng.GetLimbTempJoints(limb)
                # joints = self.jntMng.GetLimbJoints(limb)
                # index = limb.limbType.get()
                # if (index == 0) and joints:
                #     pm.treeView(self.widget, e=1, ornament=(limbID, 1, 0, 4))
                # if (index == 1) and len(joints) != 1:
                #     pm.treeView(self.widget, e=1, ornament=(limbID, 1, 0, 4))
                # if (index == 2) and not self.jntMng.AreJointsChained(joints):
                #     pm.treeView(self.widget, e=1, ornament=(limbID, 1, 0, 4))
                # if (index == 3) and not self.jntMng.AreJointsSiblings(joints):
                #     pm.treeView(self.widget, e=1, ornament=(limbID, 1, 0, 4))
        # if (selectedID != -1):
        #     pm.treeView(self.widget, e=1, selectItem=(selectedID, 1))

#=========== SETUP ====================================

    def _Setup(self):
        tt = 'Double click to RENAME.'
        tt += '\nTo set a limb as a MIRROR,'
        tt += '\nname BOTH LIMBS with the SAME NAME.'
        self.widget = pm.treeView(ams=0, adr=0, arp=0, ann=tt, nb=1, fb=1)
        pm.treeView(self.widget, e=1,   editLabelCommand=self.Rename,
                                        scc=self.SelectionChanged,
                                        enk=1)
        with pm.popupMenu():
            self.add_mi = pm.menuItem(l='Add Limb', c=self.parent.AddLimb)
            self.flipSides_mi = pm.menuItem(l='Flip Sides', en=0, c=self.FlipSides)
            pm.menuItem(divider=1)
            self.remove_mi = pm.menuItem(l='Remove Limb', en=0, c=self.Remove)

#=========== FUNCTIONALITY ====================================

    def SetAddEnabled(self, areJointsValid):
        pm.menuItem(self.add_mi, e=1, en=areJointsValid)

    def SelectionChanged(self):
        pm.menuItem(self.flipSides_mi, e=1, en=0)
        pm.menuItem(self.remove_mi, e=1, en=0)
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if limbIDStrs:
            pm.menuItem(self.remove_mi, e=1, en=1)
            limb = self.limbMng.GetLimb(int(limbIDStrs[0]))
            name = limb.pfrsName.get()
            self.logger.info('\t\tLimbHier > SELECTED limb "%s"' % name)
            if pm.listConnections(limb.mirrorLimb):
                pm.menuItem(self.flipSides_mi, e=1, en=1)
            self.parent.LimbSelected(limb)
        else:
            self.parent.LimbSelected(None)
            self.logger.info('\t\tLimbHier > DESELECTED limb')

    def Remove(self, ignore):
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if not limbIDStrs:
            return
        if (pm.confirmDialog(   title='Remove Limb', 
                                icon='warning', 
                                message='Remove limb?', 
                                button=['Yes','No'], 
                                defaultButton='Yes', 
                                cancelButton='No', 
                                dismissString='No') == 'No'):
            return
        limb = self.limbMng.GetLimb(int(limbIDStrs[0]))
        name = limb.pfrsName.get()
        self.logger.info('\t\tLimbHier > REMOVE Limb "%s"' % name)
        # for joint in self.jntMng.GetLimbTempJoints(limb):
        for joint in self.jntMng.GetLimbJoints(limb):
            self.jntMng.RemoveTemp(joint)

        limbGroups = pm.listConnections(limb.bhvDistanceGroup)
        limbGroups += pm.listConnections(limb.bhvEmptyGroup)
        limbGroups += pm.listConnections(limb.bhvFKIKSwitchGroup)
        for group in limbGroups:
            ctr = pm.listConnections(group.control)[0]
            self.ctrMng.Remove(ctr)
            self.grpMng.Remove(group)
        pm.delete(limbGroups)
        
        mirror = pm.listConnections(limb.mirrorLimb)
        self.parent.RemoveLimb(limb)
        self.limbMng.Remove(limb)
        if mirror:
            self.jntMng.UpdateLimbJointNames(mirror[0])
        self.parent.Populate()
        self.parent.UpdateSceneFrame()

    def Rename(self, limbIDStr, newName):
        limb = self.limbMng.GetLimb(int(limbIDStr))
        oldName = limb.pfrsName.get()
        msg = '\t\tLimbHier > RENAMING "%s" to "%s"' % (oldName, newName)
        self.logger.info(msg)

        if not self.nameMng.IsValidCharacterLength(newName):
            return ''
        if not self.nameMng.DoesNotStartWithNumber(newName):
            return ''
        if not self.nameMng.AreAllValidCharacters(newName):
            return ''

        # oldMirror = self.limbMng.GetLimbMirror(limb)
        if self.limbMng.Rename(limb, newName):
            self.parent.RenameLimbs(limb)
        else:
            msg = '\t\t\tTwo limbs MAX may have same name'
            self.logger.error(msg)
        # newMirror = self.limbMng.GetLimbMirror(limb)

        # if oldMirror:
        #     self.jntMng.UpdateLimbJointNames(oldMirror[0])
        #     for group in self.grpMng.GetAllLimbGroups(oldMirror[0]):
        #         self.grpMng.UpdateGroupName(oldMirror[0], group)
        # if newMirror:
        #     self.jntMng.UpdateLimbJointNames(newMirror[0])
        #     for group in self.grpMng.GetAllLimbGroups(newMirror[0]):
        #         self.grpMng.UpdateGroupName(newMirror[0], group)
        # self.jntMng.UpdateLimbJointNames(limb)
        # for group in self.grpMng.GetAllLimbGroups(limb):
        #     self.grpMng.UpdateGroupName(limb, group)
        
        # self.parent.RenameLimbs([limb] + oldMirror + newMirror)
        return ''

    def FlipSides(self, ignore):
        self.logger.info('\t\tLimbHier > Flip Sides')
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        sourceLimb = self.limbMng.GetLimb(int(limbIDStrs[0]))
        mirrorLimb = pm.listConnections(sourceLimb.mirrorLimb)[0]
        self.limbMng.FlipSides(sourceLimb)
        self.jntMng.UpdateLimbJointNames(sourceLimb)
        self.jntMng.UpdateLimbJointNames(mirrorLimb)
        self.parent.FlipSides()






