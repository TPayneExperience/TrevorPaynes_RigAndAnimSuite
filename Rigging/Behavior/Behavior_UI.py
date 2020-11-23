
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
                                                        self.bhvMng,
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
                                                                    self.bhvMng,
                                                                    self.grpMng,
                                                                    self)
    
#=========== SETUP + TEARDOWN ====================================

    def Setup_Editable(self):
        self.limbHier_ui.Populate()
        self.limbProp_ui.Depopulate()
        # self.limbProp_ui.Populate()
    
    def Teardown_Editable(self):
        self.limbProp_ui.Depopulate()
        self.grpHier_ui.Depopulate()
        self.grpProp_ui.Depopulate()

#=========== LIMBS ====================================

    # def UpdateLimbUI(self):
    #     self.limbProp_ui.UpdateGroupParentUI()

    def UpdateLimbParentGroups(self, limbID):
        '''Updates limb parent group enum to closest to root group'''
        childLimb = self.limbMng.GetLimb(limbID)
        parents = pm.listConnections(childLimb.parentLimb)

        # If NO PARENT or parent EMPTY, set and return
        if not parents:
            pm.addAttr(childLimb.parentGroup, e=1, en='None')
            return
        parentLimb = parents[0]
        parentBhvType = parentLimb.bhvType.get()
        if parentBhvType == 7:
            pm.addAttr(childLimb.parentGroup, e=1, en='Empty')
            return
        
        # Default target group to closest to first group
        distances = {}
        names = []
        rootGroup = self.grpMng.GetLimbGroups(childLimb)[0]
        sourcePos = pm.xform(rootGroup, q=1, t=1, ws=1)
        parentGroups = self.grpMng.GetLimbFKGroups(parentLimb)
        for parentGroup in parentGroups:
            # Create distance dict
            joint = pm.listConnections(parentGroup.joint)[0]
            targetPos = pm.xform(joint, q=1, t=1, ws=1)
            dist = 0
            for i in range(3):
                dist += (sourcePos[i]-targetPos[i])**2
            distances[dist] = parentGroup
            names.append(joint.pfrsName.get())
            # Create names list for enum
            # names.append(parentGroup.shortName())
            # if (pm.listConnections(parentGroup.joint)):
            #     names.append(self.grpMng.GetJointGroupName(parentGroup))
            # else:
            #     names.append(self.grpMng.GetLimbGroupName(parentGroup))
        # else:
        #     names = [pm.listConnections(g.joint)[0].pfrsName.get() for g in parentGroups]
        pm.addAttr(childLimb.parentGroup, e=1, en=':'.join(names))
        # Set Closest Group Index
        closestDist = sorted(list(distances.keys()))[0]
        closestGroup = distances[closestDist]
        # closestJoint = pm.listConnections(closestGroup.joint)[0]
        index = self.grpMng.GetLimbGroups(parentLimb).index(closestGroup)
        childLimb.parentGroup.set(index)
    
    def LimbSelected(self, limbID):
        limb = self.limbMng.GetLimb(limbID)
        # joints = self.jntMng.GetLimbTempJoints(limb)
        joints = self.jntMng.GetLimbJoints(limb)
        pm.select(joints)
        self.limbProp_ui.SetLimb(limbID)
        self.grpHier_ui.SetLimb(limbID)
        self.grpProp_ui.Depopulate()

    def GroupSelected(self, groupID):
        group = self.grpMng.GetGroup(groupID)
        pm.select(group)
        self.limbProp_ui.Depopulate()
        self.grpProp_ui.SetGroup(group)

    def SetBhvType(self, limb):
        self.grpHier_ui.Populate()


#============= UPDATE ============================

    # def UpdateIKPoleVectorGroupParent(self, limb):
    #     group = pm.listConnections(limb.bhvDistanceGroup)[0]
    #     joints = self.jntMng.GetLimbJoints(limb)
    #     joint = joints[len(joints)/2]
        # self.PosRotGroupToJoint(group, joint)
        # self.SetLockGroup(group, True)
        # pm.parent(group, joint)
        # pm.xform(group, t=[0,0,0], ro=[0,0,0], s=[1,1,1])
        # self.UpdateGroupDistance(group)

    # def UpdateGroupDistance(self, group):
    #     pos = self.grpMng.axes[group.bhvAxis.get()][:]
    #     dist = group.bhvDistance.get()
    #     pos = [p*dist for p in pos]
    #     # for attr in ['.tx', '.ty', '.tz']:
    #     #     pm.setAttr(group+attr, l=0, k=0, cb=0)
    #     pm.xform(group, t=pos)
    #     # for attr in ['.tx', '.ty', '.tz']:
    #     #     pm.setAttr(group+attr, l=1, k=0, cb=0)

    # def UpdateFKIKSwitchJoint(self, limb):
    #     group = pm.listConnections(limb.bhvFKIKSwitchGroup)[0]
    #     index = group.targetJoint.get()
    #     joints = self.jntMng.GetLimbJoints(limb)
    #     modIndex = index % len(joints)
    #     if modIndex != index:
    #         limb.bhvFKIKParentJoint.set(modIndex)
    #     # self.SetLockGroup(group, False)
    #     joint = joints[modIndex]
    #     # self.PosRotGroupToJoint(group, joint)
    #     pm.parent(group, joint)
    #     # pm.xform(group, t=[0,0,0], ro=[0,0,0], s=[1,1,1])
    #     # self.SetLockGroup(group, True)
