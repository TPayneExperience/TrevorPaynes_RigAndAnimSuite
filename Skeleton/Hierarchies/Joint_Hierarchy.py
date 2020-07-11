

class Joint_Hierarchy():
    def __init__(self, limbManager, jointManager):
        self.limbMng = limbManager
        self.jntMng = jointManager
        self._jointIDs = []
        self.limbID = -1

    def SetLimb(self, limbID):
        self.limbID = limbID

    







