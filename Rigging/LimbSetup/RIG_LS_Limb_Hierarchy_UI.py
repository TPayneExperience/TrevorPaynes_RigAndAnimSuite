
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)


class RIG_LS_Limb_Hierarchy_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
        self.grpMng = parent.grpMng
        self.ctrMng = parent.ctrMng
        self.rigBHV = parent.rigBHV
        self.nameMng = parent.nameMng
        self.logger = parent.logger
        self.pfrs = parent.pfrs
        self.rigLS = parent.pfrs.rigLS

        self._limbs = {} # ID : limb

        self._Setup()

    def Populate(self):
        self.logger.debug('\tLS_LimbHier > Populate')
        pm.treeView(self.widget, e=1, removeAll=1)
        pm.menuItem(self.add_mi, e=1, en=0)
        pm.menuItem(self.flipSides_mi, e=1, en=0)
        pm.menuItem(self.remove_mi, e=1, en=0)
        temp = {} # pfrsName : [limbs]
        self._limbs = {}
        allLimbs = pm.listConnections(self.pfrs.root.jointLimbs)
        pm.menuItem(self.removeAll_mi, e=1, en=bool(allLimbs))
        for limb in allLimbs:
            self._limbs[str(limb.ID.get())] = limb
            limbName = limb.pfrsName.get()
            if limbName not in temp:
                temp[limbName] = []
            temp[limbName].append(limb)
        for limbName in sorted(list(temp.keys())):
            for limb in temp[limbName]:
                limbID = limb.ID.get()
                pm.treeView(self.widget, e=1, ai=(limbID, ''))
                pm.treeView(self.widget, e=1, dl=(limbID, limbName))
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
        with pm.frameLayout('Limbs', bv=1):
            tt = 'Double click to RENAME.'
            tt += '\nTo set a limb as a MIRROR,'
            tt += '\nname BOTH LIMBS with the SAME NAME.'
            self.widget = pm.treeView(ams=0, adr=0, arp=0, ann=tt, nb=1, fb=1)
            pm.treeView(self.widget, e=1,   elc=self.RenameLimb,
                                            scc=self.SelectionChanged,
                                            enk=1)
            with pm.popupMenu():
                self.add_mi = pm.menuItem(l='Add Limb', en=0, c=self.Add)
                self.flipSides_mi = pm.menuItem(l='Flip Sides', en=0, c=self.FlipSides)
                pm.menuItem(divider=1)
                self.remove_mi = pm.menuItem(l='Remove Limb', en=0, c=self.Remove)
                pm.menuItem(divider=1)
                self.removeAll_mi = pm.menuItem(l='Remove ALL Limbs', c=self.RemoveAll)

#=========== FUNCTIONALITY ====================================

    def SetAddEnabled(self, areJointsValid):
        self.logger.debug('\tLS_LimbHier > SetAddEnabled ' + str(areJointsValid))
        pm.menuItem(self.add_mi, e=1, en=areJointsValid)

    def SelectionChanged(self):
        self.logger.debug('\tLS_LimbHier > SelectionChanged')
        pm.menuItem(self.flipSides_mi, e=1, en=0)
        pm.menuItem(self.remove_mi, e=1, en=0)
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if limbIDStrs:
            pm.menuItem(self.remove_mi, e=1, en=1)
            limb = self._limbs[limbIDStrs[0]]
            name = limb.pfrsName.get()
            self.logger.info('\tLimbHier > SELECTED limb "%s"' % name)
            if pm.listConnections(limb.mirrorLimb):
                pm.menuItem(self.flipSides_mi, e=1, en=1)
            self.parent.LimbSelected(limb)
        else:
            self.parent.LimbSelected(None)
            self.logger.info('\tLimbHier > DESELECTED limb')

    def Remove(self, ignore):
        self.logger.info('\tLS_LimbHier > Remove')
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if (pm.confirmDialog(   title='Remove Limb', 
                                icon='warning', 
                                message='Remove limb?', 
                                button=['Yes','No'], 
                                defaultButton='Yes', 
                                cancelButton='No', 
                                dismissString='No') == 'No'):
            return
        limb = self._limbs[limbIDStrs[0]]
        self.rigLS.RemoveJointLimb(limb)
        self.parent.RemoveJointLimb()

    def RemoveAll(self, ignore):
        self.logger.info('\tLS_LimbHier > Remove ALL')
        if (pm.confirmDialog(   title='Remove ALL Limbs', 
                                icon='warning', 
                                message='Remove ALL limbs?', 
                                button=['Yes','No'], 
                                defaultButton='Yes', 
                                cancelButton='No', 
                                dismissString='No') == 'No'):
            return
        self.rigLS.RemoveAllJointLimbs()
        self.parent.RemoveJointLimb()

    def Add(self, ignore):
        self.logger.info('\tLS_LimbHier > Add Limb')
        self.parent.AddJointLimb()

    def RenameLimb(self, limbIDStr, newName):
        self.logger.debug('\tLS_LimbHier > RenameLimb')
        limb = self._limbs[limbIDStr]
        oldName = limb.pfrsName.get()
        msg = '\tLimbHier > RENAMING "%s" to "%s"' % (oldName, newName)
        self.logger.info(msg)

        if not self.nameMng.IsValidCharacterLength(newName):
            self.logger.error('**** Must be 2 or more characters')
            return ''
        if not self.nameMng.DoesNotStartWithNumber(newName):
            self.logger.error('**** Cannot start with number OR _')
            return ''
        if not self.nameMng.AreAllValidCharacters(newName):
            self.logger.error('**** May only contain A-Z, a-z, 0-9, _')
            return ''

        if self.limbMng.RenameLimb(limb, newName):
            self.parent.Populate()
        else:
            msg = '**** Two limbs MAX may have same name'
            self.logger.error(msg)
        return ''

    def FlipSides(self, ignore):
        self.logger.info('\tLS_LimbHier > Flip Sides')
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        sourceLimb = self._limbs[limbIDStrs[0]]
        mirrorLimb = pm.listConnections(sourceLimb.mirrorLimb)[0]
        self.limbMng.FlipSides(sourceLimb)
        for joint in pm.listConnections(sourceLimb.joints):
            self.jntMng.UpdateJointName(joint)
        for joint in pm.listConnections(mirrorLimb.joints):
            self.jntMng.UpdateJointName(joint)
        self.parent.FlipSides()




