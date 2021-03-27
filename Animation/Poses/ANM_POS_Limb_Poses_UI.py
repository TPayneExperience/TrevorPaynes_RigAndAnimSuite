
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
        self.delete_ui = []
        self.toBeDeleted = []

        self._Setup()
    
    def SetLimbs(self, limbs):
        self.logger.debug('\tPos_LimbPoses > SetLimb')
        self.limbs = limbs
        self.Populate()

    def Populate(self):
        self.logger.debug('\tPos_LimbPoses > Populate')
        pm.frameLayout(self.limbPoses_fl, e=1, en=0)
        self.toBeDeleted = self.poses_ui + self.delete_ui
        if self.poses_ui:
            for ui in self.poses_ui:
                pm.evalDeferred('pm.deleteUI("' + ui + '")')
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
            with pm.popupMenu():
                pm.menuItem(l='Delete Pose', c=pm.Callback(
                                        self.DeletePose, poseName))

#=========== SETUP UI ==============================================

    def _Setup(self):
        '''Create frame layouts here because we have limb + cst frames'''
        with pm.frameLayout('Limb Poses', bv=1, en=0) as self.limbPoses_fl:
            with pm.columnLayout(adj=1) as self.poses_cl:
                pass
            
#=========== FUNCTIONALITY ==============================================

    def SetPoseWeight(self, index):
        poseName = self.poseNames[index]
        weight = pm.floatSliderGrp(self.poses_ui[index], q=1, v=1)
        self.anmPos.SetPoseWeight(poseName, self.limbs, weight)
    
    def DeletePose(self, poseName):
        self.logger.debug('\tPos_LimbPoses > DeletePose')
        result = pm.confirmDialog(   t='Delete Pose', 
                                icon='warning', 
                                m='Delete pose for which limbs?', 
                                b=['Cancel', 'All', 'Selected'], 
                                db='Cancel', 
                                cb='Cancel', 
                                ds='Cancel')
        if result == 'Cancel':
            return
        elif result == 'All':
            self.anmPos.DeleteAllLimbPose(poseName)
        elif result == 'Selected':
            self.anmPos.DeleteSelectedLimbPose(poseName, self.limbs)
        self.Populate()

