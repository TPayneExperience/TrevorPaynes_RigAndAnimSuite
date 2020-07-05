
from Joint_Data import Joint_Data

class Joint_Manager():
    def __init__(self):
        self._nextJointID = 0
        self._joints = {} # ID: jointData
        self._sceneJoints = {} # ID: sceneJoint
        self._axes = ['X', '-X', 'Y', '-Y', 'Z', '-Z']
        self._rotAxes = ['XYZ', 'XZY', 'YXZ', 'YZX', 'ZXY', 'ZYX']


#============= ACCESSORS ============================

    def GetJoint(self, ID):
        return self._joints[ID]

    def GetJoints(self, idList):
        return [self._jointIdToData[ID] for ID in idList]

    def GetNames(self, idList):
        return [self._jointIdToData[ID].jointName for ID in idList]
    
    def GetAxes(self):
        return self._axes
    
    def GetRotAxes(self):
        return self._rotAxes

#============= FUNCTIONALITY ============================

    def AddJoints(self, count, jointNameStartIndex):
        jointIdList = []
        for i in range(count):
            ID = self._nextJointID
            jointIdList.append(ID)
            name = '%03d' % (jointNameStartIndex + i)
            self._joints[ID] = Joint_Data(ID, name, ROT_AXES[0], AXES[0], AXES[2])
            self._nextJointID += 1
        return jointIdList
    
    def RemoveJoints(self, idList):
        for ID in idList:
            del(self._joints[ID])

    def DuplicateJoints(self, sourceIdList):
        targetIdList = self.AddJoints(len(sourceIdList), 0)
        for sourceID, targetID in zip(sourceIdList, targetIdList):
            source = self._joints[sourceID]
            target = self._joints[targetID]
            target.name         = source.name
            target.position     = source.position[:]
            target.rotation     = source.rotation[:]
            target.scale        = source.scale[:]
            target.rotationOrder= source.rotationOrder
            target.aimAxis      = source.aimAxis
            target.upAxis       = source.upAxis
        return targetIdList

    def MirrorJoints(self, sourceIdList, axis):
        targetIdList = self.DuplicateJoints(sourceIdList)
        # MISSING: FLIP OVER AXIS
        # MISSING: FIX ROTATIONS
        return targetIdList

#============= TEMPLATE ============================

    def AddTemplate_Joints(self, jointDataList):
        oldToNewJointIds = {}
        for joint in jointDataList:
            newID = self._nextJointID
            oldToNewIds[joint.ID] = newID
            joint.ID = newID
            self._joints[newID] = joint
            self._nextJointID += 1
        return oldToNewJointIds



if __name__ == '__main__':
    pass











