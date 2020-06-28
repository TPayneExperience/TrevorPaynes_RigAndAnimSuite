
import re

class Name_Manager():
    def __init__(self):
        self._order = [0,1,2,3,4,5]
    
    def IsValidCharacterLength(self, name):
        return (len(name) >= 2)

    def DoesNotStartWithNumber(self, name):
        return (name[0] not in ['0','1','2','3','4','5','6','7','8','9'])

    def AreAllValidCharacters(self, name):
        try:
            g = re.search('[A-Za-z0-9]+', name).group(0)
            return len(g) == len(name)
        except:
            return False

    def Reorder(self,   prefix=0,
                        limb=1, 
                        limbPart=2, 
                        side=3, 
                        number=4,
                        objType=5):
        self._order = [0,0,0,0,0,0]
        self._order[prefix] = 0
        self._order[limb] = 1
        self._order[limbPart] = 2
        self._order[side] = 3
        self._order[number] = 4
        self._order[objType] = 5

    def GetName(self,   prefix= 'PREFIX',
                        limb='LIMB', 
                        limbPart='LIMBPART', 
                        side='M',
                        number='01',
                        objType='JNT'):
        temp = {0:prefix,
                1:limb,
                2:limbPart,
                3:side,
                4:number,
                5:objType}
        order = [temp[i] for i in self._order]
        return '_'.join(order)



















