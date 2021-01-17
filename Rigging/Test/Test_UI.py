
import pymel.core as pm


class Test_UI:
    def __init__(self, limbMng, jntMng, bhvMng, grpMng, ctrMng, parent):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.bhvMng = bhvMng
        self.grpMng = grpMng
        self.ctrMng = ctrMng
        self.parent = parent
        self.logger = parent.logger

        self._Setup()

    def _Setup(self):
        pm.text(l="You're breathtaking!")


#=========== TAB FUNCTIONALITY ====================================
    
    def Setup_Editable(self):
        self.logger.info('\tTest > SETUP')
        self.Setup_Groups()
        self.Setup_Controls()
        self.Setup_Internal()
        self.Setup_External()
        pm.select(d=1)

    def Teardown_Editable(self):
        self.logger.info('\tTest > TEARDOWN\n')
        self.Teardown_Controls()
        self.Remove_Constraints()
        self.Teardown_Groups()

#=========== SETUP FUNCTIONALITY ====================================
    
    def Setup_Groups(self):
        for group in self.grpMng.GetAllGroups():
            for attr in ['.tx', '.ty', '.tz', '.rx', '.ry', '.rz']:
                pm.setAttr(group+attr, l=0)
            if group.groupType.get() == 1: # joint
                joint = pm.listConnections(group.joint)[0]
                limb = pm.listConnections(joint.limb)[0]
                pm.parent(group, limb)
            else:
                limb = pm.listConnections(group.limb)[0]
                pm.parent(group, limb)

    def Setup_Controls(self):
        for control in self.ctrMng.GetAllControls():
            group = pm.listConnections(control.group)[0]
            groupType = group.groupType.get()
            if groupType == 2: # Distance
                for attr in ['.tx', '.ty', '.tz']:
                    pm.setAttr(control + attr, l=0, k=1, cb=1)
            if groupType != 3: # Not FKIK
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
            elif (bhvType in self.bhvMng.fkikTypeIndexes):
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
            elif (bhvType in self.bhvMng.fkikTypeIndexes):
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
            bhvType = limb.bhvType.get()
            if bhvType in self.bhvMng.fkikTypeIndexes:
                self.Teardown_FKIK(limb)
            elif bhvType == 3:
                self.Teardown_Constraint(limb)
            if bhvType in self.bhvMng.fkTypeIndexes:
                joints = self.jntMng.GetLimbJoints(limb)
                if len(joints) >= 3: # Ignore last joint
                    lastJoint = joints[-1]
                    group = pm.listConnections(lastJoint.group)[0]
                    control = pm.listConnections(group.control) [0]
                    shape = pm.listRelatives(control, c=1, s=1) [0]
                    shape.v.set(1)
    
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
    
    # RELATIVE FK
    def Setup_Internal_RelativeFK(self, limb):
        # Dup original joints
        # Dup center joint
        # Reverse IK hier parenting
        # parent ik root to fk root joint
        # 
        pass

    def Setup_External_RelativeFK(self, limb):
        pass


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
        childGroup = self.grpMng.GetLimbGroups(limb)[0]
        self.ParentConstrainGroup(limb, childGroup)

    # FK BRANCH
    def Setup_Internal_FKBranch(self, limb):
        self.Bind_FK_Joints(limb)
        
    def Setup_External_FKBranch(self, limb):
        for childGroup in self.grpMng.GetLimbGroups(limb):
            self.ParentConstrainGroup(limb, childGroup)
        # parent = self.limbMng.GetLimbParent(limb)
        # if parent:
        #     childGroup = self.grpMng.GetLimbGroups(limb)[0]
        #     index = limb.parentJoint.get()
        #     parentGroup = self.grpMng.GetLimbGroups(parent)[index]
        #     parentControl = pm.listConnections(parentGroup.control)[0]
        #     for childGroup in self.grpMng.GetLimbGroups(limb):
        #         pm.parent(childGroup, parentControl)

    def Bind_FK_Joints(self, limb):
        joints = self.jntMng.GetLimbJoints(limb)
        bhvType = limb.bhvType.get()
        if (bhvType != 6) and (len(joints) >= 3): # Ignore last joint
            lastJoint = joints[-1]
            group = pm.listConnections(lastJoint.group)[0]
            control = pm.listConnections(group.control)[0]
            shape = pm.listRelatives(control, c=1, s=1)[0]
            shape.v.set(0)
            joints = joints[:-1]
        for joint in joints:
            # group = pm.listConnections(joint.bhvFKGroup)[0]
            group = pm.listConnections(joint.group)[0]
            ctr = pm.listConnections(group.control)[0]
            # ctr = self.ctrMng.GetGroupControl(group)
            pm.parentConstraint(ctr, joint, mo=1)

