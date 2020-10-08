
import re

import pymel.core as pm

class Name_Manager():
    def __init__(self):
        self.errorMsg = ''

    def NewRig(self, rigRoot, limbMng, jntMng):
        self.rigRoot = rigRoot
        self.limbMng = limbMng
        self.jntMng = jntMng

    def GetName(self, joint, objType):
        limb = self.jntMng.GetLimb(joint)
        side = self.limbMng.GetLimbSide(limb)
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



