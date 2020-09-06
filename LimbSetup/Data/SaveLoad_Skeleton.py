
import pymel.core as pm

class SaveLoad_Skeleton():
    def __init__(self, limbManager, jointManager):
        self.limbMng = limbManager
        self.jntMng = jointManager
    
    def GetData(self, limbIDs):
        data = {}
    
        allLimbData = []
        allJointData = {} # jointID : JointDataDict

        # LIMBS
        for limb in [self.limbMng.GetLimb(ID) for ID in limbIDs]:
            limbData = {}
            limbID = limb.ID.get()
            jointIDs = self.jntMng.GetLimbJointIDs(limbID)
            
            limbData['ID'] = limbID
            limbData['pfrsName'] = limb.pfrsName.get()
            limbData['typeIndex'] = limb.typeIndex.get()
            limbData['sideIndex'] = limb.sideIndex.get()
            limbData['parentJntIndex'] = limb.parentJntIndex.get()
            limbData['parentCtrID'] = limb.parentCtrID.get()
            limbData['bhvIndex'] = limb.bhvIndex.get()
            limbData['jointIDs'] = jointIDs

            limbData['mirrorLimbID'] = -1
            if limb.mirrorLimbID.get() in limbIDs:
                limbData['mirrorLimbID'] = limb.mirrorLimbID.get()
            limbData['parentLimbID'] = -1
            if limb.parentLimbID.get() in limbIDs:
                limbData['parentLimbID'] = limb.parentLimbID.get()

            # JOINTS
            for joint in [self.jntMng.GetJoint(ID) for ID in jointIDs]:
                jointData = {}

                jointData['translate'] = list(joint.t.get())
                jointData['rotate'] = list(joint.r.get())
                jointData['rotationOrder'] = joint.ro.get()
                jointData['side'] = joint.side.get()
                jointData['type'] = pm.getAttr(joint.name() + '.type')

                jointID = joint.ID.get()
                jointData['ID'] = jointID
                jointData['limbID'] = joint.limbID.get()
                jointData['limbIndex'] = joint.limbIndex.get()
                jointData['aimAxis'] = joint.aimAxis.get()
                jointData['upAxis'] = joint.upAxis.get()
                jointData['pfrsName'] = joint.pfrsName.get()

                allJointData[jointID] = jointData
            allLimbData.append(limbData)
        data['joints'] = allJointData
        data['limbs'] = allLimbData
        return data


    def LoadData(self, data):
        oldToNewLimbIDs = {-1:-1}
        # oldToNewJointIDs = {-1:-1}

        allJointData = data['joints']
        # LIMBS
        for limbData in data['limbs']:
            limb = self.limbMng.Add()
            newLimbID = limb.ID.get()
            oldLimbID = limbData['ID']
            oldToNewLimbIDs[oldLimbID] = newLimbID
            
            limb.pfrsName.set(limbData['pfrsName'])
            limb.typeIndex.set(limbData['typeIndex'])
            limb.sideIndex.set(limbData['sideIndex'])
            limb.mirrorLimbID.set(oldToNewLimbIDs[limbData['mirrorLimbID']])
            limb.parentLimbID.set(oldToNewLimbIDs[limbData['parentLimbID']])
            limb.parentJntIndex.set(limbData['parentJntIndex'])
            limb.parentCtrID.set(limbData['parentCtrID'])
            limb.bhvIndex.set(limbData['bhvIndex'])
            oldJointIDs = limbData['jointIDs']

            self.jntMng.AddLimb(newLimbID)
            newJoints = self.jntMng.Add(newLimbID, len(oldJointIDs))
            # JOINTS
            for oldJointID, newJoint in zip(oldJointIDs, newJoints):
                jointData = allJointData[str(oldJointID)]

                newJoint.t.set(jointData['translate'])
                newJoint.r.set(jointData['rotate'])
                newJoint.ro.set(jointData['rotationOrder'])
                newJoint.side.set(jointData['side'])
                pm.setAttr(newJoint.name() + '.type', jointData['type'])

                newJoint.limbIndex.set(jointData['limbIndex'])
                newJoint.aimAxis.set(jointData['aimAxis'])
                newJoint.upAxis.set(jointData['upAxis'])
                newJoint.pfrsName.set(jointData['pfrsName'])

    # # LIMB ------------------------------
    #     for limbID, limbName in limbData['Limb Name'].items():
    #         oldToNewLimbIDs[limbID] = nextLimbID
    #         if (limbName in list(self.limbMng._limbName.values())):
    #             self.limbMng._limbName[nextLimbID] = '%s_%d' % (limbName, nextLimbID)
    #         else:
    #             self.limbMng._limbName[nextLimbID] = limbName
    #         nextLimbID += 1

    #     for k, v in limbData['Limb Type'].items():
    #         self.limbMng._limbType[oldToNewLimbIDs[k]] = v

    #     for k, v in limbData['Limb Side'].items():
    #         self.limbMng._limbSide[oldToNewLimbIDs[k]] = v

    #     for k, v in limbData['Limb Parent'].items():
    #         if (v == -1):
    #             parentID = -1
    #         else:
    #             parentID = oldToNewLimbIDs[str(v)]
    #         self.limbMng._limbParent[oldToNewLimbIDs[k]] = parentID

    #     for k, v in limbData['Limb Mirror'].items():
    #         if (v == -1):
    #             mirrorID = -1
    #         else:
    #             mirrorID = oldToNewLimbIDs[str(v)]
    #         self.limbMng._limbMirror[oldToNewLimbIDs[k]] = mirrorID

    #     for limbID in limbData['Limb Mirror Roots']:
    #         self.limbMng._limbMirrorRoots.append(oldToNewLimbIDs[str(limbID)])
            
    # # JOINT ------------------------------
    #     for jointDict in list(jointData['Joints'].values()):
    #         joint = jd.Joint_Data(1, 1, 1, 1, 1)
    #         joint.__dict__ = jointDict
    #         oldToNewJointIDs[joint.ID] = nextJointID
    #         joint.ID = nextJointID
    #         self.jntMng._joints[joint.ID] = joint
    #         nextJointID += 1

    #     for limbID in list(jointData['Limb Joints'].keys()):
    #         jointIDs = jointData['Limb Joints'][limbID]
    #         jointIDs = [oldToNewJointIDs[ID] for ID in jointIDs]
    #         self.jntMng._limbJoints[oldToNewLimbIDs[limbID]] = jointIDs

    #     for k,v in jointData['Limb Parent Joint'].items():
    #         limbID = oldToNewLimbIDs[k]
    #         if (v == -1):
    #             jointID = -1
    #         else: 
    #             jointID = oldToNewJointIDs[v]
    #         self.jntMng._limbParentJoint[limbID] = jointID

    #     for k,v in jointData['Limb Next Joint Index'].items():
    #         limbID = oldToNewLimbIDs[k]
    #         self.jntMng._limbNextJointIndex[limbID] = v

    #     for k,v in jointData['Mirror Joints'].items():
    #         ID_01 = oldToNewJointIDs[int(k)]
    #         if (v == -1):
    #             ID_02 = -1
    #         else:
    #             ID_02 = oldToNewJointIDs[v]
    #         self.jntMng._mirrorJoints[ID_01] = ID_02

    #     self.jntMng._nextJointID = nextJointID
    #     self.limbMng._nextLimbID = nextLimbID







