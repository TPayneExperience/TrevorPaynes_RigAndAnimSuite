
import pymel.core as pm

import Common.Utilities as util
reload(util)

class Test_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
        self.bhvMng = parent.bhvMng
        self.grpMng = parent.grpMng
        self.ctrMng = parent.ctrMng
        self.logger = parent.logger

        self._Setup()

    def _Setup(self):
        pm.text(l="You're breathtaking!")


#=========== TAB FUNCTIONALITY ====================================
    
    def Setup_Editable(self):
        self.logger.info('Rigging > Test SETUP')
        self.Setup_Groups()
        enabledLimbs = []
        for limb in self.limbMng.GetAllLimbs():
            if self._SkipLimb(limb):
                self.bhvMng.Teardown_LimbGroupVisibility(limb)
            else:
                enabledLimbs.append(limb)
        self.Setup_Controls(enabledLimbs)
        self.Setup_Internal(enabledLimbs)
        self.Setup_External(enabledLimbs)
        self.Setup_Internal_MayaControllers(enabledLimbs)
        self.Setup_External_MayaControllers(enabledLimbs)
        pm.select(d=1)

    def Teardown_Editable(self):
        self.logger.info('Rigging > Test TEARDOWN\n')
        enabledLimbs = []
        for limb in self.limbMng.GetAllLimbs():
            if self._SkipLimb(limb):
                self.bhvMng.Setup_LimbGroupVisibility(limb)
            else:
                enabledLimbs.append(limb)
        self.Teardown_MayaControllers()
        self.Teardown_Controls(enabledLimbs)
        self.Remove_Constraints()
        self.Teardown_Groups()

