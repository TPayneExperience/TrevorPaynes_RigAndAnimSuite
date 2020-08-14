

class BHV_Data(object):
    def __init__(self, bhvDataID, bhvType, suffix, bhvGrps):
        self.ID = bhvDataID
        self.bhvType = bhvType
        self.suffix = suffix
        self.bhvGrps = bhvGrps





#============ MISC ==============================

# class BHV_FK(BHV_Data):
#     def __init__(self, bhvDataID, bhvGrps):
#         self.ID = bhvDataID
#         self.bhvType = 'FK'
#         self.shortBhvType = 'FK'
#         self.bhvGrps = bhvGrps # list of BHV_FK_Group_Data

# class BHV_Constraint(BHV_Data):
#     def __init__(self, bhvDataID, bhvGrps):
#         self.ID = bhvDataID
#         self.bhvType = 'Constraint'
#         self.shortBhvType = 'CST'
#         self.bhvGrps = bhvGrps # list of BHV_Constraint_Group_Data

# class BHV_LookAt(BHV_Data):
#     def __init__(self, bhvDataID, bhvGrps):
#         self.ID = bhvDataID
#         self.bhvType = 'Look At'
#         self.shortBhvType = 'LKAT'
#         self.bhvGrps = bhvGrps # [BHV_LookAt_Group_Data]


# #========== IK ================================

# class BHV_IK_PoleVector(BHV_Data):
#     def __init__(self, bhvDataID, bhvGrps):
#         self.ID = bhvDataID
#         self.bhvType = 'IK Pole Vector'
#         self.shortBhvType = 'IKPV'
#         self.bhvGrps = bhvGrps # [IKPoleVectorMid, ParentToFK]

# class BHV_IK_Chain(BHV_Data):
#     def __init__(self, bhvDataID, bhvGrps):
#         self.ID = bhvDataID
#         self.bhvType = 'IK Chain'
#         self.shortBhvType = 'IKC'
#         self.bhvGrps = bhvGrps # list of BHV_ParentToFK_Group_Data
        
# class BHV_IK_Spline(BHV_Data):
#     def __init__(self, bhvDataID, bhvGrps):
#         self.ID = bhvDataID
#         self.bhvType = 'IK Spline'
#         self.shortBhvType = 'IKS'
#         self.bhvGrps = bhvGrps # list of 4, BHV_FK_Group_Data


