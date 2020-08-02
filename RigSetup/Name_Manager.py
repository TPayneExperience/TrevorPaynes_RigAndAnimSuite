
import re

class Name_Manager():
    def __init__(self):
        self._order = [0,1,2,3,4]
        self._prefix = 'PREFIX'
        self._showPrefix = True 
        self.errorMsg = ''
    
#======= ACCESSORS + MUTATORS ========================================

    def GetNamingOrder(self):
        return self._order[:]

    def SetNamingOrder(self, namingOrder):
        self._order = namingOrder

    def GetPrefix(self):
        return self._prefix

    def SetPrefix(self, newPrefix):
        self._prefix = newPrefix

    def GetShowPrefix(self):
        return self._showPrefix

    def SetShowPrefix(self, isShown):
        self._showPrefix = isShown

    def GetName(self, prefix, limb, joint, side, objType):
        orderCopy = self._order[:]
        if not self._showPrefix:
            orderCopy.remove(0)
        temp = {0:prefix,
                1:limb,
                2:joint,
                3:side,
                4:objType}
        partNames = [temp[i] for i in orderCopy]
        return '_'.join(partNames)

    # def GetNameWithoutPrefix(self,  limb='LIMB', 
    #                                 joint='JOINT', 
    #                                 side='M',
    #                                 objType='JNT'):
    #     temp = {1:limb,
    #             2:joint,
    #             3:side,
    #             4:objType}
    #     orderCopy = self._order[:]
    #     orderCopy.remove(0) 
    #     order = [temp[i] for i in orderCopy]
    #     return '_'.join(order)
    

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


















