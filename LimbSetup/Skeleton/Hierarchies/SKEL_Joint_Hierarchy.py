

class SKEL_Joint_Hierarchy():
    def __init__(self, limbManager, jointManager, nameManager):
        self.limbMng = limbManager
        self.jntMng = jointManager
        self.nameMng = nameManager # For ui
        self._jointIDs = []
        self.limbID = -1

    def SetLimb(self, limbID):
        self.limbID = limbID

    







