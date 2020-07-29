

class Joint_Properties():
    def __init__(self, limbManager, jointManager):
        self.limbMng = limbManager
        self.jntMng = jointManager
        self._joints = []

    def SetJoints(self, jointList):
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
        self.jntMng.SetRotationOrder(self._joints, rotationOrder)
    
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
        upAxis = self.GetUpAxis()
        if not upAxis or upAxis in self.jntMng.axisPairs[aimAxis]:
            axes = self.jntMng.GetAxes()
            index = (axes.index(aimAxis) + 2) % len(axes)
            upAxis = axes[index]
        return upAxis
        
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
        aimAxis = self.GetAimAxis()
        if not aimAxis or aimAxis in self.jntMng.axisPairs[upAxis]:
            axes = self.jntMng.GetAxes()
            index = (axes.index(upAxis) + 2) % len(axes)
            aimAxis = axes[index]
        return aimAxis
    



















