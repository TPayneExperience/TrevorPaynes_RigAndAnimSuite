
import os
import subprocess

import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Utilities.Logger as log
reload(log)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import Utilities.General_Utilities as genUtil
reload(genUtil)
import Data.Anim_Data as animData
reload(animData)
import Data.Rig_Data as rigData
reload(rigData)

class Poses(absOp.Abstract_Operation):
    isRigBuilt = True
    applyBakedAnimations = True
    validRigStates = (0, 1)     # 0 = Setup, 1 = Anim
    controlLayerState = (1, 0)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef
    meshLayerState = (1, 1)    # isVis, isRef

#============= POSE LIBRARY ============================

    def OpenPosesFolder(self, rigRoot):
        log.funcFileInfo()
        filePath = rigRoot.posesFolderPath.get()
        files = os.listdir(filePath)
        if files:
            filePath = os.path.join(filePath, files[0])
        filePath = filePath.replace('/', '\\')
        cmd = 'explorer /select,"%s"' % filePath
        subprocess.Popen(cmd)

    def SetPosesFolder(self, rigRoot, folderPath):
        log.funcFileInfo()
        rigRoot.posesFolderPath.set(folderPath)

    def InitPoses(self, rigRoot):
        log.funcFileDebug()
        self.posesByLimbName = {}
        self.posesByPoseName = {}
        self.limbControls = {}
        self.controlData = {}
        # Get Json pose data
        folder = rigRoot.posesFolderPath.get()
        if not folder or not os.path.isdir(folder):
            return
        for f in os.listdir(folder):
            filePath = os.path.join(folder, f)
            if os.path.isfile(filePath):
                self._LoadPose(filePath)
        # Store Limb controls
        for limb in pm.listConnections(rigRoot.limbs):
            groups = pm.listConnections(limb.usedGroups)
            groups = rigUtil.SortGroups(groups)
            controls = [pm.listConnections(g.control)[0] for g in groups]
            self.limbControls[limb.longName()] = controls
            self._StoreLimbControlValues(limb)

    def SavePose(self, poseName, rigRoot, limbs):
        log.funcFileInfo()
        if not poseName:
            return
        # MISSING: Verify poseName is valid with NameMng
        folder = rigRoot.posesFolderPath.get()
        if not folder:
            raise ValueError('RigRoot missing poses folder path')
        for limb in limbs:
            self._SavePose(poseName, limb, folder)
            self.ResetLimbControls(limb)
        self.InitPoses(rigRoot)

    def CopyPose(self, limb):
        log.funcFileInfo()
        return self._CopyPose(limb)
    
    def PastePose(self, pose, limb):
        log.funcFileInfo()
        if pose.bhvType != limb.bhvType.get():
            msg = 'Pose data and limb must have same bhvType'
            raise ValueError(msg)
        if pose.pfrsName != limb.pfrsName.get():
            msg = 'Pose data and limb must have same pfrsName'
            raise ValueError(msg)
        self._PastePose(pose, limb)

    def MirrorPose(self, limb):
        log.funcFileInfo()
        mirrorLimbs = pm.listConnections(limb.mirrorLimb)
        if not mirrorLimbs:
            raise ValueError('Limb has no mirror')
        mirrorLimb = mirrorLimbs[0]
        pose = self._CopyPose(limb)
        self._CorrectMirrorPose(limb, pose)

        self.ResetLimbControls(mirrorLimb)
        self._StoreLimbControlValues(limb)
        self._StoreLimbControlValues(mirrorLimb)
        self._PastePose(pose, mirrorLimb)
    
    def _CorrectMirrorPose(self, limb, pose):
        # Config
        folder = os.path.dirname(__file__)
        folder = os.path.dirname(folder)
        folder = os.path.dirname(folder)
        folder = os.path.join(folder, 'Data')
        filePath = os.path.join(folder, 'Config.json')
        config = genUtil.Json.Load(filePath)

        aimVec = rigData.JOINT_AIM_UP_VECTORS[config['jointAimAxis']]
        upVec = rigData.JOINT_AIM_UP_VECTORS[config['jointUpAxis']]
        # Body
        if limb.limbLocation.get() == 0:
            vec = [upVec[i]+aimVec[i] for i in range(3)]
            rotFix = [(abs(i)*-2)+1 for i in vec] # (1, -1,1)
            posFix = [(2*abs(aimVec[i] + upVec[i]))-1 for i in range(3)] # (1,1,-1)
        # Face
        elif limb.limbLocation.get() == 1:
            rotFix = [(abs(i)*-2)+1 for i in aimVec] # (1, -1,1)
            posFix = [(2*abs(aimVec[i] + upVec[i]))-1 for i in range(3)] # (1,1,-1)
        
        # Fix Pos + Rot
        for i in range(len(pose.controls)):
            for j in range(3):
                val = pose.controls[i][0][j]
                pose.controls[i][0][j] = val * posFix[j]
            for j in range(3):
                val = pose.controls[i][1][j]
                pose.controls[i][1][j] = val * rotFix[j]

    def FlipPose(self, limb):
        log.funcFileInfo()
        mirrorLimbs = pm.listConnections(limb.mirrorLimb)
        if not mirrorLimbs:
            raise ValueError('Limb has no mirror')
        mirrorLimb = mirrorLimbs[0]
        pose1 = self._CopyPose(limb)
        pose2 = self._CopyPose(mirrorLimb)
        self._CorrectMirrorPose(limb, pose1)
        self._CorrectMirrorPose(mirrorLimb, pose2)
        self.ResetLimbControls(limb)
        self.ResetLimbControls(mirrorLimb)
        self._StoreLimbControlValues(limb)
        self._StoreLimbControlValues(mirrorLimb)
        self._PastePose(pose1, mirrorLimb)
        self._PastePose(pose2, limb)
    
    def _PastePose(self, pose, limb):
        log.funcFileInfo()
        groups = pm.listConnections(limb.usedGroups)
        groups = rigUtil.SortGroups(groups)
        controls = [pm.listConnections(g.control)[0] for g in groups]
        for i in range(len(controls)):
            self._PoseControl(controls[i], [pose], i)