#=========== SETUP FUNCTIONALITY ====================================
    
    def Setup_Groups(self):
        self.logger.debug('\tTest_UI > Setup_Groups')
        for group in self.grpMng.GetAllGroups():
            util.ChannelBoxAttrs(group, 1, 1)
            if group.groupType.get() == 1: # joint
                joint = pm.listConnections(group.joint)[0]
                limb = pm.listConnections(joint.limb)[0]
                pm.parent(group, limb)

    def Setup_Controls(self, limbs):
        self.logger.debug('\tTest_UI > Setup_Controls')
        for control in self.ctrMng.GetAllControls():
            group = pm.listConnections(control.group)[0]
            pm.makeIdentity(control, a=1, t=1, r=1, s=1)
            pos = pm.xform(group, q=1, t=1)
            pm.move(pos[0], pos[1], pos[2], 
                        control.scalePivot, 
                        control.rotatePivot, 
                        a=1)
        for limb in limbs:
            pos = limb.channelBoxJointCtrPos.get()
            rot = limb.channelBoxJointCtrRot.get()
            scale = limb.channelBoxJointCtrScale.get()
            for group in self.bhvMng.GetJointGroups(limb):
                control = pm.listConnections(group.control)[0]
                util.ChannelBoxAttrs(control, pos, rot, scale)
            attrs = []
            pos = limb.channelBoxLimbCtrPos.get()
            rot = limb.channelBoxLimbCtrRot.get()
            scale = limb.channelBoxLimbCtrScale.get()
            for group in self.bhvMng.GetLimbGroups(limb):
                control = pm.listConnections(group.control)[0]
                util.ChannelBoxAttrs(control, pos, rot, scale)
            
    def Setup_Internal(self, limbs):
        self.logger.debug('\tTest_UI > Setup_Internal')
        for limb in limbs:
            bhvType = limb.bhvType.get()
            if bhvType in [0, 8]: # fk chain + reverse
                self.Setup_Internal_FKChain(limb)
            elif (bhvType == 1):
                self.Setup_Internal_IKPoleVector(limb)
            # elif (bhvType in self.bhvMng.fkikTypeIndexes):
            #     self.Setup_Internal_FKIK(limb)
            elif (bhvType == 3):
                self.Setup_Internal_Constraint(limb)
            elif (bhvType == 4):
                self.Setup_Internal_LookAt(limb)
            elif (bhvType == 5):
                self.Setup_Internal_IKChain(limb)
            elif (bhvType == 6):
                self.Setup_Internal_FKBranch(limb)
            elif (bhvType == 10):
                self.Setup_Internal_RelativeFK(limb)

    def Setup_External(self, limbs):
        self.logger.debug('\tTest_UI > Setup_External')
        for limb in limbs:
            bhvType = limb.bhvType.get()
            if bhvType in [0,8]: # fk chain + reverse
                self.Setup_External_FKChain(limb)
            elif (bhvType == 1):
                self.Setup_External_IKPoleVector(limb)
            # elif (bhvType in self.bhvMng.fkikTypeIndexes):
            #     self.Setup_External_FKIK(limb)
            elif (bhvType == 5):
                self.Setup_External_IKChain(limb)
            elif (bhvType == 6):
                self.Setup_External_FKBranch(limb)
            elif bhvType in [4, 7]: # LookAt, Empty
                self.Setup_External_SingleControl(limb)
            elif (bhvType == 10):
                self.Setup_External_RelativeFK(limb)

    def Setup_Internal_MayaControllers(self, limbs):
        for limb in limbs:
            groups = self.bhvMng.GetJointGroups(limb)
            bhvType = limb.bhvType.get()
            if bhvType in self.bhvMng.reverseTypeIndexes:
                groups = groups[::-1]
            if bhvType in self.bhvMng.omitLastJointTypes:
                groups = groups[:-1]
            controls = []
            for group in groups:
                controls += pm.listConnections(group.control)
            for group in self.bhvMng.GetLimbGroups(limb):
                controls += pm.listConnections(group.control)
            pm.controller(controls, g=1)

    def Setup_External_MayaControllers(self, limbs):
        for limb in limbs:
            parent = pm.listConnections(limb.limbParent)
            if not parent:
                continue
            parent = parent[0]
            index = limb.limbParentJoint.get()
            parentGroups = self.bhvMng.GetJointGroups(parent)
            parentGroup = parentGroups[index]
            parentControl = pm.listConnections(parentGroup.control)
            jointGroups = self.bhvMng.GetJointGroups(limb)
            bhvType = limb.bhvType.get()
            if bhvType in self.bhvMng.reverseTypeIndexes:
                jointGroups = jointGroups[::-1]
            if bhvType in self.bhvMng.omitLastJointTypes:
                jointGroups = jointGroups[:-1]
            controls = []
            for group in jointGroups:
                controls += pm.listConnections(group.control)
            for group in self.bhvMng.GetLimbGroups(limb):
                controls += pm.listConnections(group.control)
            pm.controller(controls, parentControl, p=1)

    def _SkipLimb(self, limb):
        # if limb has vis parent
        parent = pm.listConnections(limb.visParent)
        if parent:
            parent = parent[0]
            parentBhvType = parent.bhvType.get()
            visBhvType = limb.visParentBhvType.get()
            # FK / Empty
            if visBhvType == 0: 
                bhvFilter = self.bhvMng.emptyLimbIndexes
                bhvFilter += self.bhvMng.fkTypeIndexes
                if parentBhvType not in bhvFilter:
                    return True
            # IK
            elif visBhvType == 1:
                if parentBhvType not in self.bhvMng.ikTypeIndexes:
                    return True
            # Look At
            elif visBhvType == 2:
                if parentBhvType not in self.bhvMng.lookAtTypeIndexes:
                    return True
            # Constraint
            elif visBhvType == 3:
                if parentBhvType not in self.bhvMng.cstTypeIndexes:
                    return True
            # RFK
            elif visBhvType == 4:
                if parentBhvType not in self.bhvMng.rfkTypeIndexes:
                    return True
        return False

#=========== TEARDOWN FUNCTIONALITY ====================================
    
    def Teardown_Controls(self, limbs):
        self.logger.debug('\tTest_UI > Teardown_Controls')
        for limb in limbs:
            groups = self.bhvMng.GetJointGroups(limb)
            groups += self.bhvMng.GetLimbGroups(limb)
            for group in groups:
                control = pm.listConnections(group.control)[0]
                util.ChannelBoxAttrs(control, t=1, r=1, s=1)
                util.ResetAttrs(control)
        pm.refresh() # Forces IK Handles to re-evaluate
    
    def Remove_Constraints(self):
        self.logger.debug('\tTest_UI > Remove_Constraints')
        pm.delete(pm.ls(type='ikHandle'))
        pm.delete(pm.ls(type='parentConstraint'))
        pm.delete(pm.ls(type='pointConstraint'))
        pm.delete(pm.ls(type='orientConstraint'))
        pm.delete(pm.ls(type='scaleConstraint'))
        pm.delete(pm.ls(type='aimConstraint'))
        pm.delete(pm.ls(type='multiplyDivide')) # Delete FKIK extra nodes
        for limb in self.limbMng.GetAllLimbs(): 
            bhvType = limb.bhvType.get()
            if bhvType in self.bhvMng.cstTypeIndexes:
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
        self.logger.debug('\tTest_UI > Teardown_Groups')
        for joint in self.jntMng.GetAllJoints():
            group = pm.listConnections(joint.group)[0]
            parent = pm.listRelatives(group, p=1)
            if parent and parent[0] != joint:
                pm.parent(group, joint)
           
    def Teardown_MayaControllers(self):
        ctrs = pm.ls(type='controller')
        pm.delete(ctrs)
     
