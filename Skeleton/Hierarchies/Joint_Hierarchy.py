

class Joint_Hierarchy():
    def __init__(self, jointManager):
        self.jntMng = jointManager
        self._jointIDs = []
        self.limb = None

    def SetLimb(self, limb):
        self.limb = limb

    def Rename(self, ID, newName):
        ids = self.jntMng.GetLimbJointIDs(self.limb.ID)
        names = [joint.name for joint in self.jntMng.GetJoints(ids)]
        if newName not in names:
            self.jntMng.GetJoint(ID).name = newName
    
    







