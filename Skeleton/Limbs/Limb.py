
'''Base class for all inheriting limbs'''

class Limb():
    def __init__(self, limbID):
        self.limbData = None
    def SetJointCount(self, count):
        pass
    def RemoveJoint(self, jointID):
        pass
    def InsertJoint(self, joint, parentJoint):
        pass
    def AddJoint(self, joint):
        pass