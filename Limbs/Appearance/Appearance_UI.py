
import pymel.core as pm


import APP_Limb_Hierarchy_UI as limbHier_UI
reload(limbHier_UI)
import APP_Control_Hierarchy_UI as ctrHier_UI
reload(ctrHier_UI)

import APP_Limb_Properties_UI as limbProp_UI
reload(limbProp_UI)
import APP_Control_Properties_UI as ctrProp_UI
reload(ctrProp_UI)


class Appearance_UI:
    # def __init__(self, limbMng, jntMng, bhvMng, grpMng):
    def __init__(self, limbMng, grpMng, ctrMng, nameMng, parent):

        self.limbMng = limbMng
        self.grpMng = grpMng
        self.ctrMng = ctrMng
        self.nameMng = nameMng
        self.parent = parent
#         self.jntMng = jntMng
#         self.bhvMng = bhvMng

        self._Setup()

    def NewRig(self, rigRoot):
        pass

#=========== SETUP ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limb Hierarchy', bv=1):
                self.limbHier_ui = limbHier_UI.APP_Limb_Hierarchy_UI(
                                                        self.limbMng,
                                                        # self.jntMng,
                                                        self)
            with pm.frameLayout('Control Hierarchy', bv=1):
                self.grpHier_ui = ctrHier_UI.APP_Control_Hierarchy_UI(  self.limbMng,
                                                                        self.ctrMng,
                                                                        self.nameMng,
                                                                        self)
        with pm.verticalLayout():
            with pm.frameLayout('Limb Properties', bv=1):
                self.limbProp_ui = limbProp_UI.APP_Limb_Properties_UI(  self.limbMng,
                                                                        self.grpMng,
                                                                        self)
            with pm.frameLayout('Control Properties', bv=1):
                self.grpProp_ui = ctrProp_UI.APP_Control_Properties_UI(self.ctrMng)
    
# #=========== SETUP + TEARDOWN ====================================

    def Setup_Editable(self):
        print 'setup editable apps'
        # self.limbHier_ui.Populate()
        # self.limbProp_ui.Populate()
        # self.grpProp_ui.Populate()
    
    def Teardown_Editable(self):
        print 'teardown editable apps'

# #=========== LIMBS ====================================

#     def UpdateLimbUI(self):
#         self.limbProp_ui.UpdateGroupParentUI()

#     def UpdateLimbParentGroups(self, limbID):
#         '''Set child's parent group enum'''
#         limb = self.limbMng.GetLimb(limbID)
#         parents = pm.listConnections(limb.parentLimb)
#         if parents:
#             groups = self.grpMng.GetLimbGroups(parents[0])
#             names = [group.pfrsName.get() for group in groups]
#             pm.addAttr(limb.parentGrp, e=1, en=':'.join(names))
#         else:
#             pm.addAttr(limb.parentGrp, e=1, en='None')
    
#     def LimbSelected(self, limbID):
#         limb = self.limbMng.GetLimb(limbID)
#         joints = self.jntMng.GetLimbTempJoints(limb)
#         pm.select(joints)
#         self.limbProp_ui.SetLimb(limbID)
#         self.grpHier_ui.SetLimb(limbID)
#         self.grpProp_ui.SetLimb()

#     def GroupSelected(self, groupID):
#         group = self.grpMng.GetGroup(groupID)
#         pm.select(group)
#         self.limbProp_ui.SetGroup()
#         self.grpProp_ui.SetGroup(group)

#     def SetBhvType(self, limb):
#         self.grpHier_ui.Populate()

