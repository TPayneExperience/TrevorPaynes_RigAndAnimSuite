
import pymel.core as pm

import Common.Utilities as util
reload(util)

class LS_Joint_Hierarchy_UI:
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
        self.widget = pm.treeView(arp=0, scc=self.JointHierSelectionChanged)
        pm.treeView(self.widget, e=1, editLabelCommand=self.Rename)
        with pm.popupMenu():
            self.add_mi = pm.menuItem('Add', c=pm.Callback(self.Add))
            pm.menuItem(divider=1)
            self.remove_mi = pm.menuItem('Remove', en=0, c=pm.Callback(self.Remove))
    
#=========== FUNCTIONALITY ====================================

    def JointHierSelectionChanged(self):
        ''' Disable RMB > Remove if chain joints + non-end + 
            non-sequential joints selected.
        '''
        self.logger.debug('\tLS_JointHier > JointHierSelectionChanged')
        pm.menuItem(self.remove_mi, e=1, en=0)
        jointIDs = [int(ID) for ID in pm.treeView(self.widget, q=1, si=1)]
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
        self.logger.debug('\t\t' + str(limb.pfrsName.get()))
        self.limb = limb
        self.Populate()

    def Add(self):
        self.logger.info('\tJointHier > ADDING Joints:')
        for joint in self.parent.jointsToAddToLimb:
            # self.jntMng.Teardown_Editable(self.limb, joint)
            self.logger.info('\t\t' + str(joint))
            self.grpMng.Add(self.limb, joint)
        self.jntMng.ReindexJoints(self.limb)
        self.limb.rebuildLimbType.set(1)
        self.parent.ClearJointsToAdd()
        self.parent.PopulateJoints()

    def Remove(self):
        self.logger.info('\tJointHier > REMOVING Joints:')
        jointIDs = [int(ID) for ID in pm.treeView(self.widget, q=1, si=1)]
        joints = [self.joints[ID] for ID in jointIDs]
        for joint in joints:
            self.logger.info('\t\t' + str(joint))
            self.jntMng.RemoveJoint(joint)
        self.limb.rebuildLimbType.set(1)
        self.parent.PopulateJoints()

    def Rename(self, jointIDStr, newName):
        self.logger.info('\tJointHier > RENAMING Joint: ')
        joint = self.joints[int(jointIDStr)]
        msg = '\t\t%s >>> %s' %(joint.pfrsName.get(), newName)
        self.logger.info(msg)
        if not self.nameMng.IsValidCharacterLength(newName):
            return ''
        if not self.nameMng.DoesNotStartWithNumber(newName):
            return ''
        if not self.nameMng.AreAllValidCharacters(newName):
            return ''
        jointNames = []
        for limbJoint in pm.listConnections(self.limb.joints):
            jointNames.append(limbJoint.pfrsName.get())
        if newName in jointNames:
            self.logger.error('**** Joint name not unique to limb *****')
            return ''
        joint.pfrsName.set(newName)
        self.jntMng.UpdateJointName(joint)
        self.parent.PopulateJoints()
        return ''