#=========== FK ====================================
    
    # RELATIVE FK - RFK
    def Setup_Internal_RelativeFK(self, limb):
        self.logger.debug('\tTest_UI > Setup_Internal_RelativeFK')
        # Con
        
        groups = self.bhvMng.GetJointGroups(limb)
        if limb.bhvType.get() in self.bhvMng.reverseTypeIndexes:
            groups = groups[::-1]
        controls = []
        for i in range(len(groups)-1):
            childGroup = groups[i+1]
            parentCtr = pm.listConnections(groups[i].control)[0]
            pm.parent(childGroup, parentCtr)
            controls.append(parentCtr)
        self.Bind_FK_Joints(limb)
        
        # Connect root control to rotate children
        rootCtr = controls[0]
        multNode = pm.createNode('multiplyDivide')
        pm.connectAttr(rootCtr.rotate, multNode.input1)
        scalar = 1.0/max(len(controls)-2, 1)
        multNode.input2.set(scalar, scalar, scalar)
        for childControl in controls[1:]:
            pm.connectAttr(multNode.output, childControl.rotate)

    def Setup_External_RelativeFK(self, limb):
        self.logger.debug('\tTest_UI > Setup_External_RelativeFK')
        groups = self.bhvMng.GetJointGroups(limb)
        if limb.bhvType.get() in self.bhvMng.reverseTypeIndexes:
            groups = groups[::-1]
        self.ParentConstrainGroup(limb, groups[0])


    # FK CHAIN / REVERSE CHAIN
    def Setup_Internal_FKChain(self, limb):
        self.logger.debug('\tTest_UI > Setup_Internal_FKChain')
        groups = self.bhvMng.GetJointGroups(limb)
        if limb.bhvType.get() in self.bhvMng.reverseTypeIndexes:
            groups = groups[::-1]
        for i in range(len(groups)-1):
            childGroup = groups[i+1]
            parentCtr = pm.listConnections(groups[i].control)[0]
            pm.parent(childGroup, parentCtr)
        self.Bind_FK_Joints(limb)
        
    def Setup_External_FKChain(self, limb):
        self.logger.debug('\tTest_UI > Setup_External_FKChain')
        childGroup = self.bhvMng.GetJointGroups(limb)[0]
        self.ParentConstrainGroup(limb, childGroup)

    # FK BRANCH
    def Setup_Internal_FKBranch(self, limb):
        self.logger.debug('\tTest_UI > Setup_Internal_FKBranch')
        self.Bind_FK_Joints(limb)
        
    def Setup_External_FKBranch(self, limb):
        self.logger.debug('\tTest_UI > Setup_External_FKBranch')
        for childGroup in self.bhvMng.GetJointGroups(limb):
            self.ParentConstrainGroup(limb, childGroup)
        # parent = self.limbMng.GetLimbParent(limb)
        # if parent:
        #     childGroup = self.grpMng.GetLimbGroups(limb)[0]
        #     index = limb.limbParentJoint.get()
        #     parentGroup = self.grpMng.GetLimbGroups(parent)[index]
        #     parentControl = pm.listConnections(parentGroup.control)[0]
        #     for childGroup in self.grpMng.GetLimbGroups(limb):
        #         pm.parent(childGroup, parentControl)

    def Bind_FK_Joints(self, limb):
        self.logger.debug('\tTest_UI > Bind_FK_Joints')
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
        self.logger.debug('\tTest_UI > Setup_Internal_Constraint')
        # targetLimbs = pm.listConnections(limb.bhvCstTargetLimb)
        targetLimbs = pm.listConnections(limb.bhvParent)
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
        sourceIndex = limb.limbParentJoint.get()
        sourceJoint = self.jntMng.GetLimbJoints(parentLimb)[sourceIndex]
        targetLimb = targetLimbs[0]
        # targetIndex = limb.bhvCstTargetJnt.get()
        targetIndex = limb.bhvParentJoint.get()
        targetJoint = self.jntMng.GetLimbJoints(targetLimb)[targetIndex]
        if sourceJoint == targetJoint:
            msg = 'Constraint Limb "%s" group parent and' % limb
            msg += ' target constraint joint CANNOT be the same'
            pm.confirmDialog(t='Constraint Error', m=msg, icon='warning', b='Ok')
            return

        skipPosX = not limb.cstPosX.get()
        skipPosY = not limb.cstPosY.get()
        skipPosZ = not limb.cstPosZ.get()
        skipRotX = not limb.cstRotX.get()
        skipRotY = not limb.cstRotY.get()
        skipRotZ = not limb.cstRotZ.get()
        
        for group in self.bhvMng.GetJointGroups(limb):
            joint = pm.listConnections(group.joint)[0]
            cstType = limb.bhvCstType.get()
            weight = group.weight.get()
            if cstType == 0:
                cst = pm.orientConstraint(sourceJoint, targetJoint, joint)
                pm.setAttr('%s.%sW0' % (cst, sourceJoint), 1-weight)
                pm.setAttr('%s.%sW1' % (cst, targetJoint), weight)
                if skipRotX: pm.orientConstraint(cst, e=1, sk='x')
                if skipRotY: pm.orientConstraint(cst, e=1, sk='y')
                if skipRotZ: pm.orientConstraint(cst, e=1, sk='z')
            if cstType == 1:
                cst = pm.parentConstraint(sourceJoint, targetJoint, joint)
                pm.setAttr('%s.%sW0' % (cst, sourceJoint), 1-weight)
                pm.setAttr('%s.%sW1' % (cst, targetJoint), weight)
                if skipPosX: pm.parentConstraint(cst, e=1, st='x')
                if skipPosY: pm.parentConstraint(cst, e=1, st='y')
                if skipPosZ: pm.parentConstraint(cst, e=1, st='z')
                if skipRotX: pm.parentConstraint(cst, e=1, sr='x')
                if skipRotY: pm.parentConstraint(cst, e=1, sr='y')
                if skipRotZ: pm.parentConstraint(cst, e=1, sr='z')
            if cstType == 2:
                cst = pm.pointConstraint(sourceJoint, targetJoint, joint)
                pm.setAttr('%s.%sW0' % (cst, sourceJoint), 1-weight)
                pm.setAttr('%s.%sW1' % (cst, targetJoint), weight)
                if skipPosX: pm.pointConstraint(cst, e=1, sk='x')
                if skipPosY: pm.pointConstraint(cst, e=1, sk='y')
                if skipPosZ: pm.pointConstraint(cst, e=1, sk='z')
            if cstType == 3:
                cst = pm.scaleConstraint(sourceJoint, targetJoint, joint)
                pm.setAttr('%s.%sW0' % (cst, sourceJoint), 1-weight)
                pm.setAttr('%s.%sW1' % (cst, targetJoint), weight)
            

    def Teardown_Constraint(self, limb):
        self.logger.debug('\tTest_UI > Teardown_Constraint')
        for joint in self.jntMng.GetLimbJoints(limb):
            group = pm.listConnections(joint.group)[0]
            pos = pm.xform(group, q=1, t=1, ws=1)
            rot = pm.xform(group, q=1, ro=1, ws=1)
            scale = pm.xform(group, q=1, s=1, ws=1)
            pm.xform(joint, t=pos, ro=rot, s=scale, ws=1)