#=========== CONSTRAINT ====================================
    
    def Setup_Internal_Constraint(self, limb):
        # targetLimbs = pm.listConnections(limb.bhvCstTargetLimb)
        targetLimbs = pm.listConnections(limb.bhvTargetLimb)
        if not targetLimbs:
            msg = 'ERROR: Constraint Limb "%s" missing TARGET limb' % limb
            msg += '\n(Please set target limb in BEHAVIOR Tab)'
            pm.confirmDialog(t='Constraint Error', m=msg, icon='warning', b='Ok')
            return
        parentLimb = self.limbMng.GetLimbParent(limb)
        if not parentLimb:
            msg = 'ERROR: Constraint Limb "%s" missing PARENT limb' % limb
            msg += '\n(Please PARENT limb to another limb in BEHAVIOR Tab)'
            pm.confirmDialog(t='Constraint Error', m=msg, icon='warning', b='Ok')
            return
        sourceIndex = limb.parentJoint.get()
        sourceJoint = self.jntMng.GetLimbJoints(parentLimb)[sourceIndex]
        targetLimb = targetLimbs[0]
        # targetIndex = limb.bhvCstTargetJnt.get()
        targetIndex = limb.bhvTargetJoint.get()
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

    def Teardown_Constraint(self, limb):
        for joint in self.jntMng.GetLimbJoints(limb):
            group = pm.listConnections(joint.group)[0]
            pos = pm.xform(group, q=1, t=1, ws=1)
            rot = pm.xform(group, q=1, ro=1, ws=1)
            scale = pm.xform(group, q=1, s=1, ws=1)
            pm.xform(joint, t=pos, ro=rot, s=scale, ws=1)

