
class Limb_Data():
    def __init__(self, ID, name, limbType, limbSideStr):
        self.ID = ID
        self.name = name
        self.limbType = limbType    # 'Chain' or 'Branch'
        self.side = limbSideStr     # 'L', 'M', 'R', from above
        
        self.parentJointID = -1 
        self.mirrorLimbID = -1

        self.jointIDs = []

        self.nextJointName = 1 # name is int



