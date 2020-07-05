

class Limb_Hierarchy():
    def __init__(self, limbManager):
        self.limbMng = limbManager
    
#========= ACCESSORS + MUTATORS===========================================

    def AddLimb(self, limbType):
        limb = self.limbMng.AddLimb(limbType)
    
    def RemoveLimb_Individual(self, limbID):
        self.limbMng.RemoveLimb_Individual(limbID)

    def RemoveLimb_AndChildren(self, limbID):
        self.limbMng.RemoveLimb_AndChildren(limbID)

    def RenameLimb(self, limbID, newName):
        self.limbMng.GetLimb(limbID).name = newName
    
    def Reorder(self, limbParentDict):
        self.limbMng.ReorderTree(limbParentDict)
























