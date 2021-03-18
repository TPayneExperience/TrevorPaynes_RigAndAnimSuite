
import pymel.core as pm


import RIG_APP_Limb_Hierarchy_UI as limbHier_UI
reload(limbHier_UI)
import RIG_APP_Control_Hierarchy_UI as ctrHier_UI
reload(ctrHier_UI)

import RIG_APP_Limb_Properties_UI as limbProp_UI
reload(limbProp_UI)
import RIG_APP_Global_Properties_UI as globalProp_UI
reload(globalProp_UI)


class RIG_Appearance_UI:
    def __init__(self, parent):
        self.parent = parent
        self.logger = parent.pfrs.logger
        self.pfrs = parent.pfrs

        self._Setup()

#=========== SETUP ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limb Hierarchy', bv=1):
                self.limbHier_ui = limbHier_UI.RIG_APP_Limb_Hierarchy_UI(self)
            with pm.frameLayout('Control Hierarchy', bv=1):
                self.ctrHier_ui = ctrHier_UI.RIG_APP_Control_Hierarchy_UI(self)
        with pm.verticalLayout():
            self.limbProp_ui = limbProp_UI.RIG_APP_Limb_Properties_UI(self)
            self.globalProp_ui = globalProp_UI.RIG_APP_Global_Properties_UI(self)


#=========== SETUP + TEARDOWN ====================================

    def Setup_Editable(self):
        self.logger.info('Rigging > Appearance SETUP')
        self.limbHier_ui.Populate()
        self.limbProp_ui.SetLimb(None)
        # self.limbProp_ui.Populate()
        self.globalProp_ui.Populate()
        self.ctrHier_ui.SetLimb(None)
        # pm.frameLayout(self.prop_l, e=1, en=0)
    
    def Teardown_Editable(self):
        self.logger.info('Rigging > Appearance TEARDOWN\n')

#=========== LIMBS ====================================

    def LimbSelected(self, limb):
        self.logger.debug('\tRIG_Appearance_UI > LimbSelected')
        # pm.frameLayout(self.prop_l, e=1, en=1)
        self.ctrHier_ui.SetLimb(limb)
        self.limbProp_ui.SetLimb(limb)

    def ControlTypeChanged(self):
        self.logger.debug('\tRIG_Appearance_UI > ControlTypeChanged')
        self.ctrHier_ui.Populate()