#=========== IK ====================================
    
    def Setup_Internal_IKChain(self, limb):
        joints = self.jntMng.GetLimbJoints(limb)
        for i in range(len(joints)-1):
            startJoint = joints[i]
            endJoint = joints[i+1]
            pm.ikHandle(sj=startJoint, ee=endJoint)

    def Setup_External_IKChain(self, limb):
        targetLimb = pm.listConnections(limb.bhvTargetLimb)
        if not targetLimb:
            msg = 'IK Chain Limb "%s" missing TARGET limb' % limb
            pm.confirmDialog(t='IK CHAIN Error', m=msg, icon='warning', b='Ok')
            return
        targetLimb = targetLimb[0]
        for sourceGroup in self.grpMng.GetLimbGroups(limb)[1:]: # Skip First
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
        # targetLimb = pm.listConnections(limb.bhvIKTargetLimb)
        targetLimb = pm.listConnections(limb.bhvTargetLimb)
        if not targetLimb:
            msg = 'IK Pole Vector Limb "%s" missing TARGET limb' % limb
            pm.confirmDialog(t='IK POLE VECTOR Error', m=msg, icon='error', b='Ok')
            return
        targetLimb = targetLimb[0]
        groups = pm.listConnections(limb.bhvDistanceGroup)
        if not groups:
            return
        distGroup = groups[0]
        # index = distGroup.targetJoint.get()
        index = limb.bhvTargetJoint.get()
        targetGroup = self.grpMng.GetLimbGroups(targetLimb)[index]
        targetControl = pm.listConnections(targetGroup.control)[0]

        joints = self.jntMng.GetLimbJoints(limb)
        handle = pm.listConnections(joints[0].message)[0]
        handle.v.set(0)
        pm.parent(handle, targetControl)

        # PARENT IKPV Control
        parent = self.limbMng.GetLimbParent(limb)
        if parent:
            index = limb.parentJoint.get()
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
        bindSources = pm.listConnections(fkikGroup.bindSource)
        if bindSources:
            fkikGroup.v.set(0)
            fkikGroup = bindSources[0]
            fkikControl = pm.listConnections(fkikGroup.control)[0]
        else:
            # Source FKIK Sets up it's own
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

        # Setup Invert Node
        invertNodes = pm.listConnections(fkikControl.fkikInvert)
        if invertNodes:
            invertFKIKNode = invertNodes[0]
        else:
            invertFKIKNode = pm.createNode('plusMinusAverage')
            invertFKIKNode.input1D[0].set(1)
            invertFKIKNode.operation.set(2) # subtract
            pm.addAttr(invertFKIKNode, ln='fkikSwitch', dt='string')
            pm.connectAttr(fkikControl.fkikSwitch, invertFKIKNode.input1D[1])
            pm.connectAttr(fkikControl.fkikInvert, invertFKIKNode.fkikSwitch)

        # Create FKIK JOINTS
        fkJoints = pm.duplicate(joints, po=1, rc=1)
        ikJoints = pm.duplicate(joints, po=1, rc=1)
        pm.connectAttr(limb.bhvFKIK_FKJoint, fkJoints[0].limb)
        pm.connectAttr(limb.bhvFKIK_IKJoint, ikJoints[0].limb)

        # Bind FKIK Joints
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

        # Create IK PV handle
        if limb.bhvType.get() == 2:
            handle = pm.ikHandle(sj=ikJoints[0], ee=ikJoints[-1])[0]
            group = pm.listConnections(limb.bhvDistanceGroup)[0]
            control = pm.listConnections(group.control)[0]
            pm.poleVectorConstraint(control, handle)

        # Create IK Chain
        elif limb.bhvType.get() == 9:
            for i in range(len(joints)-1):
                startJoint = joints[i]
                endJoint = joints[i+1]
                pm.ikHandle(sj=startJoint, ee=endJoint)
    
    def Setup_External_FKIK(self, limb):
        joints = self.jntMng.GetLimbJoints(limb)

        # PARENT IK
        # targetLimb = pm.listConnections(limb.bhvIKTargetLimb)
        targetLimb = pm.listConnections(limb.bhvTargetLimb)
        if not targetLimb:
            msg = 'FK / IK Pole Vector Limb "%s" missing TARGET limb' % limb
            pm.confirmDialog(t='IK POLE VECTOR Error', m=msg, icon='error', b='Ok')
            return
        targetLimb = targetLimb[0]

        # IK PV
        if limb.bhvType.get() == 2:
            ikGroup = pm.listConnections(limb.bhvDistanceGroup)[0]
            index = limb.bhvTargetJoint.get()
            targetGroup = self.grpMng.GetLimbGroups(targetLimb)[index]
            targetControl = pm.listConnections(targetGroup.control)[0]

            ikJoint = pm.listConnections(limb.bhvFKIK_IKJoint)[0]
            handle = pm.listConnections(ikJoint.message)[0]
            handle.v.set(0)
            pm.parent(handle, targetControl)

        # IK CHAIN
        elif limb.bhvType.get() == 9:
            sourceGroups = self.grpMng.GetLimbIKGroups(limb)[1:] # Skip First
            for sourceGroup in sourceGroups:
                index = sourceGroup.targetJoint.get()
                targetGroup = self.grpMng.GetLimbGroups(targetLimb)[index]
                targetControl = pm.listConnections(targetGroup.control)[0]
                childJoint = pm.listConnections(sourceGroup.joint)
                parentJoint = pm.listRelatives(childJoint, p=1)[0]
                handle = pm.listConnections(parentJoint.message)[0]
                handle.v.set(0)
                pm.parent(handle, targetControl)

        # PARENT FK + DISTANCE CONTROL to target Control group
        fkGroup = pm.listConnections(joints[0].group)[0]
        parent = self.limbMng.GetLimbParent(limb)
        if parent:
            index = limb.parentJoint.get()
            parentGroup = self.grpMng.GetLimbGroups(parent)[index]
            # parentCtrs = self.ctrMng.GetGroupControl(parentGroup)
            parentCtrs = pm.listConnections(parentGroup.control)[0]
            if parentCtrs:
                pm.parent(fkGroup, parentCtrs[0])
                pm.parent(ikGroup, parentCtrs[0])

        # Setup Visibility on controls + external controls
        fkikGroup = pm.listConnections(limb.bhvFKIKSwitchGroup)[0]
        bindSources = pm.listConnections(fkikGroup.bindSource)
        if bindSources:
            return
        fkikControl = pm.listConnections(fkikGroup.control)[0]
        invertFKIKNode = pm.listConnections(fkikControl.fkikInvert)[0]
        fkVisTargets = pm.listConnections(fkikGroup.FKVisTargets)
        ikVisTargets = pm.listConnections(fkikGroup.IKVisTargets)
        for target in pm.listConnections(fkikGroup.bindTargets):
            fkVisTargets += pm.listConnections(target.FKVisTargets)
            ikVisTargets += pm.listConnections(target.IKVisTargets)
        for fk in fkVisTargets:
            pm.connectAttr(invertFKIKNode.output1D, fk.v)
        for ik in ikVisTargets:
            pm.connectAttr(fkikControl.fkikSwitch, ik.v)
        
    def Teardown_FKIK(self, limb):
        pm.delete(pm.listConnections(limb.bhvFKIK_FKJoint))
        pm.delete(pm.listConnections(limb.bhvFKIK_IKJoint))
        fkikGroup = pm.listConnections(limb.bhvFKIKSwitchGroup)[0]
        bindSources = pm.listConnections(fkikGroup.bindSource)
        if bindSources:
            fkikGroup.v.set(1)
            fkikGroup = bindSources[0]
        fkikControl = pm.listConnections(fkikGroup.control)[0]
        pm.delete(pm.listConnections(fkikControl.fkikInvert))
        pm.disconnectAttr(fkikControl.fkikSwitch)
        for fk in pm.listConnections(fkikGroup.FKVisTargets):
            fk.v.set(1)
        for ik in pm.listConnections(fkikGroup.IKVisTargets):
            ik.v.set(1)

