
import re

class Name_Manager():
    def __init__(self):
        self._order = [0,1,2,3,4]
        self._prefix = ''
        self.errorMsg = ''
    
    def IsValidCharacterLength(self, name):
        if (len(name) < 2):
            self.errorMsg = 'Must be 2 or more characters'
            return False
        else:
            self.errorMsg = ''
            return True

    def DoesNotStartWithNumber(self, name):
        if (name[0] in ['0','1','2','3','4','5','6','7','8','9', '_']):
            self.errorMsg = 'Cannot start with number OR _'
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
            self.errorMsg = 'May only contain A-Z, a-z, 0-9, _'
            return False

    def Reorder(self,   prefix=0,
                        limb=1, 
                        joint=2, 
                        side=3, 
                        objType=4):
        self._order = [0,0,0,0,0]
        self._order[prefix] = 0
        self._order[limb] = 1
        self._order[joint] = 2
        self._order[side] = 3
        self._order[objType] = 4

    def SetPrefx(self, newPrefix):
        self._prefix = newPrefix

    def GetName(self,   limb='LIMB', 
                        joint='JOINT', 
                        side='M',
                        objType='JNT'):
        return self.GetName(self._prefix, limb, joint, side, objType)
    
    def GetName(self,   prefix= 'PREFIX',
                        limb='LIMB', 
                        joint='JOINT', 
                        side='M',
                        objType='JNT'):
        temp = {0:prefix,
                1:limb,
                2:joint,
                3:side,
                4:objType}
        order = [temp[i] for i in self._order]
        return '_'.join(order)

    def GetNameWithoutPrefix(self,  limb='LIMB', 
                                    joint='JOINT', 
                                    side='M',
                                    objType='JNT'):
        temp = {1:limb,
                2:joint,
                3:side,
                4:objType}
        orderCopy = self._order[:]
        orderCopy.remove(0) 
        order = [temp[i] for i in orderCopy]
        return '_'.join(order)
    
    def GetOrder(self):
        return self._order[:]



