#============= POSE LIBRARY ============================

    def ResetLimbControls(self, limb):
        log.funcFileDebug()
        for group in pm.listConnections(limb.usedGroups):
            control = pm.listConnections(group.control)[0]
            rigUtil.ResetAttrs(control)

    def SelectedLimbs(self, limbs):
        log.funcFileInfo()
        self._ResetWeights()
        for limb in limbs:
            self._StoreLimbControlValues(limb)
    
    def SetPoseWeight(self, poseName, limbs, weight):
        self._SetPoseWeight(poseName, weight)
        for limb in limbs:
            self._EvaluatePoses(limb)
    
    def DeleteAllLimbPose(self, poseName, rigRoot):
        folder = rigRoot.posesFolderPath.get()
        self._DeleteAllPosesOfName(poseName, folder)
        self.InitPoses(rigRoot)

    def DeleteSelectedLimbPose(self, poseName, rigRoot, limb):
        folder = rigRoot.posesFolderPath.get()
        self._DeleteLimbPose(poseName, folder, limb)
        self.InitPoses(rigRoot)

    def GetPoseNamesUnion(self, limbs):
        log.funcFileDebug()
        posesByNames = {}
        poseNames = set()
        for limb in limbs:
            limbName = self._GetLimbNameFromLimb(limb)
            if limbName not in self.posesByLimbName:
                continue
            poses = self.posesByLimbName[limbName]
            for pose in poses:
                if pose.poseName not in posesByNames:
                    posesByNames[pose.poseName] = []
                posesByNames[pose.poseName].append(pose)
            tempPoseNames = set([pose.poseName for pose in poses])
            poseNames = poseNames.union(tempPoseNames)
        return list(poseNames)

    def GetPoseNamesIntersection(self, limbs):
        log.funcFileDebug()
        # Make sure all limbs have poses
        for limb in limbs:
            limbName = self._GetLimbNameFromLimb(limb)
            if limbName not in self.posesByLimbName:
                return []
        # Get Poses of first limb
        limbName = self._GetLimbNameFromLimb(limbs[0])
        poses = self.posesByLimbName[limbName]
        posesByNames = {}
        for pose in poses:
            posesByNames[pose.poseName] = [pose]
        poseNames = set([pose.poseName for pose in poses])
        # For all other limbs, get poses in common
        for limb in limbs[1:]:
            limbName = self._GetLimbNameFromLimb(limb)
            poses = self.posesByLimbName[limbName]
            for pose in poses:
                if pose.poseName in posesByNames:
                    posesByNames[pose.poseName].append(pose)
            tempPoseNames = set([pose.poseName for pose in poses])
            poseNames = poseNames.intersection(tempPoseNames)
        return list(poseNames)

