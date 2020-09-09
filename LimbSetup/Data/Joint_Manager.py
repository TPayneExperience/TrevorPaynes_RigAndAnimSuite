
import pymel.core as pm

class Joint_Manager():
    def __init__(self, nameMng, limbMng):

        self.nameMng = nameMng
        self.limbMng = limbMng
        self.mirrorXform = {'X': [-1,1,1],
                            'Y': [1,-1,1],
                            'Z': [1,1,-1]}

    def NewRig(self, rigRoot):
        self.rigRoot = rigRoot

        self._nextJointID = 1
        self._joints = {} # jointID: jointNode
        self._limbJoints = {-1:[]} # limbID: jointIdList

        pm.select(d=1)
        self.jntGrp = pm.group(name='Skeleton', em=1)
        pm.parent(self.jntGrp, rigRoot)
        self.skelLayer = pm.createDisplayLayer(n='Skel Joints', e=True)
        self.skelLayer.displayType.set(2)

        pm.addAttr(rigRoot, ln='joints', dt='string')


#============= ACCESSORS + MUTATORS ============================

    def GetJoint(self, jointID):
        return self._joints[jointID]

    # LIMB JOINTS
    def GetLimbJointIDs(self, limbID):
        '''Order joints by internal joint index'''
        orderedJntIDs = []
        temp = {}
        for jointID in self._limbJoints[limbID]:
            temp[self._joints[jointID].limbIndex.get()] = jointID
        for index in sorted(list(temp.keys())):
            orderedJntIDs.append(temp[index])
        return orderedJntIDs

    # MISC
    def GetJointCount(self): # for Skel tool label
        return len(self._joints)