#=========== DEPRICATED ====================================
#=========== DEPRICATED ====================================
#=========== DEPRICATED ====================================





# import Joint_Data as jd

# reload(jd)

# class SaveLoad_Skeleton():
#     def __init__(self, limbManager, jointManager):
#         self.limbMng = limbManager
#         self.jntMng = jointManager
#         self.saveLoadMng = None     # set in the managers constructor
    
#     def SetSaveLoadManager(self, saveLoadMng):
#         self.saveLoadMng = saveLoadMng

#     def GetAllData(self):
#         limbIDs = self.limbMng.GetLimbIDs()
#         return self.GetData(limbIDs, True)

#     def GetData(self, limbIDs, saveMirrorData=False):
#         data = {}
    
#     # JOINT ------------------------------
#         jointData = {}
#         jointData['Joints'] = {}
#         jointData['Limb Joints'] = {}
#         jointData['Limb Parent Joint'] = {}
#         jointData['Limb Next Joint Index'] = {}
#         jointData['Mirror Joints'] = {}

#         for limbID in limbIDs:
#             jointIDs = self.jntMng.GetLimbJointIDs(limbID)
#             for jointID in jointIDs:
#                 jointData['Joints'][jointID] = self.jntMng.GetJoint(jointID).__dict__
#                 if saveMirrorData:
#                     jointData['Mirror Joints'][jointID] = self.jntMng.GetMirrorJoint(jointID)
#                 else:
#                     jointData['Mirror Joints'][jointID] = -1
#             jointData['Limb Joints'][limbID] = jointIDs
#             jointData['Limb Parent Joint'][limbID] = self.jntMng.GetParentJointId(limbID)
#             jointData['Limb Next Joint Index'][limbID] = self.jntMng.GetNextJointIndex(limbID)

