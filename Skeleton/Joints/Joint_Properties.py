

class Joint_Properties():
    def __init__(self):
        self._jointData = []

    def SetJointData(self, jointDataList):
        self._jointData = jointDataList

#========= ACCESSORS + MUTATORS ===================================

    # ROTATION ORDER
    def GetRotationOrder(self):
        rotationOrder = self._jointData[0].rotationOrder
        for j in self._jointData:
            if j.rotationOrder != rotationOrder:
                return None
        return rotationOrder

    def SetRotationOrder(self, rotationOrder):
        for j in self._jointData:
            j.rotationOrder = rotationOrder
    
    # AIM AXIS
    def GetAimAxis(self):
        aimAxis = self._jointData[0].aimAxis
        for j in self._jointData:
            if j.aimAxis != aimAxis:
                return None
        return aimAxis
        
    def SetAimAxis(self, aimAxis):
        for j in self._jointData:
            j.aimAxis = aimAxis

    # UP AXIS
    def GetUpAxis(self):
        upAxis = self._jointData[0].upAxis
        for j in self._jointData:
            if j.upAxis != upAxis:
                return None
        return upAxis

    def SetUpAxis(self, upAxis):
        for j in self._jointData:
            j.upAxis = upAxis
    



















