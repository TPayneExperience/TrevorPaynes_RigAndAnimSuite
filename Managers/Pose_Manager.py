
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
        self.rootMng = parent.rootMng

        self.posesByLimbName = {} # limbName : [pose1, pose2,...]
        self.posesByPoseName = {} # poseName : [pose1, pose2,...]
        self.limbControls = {} # limb.longName() : [[jointCtr1, 2, 3...], [emptyCtr, IKPV, lookAt]]
        self.controlData = {} # control.longName() : [[pos], [rot], [scale]]

#============= POSES ============================

    def InitPoses(self):
        self.logger.debug('\tPosMng > InitPoses')
        self.posesByLimbName = {}
        self.posesByPoseName = {}
        self.limbControls = {}
        self.controlData = {}
        self._poseID = 0
        # Get Json pose data
        folder = self.pfrs.root.posesFolderPath.get()
        if not folder or not os.path.isdir(folder):
            return
        for f in os.listdir(folder):
            filePath = os.path.join(folder, f)
            if os.path.isfile(filePath):
                self._LoadPose(filePath)
        # Store Limb controls
        for root in self.rootMng.GetSceneRoots():
            limbs = pm.listConnections(root.emptyLimbs)
            limbs += pm.listConnections(root.jointLimbs)
            for limb in limbs:
                limbName = limb.longName()
                self.limbControls[limbName] = [[], [None, None, None]] # [joint controls], [limb controls]
                for group in self.grpMng.GetJointGroups(limb):
                    control = pm.listConnections(group.control)[0]
                    self.limbControls[limbName][0].append(control) 
                bhvType = limb.bhvType.get()
                if bhvType in rigData.EMPTY_BHV_INDEXES:
                    group = pm.listConnections(limb.bhvEmptyGroup)[0]
                    control = pm.listConnections(group.control)[0]
                    self.limbControls[limbName][1][0] = control
                elif bhvType in rigData.IK_PV_BHV_INDEXES:
                    group = pm.listConnections(limb.bhvIKPVGroup)[0]
                    control = pm.listConnections(group.control)[0]
                    self.limbControls[limbName][1][1] = control
                elif bhvType in rigData.LOOK_AT_BHV_INDEXES:
                    group = pm.listConnections(limb.bhvLookAtGroup)[0]
                    control = pm.listConnections(group.control)[0]
                    self.limbControls[limbName][1][2] = control
                self.StoreLimbControlValues(limb)

    def EvaluatePoses(self, limbs):
        self.logger.debug('\tPosMng > EvaluatePoses: LIMBS:')
        for limb in limbs:
            self.logger.debug(limb.shortName())
            limbName = self._GetLimbNameFromLimb(limb)
            poses = self.posesByLimbName[limbName]
            jointControls = self.limbControls[limb.longName()][0]
            for i in range(len(jointControls)):
                self._PoseJointControl(jointControls[i], poses, i)
            limbControls = self.limbControls[limb.longName()][1]
            for i in range(len(limbControls)):
                if limbControls[i]:
                    self._PoseLimbControl(limbControls[i], poses, i)

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

    def DeleteAllPosesOfName(self, poseName, folder):
        self.logger.debug('\tPosMng > DeleteAllPosesOfName')
        for pose in self.posesByPoseName[poseName]:
            filePath = pose.filePath
            if os.path.isfile(filePath):
                os.remove(filePath)

    def DeleteLimbPose(self, poseName, folder, limb):
        self.logger.debug('\tPosMng > DeleteLimbPose')
        fileName = '%s_%s.json' % (poseName, self._GetLimbNameFromLimb(limb))
        filePath = os.path.join(folder, fileName)
        if os.path.isfile(filePath):
            os.remove(filePath)

    def _PoseJointControl(self, control, poses, ctrIndex):
        self.logger.debug('\tPosMng > _PoseJointControl')
        xform = self.controlData[control.longName()][:]
        for pose in poses:
            controlData = pose.jointControls[ctrIndex]
            if controlData:
                xform = self._AddXforms(xform, controlData, pose.weight)
        pm.xform(control, t=xform[0], ro=xform[1], s=xform[2])

    def _PoseLimbControl(self, control, poses, ctrIndex):
        self.logger.debug('\tPosMng > _PoseControl')
        xform = self.controlData[control.longName()][:]
        for pose in poses:
            controlData = pose.limbControls[ctrIndex]
            if controlData:
                xform = self._AddXforms(xform, controlData, pose.weight)
        pm.xform(control, t=xform[0], ro=xform[1], s=xform[2])

    def _LoadPose(self, filePath):
        self.logger.debug('\tPosMng > LoadPose')
        data = self.jsonMng.Load(filePath)
        pose = animData.POSE()
        pose.filePath = filePath
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