#=========== MISC ====================================
    
    def Setup_External_SingleControl(self, limb):
        childGroup = self.grpMng.GetLimbGroups(limb)[0]
        self.ParentConstrainGroup(limb, childGroup)
        # parent = self.limbMng.GetLimbParent(limb)
        # if parent:
        #     childGroup = self.grpMng.GetLimbGroups(limb)[0]
        #     index = limb.parentJoint.get()
        #     parentGroup = self.grpMng.GetLimbGroups(parent)[index]
        #     parentCtrs = pm.listConnections(parentGroup.control)[0]
        #     if parentCtrs:
        #         pm.parent(childGroup, parentCtrs[0])

    def Setup_Internal_LookAt(self, limb):
        joint = self.jntMng.GetLimbJoints(limb)[0]
        group = self.grpMng.GetLimbGroups(limb)[0]
        # control = self.ctrMng.GetGroupControl(group)
        control = pm.listConnections(group.control)[0]
        pm.aimConstraint(control, joint, mo=1)

    def ParentConstrainGroup(self, limb, childGroup):
        parent = self.limbMng.GetLimbParent(limb)
        if not parent:
            return 
        if parent.bhvType.get() in self.bhvMng.emptyLimbIndexes:
            group = self.grpMng.GetLimbGroups(parent)[0]
            parentJoint = pm.listConnections(group.control)[0]
        else:
            index = limb.parentJoint.get()
            parentJoint = self.jntMng.GetLimbJoints(parent)[index]
        pm.parentConstraint(parentJoint, childGroup, mo=1)   

