
import pymel.core as pm

class SaveLoad_Skeleton():
    def __init__(self, parent):
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
    
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
            limbData['side'] = limb.side.get()
            limbData['parentJntIndex'] = limb.parentJntIndex.get()
            limbData['parentCtrID'] = limb.parentCtrID.get()
            limbData['bhvIndex'] = limb.bhvIndex.get()
            limbData['jointIDs'] = jointIDs

            limbData['mirrorLimbID'] = -1
            if limb.mirrorLimbID.get() in limbIDs:
                limbData['mirrorLimbID'] = limb.mirrorLimbID.get()
            limbData['parentLimbID'] = -1
            if limb.limbParentID.get() in limbIDs:
                limbData['parentLimbID'] = limb.limbParentID.get()

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

        allJointData = data['joints']
        # LIMBS
        for limbData in data['limbs']:
            limb = self.limbMng.Add()
            newLimbID = limb.ID.get()
            oldLimbID = limbData['ID']
            oldToNewLimbIDs[oldLimbID] = newLimbID
            
            limb.pfrsName.set(limbData['pfrsName'])
            limb.typeIndex.set(limbData['typeIndex'])
            limb.side.set(limbData['side'])
            limb.mirrorLimbID.set(oldToNewLimbIDs[limbData['mirrorLimbID']])
            limb.limbParentID.set(oldToNewLimbIDs[limbData['parentLimbID']])
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

