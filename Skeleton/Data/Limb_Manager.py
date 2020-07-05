
from Limb_Data import Limb_Data

class Limb_Manager():
    def __init__(self):
        self._nextLimbID = 0
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
        return self._limbs.keys()

    def GetNames(self, limbIdList):
        return [self._limbs[ID].name for ID in limbIdList]
    
    def GetLimbParentID(self, limbID):
        return self._limbParents[limbID]
        
#============= ADD + REMOVE LIMBS ============================

    def AddLimb(self, limbType):
        side = LIMB_SIDES[0]
        ID = self._nextLimbID
        name = '%s_%03d' % (limbType, ID)
        
        limb = Limb_Data(ID, name, limbType, side)
        self._limbs[ID] = limb
        self._limbParents[ID] = -1

        self._nextLimbID += 1
        return limb

    def _RemoveLimb(self, limbID):
        del(self._limbParents[limbID])
        del(self._limbs[limbID])

    def RemoveLimb_Individual(self, limbID):
        childIDs = []
        for k, v in self._limbParents.items():
            if v == limbID:
                childIDs.add(k)
        if limbID in self._limbParents: # REPARENT CHILDREN
            parentID = self._limbParents[limbID]
            for childID in childIDs:
                self._limbParents[childID] = parentID
        else:
            del(self._limbParents[childID])
        self._RemoveLimb(limbID)

    def RemoveLimb_AndChildren(self, limbID):
        childIDs = []
        for k, v in self._limbParents.items():
            if v == limbID:
                childIDs.add(k)
        for childID in childIDs:
            self.RemoveLimb_AndChildren(childID)
        self._RemoveLimb(limbID)

    def MirrorLimb(self, limb_01, newJointIdList):
        limb_02 = self.DuplicateLimb(limbID, newJointIdList)
        limb_01.side = LIMB_SIDES[1]
        limb_02.side = LIMB_SIDES[2]
        limb_01.mirrorLimbID = limb_02.ID
        limb_02.mirrorLimbID = limb_01.ID
        return limb_02

    def DuplicateLimb(self, limb_01, newJointIdList):
        limb_02 = self.AddLimb(limb_01.limbType)
        limb_02.name            = limb_01.name
        limb_02.parentJointID   = limb_01.parentJointID
        limb_02.nextJointName   = limb_01.nextJointName
        limb_02.jointIDs = newJointIdList
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
