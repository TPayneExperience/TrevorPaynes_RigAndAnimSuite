
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
        for joint in self.jntMng.GetLimbJoints(self.limb):
            jointID = joint.ID.get()
            name = joint.pfrsName.get()
            pm.treeView(self.widget, e=1, addItem=(jointID, ''))
            pm.treeView(self.widget, e=1, displayLabel=(jointID, name))
    
    def Depopulate(self):
        pm.treeView(self.widget, e=1, removeAll=1)

#=========== SETUP ====================================

    def _Setup(self):
        self.widget = pm.treeView(arp=0, scc=self.SelectionChanged)
        pm.treeView(self.widget, e=1, editLabelCommand=self.Rename)
        with pm.popupMenu():
            pm.menuItem('Add', c=pm.Callback(self.Add))
            pm.menuItem(divider=1)
            pm.menuItem('Remove', c=pm.Callback(self.Remove))
    
#=========== FUNCTIONALITY ====================================

    def SelectionChanged(self):
        jointIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if jointIDStrs:
            jointID = int(jointIDStrs[0])
            joint = self.jntMng.GetJoint(jointID)
            pm.select(joint)

    def SetLimb(self, limbID):
        self.limb = self.limbMng.GetLimb(limbID)
        self.Populate()

    def Add(self):
        newJoints = self.parent.GetSelectedSceneJoints()
        if not newJoints:
            return
        oldJoints = self.jntMng.GetLimbJoints(self.limb)
        joints = newJoints + oldJoints

        # ONE JOINT
        if (len(joints) == 1):
            self.limb.limbType.set(1)
            self.jntMng.Add(self.limb, newJoints[0])
            self.parent.PopulateJoints()

        # CHAIN
        elif self.jntMng.AreJointsChained(joints):
            self.limb.limbType.set(2)
            jointChain = self.jntMng.GetJointChain(joints)
            # Check if all joints are free from limbs
            for joint in jointChain:
                if self.jntMng.HasLimb(joint):
                    if (self.jntMng.GetLimb(joint) != self.limb):
                        pm.confirmDialog(t='Joint Selection Mismatch', 
                                icn='warning', 
                                m='Limbs may not contain joints from other limbs', 
                                button=['Cool Beans'])
                        return
            for joint in jointChain:
                if not self.jntMng.HasLimb(joint):
                    self.jntMng.Add(self.limb, joint)
            self.parent.PopulateJoints()

        # BRANCH
        elif self.jntMng.AreJointsSiblings(joints):
            self.limb.limbType.set(3)
            for joint in newJoints:
                self.jntMng.Add(self.limb, joint)
            self.parent.PopulateJoints()

        # ERROR
        else:
            self.parent.SceneJointsIncorrectDialog()

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
                self.jntMng.Remove(joint)
            joints = self.jntMng.GetLimbJoints(self.limb)
            # EMPTY
            if len(joints) == 0:
                self.limb.limbType.set(0)
            # ONE JOINT
            elif len(joints) == 1:
                self.limb.limbType.set(1)
            # CHAIN
            elif self.jntMng.AreJointsChained(joints):
                chainJoints = self.jntMng.GetJointChain(joints)
                if (len(chainJoints) > len(joints)):
                    for joint in chainJoints:
                        self.jntMng.Add(self.limb, joint)
            self.parent.PopulateJoints()

    def Rename(self, jointIDStr, newName):
        if self.nameMng.IsValidCharacterLength(newName):
            if self.nameMng.DoesNotStartWithNumber(newName):
                if self.nameMng.AreAllValidCharacters(newName):
                    jointNames = []
                    for joint in self.jntMng.GetLimbJoints(self.limb):
                        jointNames.append(joint.pfrsName.get())
                    if (newName not in jointNames):
                        jointID = int(jointIDStr)
                        joint = self.jntMng.GetJoint(jointID)
                        joint.pfrsName.set(newName)
                        self.jntMng.UpdateJointName(jointID)
                        self.parent.PopulateJoints()
        return ''







