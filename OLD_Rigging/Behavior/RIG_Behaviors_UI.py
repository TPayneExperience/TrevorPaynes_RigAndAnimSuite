
import pymel.core as pm

import Common.Utilities as util
reload(util)

import RIG_BHV_Limb_Hierarchy_UI as limbHier_UI
reload(limbHier_UI)
import RIG_BHV_Group_Hierarchy_UI as groupHier_UI
reload(groupHier_UI)

import RIG_BHV_Limb_Properties_UI as limbProp_UI
reload(limbProp_UI)
import RIG_BHV_Group_Properties_UI as bhvProp_UI
reload(bhvProp_UI)


class RIG_Behaviors_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.pfrs.limbMng
        self.jntMng = parent.pfrs.jntMng
        self.rigBHV = parent.pfrs.rigBHV
        self.grpMng = parent.pfrs.grpMng
        self.ctrMng = parent.pfrs.ctrMng
        self.nameMng = parent.pfrs.nameMng
        self.logger = parent.pfrs.logger
        self.pfrs = parent.pfrs
        
        self._Setup()

#=========== SETUP ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limb Hierarchy', bv=1):
                self.limbHier_ui = limbHier_UI.RIG_BHV_Limb_Hierarchy_UI(self)
            with pm.frameLayout('Behavior Groups / Control Pivots', bv=1):
                self.grpHier_ui = groupHier_UI.RIG_BHV_Group_Hierarchy_UI(self)
        with pm.verticalLayout():
            self.limbProp_ui = limbProp_UI.RIG_BHV_Limb_Properties_UI(self)
            self.grpProp_ui = bhvProp_UI.RIG_BHV_Group_Properties_UI(self)
    
#=========== SETUP + TEARDOWN ====================================

    def Setup_Editable(self):
        self.logger.info('Rigging > Behavior SETUP')
        self.Populate()
    
    def Teardown_Editable(self):
        self.logger.info('Rigging > Behavior TEARDOWN\n')

    def Populate(self):
        self.logger.debug('\tRIG_Behaviors_UI > Populate')
        self.limbHier_ui.Populate()
        self.limbProp_ui.SetLimb(None)
        self.grpHier_ui.SetLimb(None)
        self.grpProp_ui.SetGroup(None)


#=========== LIMBS ====================================

    def LimbSelected(self, limb):
        self.logger.debug('\tRIG_Behaviors_UI > LimbSelected')
        if limb:
            joints = util.GetSortedLimbJoints(limb)
            pm.select(joints)
        self.limbProp_ui.SetLimb(limb)
        self.grpHier_ui.SetLimb(limb)
        self.grpProp_ui.SetGroup(None)

    def GroupSelected(self, group):
        self.logger.debug('\tRIG_Behaviors_UI > GroupSelected')
        pm.select(group)
        self.limbProp_ui.SetLimb(None)
        self.grpProp_ui.SetGroup(group)

    def SetBhvType(self, limb):
        self.logger.debug('\tRIG_Behaviors_UI > SetBhvType')
        self.grpHier_ui.Populate()

    def SetEnableLimb(self, limb):
        self.logger.debug('\tRIG_Behaviors_UI > SetEnableLimb')
        self.limbHier_ui.SetEnableLimb(limb)

