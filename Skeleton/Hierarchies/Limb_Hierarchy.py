

class Limb_Hierarchy():
    def __init__(self, limbManager, jointManager):
        self.limbMng = limbManager
        self.jntMng = jointManager
    
#========= FUNCTIONALITY ===========================================

    def Add(self):
        limbID = self.limbMng.Add()
        self.jntMng.AddLimb(limbID)
        self.jntMng.Add(limbID, -1, 1)
    
    def Remove(self, limbID):
        self.jntMng.RemoveLimb(limbID)
        self.limbMng.Remove(limbID)

    def Mirror(self, limbID, axis):
        sourceIDs = self._GetLimbCreationOrder(limbID)
        sourceToTargetIDs = {}
        for i in range(len(sourceIDs)):
            sourceID = sourceIDs[i]
            targetID = self.limbMng.Mirror(sourceID)
            self.jntMng.Mirror(sourceID, targetID, axis)
            sourceToTargetIDs[sourceID] = targetID
            sourceParentID = self.limbMng.GetParentID(sourceID)
            if sourceParentID in sourceToTargetIDs:
                self.limbMng.SetParent(targetID, sourceToTargetIDs[sourceParentID])
            else:
                self.limbMng.SetParent(targetID, sourceParentID)

    def Duplicate(self, limbID):
        sourceIDs = self._GetLimbCreationOrder(limbID)
        sourceToTargetIDs = {}
        for i in range(len(sourceIDs)):
            sourceID = sourceIDs[i]
            targetID = self.limbMng.Duplicate(sourceID)
            self.jntMng.Duplicate(sourceID, targetID)
            sourceToTargetIDs[sourceID] = targetID
            sourceParentID = self.limbMng.GetParentID(sourceID)
            if sourceParentID in sourceToTargetIDs:
                self.limbMng.SetParent(targetID, sourceToTargetIDs[sourceParentID])
            else:
                self.limbMng.SetParent(targetID, sourceParentID)
    
    def _GetLimbCreationOrder(self, limbID):
        limbParents = self.limbMng.GetLimbParentDict()
        sourceIDs = [limbID]
        complete = False
        while (limbParents and not complete):
            complete = True
            for k,v in limbParents.items():
                if (v in sourceIDs):
                    complete = False
                    sourceIDs.append(k)
                    del(limbParents[k])
                    break
        return sourceIDs
        





















