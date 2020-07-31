

class Limb_Hierarchy():
    def __init__(self, limbManager, jointManager, nameManager):
        self.limbMng = limbManager
        self.jntMng = jointManager
        self.nameMng = nameManager # used by UI
    
#========= FUNCTIONALITY ===========================================

    def Add(self):
        limbID = self.limbMng.Add()
        self.jntMng.AddLimb(limbID)
        self.jntMng.Add(limbID, -1, 1)
        return limbID
    
    def Remove(self, limbID):
        self.jntMng.RemoveLimb(limbID)
        self.limbMng.Remove(limbID)

    # def Mirror(self, limbID, axis):
    #     '''Returns ordered dict for new to old limbs, '''
    #     sourceLimbIDs = self.limbMng.GetLimbCreationOrder(limbID)
    #     sourceToTargetLimbIDs = {}
    #     for i in range(len(sourceLimbIDs)):
    #         sourceLimbID = sourceLimbIDs[i]
    #         targetLimbID = self.limbMng.Mirror(sourceLimbID)
    #         self.jntMng.Mirror(sourceLimbID, targetLimbID, axis)
    #         sourceToTargetLimbIDs[sourceLimbID] = targetLimbID
    #         sourceParentID = self.limbMng.GetParentID(sourceLimbID)
    #         if sourceParentID in sourceToTargetLimbIDs:
    #             self.limbMng.SetParent(targetLimbID, sourceToTargetLimbIDs[sourceParentID])
    #             self.jntMng.SetParentLimb(targetLimbID, sourceToTargetLimbIDs[sourceParentID])
    #         else:
    #             self.limbMng.SetParent(targetLimbID, sourceParentID)
    #             self.jntMng.SetParentLimb(targetLimbID, sourceParentID)
    #         yield [sourceLimbID, targetLimbID]

    # def Duplicate(self, limbID):
    #     sourceLimbIDs = self.limbMng.GetLimbCreationOrder(limbID)
    #     sourceToTargetLimbIDs = {}
    #     for i in range(len(sourceLimbIDs)):
    #         sourceLimbID = sourceLimbIDs[i]
    #         targetLimbID = self.limbMng.Duplicate(sourceLimbID)
    #         self.jntMng.Duplicate(sourceLimbID, targetLimbID)
    #         sourceToTargetLimbIDs[sourceLimbID] = targetLimbID
    #         sourceParentID = self.limbMng.GetParentID(sourceLimbID)
    #         if sourceParentID in sourceToTargetLimbIDs:
    #             self.limbMng.SetParent(targetLimbID, sourceToTargetLimbIDs[sourceParentID])
    #             self.jntMng.SetParentLimb(targetLimbID, sourceToTargetLimbIDs[sourceParentID])
    #         else:
    #             self.limbMng.SetParent(targetLimbID, sourceParentID)
    #             self.jntMng.SetParentLimb(targetLimbID, sourceParentID)
    #         yield targetLimbID
        





















