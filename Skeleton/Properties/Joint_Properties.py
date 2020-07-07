

class Joint_Properties():
    def __init__(self, jointManager):
        self.jntMng = jointManager
        self._joints = []

    def SetJoint(self, jointList):
        self._joints = jointList

#========= ACCESSORS + MUTATORS ===================================

    # ROTATION ORDER
    def GetRotationOrder(self):
        rotationOrder = self._joints[0].rotationOrder
        for j in self._joints:
            if j.rotationOrder != rotationOrder:
                return None
        return rotationOrder

    def SetRotationOrder(self, rotationOrder):
        for j in self._joints:
            j.rotationOrder = rotationOrder
    
    # AIM AXIS
    def GetAimAxis(self):
        aimAxis = self._joints[0].aimAxis
        for j in self._joints:
            if j.aimAxis != aimAxis:
                return None
        return aimAxis
        
    def SetAimAxis(self, aimAxis):
        for j in self._joints:
            j.aimAxis = aimAxis

    # UP AXIS
    def GetUpAxis(self):
        upAxis = self._joints[0].upAxis
        for j in self._joints:
            if j.upAxis != upAxis:
                return None
        return upAxis

    def SetUpAxis(self, upAxis):
        for j in self._joints:
            j.upAxis = upAxis
    



















