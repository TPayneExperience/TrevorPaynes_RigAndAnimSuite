
from LimbData import LimbData
from TreeData import TreeData

class Limb_Manager():
    def __init__(self):
        self._nextLimbID = 0
        self._limbIdDict = {} # ID: jointData
        self._limbTreeRoots = []

#============= SKELETON EDITABLE ============================

    def Setup_Skeleton_Editable(self, limbID):
        pass

    def Teardown_Skeleton_Editable(self, limbID):
        pass

#============= SKELETON FINAL ============================

    def Setup_Skeleton_Final(self, limbID):
        pass

    def Teardown_Skeleton_Final(self, limbID):
        pass

#============= TREE MANIPULATION ============================

    def AddLimb_Branch(self):
        pass

    def AddLimb_Chain(self):
        pass

    def AddLimb_Template(self, limbTemplateName):
        pass

    def AddLimb_CustomTemplate(self, limbTemplateName):
        pass

    def RemoveLimb_Individual(self, limbID):
        pass

    def RemoveLimb_AndChildren(self, limbID):
        pass

    def Reorder(self, newOrderList):
        pass

#============= ACCESSORS + MUTATORS ============================

    def GetLimb(self, ID):
        return self._limbIdDict[ID]
