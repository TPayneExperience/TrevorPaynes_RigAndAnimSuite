
import pymel.core as pm


import BHV_Limb_Hierarchy_UI as limbHier_UI
reload(limbHier_UI)
import BHV_Group_Hierarchy_UI as groupHier_UI
reload(groupHier_UI)

import BHV_Limb_Properties_UI as limbProp_UI
reload(limbProp_UI)
import BHV_Group_Properties_UI as bhvProp_UI
reload(bhvProp_UI)


class Behavior_UI:
    def __init__(self, limbMng, jntMng, bhvMng, grpMng, ctrMng):

        self.limbMng = limbMng
        self.jntMng = jntMng
        self.bhvMng = bhvMng
        self.grpMng = grpMng
        self.ctrMng = ctrMng

        self._Setup()

    def NewRig(self, rigRoot):
        pass

#=========== SETUP ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limb Hierarchy', bv=1):
                self.limbHier_ui = limbHier_UI.BHV_Limb_Hierarchy_UI(
                                                        self.limbMng,
                                                        self.jntMng,
                                                        self)
            with pm.frameLayout('Behavior Groups / Control Pivots', bv=1):
                self.grpHier_ui = groupHier_UI.BHV_Group_Hierarchy_UI(  self.limbMng,
                                                                        self.grpMng,
                                                                        self)
        with pm.verticalLayout():
            self.limbProp_ui = limbProp_UI.BHV_Limb_Properties_UI(  self.limbMng,
                                                                    self.jntMng,
                                                                    self.bhvMng,
                                                                    self.grpMng,
                                                                    self)
            self.grpProp_ui = bhvProp_UI.BHV_Group_Properties_UI(   self.limbMng,
                                                                    self.jntMng,
                                                                    self.grpMng,
                                                                    self)
    
#=========== SETUP + TEARDOWN ====================================

    def Setup_Editable(self):
        self.limbHier_ui.Populate()
        self.grpProp_ui.Populate()
        self.ctrMng.SetLayerState(True, True)
    
    def Teardown_Editable(self):
        self.ctrMng.SetLayerState(True, True)

#=========== LIMBS ====================================

    def UpdateLimbUI(self):
        self.limbProp_ui.UpdateGroupParentUI()

    def UpdateLimbParentGroups(self, limbID):
        '''Set child's parent group enum'''
        limb = self.limbMng.GetLimb(limbID)
        parents = pm.listConnections(limb.parentLimb)
        if parents:
            groups = self.grpMng.GetLimbGroups(parents[0])
            names = []
            for group in groups:
                if (pm.listConnections(group.joint)):
                    names.append(self.grpMng.GetJointGroupName(group))
                else:
                    names.append(self.grpMng.GetLimbGroupName(group))
            pm.addAttr(limb.parentGrp, e=1, en=':'.join(names))
        else:
            pm.addAttr(limb.parentGrp, e=1, en='None')
    
    def LimbSelected(self, limbID):
        limb = self.limbMng.GetLimb(limbID)
        joints = self.jntMng.GetLimbTempJoints(limb)
        pm.select(joints)
        self.limbProp_ui.SetLimb(limbID)
        self.grpHier_ui.SetLimb(limbID)
        self.grpProp_ui.SetLimb()

    def GroupSelected(self, groupID):
        group = self.grpMng.GetGroup(groupID)
        pm.select(group)
        self.limbProp_ui.SetGroup()
        self.grpProp_ui.SetGroup(group)

    def SetBhvType(self, limb):
        self.grpHier_ui.Populate()

