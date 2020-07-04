
from JointData import JointData
from TreeData import TreeData

class Joint_Manager():
    def __init__(self):
        self._nextJointID = 0
        self._jointIdToData = {} # ID: jointData
        self._jointIdToSceneJnts = {} # ID: jointData
        # self._jointTreeByLimbID = {} # limbID maps to root joint

#============= EDITABLE ============================

    def Setup_LimbJoints_Editable(self, limbID):
        pass

    def Teardown_LimbJoints_Editable(self, limbID):
        pass

#============= FINAL ============================

    def Setup_LimbJoints_Final(self, limbID):
        pass

    def Teardown_LimbJoints_Final(self, limbID):
        pass

#============= MISC ============================

    def GetNames(self, idList):
        return [self._jointIdToData[ID].jointName for ID in idList]





















