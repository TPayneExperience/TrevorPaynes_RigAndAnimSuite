
import Joint_Data as jd

reload(jd)

class Joint_Manager():
    def __init__(self):
        self._nextJointID = 1
        self._joints = {} # jointID: jointData
        self._limbJoints = {} # limbID: jointIdList (was jointIDs)
        self._limbParentJoint = {} # limbID: parentJointID (was parentJointID)
        self._limbNextJointIndex = {} # limbID: nextJointIndex (was nextJointName)
        self._mirrorJoints = {} # jointID_01 : jointID_02
        self._axes = ['X', '-X', 'Y', '-Y', 'Z', '-Z']
        self.axisPairs = {  'X': ['X', '-X'],
                            '-X': ['X', '-X'],
                            'Y': ['Y', '-Y'],
                            '-Y': ['Y', '-Y'],
                            'Z': ['Z', '-Z'],
                            '-Z': ['Z', '-Z']}
        self._rotAxes = ['XYZ', 'XZY', 'YXZ', 'YZX', 'ZXY', 'ZYX']


#============= ACCESSORS + MUTATORS ============================

    def GetJoint(self, ID):
        '''AVOID USING!'''
        return self._joints[ID]

    def GetJoints(self, idList):
        '''AVOID USING!'''
        return [self._joints[ID] for ID in idList]

    def GetNextJointIndex(self, limbID):
        return self._limbNextJointIndex[limbID]

    def SetNextJointIndex(self, limbID, index):
        self._limbNextJointIndex[limbID] = index

    # GET AXES FOR COMBOBOXES
    def GetAxes(self):
        return self._axes
    
    def GetRotAxes(self):
        return self._rotAxes
    
    # ROTATION ORDER
    def SetRotationOrder(self, jointList, rotationOrder):
        for joint in jointList:
            joint.rotationOrder = rotationOrder
            mirrorID = self._mirrorJoints[joint.ID]
            if (mirrorID != -1):
                mirrorJoint = self._joints[mirrorID]
                mirrorJoint.rotationOrder = rotationOrder
    
    # LIMB JOINT IDS
    def GetLimbJointIDs(self, limbID):
        return self._limbJoints[limbID]
    
    def SetLimbJointIDs(self, limbID, mirrorLimbID, jointIDs):
        self._limbJoints[limbID] = jointIDs
        if (mirrorLimbID != -1):
            mirrorIDs = [self._mirrorJoints[ID] for ID in jointIDs]
            self._limbJoints[mirrorLimbID] = mirrorIDs

    # PARENT JOINT
    def GetParentJointId(self, limbID):
        return self._limbParentJoint[limbID]

    def SetParentJointId(self, limbID, jointID):
        self._limbParentJoint[limbID] = jointID

    def SetParentLimb(self, childLimbID, parentLimbID):
        self.SetParentJointId(childLimbID, -1)
        if (parentLimbID != -1):
            parentJointID = self.GetParentJointId(childLimbID)
            parentJointIDs = self.GetLimbJointIDs(parentLimbID)
            if parentJointIDs and parentJointID not in parentJointIDs:
                self.SetParentJointId(childLimbID, parentJointIDs[0])

    # MISC
    def GetAllJointIDs(self):        
        return list(self._joints.keys())

    def GetName(self, jointID):
        return self._joints[jointID].name

    def SetName(self, limbID, jointID, newName):
        ids = self.GetLimbJointIDs(limbID)
        names = [joint.name for joint in self.GetJoints(ids)]
        if newName not in names:
            self.GetJoint(jointID).name = newName
            mirrorID = self._mirrorJoints[jointID]
            if (mirrorID != -1):
                self.GetJoint(mirrorID).name = newName

    def GetJointCount(self): # for Skel tool label
        return len(self._joints.keys())

    def GetMirrorJoint(self, jointID):
        return self._mirrorJoints[jointID]

    def SetMirrorJoint(self, jointID_01, jointID_02):
        self._mirrorJoints[jointID_01] = jointID_02

#============= FUNCTIONALITY ============================

    def DoesLimbHaveJoints(self, limbID):
        return (len(self._limbJoints[limbID]) > 0)

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

    def Add(self, limbID, mirrorID, count):
        currentCount = len(self._limbJoints[limbID])
        limit = min(99, currentCount + count)
        addCount = limit - currentCount
        startIndex = self._limbNextJointIndex[limbID]
        self._limbNextJointIndex[limbID] += addCount
        if (mirrorID != -1):
            self._limbNextJointIndex[mirrorID] += addCount
        IDs = []
        for i in range(addCount):
            IDs.append(self._AddJoint(limbID, startIndex + i))
        if (mirrorID != -1):
            for i in range(addCount):
                mirrorID = self._AddJoint(mirrorID, startIndex + i)
                self._mirrorJoints[IDs[i]] = mirrorID
                self._mirrorJoints[mirrorID] = IDs[i]
    
    def _AddJoint(self, limbID, jointIndex):
        position = [0,0,0]
        limbJointIDs = self._limbJoints[limbID]
        if (limbJointIDs):
            pos = self._joints[limbJointIDs[-1]].position
            position = [pos[0], pos[1]-5, pos[2]]
        jointID = self._nextJointID
        self._mirrorJoints[jointID] = -1
        self._limbJoints[limbID].append(jointID)
        name = 'Joint_%03d' % (jointIndex)
        self._joints[jointID] = jd.Joint_Data( jointID, 
                                            name, 
                                            self._rotAxes[0], 
                                            self._axes[0], 
                                            self._axes[2])
        self._joints[jointID].position = position
        self._nextJointID += 1
        return jointID
    
    def Remove(self, limbID, jointIDs):
        for jointID in jointIDs:
            mirrorID = self._mirrorJoints[jointID]
            if (mirrorID != -1):
                self._mirrorJoints[mirrorID] = -1
            self._limbJoints[limbID].remove(jointID)
            del(self._mirrorJoints[jointID])
            del(self._joints[jointID])
    
    def Duplicate(self, sourceLimbID, targetLimbID):
        self.AddLimb(targetLimbID)
        self.Add(targetLimbID, -1, len(self._limbJoints[sourceLimbID]))
        sourceJointIDs = self._limbJoints[sourceLimbID]
        targetJointIDs = self._limbJoints[targetLimbID]
        for sourceID, targetID in zip(sourceJointIDs, targetJointIDs):
            source = self._joints[sourceID]
            target = self._joints[targetID]
            target.name         = source.name
            target.position     = source.position[:]
            target.rotation     = source.rotation[:]
            # target.scale        = source.scale[:]
            target.rotationOrder= source.rotationOrder
            target.aimAxis      = source.aimAxis
            target.upAxis       = source.upAxis

    def Mirror(self, sourceLimbID, targetLimbID, axis):
        self.Duplicate(sourceLimbID, targetLimbID)
        sourceJointIDs = self.GetLimbJointIDs(sourceLimbID)
        targetJointIDs = self.GetLimbJointIDs(targetLimbID)
        for sourceID, targetID in zip(sourceJointIDs, targetJointIDs):
            self._mirrorJoints[sourceID] = targetID
            self._mirrorJoints[targetID] = sourceID
        flip = [-1,1,1]
        if (axis == 'Y'):
            flip = [1,-1,1]
        elif (axis == 'Z'):
            flip = [1,1,-1]
        for jointID in targetJointIDs:
            joint = self._joints[jointID]
            pos = joint.position
            joint.position = [  pos[0] * flip[0],
                                pos[1] * flip[1],
                                pos[2] * flip[2]]
        # MISSING: FIX ROTATIONS



if __name__ == '__main__':
    pass