#============= UTIL ============================

    def StoreLimbControlValues(self, limb):
        self.logger.debug('\tPosMng > StoreStartingLimbValues')
        temp = self.limbControls[limb.longName()]
        controls = temp[0] + temp[1]
        for control in controls:
            if control:
                name = control.longName()
                self.controlData[name] = []
                self.controlData[name].append(pm.xform(control, q=1, t=1))
                self.controlData[name].append(pm.xform(control, q=1, ro=1))
                self.controlData[name].append(pm.xform(control, q=1, s=1, r=1))

    def GetPoseNames(self, limbs):
        self.logger.debug('\tPosMng > GetPoseNames')
        for limb in limbs:
            limbName = self._GetLimbNameFromLimb(limb)
            if limbName not in self.posesByLimbName:
                return []
        limbName = self._GetLimbNameFromLimb(limbs[0])
        poses = self.posesByLimbName[limbName]
        posesByNames = {}
        for pose in poses:
            posesByNames[pose.poseName] = [pose]
        poseNames = set([pose.poseName for pose in poses])
        for limb in limbs[1:]:
            limbName = self._GetLimbNameFromLimb(limb)
            poses = self.posesByLimbName[limbName]
            for pose in poses:
                if pose.poseName in posesByNames:
                    posesByNames[pose.poseName].append(pose)
            tempPoseNames = set([pose.poseName for pose in poses])
            poseNames = poseNames.intersection(tempPoseNames)
        allPoses = []
        for poseName in poseNames:
            allPoses += posesByNames[poseName]
        poseNames = set([pose.poseName for pose in allPoses])
        return list(poseNames)

    def ResetLimbControls(self, limb):
        self.logger.debug('\tPosMng > ResetLimbControls: ' + limb.shortName())
        controls = self.limbControls[limb.longName()][0][:]
        controls += self.limbControls[limb.longName()][1][:]
        for control in controls:
            if control:
                pm.xform(control, t=(0,0,0), ro=(0,0,0), s=(1,1,1))

#============= WEIGHTS ============================

    def ResetWeights(self):
        self.logger.debug('\tPosMng > ResetWeights')
        for poses in self.posesByLimbName.values():
            for pose in poses:
                pose.weight = 0

    def SetPoseWeight(self, poseName, weight):
        self.logger.debug('\tPosMng > SetPoseValue')
        for pose in self.posesByPoseName[poseName]:
            pose.weight = weight

#============= PRIVATE ============================

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

    def _AddXforms(self, xform1, xform2, weight2):
        # self.logger.debug('\tPosMng > _AddXforms')
        xform = [[xform1[0][i] + xform2[0][i]*weight2 for i in range(3)]]
        xform.append([xform1[1][i] + xform2[1][i]*weight2 for i in range(3)])
        xform.append([])
        for i in range(3):
            xform[2].append(((xform1[2][i]-1) + (xform2[2][i]-1)*weight2) + 1)
        return xform

    def _GetJointControl(self, joint):
        group = pm.listConnections(joint.group)[0]
        return pm.listConnections(group.control)[0]

    def _GetControlData(self, control):
        self.logger.debug('\tPosMng > _GetControlData')
        hasValue = False
        pos = pm.xform(control, q=1, t=1)
        rot = pm.xform(control, q=1, ro=1)
        newRot = []
        for r in rot:
            neg = r < 0
            r = r % 360
            if neg:
                r -= 360
            newRot.append(r)
        scale = pm.xform(control, q=1, s=1, r=1)
        for i in pos + rot:
            if i != 0:
                hasValue = True
        for i in scale:
            if i != 1:
                hasValue = True
        if hasValue:
            data = [pos, newRot, scale]
            self.logger.debug('\t\t\t%s = %s' % (control.shortName(), str(data)))
            return data
        self.logger.debug('\t\t\t%s = []' % control.shortName())
        return []


















