

class Joint_Tree_Manager():
    def __init__(self):
        self._jointTreeByLimbID = {} # { ID : jointTreeDataList }

    def GetJointTreeList(self, limbID):
        if limbID in self._jointTreeByLimbID.keys():
            return self._jointTreeByLimbID[limbID]
        return None
    
    def SetJointTreeList(self, limbID, jointTreeList):
        self._jointTreeByLimbID[limbID] = jointTreeList
































