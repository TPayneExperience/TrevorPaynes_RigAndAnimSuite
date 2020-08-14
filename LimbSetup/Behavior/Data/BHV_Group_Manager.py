
import BHV_Group_Data as bgd
reload(bgd)


class BHV_Group_Manager():
    def __init__(self, jntMng):
        self.jntMng = jntMng

        self.grpTypes = ['Limb Switch',

                        'FK',
                        'Constraint',
                        'Look At',
                        'IK Chain',
                        'IK Spline',

                        'IK Pole Vector - Mid',
                        'IK Pole Vector - End']

        self.cstTypes = [   'Parent',
                            'Position',
                            'Rotation',
                            'Scale']

        self.distanceGrps = [   self.grpTypes[3], # Look At
                                self.grpTypes[6]] # IK Pole Vector - Mid

        self.parentToFkGrps = [ self.grpTypes[3], # Look At
                                self.grpTypes[4], # IK Chain
                                self.grpTypes[5], # IK Spline
                                self.grpTypes[6], # IK Pole Vector - Mid
                                self.grpTypes[7]] # IK Pole Vector - End

        self.ctrGrps = [self.grpTypes[0], # Limb Switch
                        self.grpTypes[1], # FK
                        self.grpTypes[3], # Look At
                        self.grpTypes[5], # IK Spline
                        self.grpTypes[6]] # IK Pole Vector - Mid

        self.jntGrps = [self.grpTypes[1], # FK
                        self.grpTypes[2], # Constraint
                        self.grpTypes[4]] # IK Chain
                        

        self.NewRig()

    def NewRig(self):
        self._nextBhvGrpID = 1
        self._bhvGrps = {} # bhvGrpID : bhvGrpData


#============= ACCESSORS + MUTATORS ============================

    def GetBhvGrpName(self, bhvGrpID):
        return self._bhvGrps[bhvGrpID].name
    
    def GetBhvGrpType(self, bhvGrpID):
        return self._bhvGrps[bhvGrpID].type
    
    # CONTROLLER
    def HasController(self, bhvGrpID):
        return self._bhvGrps[bhvGrpID].type in self.ctrGrps

    # JOINT ID
    def GetJointID(self, bhvGrpID):
        return self._bhvGrps[bhvGrpID].jntID

    # PARENT JOINT
    def HasParentJointID(self, bhvGrpID):
        return self._bhvGrps[bhvGrpID].type == self.grpTypes[0]

    def GetParentJointID(self, bhvGrpID):
        return self._bhvGrps[bhvGrpID].parentJntID

    def SetParentJointID(self, bhvGrpID, parentJntID):
        self._bhvGrps[bhvGrpID].parentJntID = parentJntID

    # PARENT TO FK GRP
    def HasParentToFK(self, bhvGrpID):
        return self._bhvGrps[bhvGrpID].type in self.parentToFkGrps

    def GetParentFKGrpID(self, bhvGrpID):
        return self._bhvGrps[bhvGrpID].parentBhvGrpID

    def SetParentFKGrpID(self, bhvGrpID, parentBhvGrpID):
        self._bhvGrps[bhvGrpID].parentBhvGrpID = parentBhvGrpID

    # DISTANCE
    def HasDistance(self, bhvGrpID):
        return self._bhvGrps[bhvGrpID].type in self.distanceGrps
    
    def GetDistance(self, bhvGrpID):
        return self._bhvGrps[bhvGrpID].distance

    def SetDistance(self, bhvGrpID, value):
        self._bhvGrps[bhvGrpID].distance = value
        
#============= CONSTRAINT ============================

    def IsConstraint(self, bhvGrpID):
        return self._bhvGrps[bhvGrpID].type == self.grpTypes[2]

    def GetConstraintTypes(self):
        return self.cstTypes

    # CST TYPE
    def GetConstraintType(self, bhvGrpID):
        return self._bhvGrps[bhvGrpID].cstType

    def SetConstraintType(self, bhvGrpID, typeIndex):
        self._bhvGrps[bhvGrpID].cstType = self.cstTypes[typeIndex]
    
    # TARGET
    def GetConstraintTarget(self, bhvGrpID):
        return self._bhvGrps[bhvGrpID].targetJntID

    def SetConstraintTarget(self, bhvGrpID, targetJntID):
        self._bhvGrps[bhvGrpID].targetJntID = targetJntID
    
    # WEIGHT
    def GetConstraintWeight(self, bhvGrpID):
        return self._bhvGrps[bhvGrpID].weight

    def SetConstraintWeight(self, bhvGrpID, weight):
        self._bhvGrps[bhvGrpID].weight = weight
    
    # AXES
    def GetConstraintAxes(self, bhvGrpID):
        return self._bhvGrps[bhvGrpID].axes
        
    def SetConstraintAxes(self, bhvGrpID, axes):
        self._bhvGrps[bhvGrpID].axes = axes

#============= ADD / REMOVE GRPS ============================

    def Remove(self, bhvGrpID):
        del(self._bhvGrps[bhvGrpID])

    def _Add(self, bhvGrpType, bhvGrpName):
        bhvGrpID = self._nextBhvGrpID
        bhvGrp = bgd.BHV_Group_Data(bhvGrpID, bhvGrpType, bhvGrpName)
        self._bhvGrps[bhvGrpID] = bhvGrp
        self._nextBhvGrpID += 1
        return bhvGrp

#============= ADD TYPE ============================

    def Add_LimbSwitch(self, parentJntID):
        bhvGrpType = self.grpTypes[0]
        bhvGrp = self._Add(bhvGrpType, bhvGrpType)
        bhvGrp.parentJntID = parentJntID
        return bhvGrp.ID
    
    def Add_FK(self, jointID):
        bhvGrpType = self.grpTypes[1]
        jointName = self.jntMng.GetName(jointID)
        bhvGrpName = '%s - %s' % (bhvGrpType, jointName)
        bhvGrp = self._Add(bhvGrpType, bhvGrpName)
        return bhvGrp.ID

    def Add_Constraint(self, jointID, targetJntID, cstType):
        bhvGrpType = self.grpTypes[2]
        jointName = self.jntMng.GetName(jointID)
        bhvGrpName = '%s - %s' % (bhvGrpType, jointName)
        bhvGrp = self._Add(bhvGrpType, bhvGrpName)
        bhvGrp.targetJntID = targetJntID
        bhvGrp.cstType = cstType
        return bhvGrp.ID

    def Add_LookAt(self):
        bhvGrpType = self.grpTypes[3]
        bhvGrp = self._Add(bhvGrpType, bhvGrpType)
        return bhvGrp.ID

    def Add_IKChain(self, jointID):
        bhvGrpType = self.grpTypes[4]
        jointName = self.jntMng.GetName(jointID)
        bhvGrpName = '%s - %s' % (bhvGrpType, jointName)
        bhvGrp = self._Add(bhvGrpType, bhvGrpName)
        return bhvGrp.ID

    def Add_IKSpline(self, index):
        bhvGrpType = self.grpTypes[5]
        bhvGrpName = '%s - %02d' % (bhvGrpType, index)
        bhvGrp = self._Add(bhvGrpType, bhvGrpName)
        return bhvGrp.ID

    def Add_IKPoleVectorMid(self):
        bhvGrpType = self.grpTypes[6]
        bhvGrp = self._Add(bhvGrpType, bhvGrpType)
        return bhvGrp.ID

    def Add_IKPoleVectorEnd(self):
        bhvGrpType = self.grpTypes[7]
        bhvGrp = self._Add(bhvGrpType, bhvGrpType)
        return bhvGrp.ID