#============= FUNCTIONALITY ============================

    # LIMBS
    def AddLimb(self, limbID):
        self._limbJoints[limbID] = []
    
    def RemoveLimb(self, limbID):
        jointIDs = self.GetLimbJointIDs(limbID)
        self.Remove(limbID, jointIDs)
        del(self._limbJoints[limbID])

    # JOINTS
    def Add(self, limbID, count):
        start = len(self._limbJoints[limbID])
        jointsCreated = []
        for index in range(start, start + count):
            jointID = self._nextJointID
            self._nextJointID += 1

            pfrsName = 'Joint_%03d' % (index)
            position = [0,0,0]
            joints = self._limbJoints[limbID]
            if (joints):
                position = pm.xform(self._joints[joints[-1]], q=1, t=1, ws=1)
                position[1] -= 5
            
            pm.select(d=1)
            joint = pm.joint()
            pm.addAttr(joint, ln='ID', at='short', dv=jointID)
            pm.addAttr(joint, ln='limbID', at='short', dv=limbID)
            pm.addAttr(joint, ln='limbIndex', at='short', dv=index)
            pm.addAttr(joint, ln='aimAxis', at='float3')
            pm.addAttr(joint, ln='aimX', at='float', parent='aimAxis')
            pm.addAttr(joint, ln='aimY', at='float', parent='aimAxis', dv=1)
            pm.addAttr(joint, ln='aimZ', at='float', parent='aimAxis')
            pm.addAttr(joint, ln='upAxis', at='float3')
            pm.addAttr(joint, ln='upX', at='float', parent='upAxis')
            pm.addAttr(joint, ln='upY', at='float', parent='upAxis')
            pm.addAttr(joint, ln='upZ', at='float', parent='upAxis', dv=1)
            pm.addAttr(joint, ln='pfrsName', dt='string')
            pm.addAttr(joint, ln='rigRoot', dt='string')
            pm.connectAttr(self.rigRoot.joints, joint.rigRoot)
            joint.pfrsName.set(pfrsName)

            pm.xform(joint, t=position)
            pm.parent(joint, self.jntGrp)
            self._joints[jointID] = joint
            self._limbJoints[limbID].append(jointID)
            self.UpdateJointName(limbID, jointID)
            pm.editDisplayLayerMembers(self.skelLayer, joint)
            jointsCreated.append(joint)
        return jointsCreated

    def Remove(self, limbID, jointIDs):
        for jointID in jointIDs:
            pm.select(d=1)
            pm.delete(self._joints[jointID])
            del(self._joints[jointID])
            self._limbJoints[limbID].remove(jointID)

    # RENAME
    def UpdateAllJointNames(self):
        for limbID in list(self._limbJoints.keys()):
            self.UpdateLimbJointNames(limbID)

    def UpdateLimbJointNames(self, limbID):
        for jointID in self._limbJoints[limbID]:
            self.UpdateJointName(limbID, jointID)

    def UpdateJointName(self, limbID, jointID):
        joint = self._joints[jointID]
        joint.rename(self.nameMng.GetName(limbID, jointID, 'JNT'))
    
    def DuplicateLimb(self, sourceLimbID, targetLimbID):
        self._limbJoints[targetLimbID] = []
        sourceJoints = [self.GetJoint(ID) for ID in self.GetLimbJointIDs(sourceLimbID)]
        targetJoints = pm.duplicate(sourceJoints)
        for targetJoint in targetJoints:
            targetJoint.ID.set(self._nextJointID)
            targetJoint.limbID.set(targetLimbID)
            self._limbJoints[targetLimbID].append(self._nextJointID)
            self._joints[self._nextJointID] = targetJoint
            self._nextJointID += 1
        self.UpdateLimbJointNames(targetLimbID)

    def SetMirrorLimb(self, sourceLimbID, targetLimbID, axis):
        # NEEDS TO BE CALLED AFTER SCENE SKEL TEARDOWN!!!
        self.DuplicateLimb(sourceLimbID, targetLimbID)
        jointIDs = self.GetLimbJointIDs(targetLimbID)
        joints = [self.GetJoint(ID) for ID in jointIDs]
        temp = pm.group(w=1, a=1, em=1)
        pm.parent(joints, temp)
        pm.xform(temp, s=self.mirrorXform[axis])
        pm.parent(joints, self.jntGrp)
        pm.delete(temp)
        for joint in joints:
            aim = [i*-1 for i in list(joint.aimAxis.get())]
            joint.aimAxis.set(aim)


    # def Mirror(self, sourceLimbID, targetLimbID, axis):
    #     self.Duplicate(sourceLimbID, targetLimbID)
    #     sourceJointIDs = self.GetLimbJointIDs(sourceLimbID)
    #     targetJointIDs = self.GetLimbJointIDs(targetLimbID)
    #     for sourceID, targetID in zip(sourceJointIDs, targetJointIDs):
    #         self._mirrorJoints[sourceID] = targetID
    #         self._mirrorJoints[targetID] = sourceID
    #     flip = [-1,1,1]
    #     if (axis == 'Y'):
    #         flip = [1,-1,1]
    #     elif (axis == 'Z'):
    #         flip = [1,1,-1]
    #     for jointID in targetJointIDs:
    #         joint = self._joints[jointID]
    #         pos = joint.position
    #         joint.position = [  pos[0] * flip[0],
    #                             pos[1] * flip[1],
    #                             pos[2] * flip[2]]
    #     # MISSING: FIX ROTATIONS



# #============= DEPRICATED ============================
# #============= DEPRICATED ============================
# #============= DEPRICATED ============================

    # def SetLimbJointIDs(self, limbID, jointIDs):
    #     self._limbJoints[limbID] = jointIDs
    #     for index in range(len(jointIDs)):
    #         jointID = jointIDs[index]
    #         self.SetIndex(jointID, index)

#     # NAMES
#     def GetSceneName(self, jointID):
#         return self._joints[jointID]

#     def GetPFRSName(self, jointID):
#         return cmds.getAttr(self._joints[jointID] + '.pfrsName')
    
#     def SetPFRSName(self, jointID, newPFRSName):
#         cmds.setAttr(self._joints[jointID] + '.pfrsName', newPFRSName, type='string')
#         self.SetSceneName(jointID, newPFRSName)
    
#     def SetSceneName(self, jointID, newPFRSName):
#         oldSceneName = self._joints[jointID]
#         limbID = cmds.getAttr(oldSceneName + '.limbID')
#         newSceneName = self._GenerateSceneName(limbID, newPFRSName)
#         cmds.rename(oldSceneName, newSceneName)
#         self._joints[jointID] = newSceneName

