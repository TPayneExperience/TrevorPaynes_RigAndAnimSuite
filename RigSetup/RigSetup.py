
# import os

# import Name_Manager as nm
# reload(nm)


# class RigSetup():
#     def __init__(self, nameManager, fileManager):
#         self.nameMng = nameManager
#         self.fileMng = fileManager
#         self.tempNameMng = nm.Name_Manager()

        # self.prefixErrorMsg = ''
        # self._prefix = ''
        # self._meshPath = ''
        # self._outputFolder = ''
        # self._showPrefix = True

        # self._startPrefix = ''
        # self._startMeshPath = ''
        # self._startOrder = []

        # self._startOrder = self.nameMng.GetOrder()
        # self._startPrefix = self.nameMng.
        # self._startMeshPath = self._meshPath
        # return self._startOrder

#======= ACCESSORS + MUTATORS ========================================

    # def SetPrefix(self, prefix):
    #     self._prefix = prefix
    
    # def GetPrefix(self):
    #     return self._prefix

    # def SetMeshPath(self, path):
    #     self._meshPath = path
    
    # def GetMeshPath(self):
    #     return self._meshPath
    
    # def SetOutputFolder(self, path):
    #     self._outputFolder = path

    # def SetShowPrefix(self, isVisible):
    #     self._showPrefix = isVisible

#======= VALIDATION ========================================

    # def IsPrefixValid(self):
    #     if (not self.nameMng.IsValidCharacterLength(self._prefix)):
    #         self.prefixErrorMsg = self.nameMng.errorMsg
    #         return False
    #     elif (not self.nameMng.DoesNotStartWithNumber(self._prefix)):
    #         self.prefixErrorMsg = self.nameMng.errorMsg
    #         return False
    #     elif (not self.nameMng.AreAllValidCharacters(self._prefix)):
    #         self.prefixErrorMsg = self.nameMng.errorMsg
    #         return False
    #     self.prefixErrorMsg = ''
    #     return True
    
    # def IsMeshPathValid(self):
    #     fileFullName = os.path.basename(self._meshPath)
    #     fileName, ext = os.path.splitext(fileFullName)
    #     if (ext != '.ma'):
    #         return False
    #     elif (not os.path.isfile(self._meshPath)):
    #         return False
    #     return True

#======= FUNCTIONALITY ========================================

    # def Reorder(self, 
    #             prefixIndex, 
    #             limbIndex, 
    #             jointIndex, 
    #             sideIndex,
    #             typeIndex):
    #     self.tempNameMng.SetNamingOrder(prefixIndex, 
    #                                     limbIndex, 
    #                                     jointIndex, 
    #                                     sideIndex,
    #                                     typeIndex)
    
    # def GetName(self, limb, joint, side, objType):
    #     return self.GetName(self._prefix, 
    #                         limb, 
    #                         joint, 
    #                         side, 
    #                         objType)

    # def GetName(self, prefix, limb, joint, side, objType):
    #     if(self._showPrefix):
    #         return self.tempNameMng.GetName(   prefix, 
    #                                         limb, 
    #                                         joint, 
    #                                         side, 
    #                                         objType)
    #     else:
    #         return self.tempNameMng.GetNameWithoutPrefix(  limb, 
    #                                                     joint, 
    #                                                     side, 
    #                                                     objType)
        
    # def Cancel(self):
        # self.nameMng.SetPrefix(self._startPrefix)
        # self._prefix = self._startPrefix
        # self._meshPath = self._startMeshPath
        # self.nameMng.Reorder(  self._startOrder[0],
        #                         self._startOrder[1],
        #                         self._startOrder[2],
        #                         self._startOrder[3],
        #                         self._startOrder[4])
    
    # def Save(self):
    #     self.nameMng.SetPrefix(self.tempNameMng.GetPrefix())
    #     self.nameMng.SetNamingOrder(self.tempNameMng.GetNamingOrder())
    #     self.nameMng.SetShowPrefix(self.tempNameMng.GetShowPrefix())
    #     self.fileMng.SetMeshPath(self._meshPath)
    #     self.fileMng.SetOutputFolder(self._out)
        # self._startOrder = self.nameMng.GetOrder()
        # self._startPrefix = self._prefix
        # self._startMeshPath = self._meshPath












