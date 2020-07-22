
import Joint_Data as jd

reload(jd)

class SaveLoad_Skeleton():
    def __init__(self, limbManager, jointManager):
        self.limbMng = limbManager
        self.jntMng = jointManager
    
    def GetAllData(self):
        limbIDs = self.limbMng.GetLimbIDs()
        return self.GetData(limbIDs, True)

    def GetData(self, limbIDs, saveMirrorData=False):
        data = {}

    # JOINT ------------------------------
        jointData = {}
        jointData['Joints'] = {}
        jointData['Limb Joints'] = {}
        jointData['Limb Parent Joint'] = {}
        jointData['Limb Next Joint Index'] = {}
        jointData['Mirror Joints'] = {}

        for limbID in limbIDs:
            jointIDs = self.jntMng.GetLimbJointIDs(limbID)
            for jointID in jointIDs:
                jointData['Joints'][jointID] = self.jntMng.GetJoint(jointID).__dict__
                if saveMirrorData:
                    jointData['Mirror Joints'][jointID] = self.jntMng.GetMirrorJoint(jointID)
                else:
                    jointData['Mirror Joints'][jointID] = -1
            jointData['Limb Joints'][limbID] = jointIDs
            jointData['Limb Parent Joint'][limbID] = self.jntMng.GetParentJointId(limbID)
            jointData['Limb Next Joint Index'][limbID] = self.jntMng.GetNextJointIndex(limbID)

    # LIMB ------------------------------
        limbData = {}
        limbData['Limb Name'] = {}
        limbData['Limb Type'] = {}
        limbData['Limb Side'] = {}
        limbData['Limb Parent'] = {}
        limbData['Limb Mirror'] = {}
        limbData['Limb Mirror Roots'] = []

        for limbID in limbIDs:
            limbData['Limb Name'][limbID] = self.limbMng.GetName(limbID)
            limbData['Limb Type'][limbID] = self.limbMng.GetType(limbID)
            limbData['Limb Side'][limbID] = self.limbMng.GetSide(limbID)
            limbData['Limb Parent'][limbID] = self.limbMng.GetParentID(limbID)
            if saveMirrorData:
                limbData['Limb Mirror'][limbID] = self.limbMng.GetMirror(limbID)
                if limbID in self.limbMng.GetLimbMirrorRoots():
                    limbData['Limb Mirror Roots'].append(limbID)
            else:
                limbData['Limb Mirror'][limbID] = -1

        data['Joint Data'] = jointData
        data['Limb Data'] = limbData
        return data


    # def GetData(self):
    #     data = {}

    # # JOINT ------------------------------
    #     jointData = {}
    #     jointData['Joints'] = {}
    #     for jointID in self.jntMng.GetAllJointIDs():
    #         jointData['Joints'][jointID] = self.jntMng.GetJoint(jointID).__dict__
    #     jointData['Limb Joints'] = self.jntMng._limbJoints
    #     jointData['Limb Parent Joint'] = self.jntMng._limbParentJoint
    #     jointData['Limb Next Joint Index'] = self.jntMng._limbNextJointIndex
    #     jointData['Mirror Joints'] = self.jntMng._mirrorJoints

    # # LIMB ------------------------------
    #     limbData = {}
    #     limbData['Limb Name'] = self.limbMng._limbName
    #     limbData['Limb Type'] = self.limbMng._limbType
    #     limbData['Limb Side'] = self.limbMng._limbSide
    #     limbData['Limb Parent'] = self.limbMng._limbParent
    #     limbData['Limb Mirror'] = self.limbMng._limbMirror
    #     limbData['Limb Mirror Roots'] = self.limbMng._limbMirrorRoots

    #     data['Joint Data'] = jointData
    #     data['Limb Data'] = limbData
    #     return data

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
            if (v == -1):
                parentID = -1
            else:
                parentID = oldToNewLimbIDs[str(v)]
            self.limbMng._limbParent[oldToNewLimbIDs[k]] = parentID

        for k, v in limbData['Limb Mirror'].items():
            if (v == -1):
                mirrorID = -1
            else:
                mirrorID = oldToNewLimbIDs[str(v)]
            self.limbMng._limbMirror[oldToNewLimbIDs[k]] = mirrorID

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









