#     # GET AXES FOR COMBOBOXES
#     def GetAxes(self):
#         return self._axes
    
#     def GetRotAxes(self):
#         return self._rotAxes

#     # ROTATION ORDER
#     def GetRotationOrder(self, jointIDs):
#         firstOrder = cmds.getAttr(self._joints[jointIDs[0]] + '.rotateOrder')
#         for jointID in jointIDs[1:]:
#             nextOrder = cmds.getAttr(self._joints[jointID] + '.rotateOrder')
#             if (firstOrder != nextOrder):
#                 return -1
#         return firstOrder

#     def SetRotationOrder(self, jointIDs, rotateOrder):
#         for jointID in jointIDs:
#             cmds.setAttr(self._joints[jointID] + '.rotateOrder', rotateOrder)
    
#     # INDEX: for limb joint Order
#     def GetIndex(self, jointID):
#         return cmds.getAttr(self._joints[jointID] + '.index')

#     def SetIndex(self, jointID, index):
#         return cmds.setAttr(self._joints[jointID] + '.index', index)

#     # LIMB JOINTS
#     def GetLimbJointIDs(self, limbID):
#         return self._limbJoints[limbID]

#     def SetLimbJointIDs(self, limbID, jointIDs):
#         self._limbJoints[limbID] = jointIDs
#         for index in range(len(jointIDs)):
#             jointID = jointIDs[index]
#             self.SetIndex(jointID, index)

#     def GetJointCount(self): # for Skel tool label
#         return len(self._joints.keys())


# # #============= FUNCTIONALITY ============================

#     def _GenerateSceneName(self, limbID, jointName):
#         return self.nameMng.GetName(self.nameMng.GetPrefix(),
#                                     self.limbMng.GetPFRSName(limbID),
#                                     jointName,
#                                     self.limbMng.GetSide(limbID),
#                                     'JNT')
    
#     # JOINTS
#     def Add(self, limbID, count, displaySize):
#         start = len(self._limbJoints[limbID])
#         for index in range(start, start + count):
#             pfrsName = 'Joint_%03d' % (index)
#             position = [0,0,0]
#             parent = self.jntGrp
#             jointID = self._nextJointID
#             limbJointIDs = self._limbJoints[limbID]
#             if (limbJointIDs):
#                 parent = self._joints[limbJointIDs[-1]]
#                 position = cmds.xform(parent, q=1, t=1, ws=1)
#                 position[1] -= 5
            
#             sceneName = self._GenerateSceneName(limbID, pfrsName)

#             cmds.select(d=1)
#             self._joints[jointID] = sceneName
#             cmds.joint(name=sceneName, p=position, rad=displaySize)
#             cmds.addAttr(sceneName, ln='jointID', at='short', dv=jointID)
#             cmds.addAttr(sceneName, ln='limbID', at='short', dv=limbID)
#             cmds.addAttr(sceneName, ln='index', at='short', dv=index)
#             cmds.addAttr(sceneName, ln='pfrsName', dt='string')
#             cmds.setAttr(sceneName +'.pfrsName', pfrsName, type='string')

#             cmds.parent(sceneName, parent)

#             self._limbJoints[limbID].append(jointID)
#             self._nextJointID += 1

#     def Remove(self, limbID, jointIDs):
#         for jointID in jointIDs:
#             self._limbJoints[limbID].remove(jointID)
#             del(self._joints[jointID])

#     # LIMBS
#     def AddLimb(self, limbID):
#         self._limbJoints[limbID] = []
    
#     def RemoveLimb(self, limbID):
#         jointIDs = self.GetLimbJointIDs(limbID)
#         self.Remove(limbID, jointIDs)
#         del(self._limbJoints[limbID])

#     # RENAME HIERARCHY
#     def LimbNameChanged(self, limbID):
#         for jointID in self._limbJoints[limbID]:
#             pfrsName = self.GetPFRSName(jointID)
#             self.SetSceneName(jointID, pfrsName)

