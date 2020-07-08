

class Limb_Properties():
    def __init__(self, limbManager, jointManager):
        self.limbMng = limbManager
        self.jntMng = jointManager
        self.limb = None
        # self.limbTreeData = None
        # self._jointNamesToIds = {} # used to convert UI selection back to id
        # self._parentJointNamesToIDs = {}

    def SetLimb(self, limb):
        self.limb = limb
        # self._parentJointNamesToIDs.clear()
        # parentID = self.limbMng.GetParentID(limb.ID)
        # if (parentID != -1):
        #     ids = self.limbMng.GetLimb(parentID).jointIDs
        #     names = self.jntMng.GetNames(ids)
        #     self._parentJointNamesToIDs = zip(names, ids)

#========= ACCESSORS + MUTATORS ===================================

    def SetJointCount(self, newJointCount):
        oldJointCount = len(self.limb.jointIDs)
        if (newJointCount > oldJointCount):
            amount = newJointCount - oldJointCount
            startIndex = self.limb.nextJointName
            jointIDs = self.jntMng.Add(amount, startIndex)
            self.limb.jointIDs += jointIDs
            self.limb.nextJointName += amount
        elif (newJointCount < oldJointCount):
            amount =  oldJointCount - newJointCount
            jointIDs = self.limb.jointIDs[newJointCount:oldJointCount]
            for ID in jointIdList:
                self.limb.jointIDs.remove(ID)

    # # PARENT JOINTS
    # def GetParentJointNames(self):
    #     return list(self._parentJointNamesToIDs.keys())

    # def GetParentJointName(self):
    #     ID = self.limb.parentJointID
    #     if ID != -1:
    #         return self.jntMng.GetJoint[ID].name
    #     return None
    
    # def SetParentJoint(self, name):
    #     self.limb.parentJointID = self._jointNamesToIds[name]

    # # SIDE
    # def GetSide(self):
    #     return self.limb.side
    
    # def SetSide(self, side):
    #     self.limb.side = side

    # # JOINT COUNT
    # def GetJointCount(self):
    #     return len(self.limb.jointIDs)
    









