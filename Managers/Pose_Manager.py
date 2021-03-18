
import os

import pymel.core as pm

import Data.Anim_Data as animData
reload(animData)
import Data.Rig_Data as rigData
reload(rigData)

import Common.Utilities as util
reload(util)

class Pose_Manager:
    def __init__(self, parent):
        # self.limbMng = parent.limbMng
        # self.jntMng = parent.jntMng
        self.logger = parent.logger
        self.jsonMng = parent.jsonMng
        self.pfrs = parent
        self.grpMng = parent.grpMng

        self.posesByLimbName = {} # limbName : [pose1, pose2,...]
        self.posesByPoseName = {} # poseName : [pose1, pose2,...]

#============= POSE FUNCTIONS ============================

    def StoreLimbControlValues(self, limb):
        self.logger.debug('\tPosMng > StoreStartingLimbValues')
        groups = self.grpMng.GetJointGroups(limb)
        groups += self.grpMng.GetLimbGroups(limb)
        for group in groups:
            control = pm.listConnections(group.control)[0]
            control.posePos.set(pm.xform(control, q=1, t=1))
            control.poseRot.set(pm.xform(control, q=1, ro=1))
            control.poseScale.set(pm.xform(control, q=1, s=1))

    def ResetWeights(self):
        self.logger.debug('\tPosMng > ResetWeights')
        for poses in self.posesByLimbName.values():
            for pose in poses:
                pose.weight = 0

    def GetPoses(self, limbs):
        self.logger.debug('\tPosMng > GetPoses')
        limbName = self._GetLimbNameFromLimb(limbs[0])
        poses = set(self.posesByLimbName[limbName])
        for limb in limbs[1:]:
            limbName = self._GetLimbNameFromLimb(limb)
            otherPoses = self.posesByLimbName[limbName]
            poses = poses.intersection(otherPoses)
        return list(poses)

    def InitPoses(self):
        self.logger.debug('\tPosMng > InitPoses')
        self.posesByLimbName = {}
        self.posesByPoseName = {}
        self._poseID = 0
        folder = self.pfrs.root.posesFolderPath.get()
        if not folder or not os.path.isdir(folder):
            return
        for f in os.listdir(folder):
            filePath = os.path.join(folder, f)
            if os.path.isfile(filePath):
                self._LoadPose(filePath)

    def SetPoseWeight(self, poseName, weight):
        self.logger.debug('\tPosMng > SetPoseValue')
        for pose in self.posesByPoseName[poseName]:
            pose.weight = weight

    def EvaluatePoses(self, limbs):
        self.logger.debug('\tPosMng > _EvaluatePoses')
        for limb in limbs:
            limbName = self._GetLimbNameFromLimb(limb)
            groups = self.grpMng.GetJointGroups(limb)
            groups += self.grpMng.GetLimbGroups(limb)
            for group in groups:
                control = pm.listConnections(group.control)[0]
                self._ResetControl(control)

            joints = util.GetSortedLimbJoints(limb)
            for pose in self.posesByLimbName[limbName]:
                w = pose.weight
                for i in range(len(joints)):
                    control = self._GetJointControl(joints[i])
                    self._PoseControl(control, pose.jointControls[i], w)
                if pose.bhvType in rigData.EMPTY_BHV_INDEXES:
                    group = pm.listConnections(limb.bhvEmptyGroup)[0]
                    control = pm.listConnections(group.control)[0]
                    self._PoseControl(control, pose.limbControls[0], w)
                elif pose.bhvType in rigData.IK_PV_BHV_INDEXES:
                    group = pm.listConnections(limb.bhvIKPVGroup)[0]
                    control = pm.listConnections(group.control)[0]
                    self._PoseControl(control, pose.limbControls[1], w)
                elif pose.bhvType in rigData.LOOK_AT_BHV_INDEXES:
                    group = pm.listConnections(limb.bhvLookAtGroup)[0]
                    control = pm.listConnections(group.control)[0]
                    self._PoseControl(control, pose.limbControls[2], w)

