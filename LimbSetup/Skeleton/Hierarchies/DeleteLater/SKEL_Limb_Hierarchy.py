

class SKEL_Limb_Hierarchy():
    def __init__(self, limbManager, jointManager, nameManager):
        self.limbMng = limbManager
        self.jntMng = jointManager
        self.nameMng = nameManager # used by UI
    
#========= FUNCTIONALITY ===========================================

    # def Add(self):
    #     limbID = self.limbMng.Add()
    #     self.jntMng.AddLimb(limbID)
    #     self.jntMng.Add(limbID, -1, 1)
    #     return limbID
    
    # def Remove(self, limbID):
    #     self.jntMng.RemoveLimb(limbID)
    #     self.limbMng.Remove(limbID)






















