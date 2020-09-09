
import pymel.core as pm

class BHV_Group_Manager:
    def __init__(self, limbMng):
        self.limbMng = limbMng
        
        self.cstTypes = ['Parent', 'Point', 'Orient', 'Scale']
        self.bhvTypes = [   'FK',
                            'Constraint',
                            'Look At',
                            'IK Pole Vector',
                            'IK Chain',
                            'IK Spline']
        self.bhvSuffixes = ['FK',
                            'CST',
                            'LKAT',
                            'IKPV',
                            'IKC',
                            'IKS']

    def NewRig(self, rigRoot):
        self.rigRoot = rigRoot

        self._nextBhvID = 1
        self._bhvs = {} # bhvID : bhvData
        self._limbBhvs = {} # limbID : [bhvIDs]

        pm.select(d=1)
        self.bhvGrp = pm.group(name='Behaviors', em=1)
        pm.parent(self.bhvGrp, rigRoot)
        pm.addAttr(rigRoot, ln='behaviors', dt='string')


#============= ACCESSORS + MUTATORS ============================

    def GetBhvGrp(self, bhvID):
        return self._bhvs[bhvID]

    def GetLimbBhvIDs(self, limbID):
        return self._limbBhvs[limbID]

#============= FUNCTIONALITY ============================

    # LIMBS
    def AddLimb(self, limbID):
        self._limbBhvs[limbID] = []
        limb = self.limbMng.GetLimb(limbID)
        if (limb.typeIndex.get() % 2): # BRANCH
            bhvTypes = ':'.join(self.bhvTypes[:3])
        else: # CHAIN
            bhvTypes = ':'.join(self.bhvTypes)
        pm.addAttr(limb.bhvIndex, e=1, enumName=':'.join(bhvTypes))
    
    def RemoveLimb(self, limbID):
        bhvIDs = self.GetLimbBhvIDs(limbID)
        self.Remove(limbID, bhvIDs)
        del(self._limbBhvs[limbID])

    def Add(self, limbID):
        bhvID = self._nextBhvID
        self._nextBhvID += 1

        cstTypes = ':'.join(self.cstTypes)

        bhv = pm.group(em=1, w=1)
        pm.addAttr(bhv, ln='ID', at='long', dv=bhvID)
        pm.addAttr(bhv, ln='limbID', at='short', dv=limbID)
        pm.addAttr(bhv, ln='bhvType', dt='string')

        # FK, IK Chain, Constraint
        pm.addAttr(bhv, ln='jointID', at='short', dv=-1) 

        # Limb Switch
        pm.addAttr(bhv, ln='parentJntID', at='short', dv=-1) 

        # IK Chain, IK Pole Vector - End
        pm.addAttr(bhv, ln='parentBhvGrpID', at='short', dv=-1) 

        # Look At, IK Pole Vector - Mid
        pm.addAttr(bhv, ln='distance', at='short') 
        
        # Constraint
        pm.addAttr(bhv, ln='targetJntID', at='short', dv=-1)
        pm.addAttr(bhv, ln='weight', at='short', dv=0.5)
        pm.addAttr(bhv, ln='cstType', at='enum', enumName=cstTypes, dv=0)

        pm.addAttr(bhv, ln='rigRoot', dt='string')
        pm.connectAttr(self.rigRoot.joints, bhv.rigRoot)

        self._bhvs[bhvID] = bhv
        self._limbBhvs[limbID].append(bhvID)
        return bhv

    def Remove(self, limbID, bhvID):
        pm.select(d=1)
        pm.delete(self._bhvs[bhvID])
        del(self._bhvs[bhvID])
        self._limbBhvs[limbID].remove(bhvID)






#=========== DEPRICATED ====================================
#=========== DEPRICATED ====================================
#=========== DEPRICATED ====================================



# class BHV_Group_Manager():
#     def __init__(self, jntMng):
#         self.jntMng = jntMng

#         self.grpTypes = ['Limb Switch',

#                         'FK',
#                         'Constraint',
#                         'Look At',
#                         'IK Chain',
#                         'IK Spline',

#                         'IK Pole Vector - Mid',
#                         'IK Pole Vector - End']

#         self.cstTypes = [   'Parent',
#                             'Position',
#                             'Rotation',
#                             'Scale']

#         self.distanceGrps = [   self.grpTypes[3], # Look At
#                                 self.grpTypes[6]] # IK Pole Vector - Mid

#         self.parentToFkGrps = [ self.grpTypes[3], # Look At
#                                 self.grpTypes[4], # IK Chain
#                                 self.grpTypes[5], # IK Spline
#                                 self.grpTypes[6], # IK Pole Vector - Mid
#                                 self.grpTypes[7]] # IK Pole Vector - End

