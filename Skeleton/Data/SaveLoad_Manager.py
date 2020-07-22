
import Joint_Data as jd

reload(jd)

class SaveLoad_Manager():
    def __init__(self, limbManager, jointManager):
        self.limbMng = limbManager
        self.jntMng = jointManager
    
    def GetData(self):
        data = {}

    # JOINT ------------------------------
        jointData = {}
        jointData['Joints'] = {}
        for jointID in self.jntMng.GetAllJointIDs():
            jointData['Joints'][jointID] = self.jntMng.GetJoint(jointID).__dict__
        jointData['Limb Joints'] = self.jntMng._limbJoints
        jointData['Limb Parent Joint'] = self.jntMng._limbParentJoint
        jointData['Limb Next Joint Index'] = self.jntMng._limbNextJointIndex
        jointData['Mirror Joints'] = self.jntMng._mirrorJoints

    # LIMB ------------------------------
        limbData = {}
        limbData['Limb Name'] = self.limbMng._limbName
        limbData['Limb Type'] = self.limbMng._limbType
        limbData['Limb Side'] = self.limbMng._limbSide
        limbData['Limb Parent'] = self.limbMng._limbParent
        limbData['Limb Mirror'] = self.limbMng._limbMirror
        limbData['Limb Mirror Roots'] = self.limbMng._limbMirrorRoots

        data['Joint Data'] = jointData
        data['Limb Data'] = limbData
        return data

    def LoadData(self, data):
        nextJointID = self.jntMng._nextJointID
        nextLimbID = self.limbMng._nextLimbID
        oldToNewLimbIDs = {}
        oldToNewJointIDs = {}

        jointData = data['Joint Data']
        limbData = data['Limb Data']

    # LIMB ------------------------------
        for k, v in limbData['Limb Name'].items():
            oldToNewLimbIDs[k] = nextLimbID
            self.limbMng._limbName[nextLimbID] = '%s_Copy%03d' % (v, nextLimbID)
            nextLimbID += 1

        for k, v in limbData['Limb Type'].items():
            self.limbMng._limbType[oldToNewLimbIDs[k]] = v

        for k, v in limbData['Limb Side'].items():
            self.limbMng._limbSide[oldToNewLimbIDs[k]] = v

        for k, v in limbData['Limb Parent'].items():
            self.limbMng._limbParent[oldToNewLimbIDs[k]] = v

        for k, v in limbData['Limb Mirror'].items():
            self.limbMng._limbMirror[oldToNewLimbIDs[k]] = v

        for limbID in limbData['Limb Mirror Roots']:
            self.limbMng._limbMirrorRoots.append(oldToNewLimbIDs[str(limbID)])
            
    # JOINT ------------------------------
        for jointDict in list(jointData['Joints'].values()):
            joint = jd.Joint_Data(1, 1, 1, 1, 1)
            joint.__dict__ = jointDict
            oldToNewJointIDs[joint.ID] = nextJointID
            joint.ID = nextJointID
            self.jntMng._joints[joint.ID] = joint
            nextJointID += 1

        for limbID in list(jointData['Limb Joints'].keys()):
            jointIDs = jointData['Limb Joints'][limbID]
            jointIDs = [oldToNewJointIDs[ID] for ID in jointIDs]
            self.jntMng._limbJoints[oldToNewLimbIDs[limbID]] = jointIDs

        for k,v in jointData['Limb Parent Joint'].items():
            limbID = oldToNewLimbIDs[k]
            if (v == -1):
                jointID = -1
            else: 
                jointID = oldToNewJointIDs[v]
            self.jntMng._limbParentJoint[limbID] = jointID

        for k,v in jointData['Limb Next Joint Index'].items():
            limbID = oldToNewLimbIDs[k]
            self.jntMng._limbNextJointIndex[limbID] = v

        for k,v in jointData['Mirror Joints'].items():
            ID_01 = oldToNewJointIDs[int(k)]
            if (v == -1):
                ID_02 = -1
            else:
                ID_02 = oldToNewJointIDs[v]
            self.jntMng._mirrorJoints[ID_01] = ID_02

        self.jntMng._nextJointID = nextJointID
        self.limbMng._nextLimbID = nextLimbID









































