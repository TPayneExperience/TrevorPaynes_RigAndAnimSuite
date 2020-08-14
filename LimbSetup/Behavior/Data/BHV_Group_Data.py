

class BHV_Group_Data:
    '''These are what controls will be parented to'''
    def __init__(self, bhvGrpID, bhvGrpType, bhvGrpName):
        self.ID = bhvGrpID
        self.type = bhvGrpType
        self.name = bhvGrpName

        # FK, IK Chain, Constraint
        self.jntID = -1

        # Limb Switch
        self.parentJntID = -1 

        # IK Chain, IK Pole Vector - End
        self.parentBhvGrpID = -1 

        # Look At, IK Pole Vector - Mid
        self.distance = 0

        # Constraint
        self.cstType = '' # Parent, scale, rot, pos
        self.targetJntID = -1
        self.weight = 0.5
        self.axes = [   1,1,1, # Pos X, Y, Z
                        1,1,1, # Rot X, Y, Z
                        1,1,1] # Sca X, Y, Z
