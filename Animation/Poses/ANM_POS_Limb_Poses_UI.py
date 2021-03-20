
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

class ANM_POS_Limb_Poses_UI:
    def __init__(self, parent):
        self.logger = parent.pfrs.logger
        self.posMng = parent.pfrs.posMng
        self.anmPos = parent.pfrs.anmPOS

        self.limbs = None
        self.poses_ui = []

        self._Setup()
    
    def SetLimbs(self, limbs):
        self.logger.debug('\tPos_LimbPoses > SetLimb')
        self.limbs = limbs
        self.Populate()

    def Populate(self):
        self.logger.debug('\tPos_LimbPoses > Populate')
        pm.frameLayout(self.limbPoses_fl, e=1, en=0)
        if self.poses_ui:
            pm.deleteUI(self.poses_ui)
            self.poses_ui = []
        if not self.limbs:
            return
        pm.frameLayout(self.limbPoses_fl, e=1, en=1)
        self.poseNames = self.posMng.GetPoseNames(self.limbs)
        for i in range(len(self.poseNames)):
            poseName = self.poseNames[i]
            ui = pm.floatSliderGrp(l=poseName, f=1, cw3=(50, 40, 100),
                            max=1, p=self.poses_cl, pre=3,
                            dc=pm.Callback(self.SetPoseWeight, i))

            self.poses_ui.append(ui)

#=========== SETUP UI ==============================================

    def _Setup(self):
        '''Create frame layouts here because we have limb + cst frames'''
        with pm.frameLayout('Limb Poses', bv=1, en=0) as self.limbPoses_fl:
            with pm.columnLayout(adj=1) as self.poses_cl:
                pass
                # ui = pm.floatSliderGrp(l='temp', f=1, cw=((1, 100),
                #                                         (2, 50),
                #                                         (3, 100)),
                #                                         max=1)
                # self.poses_ui.append(ui)
            
#=========== FUNCTIONALITY ==============================================

    def SetPoseWeight(self, index):
        poseName = self.poseNames[index]
        weight = pm.floatSliderGrp(self.poses_ui[index], q=1, v=1)
        self.anmPos.SetPoseWeight(poseName, self.limbs, weight)
        
