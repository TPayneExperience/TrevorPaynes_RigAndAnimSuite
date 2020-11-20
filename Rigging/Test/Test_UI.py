
import pymel.core as pm


class Test_UI:
    def __init__(self, limbMng, jntMng, bhvMng, grpMng, ctrMng):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.bhvMng = bhvMng
        self.grpMng = grpMng
        self.ctrMng = ctrMng

        self._Setup()

    def _Setup(self):
        pm.text(l="You're breathtaking!")


#=========== TAB FUNCTIONALITY ====================================
    
    def Setup_Editable(self):
        self.Setup_Groups()
        self.Setup_Controls()
        self.Setup_Internal()
        self.Setup_External()
        pm.select(d=1)

    def Teardown_Editable(self):
        self.Teardown_Controls()
        self.Remove_Constraints()
        self.Teardown_Groups()

#=========== SETUP FUNCTIONALITY ====================================
    
    def Setup_Groups(self):
        for group in self.grpMng.GetAllGroups():
            for attr in ['.tx', '.ty', '.tz', '.rx', '.ry', '.rz']:
                pm.setAttr(group+attr, l=0)
            pm.parent(group, self.grpMng.bhvGroup)

    def Setup_Controls(self):
        for control in self.ctrMng.GetAllControls():
            group = pm.listConnections(control.group)[0]
            groupType = group.groupType.get()
            if groupType == 2: # Distance
                for attr in ['.tx', '.ty', '.tz']:
                    pm.setAttr(control + attr, l=0, k=1, cb=1)
            pm.makeIdentity(control, a=1, t=1, r=1, s=1)
            pos = pm.xform(group, q=1, t=1)
            pm.move(pos[0], pos[1], pos[2], 
                        control.scalePivot, 
                        control.rotatePivot, 
                        a=1)
            if groupType == 2: # Distance
                for attr in ['.rx', '.ry', '.rz', '.sx', '.sy', '.sz']:
                    pm.setAttr(control + attr, l=1, k=0, cb=0)
            

    def Setup_Internal(self):
        for limb in self.limbMng.GetAllLimbs():
            bhvType = limb.bhvType.get()
            if bhvType in [0, 8]: # fk chain + reverse
                self.Setup_Internal_FKChain(limb)
            elif (bhvType == 1):
                self.Setup_Internal_IKPoleVector(limb)
            elif (bhvType == 2):
                self.Setup_Internal_FKIK(limb)
            elif (bhvType == 3):
                self.Setup_Internal_Constraint(limb)
            elif (bhvType == 4):
                self.Setup_Internal_LookAt(limb)
            elif (bhvType == 5):
                self.Setup_Internal_IKChain(limb)
            elif (bhvType == 6):
                self.Setup_Internal_FKBranch(limb)

    def Setup_External(self):
        for limb in self.limbMng.GetAllLimbs():
            bhvType = limb.bhvType.get()
            if bhvType in [0,8]: # fk chain + reverse
                self.Setup_External_FKChain(limb)
            elif (bhvType == 1):
                self.Setup_External_IKPoleVector(limb)
            elif (bhvType == 2):
                self.Setup_External_FKIK(limb)
            elif (bhvType == 5):
                self.Setup_External_IKChain(limb)
            elif (bhvType == 6):
                self.Setup_External_FKBranch(limb)
            elif bhvType in [4, 7]: # LookAt, Empty
                self.Setup_External_SingleControl(limb)

