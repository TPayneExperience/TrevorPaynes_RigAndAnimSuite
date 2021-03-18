
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
