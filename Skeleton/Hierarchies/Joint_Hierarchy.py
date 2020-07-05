

class Joint_Hierarchy():
    def __init__(self, jointManager):
        self.jntMng = jointManager
        self._jointIDs = []

    def SetLimb(self, limb):
        self._limb = limb

#========= ACCESSORS + MUTATORS===========================================

    def AddJoint(self, index = 0):
        jointID = self.jntMng.AddJoints(1, limb.nextJointName)[0]
        if (index < len(limb.jointIDs)):
            limb.jointIDs.insert(index, jointID)
        limb.nextJointName += 1

    def RemoveJoints(self, jointIdList):
        for ID in jointIdList:
            limb.jointIDs.remove(ID)
        self.jntMng.RemoveJoints(jointIdList)

    def RenameJoint(self, ID, newName):
        names = self.jntMng.GetNames(self._limb.jointIDs)
        if newName not in names:
            self.jntMng.GetJoint(ID).name = newName
    
    def Reorder(self, newOrder):
        self._limb.jointIDs = newOrder
    