#=========== TEARDOWN FUNCTIONALITY ====================================
    
    def Teardown_Controls(self):
        for control in self.ctrMng.GetAllControls():
            group = pm.listConnections(control.group)[0]
            if group.groupType.get() == 2: # Distance
                for attr in ['.rx', '.ry', '.rz', '.sx', '.sy', '.sz']:
                    pm.setAttr(control + attr, l=0, k=1, cb=1)
            pm.xform(control, t=[0,0,0], ro=[0,0,0], s=[1,1,1])
            if group.groupType.get() == 2: # Distance
                for attr in ['.tx', '.ty', '.tz']:
                    pm.setAttr(control + attr, l=1, k=0, cb=0)
        pm.refresh() # Forces IK Handles to re-evaluate
    
    def Remove_Constraints(self):
        pm.delete(pm.ls(type='ikHandle'))
        pm.delete(pm.ls(type='parentConstraint'))
        pm.delete(pm.ls(type='pointConstraint'))
        pm.delete(pm.ls(type='orientConstraint'))
        pm.delete(pm.ls(type='scaleConstraint'))
        pm.delete(pm.ls(type='aimConstraint'))
        pm.delete(pm.ls(type='plusMinusAverage')) # Delete FKIK extra nodes
        for limb in self.limbMng.GetAllLimbs(): 
            if (limb.bhvType.get() == 2):
                self.Teardown_FKIK(limb)
        #     if (limb.bhvType.get() == 3):
        #         self.Teardown_Constraint(limb)
    
    def Teardown_Groups(self):
        for joint in self.jntMng.GetAllJoints():
            group = pm.listConnections(joint.group)[0]
            pm.parent(group, joint)
        for limb in self.limbMng.GetAllLimbs():
            bhvType = limb.bhvType.get()
            if bhvType in self.bhvMng.distanceIndexes:
                group = pm.listConnections(limb.bhvDistanceGroup)[0]
                joint = pm.listConnections(group.distanceJoint)[0]
                pm.parent(group, joint)
                
        # for group in self.grpMng.GetAllGroups():
        #     grpType = group.groupType.get()
        #     if grpType in [4, 6]:
        #         joint = pm.listConnections(group.joint)[0]
        #         pm.parent(group, joint)
        #     elif grpType == 1:
        #         limb = pm.listConnections(group.limb)[0]
        #         joints = self.jntMng.GetLimbJoints(limb)
        #         joint = joints[len(joints)/2]
        #         pm.parent(group, joint)
        #     else:
        #         pm.parent(group, self.grpMng.bhvGroup)

#=========== FK ====================================
    
    # FK CHAIN / REVERSE CHAIN
    def Setup_Internal_FKChain(self, limb):
        groups = self.grpMng.GetLimbGroups(limb)
        for i in range(len(groups)-1, 0, -1):
            childGroup = groups[i]
            parentCtr = pm.listConnections(groups[i-1].control)[0]
            # parentCtr = self.ctrMng.GetGroupControl(groups[i-1])[0]
            pm.parent(childGroup, parentCtr)
        self.Bind_FK_Joints(limb)
        
    def Setup_External_FKChain(self, limb):
        parent = self.limbMng.GetLimbParent(limb)
        if parent:
            childGroup = self.grpMng.GetLimbGroups(limb)[0]
            index = limb.parentGroup.get()
            parentGroup = self.grpMng.GetLimbGroups(parent)[index]
            parentControl = pm.listConnections(parentGroup.control)[0]
            pm.parent(childGroup, parentControl)
            # parentCtrs = self.ctrMng.GetGroupControl(parentGroup)
            # if parentCtrs:
            #     pm.parent(childGroup, parentCtrs[0])

    # FK BRANCH
    def Setup_Internal_FKBranch(self, limb):
        self.Bind_FK_Joints(limb)
        
    def Setup_External_FKBranch(self, limb):
        parent = self.limbMng.GetLimbParent(limb)
        if parent:
            childGroup = self.grpMng.GetLimbGroups(limb)[0]
            index = limb.parentGroup.get()
            parentGroup = self.grpMng.GetLimbGroups(parent)[index]
            parentControl = pm.listConnections(parentGroup.control)[0]
            for childGroup in self.grpMng.GetLimbGroups(limb):
                pm.parent(childGroup, parentControl)

    def Bind_FK_Joints(self, limb):
        for joint in self.jntMng.GetLimbJoints(limb)[:-1]:
            # group = pm.listConnections(joint.bhvFKGroup)[0]
            group = pm.listConnections(joint.group)[0]
            ctr = pm.listConnections(group.control)[0]
            # ctr = self.ctrMng.GetGroupControl(group)
            pm.parentConstraint(ctr, joint, mo=1)

