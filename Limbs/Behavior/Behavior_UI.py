

import pymel.core as pm



import Hierarchies.BHV_Limb_Hierarchy_UI as limbHier_UI
reload(limbHier_UI)
import Hierarchies.BHV_Group_Hierarchy_UI as groupHier_UI
reload(groupHier_UI)

import Properties.BHV_Limb_Properties_UI as limbProp_UI
reload(limbProp_UI)
import Properties.BHV_Group_Properties_UI as bhvProp_UI
reload(bhvProp_UI)


class Behavior_UI:
    def __init__(self, limbMng, jntMng, bhvMng, grpMng):

        self.limbMng = limbMng
        self.jntMng = jntMng
        self.bhvMng = bhvMng
        self.grpMng = grpMng

        self._Setup()

    def NewRig(self, rigRoot):
        pass

#=========== SETUP ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limb Hierarchy', bv=1):
                self.limbHier_ui = limbHier_UI.BHV_Limb_Hierarchy_UI(self.limbMng)
            with pm.frameLayout('Behavior Groups', bv=1):
                self.grpHier_ui = groupHier_UI.BHV_Group_Hierarchy_UI(self.grpMng,
                                                                        self)
        with pm.verticalLayout():
            self.limbProp_ui = limbProp_UI.BHV_Limb_Properties_UI(  self.limbMng,
                                                                    self.jntMng,
                                                                    self.grpMng,
                                                                    self)
            with pm.frameLayout('Group Properties', bv=1, en=0) as self.jntProp:
                self.jntProp_ui = bhvProp_UI.BHV_Group_Properties_UI(self.grpMng,
                                                                    self)
    
#=========== LIMBS ====================================

    def ReparentLimb(self, limbID):
        pass

