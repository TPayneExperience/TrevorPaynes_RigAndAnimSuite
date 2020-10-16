
import pymel.core as pm

class BHV_Limb_Manager:
    def __init__ (self, limbMng, jntMng, grpMng, ctrMng):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.grpMng = grpMng
        self.ctrMng = ctrMng

        self.bhvTypes = [   'FK - Chain', # DON'T CHANGE ORDER!

                            'IK',
                            'FK / IK',
                            'Constraint',
                            'Look At',
                            'IK Chain',

                            'FK - Branch',
                            'Empty',
                            'FK - Reverse Chain']
                            # MISSING: Relative FK

        self.cstTypes = ['Parent', 'Point', 'Orient', 'Scale']

#============= ACCESSORS  ============================

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
                    self.bhvTypes[6], 
                    self.bhvTypes[8]]

        if limbType == 3: # Branch
            return [self.bhvTypes[6],
                    self.bhvTypes[3]]

#============= ADD / REMOVE LIMB  ============================

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
            pm.addAttr(limb, ln='bhvCstTargetLimb', dt='string') # for connecting to target
            pm.addAttr(limb, ln='bhvCstSourceLimb', dt='string') # Ignore, only for connections
            pm.addAttr(limb, ln='bhvCstTargetJnt', at='enum', en='None')
            pm.addAttr(limb, ln='bhvIKSourceLimb', dt='string') # IK handles parent connection
    
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

    def SetBhv(self, limb, bhvType):
        index = self.bhvTypes.index(bhvType)
        limb.bhvType.set(index)
        if index == 0 or index == 6 or index == 8: # FK Chain / Branch
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
            self.Set_Empty(limb)

    def Set_FK(self, limb):
        pm.disconnectAttr(limb.bhvFKGrps)
        joints = self.jntMng.GetLimbJoints(limb)
        for joint in joints:
            groups = pm.listConnections(joint.bhvFKGrp)
            if groups:
                group = groups[0]
                pm.disconnectAttr(group.limb)
                pm.connectAttr(limb.bhvFKGrps, group.limb)
            else:
                group = self.grpMng.Add_FK(limb, joint)
                self.ctrMng.Add(group)

    def Set_IK(self, limb):
        pm.delete(pm.listConnections(limb.bhvIKGrps))
        joints = self.jntMng.GetLimbJoints(limb)
        self.grpMng.Add_IKHandle(limb, joints[0], joints[-1])

    def Set_FKIK(self, limb):
        group = self.grpMng.Add_FKIKSwitch(limb)
        self.ctrMng.Add(group)
        self.Set_FK(limb)
        self.Set_IK(limb)
        names = [j.pfrsName.get() for j in self.jntMng.GetLimbJoints(limb)]
        pm.addAttr(group.parentGrp, e=1, en=':'.join(names))

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
                group = self.grpMng.Add_LookAt(limb, joint)
                self.ctrMng.Add(group)

    def Set_IKChain(self, limb):
        pm.delete(pm.listConnections(limb.bhvIKGrps))
        joints = self.jntMng.GetLimbJoints(limb)
        for i in range(len(joints)-1):
            start = joints[i]
            end = joints[i+1]
            self.grpMng.Add_IKHandle(limb, start, end)

    def Set_Empty(self, limb):
        pm.delete(pm.listConnections(limb.bhvEmptyGrp))
        group = self.grpMng.Add_Empty(limb)
        self.ctrMng.Add(group)

