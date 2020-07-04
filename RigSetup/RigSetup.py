
import os

from Name_Manager import Name_Manager

class RigSetup():
    def __init__(self):
        self.prefixErrorMsg = ''
        self._prefix = ''
        self._startPrefix = ''
        self._meshPath = ''
        self._startMeshPath = ''
        self._nameMng = Name_Manager()
        self._startOrder = []
        self._showPrefix = True

    def GetStartOrder(self):
        self._startOrder = self._nameMng.GetOrder()
        self._startPrefix = self._prefix
        self._startMeshPath = self._meshPath
        return self._startOrder

#======= ACCESSORS + MUTATORS ========================================

    def SetPrefix(self, prefix):
        self._prefix = prefix
    
    def GetPrefix(self):
        return self._prefix

    def SetMeshPath(self, path):
        self._meshPath = path
    
    def GetMeshPath(self):
        return self._meshPath
    
    def SetShowPrefix(self, isVisible):
        self._showPrefix = isVisible

#======= VALIDATION ========================================

    def IsPrefixValid(self):
        if (not self._nameMng.IsValidCharacterLength(self._prefix)):
            self.prefixErrorMsg = self._nameMng.errorMsg
            return False
        elif (not self._nameMng.DoesNotStartWithNumber(self._prefix)):
            self.prefixErrorMsg = self._nameMng.errorMsg
            return False
        elif (not self._nameMng.AreAllValidCharacters(self._prefix)):
            self.prefixErrorMsg = self._nameMng.errorMsg
            return False
        self.prefixErrorMsg = ''
        return True
    
    def IsMeshPathValid(self):
        fileFullName = os.path.basename(self._meshPath)
        fileName, ext = os.path.splitext(fileFullName)
        if (ext != '.ma'):
            return False
        elif (not os.path.isfile(self._meshPath)):
            return False
        return True

#======= FUNCTIONALITY ========================================

    def Reorder(self, 
                prefixIndex, 
                limbIndex, 
                jointIndex, 
                sideIndex,
                typeIndex):
        self._nameMng.Reorder(  prefixIndex, 
                                limbIndex, 
                                jointIndex, 
                                sideIndex,
                                typeIndex)
    
    def GetName(self, limb, joint, side, objType):
        return self.GetName(self._prefix, 
                            limb, 
                            joint, 
                            side, 
                            objType)

    def GetName(self, prefix, limb, joint, side, objType):
        if(self._showPrefix):
            return self._nameMng.GetName(   prefix, 
                                            limb, 
                                            joint, 
                                            side, 
                                            objType)
        else:
            return self._nameMng.GetNameWithoutPrefix(  limb, 
                                                        joint, 
                                                        side, 
                                                        objType)
        
    def Cancel(self):
        self._prefix = self._startPrefix
        self._meshPath = self._startMeshPath
        self._nameMng.Reorder(  self._startOrder[0],
                                self._startOrder[1],
                                self._startOrder[2],
                                self._startOrder[3],
                                self._startOrder[4])
    
    def Save(self):
        self._startOrder = self._nameMng.GetOrder()
        self._startPrefix = self._prefix
        self._startMeshPath = self._meshPath