#=========== IK ====================================
    
    def Setup_Internal_IKChain(self, limb):
        self.logger.debug('\tTest_UI > Setup_Internal_IKChain')
        joints = self.jntMng.GetLimbJoints(limb)
        for i in range(len(joints)-1):
            startJoint = joints[i]
            endJoint = joints[i+1]
            pm.ikHandle(sj=startJoint, ee=endJoint)

    def Setup_External_IKChain(self, limb):
        self.logger.debug('\tTest_UI > Setup_External_IKChain')
        targetLimb = pm.listConnections(limb.bhvParent)
        if not targetLimb:
            msg = 'IK Chain Limb "%s" missing TARGET limb' % limb
            pm.confirmDialog(t='IK CHAIN Error', m=msg, icon='warning', b='Ok')
            return
        targetGroups = self.bhvMng.GetJointGroups(targetLimb[0])
        sourceGroups = self.bhvMng.GetJointGroups(limb)
        for sourceGroup in sourceGroups[1:]: # Skip First
            index = sourceGroup.targetJoint.get()
            targetGroup = targetGroups[index]
            targetControl = pm.listConnections(targetGroup.control)[0]
            childJoint = pm.listConnections(sourceGroup.joint)
            parentJoint = pm.listRelatives(childJoint, p=1)[0]
            handle = pm.listConnections(parentJoint.message)[0]
            handle.v.set(0)
            pm.parent(handle, targetControl)

    def Setup_Internal_IKPoleVector(self, limb):
        self.logger.debug('\tTest_UI > Setup_Internal_IKPoleVector')
        joints = self.jntMng.GetLimbJoints(limb)
        startJoint = joints[0]
        endJoint = joints[-1]
        handle = pm.ikHandle(sj=startJoint, ee=endJoint)[0]
        group = pm.listConnections(limb.bhvIKPVGroup)[0]
        control = pm.listConnections(group.control)[0]
        pm.poleVectorConstraint(control, handle)

    def Setup_External_IKPoleVector(self, limb):
        self.logger.debug('\tTest_UI > Setup_External_IKPoleVector')
        # PARENT IK HANDLE TO TARGET CONTROL 
        targetLimb = pm.listConnections(limb.bhvParent)
        if not targetLimb:
            msg = 'IK Pole Vector Limb "%s" missing TARGET limb' % limb
            pm.confirmDialog(t='IK POLE VECTOR Error', m=msg, icon='error', b='Ok')
            return
        targetLimb = targetLimb[0]
        groups = pm.listConnections(limb.bhvIKPVGroup)
        if not groups:
            return
        distGroup = groups[0]
        index = limb.bhvParentJoint.get()
        targetGroup = self.bhvMng.GetJointGroups(targetLimb)[index]
        targetControl = pm.listConnections(targetGroup.control)[0]

        joints = self.jntMng.GetLimbJoints(limb)
        handle = pm.listConnections(joints[0].message)[0]
        handle.v.set(0)
        pm.parent(handle, targetControl)

        # PARENT IKPV Control
        parent = self.limbMng.GetLimbParent(limb)
        if parent:
            index = limb.limbParentJoint.get()
            parentGroup = self.bhvMng.GetJointGroups(parent)[index]
            parentControl = pm.listConnections(parentGroup.control)[0]
            pm.parent(distGroup, parentControl)
        else:
            pm.parent(distGroup, limb)