#============= POSES ============================

    def _EvaluatePoses(self, limb):
        log.funcFileDebug()
        limbName = self._GetLimbNameFromLimb(limb)
        poses = self.posesByLimbName[limbName]
        controls = self.limbControls[limb.longName()]
        for i in range(len(controls)):
            self._PoseControl(controls[i], poses, i)

    def _SavePose(self, poseName, limb, folder):
        log.funcFileDebug()
        data = {}
        data['poseName'] = poseName
        data['pfrsName'] = limb.pfrsName.get()
        data['bhvFile'] = limb.bhvFile.get()
        data['bhvType'] = limb.bhvType.get()
        data['side'] = limb.side.get()
        data['controls'] = []
        groups = pm.listConnections(limb.usedGroups)
        groups = rigUtil.SortGroups(groups)
        for group in groups:
            control = pm.listConnections(group.control)[0]
            data['controls'].append(self._GetControlData(control))
        fileName = '%s_%s.json' % (poseName, self._GetLimbNameFromLimb(limb))
        filePath = os.path.join(folder, fileName)
        genUtil.Json.Save(filePath, data)

    def _LoadPose(self, filePath):
        log.funcFileDebug()
        data = genUtil.Json.Load(filePath)
        pose = animData.POSE()
        pose.filePath = filePath
        pose.poseName = data['poseName']
        pose.pfrsName = data['pfrsName']
        pose.bhvFile = data['bhvFile']
        pose.bhvType = data['bhvType']
        pose.side = data['side']
        pose.controls = data['controls']
        if pose.poseName not in self.posesByPoseName:
            self.posesByPoseName[pose.poseName] = []
        self.posesByPoseName[pose.poseName].append(pose)
        limbName = self._GetLimbNameFromPose(pose)
        if limbName not in self.posesByLimbName:
            self.posesByLimbName[limbName] = []
        self.posesByLimbName[limbName].append(pose)

    def _DeleteAllPosesOfName(self, poseName, folder):
        log.funcFileDebug()
        for pose in self.posesByPoseName[poseName]:
            filePath = pose.filePath
            if os.path.isfile(filePath):
                os.remove(filePath)

    def _DeleteLimbPose(self, poseName, folder, limb):
        log.funcFileDebug()
        fileName = '%s_%s.json' % (poseName, self._GetLimbNameFromLimb(limb))
        filePath = os.path.join(folder, fileName)
        if os.path.isfile(filePath):
            os.remove(filePath)

    def _PoseControl(self, control, poses, ctrIndex):
        log.funcFileDebug()
        xform = self.controlData[control.longName()][:]
        for pose in poses:
            controlData = pose.controls[ctrIndex]
            xform = self._AddXforms(xform, controlData, pose.weight)
        pm.xform(control, t=xform[0], ro=xform[1], s=xform[2])

    def _CopyPose(self, limb):
        log.funcFileDebug()
        pose = animData.POSE()
        pose.bhvFile = limb.bhvFile.get()
        pose.bhvType = limb.bhvType.get()
        pose.pfrsName = limb.pfrsName.get()
        pose.weight = 1
        # pose.side = limb.side.get()
        pose.controls = []
        groups = pm.listConnections(limb.usedGroups)
        groups = rigUtil.SortGroups(groups)
        for group in groups:
            control = pm.listConnections(group.control)[0]
            data = self._GetControlData(control)
            pose.controls.append(data)
        return pose

#============= UTIL ============================

    def _StoreLimbControlValues(self, limb):
        log.funcFileDebug()
        if limb.longName() not in self.limbControls:
            return
        controls = self.limbControls[limb.longName()]
        for control in controls:
            name = control.longName()
            self.controlData[name] = []
            self.controlData[name].append(pm.xform(control, q=1, t=1))
            self.controlData[name].append(pm.xform(control, q=1, ro=1))
            self.controlData[name].append(pm.xform(control, q=1, s=1, r=1))

#============= WEIGHTS ============================

    def _ResetWeights(self):
        log.funcFileDebug()
        for poses in self.posesByLimbName.values():
            for pose in poses:
                pose.weight = 0

    def _SetPoseWeight(self, poseName, weight):
        log.funcFileDebug()
        for pose in self.posesByPoseName[poseName]:
            pose.weight = weight

#============= PRIVATE ============================

    def _GetLimbNameFromLimb(self, limb):
        log.funcFileDebug()
        name = limb.pfrsName.get()
        side = rigData.LIMB_SIDES[limb.side.get()]
        bhvType = limb.bhvType.get()
        return '%s_%s_%s' % (name, side, bhvType)

    def _GetLimbNameFromPose(self, pose):
        log.funcFileDebug()
        name = pose.pfrsName
        side = rigData.LIMB_SIDES[pose.side]
        bhvType = pose.bhvType
        return '%s_%s_%s' % (name, side, bhvType)

    def _AddXforms(self, xform1, xform2, weight2):
        log.funcFileDebug()
        xform = [[xform1[0][i] + xform2[0][i]*weight2 for i in range(3)]]
        xform.append([xform1[1][i] + xform2[1][i]*weight2 for i in range(3)])
        xform.append([])
        for i in range(3):
            xform[2].append(((xform1[2][i]-1) + (xform2[2][i]-1)*weight2) + 1)
        return xform

    def _GetControlData(self, control):
        log.funcFileDebug()
        # hasValue = False
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
        return [pos, newRot, scale]
        # for i in pos + rot:
        #     if i != 0:
        #         hasValue = True
        # for i in scale:
        #     if i != 1:
        #         hasValue = True
        # if hasValue:
        #     data = [pos, newRot, scale]
        #     return data
        # return []