#============= PRIVATE ============================

    def _ResetControl(self, control):
        pos = control.posePos.get()
        rot = control.poseRot.get()
        scale = control.poseScale.get()
        pm.xform(control, t=pos, ro=rot, s=scale)

    def SavePose(self, poseName, limb, folder):
        self.logger.debug('\tPosMng > SavePose')
        bhvType = limb.bhvType.get()
        joints = util.GetSortedLimbJoints(limb)
        data = {}
        data['poseName'] = poseName
        data['pfrsName'] = limb.pfrsName.get()
        data['bhvType'] = bhvType
        data['side'] = limb.side.get()
        data['jointControls'] = [[] for j in joints]
        if bhvType in rigData.REVERSE_BHV_INDEXES:
            joints = joints[::-1]
        bhvFilter = rigData.FK_BRANCH_BHV_INDEXES
        bhvFilter += rigData.FK_CHAIN_BHV_INDEXES
        if bhvType in bhvFilter:
            for i in range(len(joints)):
                joint = joints[i]
                control = self._GetJointControl(joint)
                data['jointControls'][i] = self._GetControlData(control)
        elif bhvType in rigData.RFK_BHV_INDEXES:
            control = self._GetJointControl(joints[0])
            data['jointControls'][0] = self._GetControlData(control)
        elif bhvType in rigData.IK_PV_BHV_INDEXES:
            control = self._GetJointControl(joints[-1])
            data['jointControls'][-1] = self._GetControlData(control)
        
        data['limbControls'] = [[], [], []] # Empty, IKPV, LookAt
        if bhvType in rigData.EMPTY_BHV_INDEXES:
            group = pm.listConnections(limb.bhvEmptyGroup)[0]
            control = pm.listConnections(group.control)[0]
            data['limbControls'][0] = self._GetControlData(control)
        elif bhvType in rigData.IK_PV_BHV_INDEXES:
            group = pm.listConnections(limb.bhvIKPVGroup)[0]
            control = pm.listConnections(group.control)[0]
            data['limbControls'][1] = self._GetControlData(control)
        elif bhvType in rigData.LOOK_AT_BHV_INDEXES:
            group = pm.listConnections(limb.bhvLookAtGroup)[0]
            control = pm.listConnections(group.control)[0]
            data['limbControls'][2] = self._GetControlData(control)
        fileName = '%s_%s.json' % (poseName, self._GetLimbNameFromLimb(limb))
        filePath = os.path.join(folder, fileName)
        self.jsonMng.Save(filePath, data)

    def _LoadPose(self, filePath):
        self.logger.debug('\tPosMng > LoadPose')
        data = self.jsonMng.Load(filePath)
        pose = animData.POSE()
        pose.poseName = data['poseName']
        pose.pfrsName = data['pfrsName']
        pose.bhvType = data['bhvType']
        pose.side = data['side']
        pose.jointControls = data['jointControls']
        pose.limbControls = data['limbControls']
        if pose.poseName not in self.posesByPoseName:
            self.posesByPoseName[pose.poseName] = []
        self.posesByPoseName[pose.poseName].append(pose)
        limbName = self._GetLimbNameFromPose(pose)
        if limbName not in self.posesByLimbName:
            self.posesByLimbName[limbName] = []
        self.posesByLimbName[limbName].append(pose)

    def _GetLimbNameFromLimb(self, limb):
        self.logger.debug('\tPosMng > _GetLimbNameFromLimb')
        name = limb.pfrsName.get()
        side = limb.side.get()
        bhv = limb.bhvType.get()
        return '%s_%d_%d' % (name, side, bhv)

    def _GetLimbNameFromPose(self, pose):
        self.logger.debug('\tPosMng > _GetLimbNameFromPose')
        name = pose.pfrsName
        side = pose.side
        bhv = pose.bhvType
        return '%s_%d_%d' % (name, side, bhv)

    def _PoseControl(self, control, data, weight):
        self.logger.debug('\tPosMng > _PoseControl')
        if not data:
            return
        pos = [p*weight for p in data[0]]
        rot = [r*weight for r in data[1]]
        scale = [((s-1)*weight+1) for s in data[2]]
        pm.xform(control, t=pos, ro=rot, s=scale, r=1)

    def _GetJointControl(self, joint):
        group = pm.listConnections(joint.group)[0]
        return pm.listConnections(group.control)[0]

    def _GetControlData(self, control):
        pos = pm.xform(control, q=1, t=1)
        rot = pm.xform(control, q=1, ro=1)
        scale = pm.xform(control, q=1, s=1)
        return [pos, rot, scale]


