#     # LIMB ------------------------------
#         limbData = {}
#         limbData['Limb Name'] = {}
#         limbData['Limb Type'] = {}
#         limbData['Limb Side'] = {}
#         limbData['Limb Parent'] = {}
#         limbData['Limb Mirror'] = {}
#         limbData['Limb Mirror Roots'] = []

#         for limbID in limbIDs:
#             limbData['Limb Name'][limbID] = self.limbMng.GetName(limbID)
#             limbData['Limb Type'][limbID] = self.limbMng.GetType(limbID)
#             limbData['Limb Side'][limbID] = self.limbMng.GetSide(limbID)
#             limbData['Limb Parent'][limbID] = self.limbMng.GetParentID(limbID)
#             if saveMirrorData:
#                 limbData['Limb Mirror'][limbID] = self.limbMng.GetMirror(limbID)
#                 if limbID in self.limbMng.GetLimbMirrorRoots():
#                     limbData['Limb Mirror Roots'].append(limbID)
#             else:
#                 limbData['Limb Mirror'][limbID] = -1

#         data['Joint Data'] = jointData
#         data['Limb Data'] = limbData
#         return data

#     def LoadData(self, data):
#         nextJointID = self.jntMng._nextJointID
#         nextLimbID = self.limbMng._nextLimbID
#         oldToNewLimbIDs = {}
#         oldToNewJointIDs = {}

#         jointData = data['Joint Data']
#         limbData = data['Limb Data']

#     # LIMB ------------------------------
#         for limbID, limbName in limbData['Limb Name'].items():
#             oldToNewLimbIDs[limbID] = nextLimbID
#             if (limbName in list(self.limbMng._limbName.values())):
#                 self.limbMng._limbName[nextLimbID] = '%s_%d' % (limbName, nextLimbID)
#             else:
#                 self.limbMng._limbName[nextLimbID] = limbName
#             nextLimbID += 1

#         for k, v in limbData['Limb Type'].items():
#             self.limbMng._limbType[oldToNewLimbIDs[k]] = v

#         for k, v in limbData['Limb Side'].items():
#             self.limbMng._limbSide[oldToNewLimbIDs[k]] = v

#         for k, v in limbData['Limb Parent'].items():
#             if (v == -1):
#                 parentID = -1
#             else:
#                 parentID = oldToNewLimbIDs[str(v)]
#             self.limbMng._limbParent[oldToNewLimbIDs[k]] = parentID

#         for k, v in limbData['Limb Mirror'].items():
#             if (v == -1):
#                 mirrorID = -1
#             else:
#                 mirrorID = oldToNewLimbIDs[str(v)]
#             self.limbMng._limbMirror[oldToNewLimbIDs[k]] = mirrorID

#         for limbID in limbData['Limb Mirror Roots']:
#             self.limbMng._limbMirrorRoots.append(oldToNewLimbIDs[str(limbID)])
            
#     # JOINT ------------------------------
#         for jointDict in list(jointData['Joints'].values()):
#             joint = jd.Joint_Data(1, 1, 1, 1, 1)
#             joint.__dict__ = jointDict
#             oldToNewJointIDs[joint.ID] = nextJointID
#             joint.ID = nextJointID
#             self.jntMng._joints[joint.ID] = joint
#             nextJointID += 1

#         for limbID in list(jointData['Limb Joints'].keys()):
#             jointIDs = jointData['Limb Joints'][limbID]
#             jointIDs = [oldToNewJointIDs[ID] for ID in jointIDs]
#             self.jntMng._limbJoints[oldToNewLimbIDs[limbID]] = jointIDs

#         for k,v in jointData['Limb Parent Joint'].items():
#             limbID = oldToNewLimbIDs[k]
#             if (v == -1):
#                 jointID = -1
#             else: 
#                 jointID = oldToNewJointIDs[v]
#             self.jntMng._limbParentJoint[limbID] = jointID

#         for k,v in jointData['Limb Next Joint Index'].items():
#             limbID = oldToNewLimbIDs[k]
#             self.jntMng._limbNextJointIndex[limbID] = v

#         for k,v in jointData['Mirror Joints'].items():
#             ID_01 = oldToNewJointIDs[int(k)]
#             if (v == -1):
#                 ID_02 = -1
#             else:
#                 ID_02 = oldToNewJointIDs[v]
#             self.jntMng._mirrorJoints[ID_01] = ID_02

#         self.jntMng._nextJointID = nextJointID
#         self.limbMng._nextLimbID = nextLimbID


