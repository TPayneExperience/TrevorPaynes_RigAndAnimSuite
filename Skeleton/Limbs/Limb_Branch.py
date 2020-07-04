
from Limb_Data import Limb_Data



class Limb_Branch_Manager():
    def __init__(self, limbID):
        self.limbData = Limb_Data(limbID, 'Branch')
    def SetJointCount(self, count):
        pass
    def RemoveJoint(self, jointID):
        pass
    def InsertJoint(self, joint, parentJoint):
        pass
    def AddJoint(self, joint):
        pass

