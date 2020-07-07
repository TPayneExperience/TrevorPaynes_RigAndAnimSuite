
from .Limb_Data import Limb_Data

class Limb_Manager():
    def __init__(self):
        self._nextLimbID = 1
        self._limbs = {} # ID: LimbData
        self._limbParents = {} # limbID : parentID 
        self._limbSides = ['M', 'L', 'R']
        self._limbTypes = ['Chain', 'Branch']

#============= ACCESSORS ============================

    def GetLimb(self, ID):
        return self._limbs[ID]
    
    def GetLimbSides(self):
        return self._limbSides
    
    def GetLimbTypes(self):
        return self._limbTypes
    
    def GetLimbIDs(self):
        return list(self._limbs.keys()) # python 3.7 fix

    def GetNames(self, limbIdList):
        return [self._limbs[ID].name for ID in limbIdList]
    
    def GetLimbParentID(self, limbID):
        return self._limbParents[limbID]
    
    def GetLimbParentDictCopy(self):
        return dict(self._limbParents)
        
#============= ADD + REMOVE LIMBS ============================

    def Add(self):
        side = self._limbSides[0]
        limbType = self._limbTypes[0]
        ID = self._nextLimbID
        name = 'Limb_%03d' % (ID)
        
        limb = Limb_Data(ID, name, limbType, side)
        self._limbs[ID] = limb
        self._limbParents[ID] = -1

        self._nextLimbID += 1
        return limb

    def _Remove(self, limbID):
        del(self._limbParents[limbID])
        del(self._limbs[limbID])

    def Remove(self, limbID):
        childIDs = []
        for k, v in self._limbParents.items():
            if v == limbID:
                childIDs.append(k)
        for childID in childIDs:
            self.Remove(childID)
        self._Remove(limbID)

    def Mirror(self, limb_01, newJointIdList):
        limb_02 = self.Duplicate(limb_01, newJointIdList)
        limb_01.side = self._limbSides[1]
        limb_02.side = self._limbSides[2]
        limb_01.mirrorLimbID = limb_02.ID
        limb_02.mirrorLimbID = limb_01.ID
        return limb_02

    def Duplicate(self, limb_01, newJointIdList):
        limb_02 = self.Add()
        limb_02.name            = limb_01.name
        limb_02.parentJointID   = limb_01.parentJointID
        limb_02.nextJointName   = limb_01.nextJointName
        limb_02.jointIDs = newJointIdList
        self._limbParents[limb_02.ID] = self._limbParents[limb_01.ID]
        return limb_02

#============= ADD + REMOVE JOINTS ============================

    def AddJointIDs(self, jointIdList, limbId):
        self._limbs[limbId].jointIDs += jointIdList

    def RemoveJointIDs(self, jointIdList, limbId):
        limb = self._limbs[limbId]
        for ID in jointIdList:
            limb.jointIDs.remove(ID)

#============= TREE MANIPULATION ============================

    def ReorderTree(self, limbParentDict):
        self._limbParents = limbParentDict
    
    def SetParent(self, childID, parentID):
        if(self._IsValidParent(childID, parentID)):
            self._limbParents[childID] = parentID

    def _IsValidParent(self, childID, parentID):
        while(parentID != -1):
            if (childID == parentID):
                return False
            parentID = self._limbParents[parentID]
        return True

#============= TEMPLATE ============================

    def AddTemplate_Limbs(self, limbDataList, 
                                limbChildParentDict,
                                oldToNewJointIds):
        
        oldToNewLimbIds = {} # REMAP LIMB IDS TO AVOID CONFLICTS
        for limb in limbDataList:
            limbID = self._nextLimbID
            oldToNewLimbIds[limb.ID] = limbID
            limb.ID = limbID
            
            for i in range(len(limb.jointIDs)): # REMAP JOINT IDS 
                jointID = limb.jointIDs[i]
                limb.jointIDs[i] = oldToNewJointIds[jointID]
            if (limb.parentJointID != -1): # REMAP PARENT JOINT ID
                limb.parentJointID = oldToNewJointIds[limb.parentJointID]
            self._nextLimbID += 1
        
        for limb in limbDataList:
            if (limb.mirrorLimbID != -1): # REMAP MIRROR LIMB ID
                limb.mirrorLimbID = oldToNewLimbIds[limb.mirrorLimbID]
            self._limbs[limb.ID] = limb # ADD TO DICTIONARY
        
        for oldChildID, oldParentID in limbChildParentDict.items():
            newChildID = oldToNewLimbIds[oldChildID]
            newParentID = oldToNewLimbIds[oldParentID]
            self.SetParent(newChildID, newParentID)
