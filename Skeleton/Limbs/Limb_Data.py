
# Was initialy going to save to limb ids, but that's only necessary for when
# writing to json file. otherwise, need actual object data

class Limb_Data():
    def __init__(self, limbID, limbType):
        self.limbID = limbID
        self.limbType = limbType # 'Chain' or 'Branch'
        self.parentJntID = -1
        self.mirrorLimbID = -1
        self.startJointID = -1
        self.endJointID = -1

        self.childrenLimbIDs = []
        self.jointIDs = []

        self.limbName = ''
        self.side = 'M'
        self.nextJointName = 0 # name is int



