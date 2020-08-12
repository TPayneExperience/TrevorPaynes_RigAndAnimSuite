


class BHV_Group_Data():
    '''These are what controls will be parented to'''
    def __init__(self, bhvGrpID, parentBhvGrpID = -1):
        self.ID = bhvGrpID
        self.parentID = parentBhvGrpID # scene group parented to what?
