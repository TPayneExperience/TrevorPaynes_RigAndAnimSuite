

class Limb_Properties():
    def __init__(self, limbManager, jointManager):
        self.limbMng = limbManager
        self.jntMng = jointManager
        self.limbID = -1

    def SetLimb(self, limbID):
        self.limbID = limbID

    def SetJointCount(self, newJointCount):
        oldJointCount = len(self.jntMng.GetLimbJointIDs(self.limbID))
        mirrorID = self.limbMng.GetMirror(self.limbID)
        if (newJointCount > oldJointCount):
            amount = newJointCount - oldJointCount
            self.jntMng.Add(self.limbID, mirrorID, amount)
        elif (newJointCount < oldJointCount):
            jointIDs = self.jntMng.GetLimbJointIDs(self.limbID)
            self.jntMng.Remove(self.limbID, mirrorID, jointIDs[newJointCount:oldJointCount])









