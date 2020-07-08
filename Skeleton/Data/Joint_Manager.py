
from .Joint_Data import Joint_Data

class Joint_Manager():
    def __init__(self):
        self._nextJointID = 0
        self._joints = {} # ID: jointData
        self._limbJoints = {} # limbID: jointIdList (was jointIDs)
        self._limbParentJoint = {} # limbID: parentJointID (was parentJointID)
        self._limbNextJointIndex = {} # limbID: nextJointIndex (was nextJointName)
        self._axes = ['X', '-X', 'Y', '-Y', 'Z', '-Z']
        self._rotAxes = ['XYZ', 'XZY', 'YXZ', 'YZX', 'ZXY', 'ZYX']


#============= ACCESSORS + MUTATORS ============================

    def GetJoints(self, idList):
        return [self._joints[ID] for ID in idList]

    def GetAxes(self):
        return self._axes
    
    def GetRotAxes(self):
        return self._rotAxes
    
    def GetLimbJointIDs(self, limbID):
        return self._limbJoints[limbID]

    def SetLimbJointIDs(self, limbID, jointIDs):
        self._limbJoints[limbID] = jointIDs

    def GetParentJointId(self, limbID):
        return self._limbParentJoint[limbID]

    def SetParentJointId(self, limbID, jointID):
        self._limbParentJoint[limbID] = jointID

#============= FUNCTIONALITY ============================

    def AddLimb(self, limbID):
        self._limbJoints[limbID] = []
        self._limbParentJoint[limbID] = -1
        self._limbNextJointIndex[limbID] = 1

    def RemoveLimb(self, limbID):
        jointIDs = self.GetLimbJointIDs(limbID)
        self.Remove(limbID, jointIDs)
        del(self._limbJoints[limbID])
        del(self._limbParentJoint[limbID])
        del(self._limbNextJointIndex[limbID])

    def Add(self, limbID, count):
        startIndex = self._limbNextJointIndex[limbID]
        self._limbNextJointIndex[limbID] += count
        for i in range(count):
            jointID = self._nextJointID
            self._limbJoints[limbID].append(jointID)
            name = 'Joint_%03d' % (startIndex + i)
            self._joints[jointID] = Joint_Data( jointID, 
                                                name, 
                                                self._rotAxes[0], 
                                                self._axes[0], 
                                                self._axes[2])
            self._nextJointID += 1
    
    def Remove(self, limbID, jointIdList):
        for jointID in jointIdList:
            self._limbJoints[limbID].remove(jointID)
            del(self._joints[ID])
    
    def Duplicate(self, sourceLimbID, targetLimbID):
        self.Add(targetLimbID, len(self._limbJoints[sourceLimbID]))
        sourceJointIDs = self._limbJoints[sourceLimbID]
        targetJointIDs = self._limbJoints[targetLimbID]
        for sourceID, targetID in zip(sourceJointIDs, targetJointIDs):
            source = self._joints[sourceID]
            target = self._joints[targetID]
            target.name         = source.name
            target.position     = source.position[:]
            target.rotation     = source.rotation[:]
            target.scale        = source.scale[:]
            target.rotationOrder= source.rotationOrder
            target.aimAxis      = source.aimAxis
            target.upAxis       = source.upAxis

    def Mirror(self, sourceLimbID, targetLimbID, axis):
        targetIdList = self.Duplicate(sourceIdList)
        # MISSING: FLIP OVER AXIS
        # MISSING: FIX ROTATIONS
        return targetIdList

#============= TEMPLATE ============================

    # def AddTemplate_Joints(self, jointDataList):
    #     oldToNewJointIds = {}
    #     for joint in jointDataList:
    #         newID = self._nextJointID
    #         oldToNewIds[joint.ID] = newID
    #         joint.ID = newID
    #         self._joints[newID] = joint
    #         self._nextJointID += 1
    #     return oldToNewJointIds



if __name__ == '__main__':
    pass