#     def PrefixChanged(self):
#         newGrpName = '%s_Skeleton_Grp' % self.nameMng.GetPrefix()
#         cmds.rename(self.jntGrp, newGrpName)
#         self.jntGrp = newGrpName
#         for jointID in list(self._joints.keys()):
#             pfrsName = self.GetPFRSName(jointID)
#             self.SetSceneName(jointID, pfrsName)

    # MISSING, DUPLICATE + MIRROR

    # ALGORITHM FOR ADDING EXISING
    #   Create dict, index to jointID
    #   for loop through count, adding each to list in order

#============= ACCESSORS + MUTATORS ============================

    # def GetJoints(self, idList):
    #     '''AVOID USING!'''
    #     return [self._joints[ID] for ID in idList]

    # MOVE TO LIMB DATA
    #     def GetNextJointIndex(self, limbID):
    #         return self._limbNextJointIndex[limbID]
    #     def SetNextJointIndex(self, limbID, index):
    #         self._limbNextJointIndex[limbID] = index

    #     # GET AXES FOR COMBOBOXES
    #     def GetAxes(self):
    #         return self._axes
        
    #     def GetRotAxes(self):
    #         return self._rotAxes
        
    #     # ROTATION ORDER
    #     def SetRotationOrder(self, jointList, rotationOrder):
    #         for joint in jointList:
    #             joint.rotationOrder = rotationOrder
    #             mirrorID = self._mirrorJoints[joint.ID]
    #             if (mirrorID != -1):
    #                 mirrorJoint = self._joints[mirrorID]
    #                 mirrorJoint.rotationOrder = rotationOrder
        
    #     # LIMB JOINT IDS
    #     def GetLimbJointIDs(self, limbID):
    #         return self._limbJoints[limbID]
        
    #     def SetLimbJointIDs(self, limbID, mirrorLimbID, jointIDs):
    #         self._limbJoints[limbID] = jointIDs
    #         if (mirrorLimbID != -1):
    #             mirrorIDs = [self._mirrorJoints[ID] for ID in jointIDs]
    #             self._limbJoints[mirrorLimbID] = mirrorIDs

    #     # PARENT JOINT
    #     def GetParentJointId(self, limbID):
    #         return self._limbParentJoint[limbID]

    #     def SetParentJointId(self, limbID, jointID):
    #         self._limbParentJoint[limbID] = jointID

    #     def SetParentLimb(self, childLimbID, parentLimbID):
    #         self.SetParentJointId(childLimbID, -1)
    #         if (parentLimbID != -1):
    #             parentJointID = self.GetParentJointId(childLimbID)
    #             parentJointIDs = self.GetLimbJointIDs(parentLimbID)
    #             if parentJointIDs and parentJointID not in parentJointIDs:
    #                 self.SetParentJointId(childLimbID, parentJointIDs[0])

    #     # MISC
    #     def GetAllJointIDs(self):        
    #         return list(self._joints.keys())

    #     def GetName(self, jointID):
    #         return self._joints[jointID].name

    #     def SetName(self, limbID, jointID, newName):
    #         ids = self.GetLimbJointIDs(limbID)
    #         names = [joint.name for joint in self.GetJoints(ids)]
    #         if newName not in names:
    #             self.GetJoint(jointID).name = newName
    #             mirrorID = self._mirrorJoints[jointID]
    #             if (mirrorID != -1):
    #                 self.GetJoint(mirrorID).name = newName

    #     def GetJointCount(self): # for Skel tool label
    #         return len(self._joints.keys())

    #     def GetMirrorJoint(self, jointID):
    #         return self._mirrorJoints[jointID]

    #     def SetMirrorJoint(self, jointID_01, jointID_02):
    #         self._mirrorJoints[jointID_01] = jointID_02

