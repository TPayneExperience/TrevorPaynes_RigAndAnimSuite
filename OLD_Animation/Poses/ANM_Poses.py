
import os
import subprocess

import pymel.core as pm

class ANM_Poses:
    def __init__(self, parent):
        self.logger = parent.logger
        self.pfrs = parent
        self.posMng = parent.posMng

    def SavePose(self, poseName, limbs):
        self.logger.debug('\tANM_Poses > SavePose')
        if not poseName:
            return
        # MISSING: Verify poseName is valid with NameMng
        folder = self.pfrs.root.posesFolderPath.get()
        for limb in limbs:
            self.posMng.SavePose(poseName, limb, folder)
            self.posMng.ResetLimbControls(limb)
        self.posMng.InitPoses()

    def SetPoseWeight(self, poseName, limbs, weight):
        self.logger.debug('\tANM_Poses > SetPoseWeight')
        self.posMng.SetPoseWeight(poseName, weight)
        self.posMng.EvaluatePoses(limbs)

    def SetLimbs(self, limbs):
        self.logger.debug('\tANM_Poses > SetLimbs')
        self.posMng.ResetWeights()
        for limb in limbs:
            self.posMng.StoreLimbControlValues(limb)

    def ResetLimbControls(self, limbs):
        self.logger.debug('\tANM_Poses > ResetLimbControls')
        for limb in limbs:
            self.posMng.ResetLimbControls(limb)
        self.SetLimbs(limbs)

    def OpenPosesFolder(self):
        self.logger.info('\tANM_Poses > OpenPosesFolder')
        filePath = self.pfrs.root.posesFolderPath.get()
        files = os.listdir(filePath)
        if files:
            filePath = os.path.join(filePath, files[0])
        filePath = filePath.replace('/', '\\')
        cmd = 'explorer /select,"%s"' % filePath
        subprocess.Popen(cmd)

    def DeleteSelectedLimbPose(self, poseName, limbs):
        self.logger.info('\tANM_Poses > DeleteSelectedLimbPose')
        folder = self.pfrs.root.posesFolderPath.get()
        for limb in limbs:
            self.posMng.DeleteLimbPose(poseName, folder, limb)
        self.posMng.InitPoses()

    def DeleteAllLimbPose(self, poseName):
        self.logger.info('\tANM_Poses > DeleteAllLimbPose')
        folder = self.pfrs.root.posesFolderPath.get()
        self.posMng.DeleteAllPosesOfName(poseName, folder)
        self.posMng.InitPoses()
