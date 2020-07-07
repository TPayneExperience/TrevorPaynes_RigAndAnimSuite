

class Limb_Hierarchy():
    def __init__(self, limbManager, jointManager):
        self.limbMng = limbManager
        self.jntMng = jointManager
    
#========= ACCESSORS + MUTATORS===========================================

    def Add(self):
        limb = self.limbMng.Add()
    
    def Remove(self, limbID):
        self.limbMng.Remove(limbID)

    def Rename(self, limbID, newName):
        self.limbMng.GetLimb(limbID).name = newName
    
    def Reorder(self, limbParentDict):
        self.limbMng.ReorderTree(limbParentDict)

    def Mirror(self, limbID, axis):
        sourceIDs = self._GetLimbCreationOrder(limbID)
        sourceToTargetIDs = {}
        for i in range(len(sourceIDs)):
            sourceID = sourceIDs[i]
            limbSource = self.limbMng.GetLimb(sourceID)
            jointIDs = self.jntMng.Mirror(limbSource.jointIDs, axis)
            limbTarget = self.limbMng.Mirror(limbSource, jointIDs)
            targetID = limbTarget.ID
            sourceToTargetIDs[sourceID] = targetID
            sourceParentID = self.limbMng.GetLimbParentID(sourceID)
            if sourceParentID in sourceToTargetIDs:
                self.limbMng.SetParent(targetID, sourceToTargetIDs[sourceParentID])
            else:
                self.limbMng.SetParent(targetID, sourceParentID)

    def Duplicate(self, limbID):
        sourceIDs = self._GetLimbCreationOrder(limbID)
        sourceToTargetIDs = {}
        for i in range(len(sourceIDs)):
            sourceID = sourceIDs[i]
            limbSource = self.limbMng.GetLimb(sourceID)
            jointIDs = self.jntMng.Duplicate(limbSource.jointIDs)
            limbTarget = self.limbMng.Duplicate(limbSource, jointIDs)
            targetID = limbTarget.ID
            sourceToTargetIDs[sourceID] = targetID
            sourceParentID = self.limbMng.GetLimbParentID(sourceID)
            if sourceParentID in sourceToTargetIDs:
                self.limbMng.SetParent(targetID, sourceToTargetIDs[sourceParentID])
            else:
                self.limbMng.SetParent(targetID, sourceParentID)
    
    def _GetLimbCreationOrder(self, limbID):
        limbParents = self.limbMng.GetLimbParentDictCopy()
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
        





