#=========== CONSTRAINT ====================================
    
    def Setup_Internal_Constraint(self, limb):
        targetLimbs = pm.listConnections(limb.bhvCstTargetLimb)
        if not targetLimbs:
            msg = 'Constraint Limb "%s" missing TARGET limb' % limb
            pm.confirmDialog(t='Constraint Error', m=msg, icon='warning', b='Ok')
            return
        parentLimb = self.limbMng.GetLimbParent(limb)
        if not parentLimb:
            msg = 'Constraint Limb "%s" missing PARENT limb' % limb
            pm.confirmDialog(t='Constraint Error', m=msg, icon='warning', b='Ok')
            return
        sourceIndex = limb.parentGroup.get()
        sourceJoint = self.jntMng.GetLimbJoints(parentLimb)[sourceIndex]
        targetLimb = targetLimbs[0]
        targetIndex = limb.bhvCstTargetJnt.get()
        targetJoint = self.jntMng.GetLimbJoints(targetLimb)[targetIndex]
        if sourceJoint == targetJoint:
            msg = 'Constraint Limb "%s" group parent and' % limb
            msg += ' target constraint joint CANNOT be the same'
            pm.confirmDialog(t='Constraint Error', m=msg, icon='warning', b='Ok')
            return
        for group in self.grpMng.GetLimbGroups(limb):
            joint = pm.listConnections(group.joint)[0]
            cstType = limb.bhvCstType.get()
            weight = group.weight.get()
            if cstType == 0:
                cst = pm.parentConstraint(sourceJoint, targetJoint, joint)
                pm.setAttr('%s.%sW0' % (cst, sourceJoint), 1-weight)
                pm.setAttr('%s.%sW1' % (cst, targetJoint), weight)
            elif cstType == 1:
                cst = pm.pointConstraint(sourceJoint, targetJoint, joint)
                pm.setAttr('%s.%sW0' % (cst, sourceJoint), 1-weight)
                pm.setAttr('%s.%sW1' % (cst, targetJoint), weight)
            elif cstType == 2:
                cst = pm.orientConstraint(sourceJoint, targetJoint, joint)
                pm.setAttr('%s.%sW0' % (cst, sourceJoint), 1-weight)
                pm.setAttr('%s.%sW1' % (cst, targetJoint), weight)
            elif cstType == 3:
                cst = pm.scaleConstraint(sourceJoint, targetJoint, joint)
                pm.setAttr('%s.%sW0' % (cst, sourceJoint), 1-weight)
                pm.setAttr('%s.%sW1' % (cst, targetJoint), weight)

    # def Teardown_Constraint(self, limb):
    #     for joint in self.jntMng.GetLimbJoints(limb):
    #         group = pm.listConnections(joint.bhvCstGroup)[0]
    #         pos = pm.xform(group, q=1, t=1, ws=1)
    #         rot = pm.xform(group, q=1, ro=1, ws=1)
    #         scale = pm.xform(group, q=1, s=1, ws=1)
    #         pm.xform(joint, t=pos, ro=rot, s=scale, ws=1)

#=========== IK ====================================
    
    def Setup_Internal_IKChain(self, limb):
        joints = self.jntMng.GetLimbJoints(limb)
        for i in range(len(joints)-1):
            startJoint = joints[i]
            endJoint = joints[i+1]
            pm.ikHandle(sj=startJoint, ee=endJoint)

    def Setup_External_IKChain(self, limb):
        targetLimb = pm.listConnections(limb.bhvIKTargetLimb)
        if not targetLimb:
            msg = 'IK Chain Limb "%s" missing TARGET limb' % limb
            pm.confirmDialog(t='IK CHAIN Error', m=msg, icon='warning', b='Ok')
            return
        targetLimb = targetLimb[0]
        sourceGroups = self.grpMng.GetLimbGroups(limb)[1:] # Skip First
        for sourceGroup in sourceGroups:
            index = sourceGroup.targetJoint.get()
            targetGroup = self.grpMng.GetLimbGroups(targetLimb)[index]
            targetControl = pm.listConnections(targetGroup.control)[0]
            childJoint = pm.listConnections(sourceGroup.joint)
            parentJoint = pm.listRelatives(childJoint, p=1)[0]
            handle = pm.listConnections(parentJoint.message)[0]
            handle.v.set(0)
            pm.parent(handle, targetControl)

    def Setup_Internal_IKPoleVector(self, limb):
        joints = self.jntMng.GetLimbJoints(limb)
        startJoint = joints[0]
        endJoint = joints[-1]
        handle = pm.ikHandle(sj=startJoint, ee=endJoint)[0]
        group = pm.listConnections(limb.bhvDistanceGroup)[0]
        control = pm.listConnections(group.control)[0]
        pm.poleVectorConstraint(control, handle)

    def Setup_External_IKPoleVector(self, limb):
        # PARENT IK HANDLE TO TARGET CONTROL 
        targetLimb = pm.listConnections(limb.bhvIKTargetLimb)
        if not targetLimb:
            msg = 'IK Pole Vector Limb "%s" missing TARGET limb' % limb
            pm.confirmDialog(t='IK POLE VECTOR Error', m=msg, icon='error', b='Ok')
            return
        targetLimb = targetLimb[0]
        groups = pm.listConnections(limb.bhvDistanceGroup)
        if not groups:
            return
        distGroup = groups[0]
        index = distGroup.targetJoint.get()
        targetGroup = self.grpMng.GetLimbGroups(targetLimb)[index]
        targetControl = pm.listConnections(targetGroup.control)[0]

        joints = self.jntMng.GetLimbJoints(limb)
        handle = pm.listConnections(joints[0].message)[0]
        handle.v.set(0)
        pm.parent(handle, targetControl)

        # PARENT IKPV Control
        parent = self.limbMng.GetLimbParent(limb)
        if parent:
            index = limb.parentGroup.get()
            parentGroup = self.grpMng.GetLimbGroups(parent)[index]
            parentControl = pm.listConnections(parentGroup.control)[0]
            pm.parent(distGroup, parentControl)
        else:
            pm.parent(distGroup, self.grpMng.bhvGroup)

