
import pymel.core as pm


import BHV_Limb_Hierarchy_UI as limbHier_UI
reload(limbHier_UI)
import BHV_Group_Hierarchy_UI as groupHier_UI
reload(groupHier_UI)

import BHV_Limb_Properties_UI as limbProp_UI
reload(limbProp_UI)
import BHV_Group_Properties_UI as bhvProp_UI
reload(bhvProp_UI)


class RIG_Behaviors_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
        self.bhvMng = parent.bhvMng
        self.grpMng = parent.grpMng
        self.ctrMng = parent.ctrMng
        self.nameMng = parent.nameMng
        self.logger = parent.logger
        
        self._Setup()

    def NewRig(self, rigRoot):
        pass

#=========== SETUP ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limb Hierarchy', bv=1):
                self.limbHier_ui = limbHier_UI.BHV_Limb_Hierarchy_UI(self)
            with pm.frameLayout('Behavior Groups / Control Pivots', bv=1):
                self.grpHier_ui = groupHier_UI.BHV_Group_Hierarchy_UI(self)
        with pm.verticalLayout():
            self.limbProp_ui = limbProp_UI.BHV_Limb_Properties_UI(self)
            self.grpProp_ui = bhvProp_UI.BHV_Group_Properties_UI(self)
    
#=========== SETUP + TEARDOWN ====================================

    def Setup_Editable(self):
        self.logger.info('Rigging > Behavior SETUP')
        self.limbHier_ui.Populate()
        self.limbProp_ui.Depopulate()
        # self.limbProp_ui.Populate()
    
    def Teardown_Editable(self):
        self.logger.info('Rigging > Behavior TEARDOWN\n')
        self.limbProp_ui.Depopulate()
        self.grpHier_ui.SetLimb(None)
        self.grpProp_ui.Depopulate()
        self.bhvMng.RebuildLimbs()

#=========== LIMBS ====================================

    def LimbSelected(self, limb):
        self.logger.debug('\tRIG_Behaviors_UI > LimbSelected')
        if limb:
            joints = self.jntMng.GetLimbJoints(limb)
            pm.select(joints)
        self.limbProp_ui.SetLimb(limb)
        self.grpHier_ui.SetLimb(limb)
        self.grpProp_ui.Depopulate()

    def GroupSelected(self, group):
        self.logger.debug('\tRIG_Behaviors_UI > GroupSelected')
        pm.select(group)
        self.limbProp_ui.Depopulate()
        self.grpProp_ui.SetGroup(group)

    def SetBhvType(self, limb):
        self.logger.debug('\tRIG_Behaviors_UI > SetBhvType')
        self.grpHier_ui.Populate()

