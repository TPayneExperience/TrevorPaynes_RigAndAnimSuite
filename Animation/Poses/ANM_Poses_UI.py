
import pymel.core as pm

import Common.Utilities as util
reload(util)

import ANM_POS_Limb_Hierarchy_UI as limbHier_UI
reload(limbHier_UI)
import ANM_POS_Control_Hierarchy_UI as ctrHier_UI
reload(ctrHier_UI)

import ANM_POS_Limb_Poses_UI as limbPoses_UI
reload(limbPoses_UI)
# import RIG_BHV_Group_Properties_UI as bhvProp_UI
# reload(bhvProp_UI)


class ANM_Poses_UI:
    def __init__(self, parent):
        self.pfrs = parent.pfrs
        self.posMng = parent.pfrs.posMng
        self.logger = parent.logger
        self.anmPOS = parent.pfrs.anmPOS
        # self.parent = parent
        # self.limbMng = parent.limbMng
        # self.jntMng = parent.jntMng
        # self.rigBHV = parent.rigBHV
        # self.grpMng = parent.grpMng
        # self.ctrMng = parent.ctrMng
        # self.nameMng = parent.nameMng
        # self.pfrs = parent.pfrs
        
        self._Setup()

#=========== SETUP ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limb Hierarchy', bv=1):
                self.limbHier_ui = limbHier_UI.ANM_POS_Limb_Hierarchy_UI(self)
            with pm.frameLayout('Control Hierarchy', bv=1):
                self.ctrHier_ui = ctrHier_UI.ANM_POS_Control_Hierarchy_UI(self)
        with pm.verticalLayout():
            self.limbPoses_ui = limbPoses_UI.ANM_POS_Limb_Poses_UI(self)
    
# #=========== SETUP + TEARDOWN ====================================

    def Setup_Editable(self):
        self.logger.info('Animation > Poses SETUP')
        self.posMng.InitPoses()
        self.Populate()
    
    def Teardown_Editable(self):
        self.logger.info('Animation > Poses TEARDOWN\n')

    def Populate(self):
        self.logger.debug('\tANM_Poses_UI > Populate')
        self.limbHier_ui.Populate()
        self.limbPoses_ui.SetLimbs(None)
        self.ctrHier_ui.SetLimb(None)
#         self.grpProp_ui.SetGroup(None)


#=========== LIMBS ====================================

    def LimbsSelected(self, limbs):
        self.logger.debug('\tANM_Poses_UI > LimbSelected')
        if not limbs:
            self.ctrHier_ui.SetLimb(None)
            return
        self.anmPOS.SetLimbs(limbs)
        self.limbPoses_ui.SetLimbs(limbs)
        if len(limbs) > 1:
            self.ctrHier_ui.SetLimb(None)
        else:
            self.ctrHier_ui.SetLimb(limbs[0])
        # self.grpProp_ui.SetGroup(None)

    def PoseSaved(self):
        self.logger.debug('\tANM_Poses_UI > PoseSaved')
        self.limbPoses_ui.Populate()

#     def GroupSelected(self, group):
#         self.logger.debug('\tANM_Poses_UI > GroupSelected')
#         pm.select(group)
#         self.limbPoses_ui.SetLimb(None)
#         self.grpProp_ui.SetGroup(group)

#     def SetBhvType(self, limb):
#         self.logger.debug('\tANM_Poses_UI > SetBhvType')
#         self.ctrHier_ui.Populate()

#     def SetEnableLimb(self, limb):
#         self.logger.debug('\tANM_Poses_UI > SetEnableLimb')
#         self.limbHier_ui.SetEnableLimb(limb)