#=========== MISC ====================================
    
    def Setup_External_SingleControl(self, limb):
        self.logger.debug('\tTest_UI > Setup_External_SingleControl')
        childGroup = self.bhvMng.GetJointGroups(limb)[0]
        self.ParentConstrainGroup(limb, childGroup)
        # parent = self.limbMng.GetLimbParent(limb)
        # if parent:
        #     childGroup = self.grpMng.GetLimbGroups(limb)[0]
        #     index = limb.limbParentJoint.get()
        #     parentGroup = self.grpMng.GetLimbGroups(parent)[index]
        #     parentCtrs = pm.listConnections(parentGroup.control)[0]
        #     if parentCtrs:
        #         pm.parent(childGroup, parentCtrs[0])

    def Setup_Internal_LookAt(self, limb):
        self.logger.debug('\tTest_UI > Setup_Internal_LookAt')
        joint = self.jntMng.GetLimbJoints(limb)[0]
        group = pm.listConnections(joint.group)[0]
        control = pm.listConnections(group.control)[0]
        pm.aimConstraint(control, joint, mo=1)

    def ParentConstrainGroup(self, limb, childGroup):
        self.logger.debug('\tTest_UI > ParentConstrainGroup')
        parent = self.limbMng.GetLimbParent(limb)
        if not parent:
            return 
        if parent.bhvType.get() in self.bhvMng.emptyLimbIndexes:
            group = pm.listConnections(limb.bhvEmptyGroup)[0]
            parentJoint = pm.listConnections(group.control)[0]
        else:
            index = limb.limbParentJoint.get()
            parentJoint = self.jntMng.GetLimbJoints(parent)[index]
        pm.parentConstraint(parentJoint, childGroup, mo=1)   

