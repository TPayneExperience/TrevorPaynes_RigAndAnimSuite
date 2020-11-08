
import pymel.core as pm

class LS_Joint_Hierarchy_UI:
    def __init__(self, limbMng, jntMng, nameMng, parent=None):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.nameMng = nameMng
        self.parent = parent

        self.limb = None

        self._Setup()

    def Populate(self):
        self.Depopulate()
        for joint in self.jntMng.GetLimbTempJoints(self.limb):
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
        pm.menuItem(self.remove_mi, e=1, en=0)
        jntStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if jntStrs:
            selJoints = [self.jntMng.GetJoint(int(ID)) for ID in jntStrs]
            joints = self.jntMng.GetLimbTempJoints(self.limb)
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

    def SetLimb(self, limbID):
        self.limb = self.limbMng.GetLimb(limbID)
        self.Populate()

    def Add(self):
        for joint in self.parent.jointsToAddToLimb:
            self.jntMng.Teardown_Editable(self.limb, joint)
        self.parent.ClearJointsToAdd()
        self.parent.PopulateJoints()

    def Remove(self):
        jointIDs = [int(ID) for ID in pm.treeView(self.widget, q=1, si=1)]
        joints = [self.jntMng.GetJoint(ID) for ID in jointIDs]
        for joint in joints:
            self.jntMng.RemoveTemp(joint)
        self.parent.PopulateJoints()

    def Rename(self, jointIDStr, newName):
        if self.nameMng.IsValidCharacterLength(newName):
            if self.nameMng.DoesNotStartWithNumber(newName):
                if self.nameMng.AreAllValidCharacters(newName):
                    jointNames = []
                    for joint in self.jntMng.GetLimbTempJoints(self.limb):
                        jointNames.append(joint.pfrsName.get())
                    if (newName not in jointNames):
                        jointID = int(jointIDStr)
                        joint = self.jntMng.GetJoint(jointID)
                        joint.pfrsName.set(newName)
                        self.parent.PopulateJoints()
        return ''






