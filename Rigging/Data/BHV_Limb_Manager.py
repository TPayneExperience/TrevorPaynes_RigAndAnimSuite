
import pymel.core as pm

class BHV_Limb_Manager:
    def __init__ (self, limbMng, jntMng, grpMng, ctrMng):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.grpMng = grpMng
        self.ctrMng = ctrMng

        self.cstTypes = ['Parent', 'Point', 'Orient', 'Scale']

        # BHV Options
        self.emptyLimbIndexes = [7]
        self.oneJntLimbIndexes = [6, 3, 4]
        self.twoJntChainLimbIndexes = [0, 3, 5, 6, 8]
        self.threeJntChainLimbIndexes = [0, 1, 2, 3, 5, 6, 8]
        self.branchLimbIndexes = [6, 3]

        # self.fkTypeIndexes = [0, 3, 6, 8]
        # self.ikPVTypeIndexes = [1, 2]
        # self.ikTypeIndexes = [1, 2, 5]
        # self.ikTargetTypeIndexes = [0, 6, 7, 8]
        # self.cstTargetTypeIndexes = [0, 1, 2, 4, 5, 6, 8]
        
        self.bhvTypes = [   'FK - Chain', # DON'T CHANGE ORDER!

                            'IK - Pole Vector',
                            'FK + IK',
                            'Constraint',
                            'Look At',
                            'IK - Chain',

                            'FK - Branch',
                            'Empty',
                            'FK - Reverse Chain']
                            # MISSING: Relative FK


#============= ACCESSORS + MUTATOR ============================

    def GetBhvOptions(self, limb):
        limbType = limb.limbType.get()
        if limbType == 0: # Empty
            return [self.bhvTypes[i] for i in self.emptyLimbIndexes]
        if limbType == 1: # One Joint
            return [self.bhvTypes[i] for i in self.oneJntLimbIndexes]
        if limbType == 2: # Chain
            if (len(self.jntMng.GetLimbJoints(limb)) > 2):
                return [self.bhvTypes[i] for i in self.threeJntChainLimbIndexes]
            else:
                return [self.bhvTypes[i] for i in self.twoJntChainLimbIndexes]
        if limbType == 3: # Branch
            return [self.bhvTypes[i] for i in self.branchLimbIndexes]

    def GetBhvIndex(self, bhvTypeStr):
        return self.bhvTypes.index(bhvTypeStr)

    def SetBhvType(self, limb, newBhvIndex):
        oldBhvIndex = limb.bhvType.get()
        if (self.Teardown_Bhv(limb, oldBhvIndex, newBhvIndex)):
            limb.bhvType.set(newBhvIndex)
            if newBhvIndex in [0, 8]:
                self.Setup_FKChain(limb)
            elif newBhvIndex == 1:
                self.Setup_IKPoleVector(limb)
            elif newBhvIndex == 2:
                self.Setup_FKIK(limb)
            elif newBhvIndex == 3:
                self.Setup_Cst(limb)
            elif newBhvIndex == 4:
                self.Setup_LookAt(limb)
            elif newBhvIndex == 5:
                self.Setup_IKChain(limb)
            elif newBhvIndex == 6:
                self.Setup_FKBranch(limb)
            elif newBhvIndex == 7:
                self.Setup_Empty(limb)
            return True
        else:
            return False

#============= ADD / REMOVE LIMB  ============================

    def AddLimb(self, limb):
        if not limb.hasAttr('bhvType'):
            bhvTypes = ':'.join(self.bhvTypes)
            bhvCstTypes = ':'.join(self.cstTypes)

            pm.addAttr(limb, ln='bhvType', at='enum', en=bhvTypes)

            pm.addAttr(limb, ln='bhvJointGrps', dt='string') # FK, IKC, CSt
            pm.addAttr(limb, ln='bhvLimbGrp', dt='string') # LookAt, IKPV
            pm.addAttr(limb, ln='bhvEmptyGrp', dt='string') # Empty
            pm.addAttr(limb, ln='bhvFKIKSwitchGrp', dt='string') #FKIK

            pm.addAttr(limb, ln='bhvFKIK_FKJoint', dt='string')
            pm.addAttr(limb, ln='bhvFKIK_IKJoint', dt='string')

            pm.addAttr(limb, ln='bhvCstType', at='enum', en=bhvCstTypes)
            pm.addAttr(limb, ln='bhvCstSourceLimb', dt='string') # Ignore, only for connections
            pm.addAttr(limb, ln='bhvCstTargetLimb', dt='string') # for connecting to target
            pm.addAttr(limb, ln='bhvCstTargetJnt', at='enum', en='None')
            pm.addAttr(limb, ln='bhvIKSourceLimb', dt='string') # IK handles parent connection
            pm.addAttr(limb, ln='bhvIKTargetLimb', dt='string') # IK handles parent connection
    
    def RemoveLimb(self, limb):
        # Main Limb manager should actually delete the limb
        pm.disconnectAttr(limb.bhvJointGrps)
        groups = pm.listConnections(limb.bhvLimbGrp)
        groups += pm.listConnections(limb.bhvEmptyGrp)
        groups += pm.listConnections(limb.bhvFKIKSwitchGrp)
        for group in groups:
            self.grpMng.Remove(group)