#         self.ctrGrps = [self.grpTypes[0], # Limb Switch
#                         self.grpTypes[1], # FK
#                         self.grpTypes[3], # Look At
#                         self.grpTypes[5], # IK Spline
#                         self.grpTypes[6]] # IK Pole Vector - Mid

#         self.jntGrps = [self.grpTypes[1], # FK
#                         self.grpTypes[2], # Constraint
#                         self.grpTypes[4]] # IK Chain
                        

#         self.NewRig()

#     def NewRig(self):
#         self._nextBhvGrpID = 1
#         self._bhvGrps = {} # bhvGrpID : bhvGrpData


# #============= ACCESSORS + MUTATORS ============================

#     def GetBhvGrpName(self, bhvGrpID):
#         return self._bhvGrps[bhvGrpID].name
    
#     def GetBhvGrpType(self, bhvGrpID):
#         return self._bhvGrps[bhvGrpID].type
    
#     # CONTROLLER
#     def HasController(self, bhvGrpID):
#         return self._bhvGrps[bhvGrpID].type in self.ctrGrps

#     # JOINT ID
#     def GetJointID(self, bhvGrpID):
#         return self._bhvGrps[bhvGrpID].jntID

#     # PARENT JOINT
#     def HasParentJointID(self, bhvGrpID):
#         return self._bhvGrps[bhvGrpID].type == self.grpTypes[0]

#     def GetParentJointID(self, bhvGrpID):
#         return self._bhvGrps[bhvGrpID].parentJntID

#     def SetParentJointID(self, bhvGrpID, parentJntID):
#         self._bhvGrps[bhvGrpID].parentJntID = parentJntID

#     # PARENT TO FK GRP
#     def HasParentToFK(self, bhvGrpID):
#         return self._bhvGrps[bhvGrpID].type in self.parentToFkGrps

#     def GetParentFKGrpID(self, bhvGrpID):
#         return self._bhvGrps[bhvGrpID].parentBhvGrpID

#     def SetParentFKGrpID(self, bhvGrpID, parentBhvGrpID):
#         self._bhvGrps[bhvGrpID].parentBhvGrpID = parentBhvGrpID

#     # DISTANCE
#     def HasDistance(self, bhvGrpID):
#         return self._bhvGrps[bhvGrpID].type in self.distanceGrps
    
#     def GetDistance(self, bhvGrpID):
#         return self._bhvGrps[bhvGrpID].distance

#     def SetDistance(self, bhvGrpID, value):
#         self._bhvGrps[bhvGrpID].distance = value
        
# #============= CONSTRAINT ============================

#     def IsConstraint(self, bhvGrpID):
#         return self._bhvGrps[bhvGrpID].type == self.grpTypes[2]

#     def GetConstraintTypes(self):
#         return self.cstTypes

#     # CST TYPE
#     def GetConstraintType(self, bhvGrpID):
#         return self._bhvGrps[bhvGrpID].cstType

#     def SetConstraintType(self, bhvGrpID, typeIndex):
#         self._bhvGrps[bhvGrpID].cstType = self.cstTypes[typeIndex]
    
#     # TARGET
#     def GetConstraintTarget(self, bhvGrpID):
#         return self._bhvGrps[bhvGrpID].targetJntID

#     def SetConstraintTarget(self, bhvGrpID, targetJntID):
#         self._bhvGrps[bhvGrpID].targetJntID = targetJntID
    
#     # WEIGHT
#     def GetConstraintWeight(self, bhvGrpID):
#         return self._bhvGrps[bhvGrpID].weight

#     def SetConstraintWeight(self, bhvGrpID, weight):
#         self._bhvGrps[bhvGrpID].weight = weight
    
#     # AXES
#     def GetConstraintAxes(self, bhvGrpID):
#         return self._bhvGrps[bhvGrpID].axes
        
#     def SetConstraintAxes(self, bhvGrpID, axes):
#         self._bhvGrps[bhvGrpID].axes = axes

# #============= ADD / REMOVE GRPS ============================

#     def Remove(self, bhvGrpID):
#         del(self._bhvGrps[bhvGrpID])

#     def _Add(self, bhvGrpType, bhvGrpName):
#         bhvGrpID = self._nextBhvGrpID
#         bhvGrp = bgd.BHV_Group_Data(bhvGrpID, bhvGrpType, bhvGrpName)
#         self._bhvGrps[bhvGrpID] = bhvGrp
#         self._nextBhvGrpID += 1
#         return bhvGrp

# #============= ADD TYPE ============================

