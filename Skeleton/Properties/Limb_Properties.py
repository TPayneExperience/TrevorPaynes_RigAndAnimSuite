

class Limb_Properties():
    def __init__(self, limbManager, jointManager):
        self.limbMng = limbManager
        self.jntMng = jointManager
        self._limb = None
        self._limbID = None
        self._limbTreeData = None
        self._jointNamesToIds = {} # used to convert UI selection back to id
        self.msg = ''

    def SetLimbData(self, limbID):
        self._limb = limbManger.GetLimb(limbID)
        ids = self.limbMng.GetLimbParentJointIdList(limbID)
        names = self.jntMng.GetNames(ids)
        self._namesToIds = zip(names, ids)

#========= ACCESSORS + MUTATORS ===================================

    def GetLimbType(self):
        return self._limb.limbType

    # PARENT JOINTS
    def GetParentJointNames(self):
        return self._namesToIds.keys()

    def GetParentJointName(self):
        ID = self._limb.parentJointID
        if ID != -1:
            return self.jntMng.GetJoint[ID].name
        return None
    
    def SetParentJoint(self, name):
        self._limb.parentJointID = self._jointNamesToIds[name]

    # SIDE
    def GetSideList(self):
        self.limbMng.GetLimbSides()
    
    def GetSide(self):
        return self._limb.side
    
    def SetSide(self, side):
        self._limb.side = side

    # JOINT COUNT
    def GetJointCount(self):
        return len(self._limb.joints)
    
    def IsJointCountValid(self, count):
        if (count <= 0):
            self.msg = 'Count must be greater than 0'
            return -1
        if (count < len(self._limb.joints)-1):
            self.msg = 'Last Joints will be removed'
            return 0
        return 1

    def SetJointCount(self, count):
        self.limbMng.SetJointCount(self._limb.ID, count)










