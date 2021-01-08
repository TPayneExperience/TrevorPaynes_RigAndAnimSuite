
import pymel.core as pm


import APP_Limb_Hierarchy_UI as limbHier_UI
reload(limbHier_UI)
import APP_Control_Hierarchy_UI as ctrHier_UI
reload(ctrHier_UI)

import APP_Limb_Properties_UI as limbProp_UI
reload(limbProp_UI)


class Appearance_UI:
    def __init__(self, limbMng, bhvMng, grpMng, ctrMng, nameMng, parent):

        self.limbMng = limbMng
        self.bhvMng = bhvMng
        self.grpMng = grpMng
        self.ctrMng = ctrMng
        self.nameMng = nameMng
        self.parent = parent

        self._Setup()

    def NewRig(self, rigRoot):
        pass

#=========== SETUP ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limb Hierarchy', bv=1):
                self.limbHier_ui = limbHier_UI.APP_Limb_Hierarchy_UI(
                                                        self.limbMng,
                                                        self.bhvMng,
                                                        # self.jntMng,
                                                        self)
            with pm.frameLayout('Control Hierarchy', bv=1):
                self.ctrHier_ui = ctrHier_UI.APP_Control_Hierarchy_UI(  self.limbMng,
                                                                        self.bhvMng,
                                                                        self.grpMng,
                                                                        self.ctrMng,
                                                                        self.nameMng,
                                                                        self)
        with pm.verticalLayout():
            # with pm.frameLayout('Limb Properties', bv=1, en=0) as self.prop_l:
            self.limbProp_ui = limbProp_UI.APP_Limb_Properties_UI(  self.limbMng,
                                                                    self.grpMng,
                                                                    self.bhvMng,
                                                                    self.ctrMng,
                                                                    self)

#=========== SETUP + TEARDOWN ====================================

    def Setup_Editable(self):
        print ('appearance, setup')
        self.limbHier_ui.Populate()
        self.limbProp_ui.Populate()
        self.ctrHier_ui.Depopulate()
        # pm.frameLayout(self.prop_l, e=1, en=0)
    
    def Teardown_Editable(self):
        print ('appearance, teardown')
        self.parent.parent.RebuildLimbs()

#=========== LIMBS ====================================

    def LimbSelected(self, limbID):
        # pm.frameLayout(self.prop_l, e=1, en=1)
        self.ctrHier_ui.SetLimb(limbID)
        self.limbProp_ui.SetLimb(limbID)

    def ControlTypeChanged(self):
        self.ctrHier_ui.Populate()