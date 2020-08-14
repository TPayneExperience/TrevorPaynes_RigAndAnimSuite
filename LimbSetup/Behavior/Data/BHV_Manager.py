
import BHV_Data as bhvData
reload(bhvData)

class Behavior_Manager():
    def __init__(self, limbMng, jntMng, bhvGrpMng):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.bhvGrpMng = bhvGrpMng

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

        self.NewRig()

    def NewRig(self):
        self._nextBhvID = 1
        self._bhvs = {} # bhvID : bhvData
        self._limbBhvs = {} # limbID : {bhvType : bhvID}
        self._limbSwitchGrps = {} # limbID : limbSwitchGrp


#============= ACCESSORS + MUTATORS ============================

    def GetLimbBhvIDs(self, limbID):
        return self._limbBhvs[limbID]

    def GetBhvType(self, bhvID):
        return self._bhvs[bhvID].bhvType

    def GetBhvSuffix(self, bhvID):
        return self._bhvs[bhvID].suffix

    def GetBhvGrps(self, bhvID):
        return self._bhvs[bhvID].bhvGrps
    
    
#=============  ============================

    def _AddBhv(self, limbID, bhvType, suffix, bhvGrps):
        bhvID = self._nextBhvID
        self._bhvs[bhvID] = bhvData.BHV_Data(bhvID, bhvType, suffix, bhvGrps)
        self._limbBhvs[limbID][bhvType] = bhvID
        self._nextBhvID += 1

    def _RemoveBhv(self, limbID, bhvID):
        bhv = self._bhvs[bhvID]
        del(self._bhvs[bhvID])
        del(self._limbBhvs[limbID][bhv.bhvType])

    def Add_FK(self, limbID):
        jntIDs = self.jntMng.GetLimbJointIDs(limbID)
        bhvGrps = []
        for jntID in jntIDs:
            pass
        self._limbBhvs[limbID]

    def Remove_FK(self, limbID):
        pass














