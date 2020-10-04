
import pymel.core as pm

import BHV_Group_Manager as grpMng
reload(grpMng)

class BHV_Limb_Manager:
    def __init__ (self, limbMng, jntMng):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.grpMng = grpMng.BHV_Group_Manager()

        self.bhvTypes = [   'FK - Chain',

                            'IK',
                            'FK / IK',
                            'Constraint',
                            'Look At',
                            'IK Chain',

                            'FK - Branch',
                            'Empty']

        self.cstTypes = ['Parent', 'Point', 'Orient', 'Scale']

#============= LIMBS  ============================

    def GetBhvOptions(self, limb):
        limbType = limb.limbType.get()
        if limbType == 0: # Empty
            return self.bhvTypes[7]

        if limbType == 1: # One Joint
            return [self.bhvTypes[0], 
                    self.bhvTypes[3], 
                    self.bhvTypes[4]]

        if limbType == 2: # Chain
            return [self.bhvTypes[0], 
                    self.bhvTypes[1], 
                    self.bhvTypes[2], 
                    self.bhvTypes[3], 
                    self.bhvTypes[5], 
                    self.bhvTypes[6]]

        if limbType == 3: # Branch
            return [self.bhvTypes[3], 
                    self.bhvTypes[6]]

    def SetBhvOption(self, limb, bhv):
        limb.bhvType.set(self.bhvTypes.index(bhv))

    def AddLimb(self, limb):
        if not limb.hasAttr('bhvType'):
            bhvTypes = ':'.join(self.bhvTypes)
            bhvCstTypes = ':'.join(self.cstTypes)

            pm.addAttr(limb, ln='bhvType', at='enum', en=bhvTypes)

            pm.addAttr(limb, ln='bhvFKGrps', dt='string')
            pm.addAttr(limb, ln='bhvIKGrps', dt='string')
            pm.addAttr(limb, ln='bhvFKIKSwitchGrp', dt='string')
            pm.addAttr(limb, ln='bhvCstGrps', dt='string')
            pm.addAttr(limb, ln='bhvLookAtGrp', dt='string')
            pm.addAttr(limb, ln='bhvEmptyGrp', dt='string')

            pm.addAttr(limb, ln='bhvCstType', at='enum', en=bhvCstTypes)
            pm.addAttr(limb, ln='bhvCstTargetLimbID', at='long')
            pm.addAttr(limb, ln='bhvCstTargetJntIndex', at='enum', en='None')
    
    def RemoveLimb(self, limb):
        pm.disconnectAttr(limb.bhvFKGrps)
        pm.disconnectAttr(limb.bhvCstGrps)
        pm.disconnectAttr(limb.bhvLookAtGrp)
        groups = []
        groups += pm.listConnections(limb.bhvIKGrps)
        groups += pm.listConnections(limb.bhvFKIKSwitchGrp)
        groups += pm.listConnections(limb.bhvEmptyGrp)
        if groups:
            pm.delete(groups)


#============= BHV TYPES ============================
# CURRENTLY, THIS ONLY ACCOUNTS FOR EDITABLE SETUP, NOT FINAL

    def Set_BhvType(self, limb, bhvType):
        index = self.bhvTypes.index(bhvType)
        limb.bhvType.set(index)
        if index == 0 or index == 6: # FK Chain / Branch
            self.Set_FK(limb)
        elif index == 1:
            self.Set_IK(limb)
        elif index == 2:
            self.Set_FKIK(limb)
        elif index == 3:
            self.Set_Cst(limb)
        elif index == 4:
            self.Set_LookAt(limb)
        elif index == 5:
            self.Set_IKChain(limb)
        elif index == 7:
            self.Set_IKChain(limb)

    def Set_FK(self, limb):
        pm.disconnectAttr(limb.bhvFKGrps)
        for joint in self.jntMng.GetLimbJoints(limb):
            groups = pm.listConnections(joint.bhvFKGrp)
            if groups:
                group = groups[0]
                pm.disconnectAttr(group.limb)
                pm.connectAttr(limb.bhvFKGrps, group.limb)
            else:
                self.grpMng.Add_FK(limb, joint)

    def Set_IK(self, limb):
        pm.delete(pm.listConnections(limb.bhvIKGrps))
        joints = self.jntMng.GetLimbJoints(limb)
        self.grpMng.Add_IKHandle(limb, joints[0], joints[-1])

    def Set_FKIK(self, limb):
        self.grpMng.Add_FKIKSwitch(limb)
        self.Set_FK(limb)
        self.Set_IK(limb)

    def Set_Cst(self, limb):
        pm.disconnectAttr(limb.bhvCstGrps)
        for joint in self.jntMng.GetLimbJoints(limb):
            groups = pm.listConnections(joint.bhvCstGrp)
            if groups:
                group = groups[0]
                pm.disconnectAttr(group.limb)
                pm.connectAttr(limb.bhvCstGrps, group.limb)
            else:
                self.grpMng.Add_Constraint(limb, joint)

    def Set_LookAt(self, limb):
        pm.disconnectAttr(limb.bhvLookAtGrp)
        for joint in self.jntMng.GetLimbJoints(limb):
            groups = pm.listConnections(joint.bhvLookAtGrp)
            if groups:
                group = groups[0]
                pm.disconnectAttr(group.limb)
                pm.connectAttr(limb.bhvLookAtGrp, group.limb)
            else:
                self.grpMng.Add_LookAt(limb, joint)

    def Set_IKChain(self, limb):
        pm.delete(pm.listConnections(limb.bhvIKGrps))
        joints = self.jntMng.GetLimbJoints(limb)
        for i in range(len(joints)-1):
            start = joints[i]
            end = joints[i+1]
            self.grpMng.Add_IKHandle(limb, start, end)

    def Set_Empty(self, limb):
        pm.delete(pm.listConnections(limb.bhvEmptyGrp))
        self.grpMng.Add_Empty(limb)

