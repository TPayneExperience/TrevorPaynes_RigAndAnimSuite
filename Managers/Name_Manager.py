
import re

import pymel.core as pm

class Name_Manager:
    def __init__(self, parent):
        self.logger = parent.logger

    def SetRoot(self, root):
        self.root = root

    def GetName(self, limbName, secondName, side, objType):
        self.logger.debug('\tNameMng > GetName')
        temp = {self.root.limbIndex.get() : limbName,
                self.root.jointIndex.get() : secondName,
                self.root.sideIndex.get() : side,
                self.root.typeIndex.get() : objType}
        if self.root.showPrefix.get():
            temp[self.root.prefixIndex.get()] = self.root.prefix.get()
        partNames = [temp[i] for i in sorted(list(temp.keys()))]
        return '_'.join(partNames)
    
#======= VALIDATION ========================================

    def IsValidCharacterLength(self, name):
        if (len(name) < 2):
            self.logger.error('**** Must be 2 or more characters')
            return False
        return True

    def DoesNotStartWithNumber(self, name):
        if (name[0] in ['0','1','2','3','4','5','6','7','8','9', '_']):
            self.logger.error('**** Cannot start with number OR _')
            return False
        return True

    def AreAllValidCharacters(self, name):
        try:
            g = re.search('[A-Za-z0-9_]+', name).group(0)
            if (len(g) == len(name)):
                return True
            self.logger.error('**** May only contain A-Z, a-z, 0-9, _')
            return False
        except:
            self.logger.error('**** May only contain A-Z, a-z, 0-9, _')
            return False



