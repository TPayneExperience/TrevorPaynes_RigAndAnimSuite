
import pymel.core as pm

import Common.Utilities as util
reload(util)

class RIG_LS_Joint_Hierarchy_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
        self.grpMng = parent.grpMng
        self.nameMng = parent.nameMng
        self.logger = parent.logger
        self.rigLS = parent.rigLS

        self.limb = None
        self.joints = {} # ID : Joint

        self._Setup()

    def Populate(self):
        self.logger.debug('\tLS_JointHier > Populate')
        pm.treeView(self.widget, e=1, removeAll=1)
        pm.menuItem(self.remove_mi, e=1, en=0)
        self.joints = {}
        if not self.limb:
            return
        for joint in util.GetSortedLimbJoints(self.limb):
            jointID = joint.ID.get()
            self.joints[jointID] = joint
            name = joint.pfrsName.get()
            pm.treeView(self.widget, e=1, addItem=(jointID, ''))
            pm.treeView(self.widget, e=1, displayLabel=(jointID, name))
    
#=========== SETUP ====================================

    def _Setup(self):
        with pm.frameLayout(l='---', bv=1) as self.jntHier_fl:
            self.widget = pm.treeView(arp=0, scc=self.JointHierSelectionChanged)
            pm.treeView(self.widget, e=1, editLabelCommand=self.Rename)
            with pm.popupMenu():
                self.add_mi = pm.menuItem('Add Joint(s)', c=pm.Callback(self.AddJoints))
                pm.menuItem(divider=1)
                self.remove_mi = pm.menuItem('Remove Joint(s)', en=0, 
                                            c=pm.Callback(self.RemoveJoints))
    
#=========== FUNCTIONALITY ====================================

    def JointHierSelectionChanged(self):
        ''' Disable RMB > Remove if chain joints + non-end + 
            non-sequential joints selected.
        '''
        self.logger.debug('\tLS_JointHier > JointHierSelectionChanged')
        pm.menuItem(self.remove_mi, e=1, en=0)
        jointIDsStr = pm.treeView(self.widget, q=1, si=1)
        if not jointIDsStr:
            return
        jointIDs = [int(ID) for ID in jointIDsStr]
        selJoints = [self.joints[ID] for ID in jointIDs]
        joints = self.joints.values()
        if len(joints) == len(selJoints):
            return
        self.logger.info('\tJointHier > SELECTED joints:')
        for joint in selJoints:
            self.logger.info('\t\t' + str(joint))
        if len(joints) > 1 and self.rigLS.AreJointsChained(joints):
            if self.rigLS.AreJointsChained(selJoints):
                chainJoints = self.rigLS.GetCompleteJointChain(selJoints)
                if (len(chainJoints) == len(selJoints)):
                    if selJoints[0] == joints[0] or selJoints[-1] == joints[-1]:
                        pm.menuItem(self.remove_mi, e=1, en=1)
        else:
            pm.menuItem(self.remove_mi, e=1, en=1)
        self.parent.SelectSceneJoints(selJoints)

    def SetAddEnabled(self, areJointsValid):
        pm.menuItem(self.add_mi, e=1, en=areJointsValid)

    def SetLimb(self, limb):
        self.logger.debug('\tLS_JointHier > SetLimb')
        pm.frameLayout(self.jntHier_fl, e=1, en=0, l='---')
        pm.treeView(self.widget, e=1, removeAll=1)
        self.limb = limb
        if not limb:
            return
        txt = "%s's Joints" % limb.pfrsName.get()
        pm.frameLayout(self.jntHier_fl, e=1, en=1, l=txt)
        self.logger.debug('\t\t' + str(limb.pfrsName.get()))
        self.Populate()

    def AddJoints(self):
        self.logger.info('\tJointHier > ADDING Joints:')
        self.rigLS.AddJoints(self.limb, self.parent.GetSelectedSceneJoints())
        self.parent.PopulateJoints()

    def RemoveJoints(self):
        self.logger.info('\tJointHier > REMOVING Joints:')
        jointIDs = [int(ID) for ID in pm.treeView(self.widget, q=1, si=1)]
        joints = [self.joints[ID] for ID in jointIDs]
        self.rigLS.RemoveJoints(self.limb, joints)
        self.parent.PopulateJoints()

    def Rename(self, jointIDStr, newName):
        self.logger.info('\tJointHier > RENAMING Joint: ')
        joint = self.joints[int(jointIDStr)]
        self.rigLS.RenameJoint(joint, newName)
        self.parent.PopulateJoints()
        return ''






