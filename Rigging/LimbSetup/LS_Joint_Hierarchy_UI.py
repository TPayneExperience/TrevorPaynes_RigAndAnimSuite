
import pymel.core as pm

class LS_Joint_Hierarchy_UI:
    def __init__(self, limbMng, jntMng, nameMng, parent=None):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.nameMng = nameMng
        self.parent = parent

        self.limb = None
        self.jointsToAdd = []

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
            self.parent.SelectJoints(selJoints)

    def SetAddEnabled(self, areJointsValid):
        pm.menuItem(self.add_mi, e=1, en=areJointsValid)

    # def SetJointsToAdd(self, joints):
    #     pm.menuItem(self.add_mi, e=1, en=0)
    #     self.jointsToAdd = []
    #     if joints:
    #         limbJoints = self.jntMng.GetLimbTempJoints(self.limb)
    #         allJoints = joints + limbJoints
    #         if len(allJoints) == 1:
    #             self.jointsToAdd = joints
    #             pm.menuItem(self.add_mi, e=1, en=1)
    #         elif self.jntMng.AreJointsSiblings(limbJoints):
    #             if self.jntMng.AreJointsSiblings(allJoints):
    #                 self.jointsToAdd = joints
    #                 pm.menuItem(self.add_mi, e=1, en=1)
    #         elif self.jntMng.AreJointsChained(limbJoints):
    #             if self.jntMng.AreJointsChained(allJoints):
    #                 jointChain = self.jntMng.GetJointChain(allJoints)
    #                 for joint in jointChain:
    #                     if self.jntMng.HasLimb(joint) and \
    #                         (self.jntMng.GetLimb(joint) != self.limb):
    #                         break
    #                 else:
    #                     self.jointsToAdd = []
    #                     for joint in jointChain:
    #                         if not self.jntMng.HasLimb(joint):
    #                             self.jointsToAdd.append(joint)
    #                     pm.menuItem(self.add_mi, e=1, en=1)

    def SetLimb(self, limbID):
        self.limb = self.limbMng.GetLimb(limbID)
        self.Populate()

    def Add(self):
        for joint in self.parent.jointsToAdd:
            self.jntMng.AddTemp(self.limb, joint)
        self.parent.PopulateJoints()
        # if not self.jointsToAdd:
        #     return
        # joints = self.jntMng.GetLimbTempJoints(self.limb)
        # joints += self.jointsToAdd

        # ONE JOINT
        # if (len(joints) == 1):
        #     self.jntMng.AddTemp(self.limb, joints[0])
        #     self.parent.PopulateJoints()

        # CHAIN
        # elif self.jntMng.AreJointsChained(joints):
            # jointChain = self.jntMng.GetJointChain(joints)
            # # Check if all joints are free from limbs
            # for joint in jointChain:
            #     if self.jntMng.HasLimb(joint):
            #         if (self.jntMng.GetLimb(joint) != self.limb):
            #             pm.confirmDialog(t='Joint Selection Mismatch', 
            #                     icn='warning', 
            #                     m='Limbs may not contain joints from other limbs', 
            #                     button=['Cool Beans'])
            #             return
            # for joint in jointChain:
            #     if not self.jntMng.HasLimb(joint):
            #         self.jntMng.AddTemp(self.limb, joint)
            # self.parent.PopulateJoints()

        # BRANCH
        # elif self.jntMng.AreJointsSiblings(joints):
        #     for joint in self.jointsToAdd:
        #         self.jntMng.AddTemp(self.limb, joint)
        #     self.parent.PopulateJoints()

        # ERROR
        # else:
        #     self.parent.SceneJointsIncorrectDialog()

    def Remove(self):
        jointIDs = [int(ID) for ID in pm.treeView(self.widget, q=1, si=1)]
        result = pm.confirmDialog(  title='Remove Joints', 
                                    icon='warning', 
                                    message='Remove %d joints?' % len(jointIDs), 
                                    button=['Yes','No'], 
                                    defaultButton='Yes', 
                                    cancelButton='No', 
                                    dismissString='No' )
        if (result == 'Yes'):
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