#=========== FK IK ====================================
    
    def Setup_Internal_FKIK(self, limb):
        joints = self.jntMng.GetLimbJoints(limb)

        # FKIK SWITCH + Inverse node setup
        fkikGroup = pm.listConnections(limb.bhvFKIKSwitchGroup)[0]
        for attr in ['.tx', '.ty', '.tz', '.rx', '.ry', '.rz']:
            pm.setAttr(fkikGroup + attr, l=0, k=1, cb=0)
        pm.parent(fkikGroup, self.grpMng.bhvGroup)
        parentIndex = fkikGroup.targetJoint.get()
        pm.parentConstraint(joints[parentIndex], fkikGroup)
        fkikControl = pm.listConnections(fkikGroup.control)[0]
        if not fkikControl.hasAttr('fkikSwitch'):
            pm.addAttr(fkikControl, ln='fkikSwitch', at='float', min=0, max=1)
            pm.addAttr(fkikControl, ln='fkikInvert', dt='string')
            pm.setAttr(fkikControl.fkikSwitch, l=0, k=1, cb=1)

        invertFKIKNode = pm.createNode('plusMinusAverage')
        invertFKIKNode.input1D[0].set(1)
        invertFKIKNode.operation.set(2) # subtract
        pm.addAttr(invertFKIKNode, ln='fkikSwitch', dt='string')
        pm.connectAttr(fkikControl.fkikSwitch, invertFKIKNode.input1D[1])
        pm.connectAttr(fkikControl.fkikInvert, invertFKIKNode.fkikSwitch)

        # Create FKIK JOINTS + Bind
        fkJoints = pm.duplicate(joints, po=1, rc=1)
        ikJoints = pm.duplicate(joints, po=1, rc=1)
        pm.connectAttr(limb.bhvFKIK_FKJoint, fkJoints[0].limb)
        pm.connectAttr(limb.bhvFKIK_IKJoint, ikJoints[0].limb)

        for i in range(len(joints)):
            joint = joints[i]
            fkJoint = fkJoints[i]
            ikJoint = ikJoints[i]
            
            # Bind Constraint weights to switch
            cst = pm.parentConstraint(fkJoint, ikJoint, joint)
            pm.connectAttr(invertFKIKNode.output1D, cst + '.%sW0' % fkJoint)
            pm.connectAttr(fkikControl.fkikSwitch, cst + '.%sW1' % ikJoint)

            # Bind FK joint to FK Control
            # group = pm.listConnections(joint.bhvFKGroup)[0]
            group = pm.listConnections(joint.group)[0]
            ctr = pm.listConnections(group.control)[0]
            # ctr = self.ctrMng.GetGroupControl(group)
            # pm.parentConstraint(ctr, fkJoints, mo=1)
            pm.parentConstraint(ctr, fkJoint, mo=1)
            fkJoint.v.set(0)
            ikJoint.v.set(0)

        # Parent FK controls internally
        # groups = self.grpMng.GetLimbGroups(limb)
        groups = [pm.listConnections(j.group)[0] for j in joints]
        for i in range(len(groups)-1, 0, -1):
            childGroup = groups[i]
            parentCtr = pm.listConnections(groups[i-1].control)[0]
            # parentCtr = self.ctrMng.GetGroupControl(groups[i-1])[0]
            pm.parent(childGroup, parentCtr)

        # Create IK handle
        handle = pm.ikHandle(sj=ikJoints[0], ee=ikJoints[-1])[0]
        group = pm.listConnections(limb.bhvDistanceGroup)[0]
        control = pm.listConnections(group.control)[0]
        pm.poleVectorConstraint(control, handle)
    
    def Setup_External_FKIK(self, limb):
        joints = self.jntMng.GetLimbJoints(limb)

        # PARENT IK
        targetLimb = pm.listConnections(limb.bhvIKTargetLimb)
        if not targetLimb:
            msg = 'FK / IK Pole Vector Limb "%s" missing TARGET limb' % limb
            pm.confirmDialog(t='IK POLE VECTOR Error', m=msg, icon='error', b='Ok')
            return
        targetLimb = targetLimb[0]
        ikGroup = pm.listConnections(limb.bhvDistanceGroup)[0]
        index = ikGroup.targetJoint.get()
        targetGroup = self.grpMng.GetLimbGroups(targetLimb)[index]
        targetControl = pm.listConnections(targetGroup.control)[0]

        ikJoint = pm.listConnections(limb.bhvFKIK_IKJoint)[0]
        handle = pm.listConnections(ikJoint.message)[0]
        handle.v.set(0)
        pm.parent(handle, targetControl)

        # PARENT FK + DISTANCE CONTROL to target Control group
        fkGroup = pm.listConnections(joints[0].group)[0]
        parent = self.limbMng.GetLimbParent(limb)
        if parent:
            index = limb.parentGroup.get()
            parentGroup = self.grpMng.GetLimbGroups(parent)[index]
            # parentCtrs = self.ctrMng.GetGroupControl(parentGroup)
            parentCtrs = pm.listConnections(parentGroup.control)[0]
            if parentCtrs:
                pm.parent(fkGroup, parentCtrs[0])
                pm.parent(ikGroup, parentCtrs[0])

        # Setup Visibility on controls + external controls
        fkikGroup = pm.listConnections(limb.bhvFKIKSwitchGroup)[0]
        fkikControl = pm.listConnections(fkikGroup.control)[0]
        invertFKIKNode = pm.listConnections(fkikControl.fkikInvert)[0]
        for fk in pm.listConnections(fkikGroup.FKVisTargets):
            pm.connectAttr(invertFKIKNode.output1D, fk.v)
        for ik in pm.listConnections(fkikGroup.IKVisTargets):
            pm.connectAttr(fkikControl.fkikSwitch, ik.v)
        # pm.connectAttr(invertFKIKNode.output1D, fkGroup.v)
        # pm.connectAttr(fkikControl.fkikSwitch, ikGroup.v)
        

    def Teardown_FKIK(self, limb):
        pm.delete(pm.listConnections(limb.bhvFKIK_FKJoint))
        pm.delete(pm.listConnections(limb.bhvFKIK_IKJoint))
        fkikGroup = pm.listConnections(limb.bhvFKIKSwitchGroup)[0]
        fkikControl = pm.listConnections(fkikGroup.control)[0]
        pm.delete(pm.listConnections(fkikControl.fkikInvert))
        pm.disconnectAttr(fkikControl.fkikSwitch)
        for fk in pm.listConnections(fkikGroup.FKVisTargets):
            fk.v.set(1)
        for ik in pm.listConnections(fkikGroup.IKVisTargets):
            ik.v.set(1)

#=========== MISC ====================================
    
    def Setup_External_SingleControl(self, limb):
        parent = self.limbMng.GetLimbParent(limb)
        if parent:
            childGroup = self.grpMng.GetLimbGroups(limb)[0]
            index = limb.parentGroup.get()
            parentGroup = self.grpMng.GetLimbGroups(parent)[index]
            parentCtrs = pm.listConnections(parentGroup.control)[0]
            # parentCtrs = self.ctrMng.GetGroupControl(parentGroup)
            if parentCtrs:
                pm.parent(childGroup, parentCtrs[0])

    def Setup_Internal_LookAt(self, limb):
        joint = self.jntMng.GetLimbJoints(limb)[0]
        group = self.grpMng.GetLimbGroups(limb)[0]
        # control = self.ctrMng.GetGroupControl(group)
        control = pm.listConnections(group.control)[0]
        pm.aimConstraint(control, joint, mo=1)

