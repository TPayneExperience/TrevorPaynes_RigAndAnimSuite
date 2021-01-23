
import pymel.core as pm

class LS_Joint_Hierarchy_UI:
    def __init__(self, limbMng, jntMng, grpMng, nameMng, parent):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.grpMng = grpMng
        self.nameMng = nameMng
        self.parent = parent
        self.logger = parent.logger

        self.limb = None

        self._Setup()

    def Populate(self):
        self.logger.debug('\tLS_JointHier > Populate')
        self.Depopulate()
        if not self.limb:
            return
        for joint in self.jntMng.GetLimbJoints(self.limb):
            jointID = joint.ID.get()
            name = joint.pfrsName.get()
            pm.treeView(self.widget, e=1, addItem=(jointID, ''))
            pm.treeView(self.widget, e=1, displayLabel=(jointID, name))
    
    def Depopulate(self):
        pm.treeView(self.widget, e=1, removeAll=1)

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
        jntStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if not jntStrs:
            self.logger.info('\tJointHier > DESELECTED joints')
            return
        selJoints = [self.jntMng.GetJoint(int(ID)) for ID in jntStrs]
        # joints = self.jntMng.GetLimbTempJoints(self.limb)
        joints = self.jntMng.GetLimbJoints(self.limb)
        self.logger.info('\tJointHier > SELECTED joints:')
        for joint in selJoints:
            self.logger.info('\t\t' + str(joint))
        if len(joints) > 1 and self.jntMng.AreJointsChained(joints):
            if self.jntMng.AreJointsChained(selJoints):
                chainJoints = self.jntMng.GetJointChain(selJoints)
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
            self.jntMng.Add(self.limb, joint)
        self.jntMng.ReindexJoints(self.limb)
        self.limb.rebuildLimbType.set(1)
        self.parent.ClearJointsToAdd()
        self.parent.PopulateJoints()

    def Remove(self):
        self.logger.info('\tJointHier > REMOVING Joints:')
        jointIDs = [int(ID) for ID in pm.treeView(self.widget, q=1, si=1)]
        joints = [self.jntMng.GetJoint(ID) for ID in jointIDs]
        for joint in joints:
            self.logger.info('\t\t' + str(joint))
            self.jntMng.RemoveTemp(joint)
        self.limb.rebuildLimbType.set(1)
        self.parent.PopulateJoints()

    def Rename(self, jointIDStr, newName):
        self.logger.info('\tJointHier > RENAMING Joint: ')
        joint = self.jntMng.GetJoint(int(jointIDStr))
        msg = '\t\t%s >>> %s' %(joint.pfrsName.get(), newName)
        self.logger.info(msg)
        if not self.nameMng.IsValidCharacterLength(newName):
            return ''
        if not self.nameMng.DoesNotStartWithNumber(newName):
            return ''
        if not self.nameMng.AreAllValidCharacters(newName):
            return ''
        jointNames = []
        for limbJoint in self.jntMng.GetLimbJoints(self.limb):
            jointNames.append(limbJoint.pfrsName.get())
        if newName in jointNames:
            self.logger.error('**** Joint name not unique to limb *****')
            return ''
        joint.pfrsName.set(newName)
        group = pm.listConnections(joint.group)[0]
        self.grpMng.UpdateGroupName(group)
        self.parent.PopulateJoints()
        return ''






