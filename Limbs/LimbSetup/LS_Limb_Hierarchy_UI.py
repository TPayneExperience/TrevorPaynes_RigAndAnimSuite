
import pymel.core as pm


class LS_Limb_Hierarchy_UI:
    def __init__(self, limbMng, jntMng, nameMng, skelUI):

        self.limbMng = limbMng
        self.jntMng = jntMng
        self.nameMng = nameMng
        self.parent = skelUI

        self._Setup()

    def Populate(self):
        pm.treeView(self.widget, e=1, removeAll=1)
        temp = {} # pfrsName : [limbs]
        for rootLimbID in self.limbMng.GetRootLimbIDs():
            for limbID in self.limbMng.GetLimbCreationOrder(rootLimbID):
                limb = self.limbMng.GetLimb(limbID)
                limbName = limb.pfrsName.get()
                if limbName not in temp:
                    temp[limbName] = []
                temp[limbName].append(limbID)
        for limbName in sorted(list(temp.keys())):
            for limbID in temp[limbName]:
                pm.treeView(self.widget, e=1, ai=(limbID, ''))
                pm.treeView(self.widget, e=1, displayLabel=(limbID, limbName))
                side = self.limbMng.GetLimbSide(limbID)
                if (side == 'L' or side == 'R'):
                    pm.treeView(self.widget, e=1, buttonTextIcon=(limbID, 1, side))
                else:
                    pm.treeView(self.widget, e=1, buttonVisible=(limbID, 1, 0))
        # if (selectedID != -1):
        #     pm.treeView(self.widget, e=1, selectItem=(selectedID, 1))

#=========== SETUP ====================================

    def _Setup(self):
        tt = 'Double click to RENAME.'
        tt += '\nTo set a limb as a MIRROR,'
        tt += '\nname BOTH LIMBS with the SAME NAME'
        self.widget = pm.treeView(ams=0, adr=0, arp=0, ann=tt, nb=1, fb=1)
        pm.treeView(self.widget, e=1,   editLabelCommand=self.Rename,
                                        scc=self.SelectionChanged)
        with pm.popupMenu():
            pm.menuItem(l='Add Limb', c=self.parent.AddLimb)
            pm.menuItem(l='Flip Sides', c=self.FlipSides)
            pm.menuItem(divider=1)
            pm.menuItem(l='Remove Limb', c=self.Remove)

#=========== FUNCTIONALITY ====================================

    def SelectionChanged(self):
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if limbIDStrs:
            self.parent.LimbSelected(int(limbIDStrs[0]))

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
                limbID = int(limbIDStrs[0])
                for joint in self.jntMng.GetLimbJoints(limbID):
                    self.jntMng.Remove(joint)
                limb = self.limbMng.GetLimb(limbID)
                mirror = self.limbMng.GetLimbMirror(limb)
                self.limbMng.Remove(limb)
                if mirror:
                    self.jntMng.UpdateLimbJointNames(mirror[0])
                self.parent.RemoveLimb()

    def Rename(self, limbIDStr, newName):
        if self.nameMng.IsValidCharacterLength(newName):
            if self.nameMng.DoesNotStartWithNumber(newName):
                if self.nameMng.AreAllValidCharacters(newName):
                    limbID = int(limbIDStr)
                    limb = self.limbMng.GetLimb(limbID)
                    oldMirror = self.limbMng.GetLimbMirror(limb)
                    self.limbMng.Rename(limbID, newName)
                    newMirror = self.limbMng.GetLimbMirror(limb)

                    if oldMirror:
                        self.jntMng.UpdateLimbJointNames(oldMirror[0])
                    if newMirror:
                        self.jntMng.UpdateLimbJointNames(newMirror[0])
                    self.jntMng.UpdateLimbJointNames(limb)
                    
                    self.parent.RenameLimbs([limb] + oldMirror + newMirror)
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






