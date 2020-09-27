
import re

import pymel.core as pm

class Name_Manager():
    def __init__(self):
        self.errorMsg = ''

    def NewRig(self, rigRoot, limbMng, jntMng):
        self.rigRoot = rigRoot
        self.limbMng = limbMng
        self.jntMng = jntMng

    def GetName(self, jointID, objType):
        joint = self.jntMng.GetJoint(jointID)
        limb = self.jntMng.GetLimb(joint)
        side = self.limbMng.GetLimbSide(limb.ID.get())
        temp = {self.rigRoot.limbIndex.get() : limb.pfrsName.get(),
                self.rigRoot.jointIndex.get() : joint.pfrsName.get(),
                self.rigRoot.sideIndex.get() : side,
                self.rigRoot.typeIndex.get() : objType}
        if self.rigRoot.showPrefix.get():
            temp[self.rigRoot.prefixIndex.get()] = self.rigRoot.prefix.get()
        partNames = [temp[i] for i in sorted(list(temp.keys()))]
        return '_'.join(partNames)
    
    
#======= VALIDATION ========================================

    def IsValidCharacterLength(self, name):
        if (len(name) < 2):
            self.errorMsg = 'NAME ERROR: Must be 2 or more characters'
            return False
        else:
            self.errorMsg = ''
            return True

    def DoesNotStartWithNumber(self, name):
        if (name[0] in ['0','1','2','3','4','5','6','7','8','9', '_']):
            self.errorMsg = 'NAME ERROR: Cannot start with number OR _'
            return False
        else:
            self.errorMsg = ''
            return True

    def AreAllValidCharacters(self, name):
        try:
            g = re.search('[A-Za-z0-9_]+', name).group(0)
            if (len(g) == len(name)):
                self.errorMsg = ''
                return True
        except:
            self.errorMsg = 'NAME ERROR: May only contain A-Z, a-z, 0-9, _'
            return False



#======= DEPRICATED ========================================
#======= DEPRICATED ========================================
#======= DEPRICATED ========================================




# import re

# class Name_Manager():
#     def __init__(self):
#         self.errorMsg = ''

#     def NewRig(self, rigRoot, limbMng, jntMng):
#         self.rigRoot = rigRoot
#         self.limbMng = limbMng
#         self.jntMng = jntMng

#     def GetName(self, limbID, jointID, objType):
#         temp = {self.rigRoot.prefixIndex.get() : self.rigRoot.prefix.get(),
#                 self.rigRoot.limbIndex.get() : self.limbMng.GetLimb(limbID).pfrsName.get(),
#                 self.rigRoot.jointIndex.get() : self.jntMng.GetJoint(jointID).pfrsName.get(),
#                 self.rigRoot.sideIndex.get() : self.limbMng.GetLimbSide(limbID),
#                 self.rigRoot.typeIndex.get() : objType}
#         order = sorted(list(temp.keys()))
#         if not self.rigRoot.showPrefix.get():
#             order.remove(0)
#         partNames = [temp[i] for i in order]
#         return '_'.join(partNames)
    
    
# #======= VALIDATION ========================================

#     def IsValidCharacterLength(self, name):
#         if (len(name) < 2):
#             self.errorMsg = 'NAME ERROR: Must be 2 or more characters'
#             return False
#         else:
#             self.errorMsg = ''
#             return True

#     def DoesNotStartWithNumber(self, name):
#         if (name[0] in ['0','1','2','3','4','5','6','7','8','9', '_']):
#             self.errorMsg = 'NAME ERROR: Cannot start with number OR _'
#             return False
#         else:
#             self.errorMsg = ''
#             return True

#     def AreAllValidCharacters(self, name):
#         try:
#             g = re.search('[A-Za-z0-9_]+', name).group(0)
#             if (len(g) == len(name)):
#                 self.errorMsg = ''
#                 return True
#         except:
#             self.errorMsg = 'NAME ERROR: May only contain A-Z, a-z, 0-9, _'
#             return False


#======= DEPRICATED ========================================
#======= DEPRICATED ========================================
#======= DEPRICATED ========================================


    # def GetName(self, prefix, limb, joint, side, objType):
    #     orderCopy = self._order[:]
    #     if not self._showPrefix:
    #         orderCopy.remove(0)
    #     temp = {0:prefix,
    #             1:limb,
    #             2:joint,
    #             3:side,
    #             4:objType}
    #     partNames = [temp[i] for i in orderCopy]
    #     return '_'.join(partNames)
    # def __init__(self):
    #     self._order = [0,1,2,3,4]
    #     self._prefix = 'PREFIX'
    #     self._showPrefix = True 
    #     self.errorMsg = ''
    
#======= ACCESSORS + MUTATORS ========================================

    # def GetNamingOrder(self):
    #     return self._order[:]

    # def SetNamingOrder(self, namingOrder):
    #     self._order = namingOrder

    # def GetPrefix(self):
    #     return self._prefix

    # def SetPrefix(self, newPrefix):
    #     self._prefix = newPrefix

    # def GetShowPrefix(self):
    #     return self._showPrefix

    # def SetShowPrefix(self, isShown):
    #     self._showPrefix = isShown