#     def Add_LimbSwitch(self, parentJntID):
#         bhvGrpType = self.grpTypes[0]
#         bhvGrp = self._Add(bhvGrpType, bhvGrpType)
#         bhvGrp.parentJntID = parentJntID
#         return bhvGrp.ID
    
#     def Add_FK(self, jointID):
#         bhvGrpType = self.grpTypes[1]
#         jointName = self.jntMng.GetName(jointID)
#         bhvGrpName = '%s - %s' % (bhvGrpType, jointName)
#         bhvGrp = self._Add(bhvGrpType, bhvGrpName)
#         return bhvGrp.ID

#     def Add_Constraint(self, jointID, targetJntID, cstType):
#         bhvGrpType = self.grpTypes[2]
#         jointName = self.jntMng.GetName(jointID)
#         bhvGrpName = '%s - %s' % (bhvGrpType, jointName)
#         bhvGrp = self._Add(bhvGrpType, bhvGrpName)
#         bhvGrp.targetJntID = targetJntID
#         bhvGrp.cstType = cstType
#         return bhvGrp.ID

#     def Add_LookAt(self):
#         bhvGrpType = self.grpTypes[3]
#         bhvGrp = self._Add(bhvGrpType, bhvGrpType)
#         return bhvGrp.ID

#     def Add_IKChain(self, jointID):
#         bhvGrpType = self.grpTypes[4]
#         jointName = self.jntMng.GetName(jointID)
#         bhvGrpName = '%s - %s' % (bhvGrpType, jointName)
#         bhvGrp = self._Add(bhvGrpType, bhvGrpName)
#         return bhvGrp.ID

#     def Add_IKSpline(self, index):
#         bhvGrpType = self.grpTypes[5]
#         bhvGrpName = '%s - %02d' % (bhvGrpType, index)
#         bhvGrp = self._Add(bhvGrpType, bhvGrpName)
#         return bhvGrp.ID

#     def Add_IKPoleVectorMid(self):
#         bhvGrpType = self.grpTypes[6]
#         bhvGrp = self._Add(bhvGrpType, bhvGrpType)
#         return bhvGrp.ID

#     def Add_IKPoleVectorEnd(self):
#         bhvGrpType = self.grpTypes[7]
#         bhvGrp = self._Add(bhvGrpType, bhvGrpType)
#         return bhvGrp.ID







# import BHV_Data as bhvData
# reload(bhvData)

# class Behavior_Manager():
#     def __init__(self, limbMng, jntMng, bhvGrpMng):
#         self.limbMng = limbMng
#         self.jntMng = jntMng
#         self.bhvGrpMng = bhvGrpMng

#         self.bhvTypes = [   'FK',
#                             'Constraint',
#                             'Look At',
#                             'IK Pole Vector',
#                             'IK Chain',
#                             'IK Spline']
#         self.bhvSuffixes = ['FK',
#                             'CST',
#                             'LKAT',
#                             'IKPV',
#                             'IKC',
#                             'IKS']

#         self.NewRig()

#     def NewRig(self):
#         self._nextBhvID = 1
#         self._bhvs = {} # bhvID : bhvData
#         self._limbBhvs = {} # limbID : {bhvType : bhvID}
#         self._limbSwitchGrps = {} # limbID : limbSwitchGrp


# #============= ACCESSORS + MUTATORS ============================

#     def GetLimbBhvIDs(self, limbID):
#         return self._limbBhvs[limbID]

#     def GetBhvType(self, bhvID):
#         return self._bhvs[bhvID].bhvType

#     def GetBhvSuffix(self, bhvID):
#         return self._bhvs[bhvID].suffix

#     def GetBhvGrps(self, bhvID):
#         return self._bhvs[bhvID].bhvGrps
    
    
# #=============  ============================

#     def _AddBhv(self, limbID, bhvType, suffix, bhvGrps):
#         bhvID = self._nextBhvID
#         self._bhvs[bhvID] = bhvData.BHV_Data(bhvID, bhvType, suffix, bhvGrps)
#         self._limbBhvs[limbID][bhvType] = bhvID
#         self._nextBhvID += 1

#     def _RemoveBhv(self, limbID, bhvID):
#         bhv = self._bhvs[bhvID]
#         del(self._bhvs[bhvID])
#         del(self._limbBhvs[limbID][bhv.bhvType])

#     def Add_FK(self, limbID):
#         jntIDs = self.jntMng.GetLimbJointIDs(limbID)
#         bhvGrps = []
#         for jntID in jntIDs:
#             pass
#         self._limbBhvs[limbID]

#     def Remove_FK(self, limbID):
#         pass