#============= TEARDOWN BHV ============================

    def Teardown_Bhv(self, limb, oldBhvIndex, newBhvIndex):
        '''Creates Warning Dialogs if there are inter-dependencies'''
        # If limb has IK dependencies, Warning Dialog
        if oldBhvIndex in self.ikTargetTypeIndexes:
            if newBhvIndex not in self.ikTargetTypeIndexes:
                limbs = pm.listConnections(limb.bhvIKSourceLimb)
                if limbs:
                    msg = 'Changing limb "%s"s type off FK will break:' % limb
                    for limb in limbs:
                        msg += '\n - %s' % limb.pfrsName.get()
                    result = pm.confirmDialog(  t='Breaking IK Connections!', 
                                                m=msg, 
                                                icon='warning', 
                                                b=['Cancel', 'Continue'])
                    if (result == 'Cancel'):
                        return False
                    pm.disconnectAttr(limb.bhvIKSourceLimb)
        # Hide Unused FK Groups
        if oldBhvIndex in self.fkTypeIndexes:
            if newBhvIndex not in self.fkTypeIndexes:
                for group in pm.listConnections(limb.bhvFKGrps):
                    group.v.set(0)
                pm.disconnectAttr(limb.bhvFKGrps)
        # Hide Unused IK Pole Vector Groups
        if oldBhvIndex in self.ikPVTypeIndexes:
            if newBhvIndex not in self.ikPVTypeIndexes:
                for group in pm.listConnections(limb.bhvIKPoleVectorGrp):
                    group.v.set(0)
                    pm.disconnectAttr(group.IKPoleVectorJoint)
        return True

#============= SETUP BHV ============================

    def Setup_FKBranch(self, limb):
        for joint in self.jntMng.GetLimbJoints(limb):
            groups = pm.listConnections(joint.bhvFKGrp)
            if groups:
                group = groups[0]
                group.v.set(1)
                pm.disconnectAttr(group.limb)
                pm.connectAttr(limb.bhvFKGrps, group.limb)
            else:
                group = self.grpMng.Add_FK(limb, joint)
                self.ctrMng.Add(group)

    def Setup_FKChain(self, limb):
        for joint in self.jntMng.GetLimbJoints(limb)[:-1]:
            groups = pm.listConnections(joint.bhvFKGrp)
            if groups:
                group = groups[0]
                group.v.set(1)
                pm.disconnectAttr(group.limb)
                pm.connectAttr(limb.bhvFKGrps, group.limb)
            else:
                group = self.grpMng.Add_FK(limb, joint)
                self.ctrMng.Add(group)

    def Setup_IKPoleVector(self, limb):
        groups = pm.listConnections(limb.bhvIKPoleVectorGrp)
        if groups:
            group = groups[0]
            group.v.set(1)
            pm.disconnectAttr(group.IKPoleVectorJoint)
        else:
            group = self.grpMng.Add_IKPoleVector(limb)
            self.ctrMng.Add(group)
        joints = self.jntMng.GetLimbJoints(limb)
        joint = joints[len(joints)/2]
        pm.connectAttr(joint.bhvIKGrp, group.IKPoleVectorJoint)
        self.grpMng.PosRotGroupToJoint(group, joint)

    def Setup_FKIK(self, limb):
        groups = pm.listConnections(limb.bhvFKIKSwitchGrp)
        if groups:
            group = groups[0]
        else:
            group = self.grpMng.Add_FKIKSwitch(limb)
            self.ctrMng.Add(group)
        self.Setup_FKChain(limb)
        self.Setup_IKPoleVector(limb)
        names = [j.pfrsName.get() for j in self.jntMng.GetLimbJoints(limb)]
        pm.addAttr(limb.bhvFKIKParentJoint, e=1, en=':'.join(names))

    def Setup_Cst(self, limb):
        pm.disconnectAttr(limb.bhvCstGrps)
        for joint in self.jntMng.GetLimbJoints(limb):
            groups = pm.listConnections(joint.bhvCstGrp)
            if groups:
                group = groups[0]
                pm.disconnectAttr(group.limb)
                pm.connectAttr(limb.bhvCstGrps, group.limb)
            else:
                group = self.grpMng.Add_Constraint(limb, joint)

    def Setup_LookAt(self, limb):
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

    def Setup_IKChain(self, limb):
        pm.disconnectAttr(limb.bhvIKChainGrps)
        joints = self.jntMng.GetLimbJoints(limb)
        for i in range(1, len(joints)):
            joint = joints[i]
            groups = pm.listConnections(joint.bhvIKGrp)
            if groups:
                group = groups[0]
                pm.disconnectAttr(group.limb)
                pm.connectAttr(limb.bhvIKChainGrps, group.limb)
            else:
                group = self.grpMng.Add_IKChain(limb, joint)

    def Setup_Empty(self, limb):
        if not pm.listConnections(limb.bhvEmptyGrp):
            group = self.grpMng.Add_Empty(limb)
            self.ctrMng.Add(group)



