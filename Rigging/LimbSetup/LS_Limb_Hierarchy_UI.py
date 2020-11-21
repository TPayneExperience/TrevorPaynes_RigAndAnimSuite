
import pymel.core as pm


class LS_Limb_Hierarchy_UI:
    def __init__(self, limbMng, jntMng, grpMng, ctrMng, nameMng, skelUI):

        self.limbMng = limbMng
        self.jntMng = jntMng
        self.grpMng = grpMng
        self.ctrMng = ctrMng
        self.nameMng = nameMng
        self.parent = skelUI

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
                if (side == 'L' or side == 'R'):
                    pm.treeView(self.widget, e=1, bti=(limbID, 1, side))
                else:
                    pm.treeView(self.widget, e=1, bvf=(limbID, 1, 0))
                # joints = self.jntMng.GetLimbTempJoints(limb)
                joints = self.jntMng.GetLimbJoints(limb)
                index = limb.limbType.get()
                if (index == 0) and joints:
                    pm.treeView(self.widget, e=1, ornament=(limbID, 1, 0, 4))
                if (index == 1) and len(joints) != 1:
                    pm.treeView(self.widget, e=1, ornament=(limbID, 1, 0, 4))
                if (index == 2) and not self.jntMng.AreJointsChained(joints):
                    pm.treeView(self.widget, e=1, ornament=(limbID, 1, 0, 4))
                if (index == 3) and not self.jntMng.AreJointsSiblings(joints):
                    pm.treeView(self.widget, e=1, ornament=(limbID, 1, 0, 4))
        # if (selectedID != -1):
        #     pm.treeView(self.widget, e=1, selectItem=(selectedID, 1))

#=========== SETUP ====================================

    def _Setup(self):
        tt = 'Double click to RENAME.'
        tt += '\nTo set a limb as a MIRROR,'
        tt += '\nname BOTH LIMBS with the SAME NAME.'
        tt += '\nThe RED DOT on the right indicates the '
        tt += "\nLIMB TYPE HAS CHANGED based on it's joints"
        self.widget = pm.treeView(ams=0, adr=0, arp=0, ann=tt, nb=1, fb=1)
        pm.treeView(self.widget, e=1,   editLabelCommand=self.Rename,
                                        scc=self.SelectionChanged)
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
            limbID = int(limbIDStrs[0])
            limb = self.limbMng.GetLimb(limbID)
            if self.limbMng.GetLimbMirror(limb):
                pm.menuItem(self.flipSides_mi, e=1, en=1)
            self.parent.LimbSelected(limbID)
        else:
            self.parent.LimbSelected(-1)

    def Remove(self, ignore):
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if limbIDStrs:
            if (pm.confirmDialog(   title='Remove Limb', 
                                    icon='warning', 
                                    message='Remove limb?', 
                                    button=['Yes','No'], 
                                    defaultButton='Yes', 
                                    cancelButton='No', 
                                    dismissString='No') == 'Yes'):
                limb = self.limbMng.GetLimb(int(limbIDStrs[0]))
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
                
                mirror = self.limbMng.GetLimbMirror(limb)
                self.parent.RemoveLimb(limb)
                self.limbMng.Remove(limb)
                if mirror:
                    self.jntMng.UpdateLimbJointNames(mirror[0])
                self.parent.Populate()
                self.parent.UpdateSceneFrame()

    def Rename(self, limbIDStr, newName):
        if self.nameMng.IsValidCharacterLength(newName):
            if self.nameMng.DoesNotStartWithNumber(newName):
                if self.nameMng.AreAllValidCharacters(newName):
                    limbID = int(limbIDStr)
                    limb = self.limbMng.GetLimb(limbID)
                    # oldMirror = self.limbMng.GetLimbMirror(limb)
                    self.limbMng.Rename(limbID, newName)
                    self.parent.RenameLimbs()
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
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if limbIDStrs:
            limbID = int(limbIDStrs[0])
            sourceLimb = self.limbMng.GetLimb(limbID)
            mirrorLimbs = self.limbMng.GetLimbMirror(sourceLimb)
            if mirrorLimbs:
                mirrorLimb = mirrorLimbs[0]
                self.limbMng.FlipSides(limbID)
                self.jntMng.UpdateLimbJointNames(sourceLimb)
                self.jntMng.UpdateLimbJointNames(mirrorLimb)
                self.parent.FlipSides()






