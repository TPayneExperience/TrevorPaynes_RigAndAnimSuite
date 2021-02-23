
import pymel.core as pm


import APP_Limb_Hierarchy_UI as limbHier_UI
reload(limbHier_UI)
import APP_Control_Hierarchy_UI as ctrHier_UI
reload(ctrHier_UI)

import APP_Limb_Properties_UI as limbProp_UI
reload(limbProp_UI)
import APP_Global_Properties_UI as globalProp_UI
reload(globalProp_UI)


class Appearance_UI:
    def __init__(self, parent):

        self.parent = parent
        self.limbMng = parent.limbMng
        self.rigBHV = parent.rigBHV
        self.grpMng = parent.grpMng
        self.ctrMng = parent.ctrMng
        self.nameMng = parent.nameMng
        self.logger = parent.logger
        self.pfrs = parent.pfrs

        self._Setup()

#=========== SETUP ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limb Hierarchy', bv=1):
                self.limbHier_ui = limbHier_UI.APP_Limb_Hierarchy_UI(self)
            with pm.frameLayout('Control Hierarchy', bv=1):
                self.ctrHier_ui = ctrHier_UI.APP_Control_Hierarchy_UI(self)
        with pm.verticalLayout():
            self.limbProp_ui = limbProp_UI.APP_Limb_Properties_UI(self)
            self.globalProp_ui = globalProp_UI.APP_Global_Properties_UI(self)


#=========== SETUP + TEARDOWN ====================================

    def Setup_Editable(self):
        self.logger.info('Rigging > Appearance SETUP')
        self.limbHier_ui.Populate()
        self.limbProp_ui.SetLimb(None)
        # self.limbProp_ui.Populate()
        self.globalProp_ui.Populate()
        self.ctrHier_ui.Depopulate()
        # pm.frameLayout(self.prop_l, e=1, en=0)
    
    def Teardown_Editable(self):
        self.logger.info('Rigging > Appearance TEARDOWN\n')
        self.rigBHV.RebuildLimbs()

#=========== LIMBS ====================================

    def LimbSelected(self, limb):
        self.logger.debug('\tAppearance_UI > LimbSelected')
        # pm.frameLayout(self.prop_l, e=1, en=1)
        self.ctrHier_ui.SetLimb(limb)
        self.limbProp_ui.SetLimb(limb)

    def ControlTypeChanged(self):
        self.logger.debug('\tAppearance_UI > ControlTypeChanged')
        self.ctrHier_ui.Populate()