# #============= FUNCTIONALITY ============================

    #     def DoesLimbHaveJoints(self, limbID):
    #         return (len(self._limbJoints[limbID]) > 0)

    #     def AddLimb(self, limbID):
    #         self._limbJoints[limbID] = []
    #         self._limbParentJoint[limbID] = -1
    #         self._limbNextJointIndex[limbID] = 1

    #     def RemoveLimb(self, limbID):
    #         jointIDs = self.GetLimbJointIDs(limbID)
    #         self.Remove(limbID, jointIDs)
    #         del(self._limbJoints[limbID])
    #         del(self._limbParentJoint[limbID])
    #         del(self._limbNextJointIndex[limbID])

    #     def Add(self, limbID, mirrorLimbID, count):
    #         currentCount = len(self._limbJoints[limbID])
    #         limit = min(99, currentCount + count)
    #         addCount = limit - currentCount
    #         startIndex = self._limbNextJointIndex[limbID]
    #         self._limbNextJointIndex[limbID] += addCount
    #         if (mirrorLimbID != -1):
    #             self._limbNextJointIndex[mirrorLimbID] += addCount
    #         jointIDs = []
    #         for i in range(addCount):
    #             jointIDs.append(self._AddJoint(limbID, startIndex + i))
    #         if (mirrorLimbID != -1):
    #             for i in range(addCount):
    #                 mirrorJointID = self._AddJoint(mirrorLimbID, startIndex + i)
    #                 self._mirrorJoints[jointIDs[i]] = mirrorJointID
    #                 self._mirrorJoints[mirrorJointID] = jointIDs[i]
        
    #     def _AddJoint(self, limbID, jointIndex):
    #         position = [0,0,0]
    #         limbJointIDs = self._limbJoints[limbID]
    #         if (limbJointIDs):
    #             pos = self._joints[limbJointIDs[-1]].position
    #             position = [pos[0], pos[1]-5, pos[2]]
    #         jointID = self._nextJointID
    #         self._mirrorJoints[jointID] = -1
    #         self._limbJoints[limbID].append(jointID)
    #         name = 'Joint_%03d' % (jointIndex)
    #         self._joints[jointID] = jd.Joint_Data( jointID, 
    #                                             name, 
    #                                             self._rotAxes[0], 
    #                                             self._axes[0], 
    #                                             self._axes[2])
    #         self._joints[jointID].position = position
    #         self._nextJointID += 1
    #         return jointID
        
    #     def Remove(self, limbID, jointIDs):
    #         for jointID in jointIDs:
    #             mirrorID = self._mirrorJoints[jointID]
    #             if (mirrorID != -1):
    #                 self._mirrorJoints[mirrorID] = -1
    #             self._limbJoints[limbID].remove(jointID)
    #             del(self._mirrorJoints[jointID])
    #             del(self._joints[jointID])
        
    #     def Duplicate(self, sourceLimbID, targetLimbID):
    #         self.AddLimb(targetLimbID)
    #         self.Add(targetLimbID, -1, len(self._limbJoints[sourceLimbID]))
    #         sourceJointIDs = self._limbJoints[sourceLimbID]
    #         targetJointIDs = self._limbJoints[targetLimbID]
    #         for sourceID, targetID in zip(sourceJointIDs, targetJointIDs):
    #             source = self._joints[sourceID]
    #             target = self._joints[targetID]
    #             target.name         = source.name
    #             target.position     = source.position[:]
    #             target.rotation     = source.rotation[:]
    #             # target.scale        = source.scale[:]
    #             target.rotationOrder= source.rotationOrder
    #             target.aimAxis      = source.aimAxis
    #             target.upAxis       = source.upAxis

    #     def Mirror(self, sourceLimbID, targetLimbID, axis):
    #         self.Duplicate(sourceLimbID, targetLimbID)
    #         sourceJointIDs = self.GetLimbJointIDs(sourceLimbID)
    #         targetJointIDs = self.GetLimbJointIDs(targetLimbID)
    #         for sourceID, targetID in zip(sourceJointIDs, targetJointIDs):
    #             self._mirrorJoints[sourceID] = targetID
    #             self._mirrorJoints[targetID] = sourceID
    #         flip = [-1,1,1]
    #         if (axis == 'Y'):
    #             flip = [1,-1,1]
    #         elif (axis == 'Z'):
    #             flip = [1,1,-1]
    #         for jointID in targetJointIDs:
    #             joint = self._joints[jointID]
    #             pos = joint.position
    #             joint.position = [  pos[0] * flip[0],
    #                                 pos[1] * flip[1],
    #                                 pos[2] * flip[2]]
    #         # MISSING: FIX ROTATIONS














