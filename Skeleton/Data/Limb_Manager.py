

class Limb_Manager():
    def __init__(self):
        self._nextLimbID = 1
        self._limbName = {} # ID : Name
        self._limbType = {} # ID : string,  ['Chain', 'Branch', 'Linear_Chain']
        self._limbSide = {} # ID : side, ['M', 'L', 'R']
        self._limbParent = {} # limbID : parentID 
        self._limbMirror = {} # limbID_01 : limbID_02 (was mirrorLimbID)
        self._limbMirrorRoots = []
        
        self._limbSidesOptions = ['M', 'L', 'R']
        self._limbTypes = ['Chain', 'Branch', 'Linear_Chain', 'Linear_Branch']

#============= ACCESSORS + MUTATORS ============================

    def GetLimbIDs(self):
        return list(self._limbName.keys())

    # NAMES
    def GetName(self, ID):
        return self._limbName[ID]

    def SetLimbName(self, limbID, newName):
        self._limbName[limbID] = newName
        mirrorID = self._limbMirror[limbID]
        if (mirrorID != -1):
            self._limbName[mirrorID] = newName
    
    # MIRROR
    def GetMirror(self, ID):
        return self._limbMirror[ID]
    
    def SetLimbMirrorRoot(self, ID):
        mirrorID = self.GetMirror(ID)
        self._limbMirrorRoots.append(ID)
        self._limbMirrorRoots.append(mirrorID)
    
    def GetLimbMirrorRoots(self):
        return self._limbMirrorRoots

    # TYPES
    def GetType(self, ID):
        return self._limbType[ID]
    
    def SetType(self, ID, limbType):
        self._limbType[ID] = limbType
        mirrorID = self._limbMirror[ID]
        if (mirrorID != -1):
            self._limbType[mirrorID] = limbType

    def GetTypes(self):
        return self._limbTypes
    
    # SIDES
    def GetSide(self, ID):
        return self._limbSide[ID]
    
    def SetSide(self, limbID, side):
        self._limbSide[limbID] = side

    def GetSides(self):
        return self._limbSidesOptions
    
#============= PARENTS / TREE MANIPULATION ============================

    def GetParentID(self, limbID):
        return self._limbParent[limbID]
    
    def GetAllParents(self, limbID):
        parents = []
        parentID = self.GetParentID(limbID)
        while(parentID != -1):
            parents.append(parentID)
            parentID = self.GetParentID(parentID)
        return parents

    def GetImmediateChildren(self, limbID):
        childIDs = []
        for childID, parentID in self.GetLimbParentDict().items():
            if (parentID == limbID):
                childIDs.append(childID)
        return childIDs

    def GetLimbParentDict(self):
        return dict(self._limbParent)
    
    def GetLimbCreationOrder(self, rootLimbID):
        '''Returns a list of children from bottommost to root'''
        limbParents = self.GetLimbParentDict()
        limbIDs = [rootLimbID]
        complete = False
        while(limbParents and not complete):
            complete = True
            for childID, parentID in limbParents.items():
                if (parentID in limbIDs):
                    complete = False
                    limbIDs.append(childID)
                    del(limbParents[childID])
                    break
        return limbIDs

    def SetParent(self, childID, parentID):
        if(self._IsValidParent(childID, parentID)):
            self._limbParent[childID] = parentID

    def _IsValidParent(self, childID, parentID):
        while(parentID != -1):
            if (childID == parentID):
                return False
            parentID = self._limbParent[parentID]
        return True

#============= ADD + REMOVE LIMBS ============================

    def Add(self):
        ID = self._nextLimbID
        
        self._limbName[ID] = 'Limb_%03d' % (ID)
        self._limbType[ID] = self._limbTypes[0]
        self._limbSide[ID] = self._limbSidesOptions[0]
        self._limbParent[ID] = -1
        self._limbMirror[ID] = -1

        self._nextLimbID += 1
        return ID

    def _Remove(self, ID):
        mirrorID = self.GetMirror(ID)
        if mirrorID != -1:
            self._limbSide[mirrorID] = self._limbSidesOptions[0]
            self._limbMirror[mirrorID] = -1
            if mirrorID in self.GetLimbMirrorRoots():
                self._limbMirrorRoots.remove(ID)
                self._limbMirrorRoots.remove(mirrorID)
        del(self._limbName[ID])
        del(self._limbType[ID])
        del(self._limbSide[ID])
        del(self._limbParent[ID])
        del(self._limbMirror[ID])

    def Remove(self, ID): # Remove Children first, then parent
        childIDs = []
        for child, parent in self._limbParent.items():
            if parent == ID:
                childIDs.append(child)
        for childID in childIDs:
            self.Remove(childID)
        self._Remove(ID)

    def Mirror(self, ID_01):
        ID_02 = self.Duplicate(ID_01)
        self._limbSide[ID_01] = self._limbSidesOptions[1]
        self._limbSide[ID_02] = self._limbSidesOptions[2]
        self._limbMirror[ID_01] = ID_02
        self._limbMirror[ID_02] = ID_01
        self._limbName[ID_02] = self._limbName[ID_01] 
        return ID_02

    def Duplicate(self, ID_01):
        ID_02 = self.Add()
        self._limbType[ID_02] = self._limbType[ID_01]
        self.SetParent(ID_02, self._limbParent[ID_01])
        return ID_02


#============= SAVE + LOAD ============================

    def GetSaveData(self, limbID):
        pass

    def LoadData(self, limbID):
        pass

    # def AddTemplate_Limbs(self, limbDataList, 
    #                             limbChildParentDict,
    #                             oldToNewJointIds):
        
    #     oldToNewLimbIds = {} # REMAP LIMB IDS TO AVOID CONFLICTS
    #     for limb in limbDataList:
    #         limbID = self._nextLimbID
    #         oldToNewLimbIds[limb.ID] = limbID
    #         limb.ID = limbID
            
    #         for i in range(len(limb.jointIDs)): # REMAP JOINT IDS 
    #             jointID = limb.jointIDs[i]
    #             limb.jointIDs[i] = oldToNewJointIds[jointID]
    #         if (limb.parentJointID != -1): # REMAP PARENT JOINT ID
    #             limb.parentJointID = oldToNewJointIds[limb.parentJointID]
    #         self._nextLimbID += 1
        
    #     for limb in limbDataList:
    #         if (limb.mirrorLimbID != -1): # REMAP MIRROR LIMB ID
    #             limb.mirrorLimbID = oldToNewLimbIds[limb.mirrorLimbID]
    #         self._limbs[limb.ID] = limb # ADD TO DICTIONARY
        
    #     for oldChildID, oldParentID in limbChildParentDict.items():
    #         newChildID = oldToNewLimbIds[oldChildID]
    #         newParentID = oldToNewLimbIds[oldParentID]
    #         self.SetParent(newChildID, newParentID)
