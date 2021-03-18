
import pymel.core as pm

import Common.Utilities as util
reload(util)
import Data.Rig_Data as rigData
reload(rigData)


class Build_Manager:
    def __init__(self, parent):
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
        self.grpMng = parent.grpMng
        self.ctrMng = parent.ctrMng
        self.logger = parent.logger
        self.pfrs = parent

    def Setup_Rig(self):
        self.logger.info('BldMng > Test SETUP')
        self.pfrs.root.rigMode.set(1) # BUILDING Mode
        enabledLimbs = []
        limbs = []
        for rootLimb in self.limbMng.GetRootLimbs(self.pfrs.root):
            limbs += self.limbMng.GetLimbCreationOrder(rootLimb)
        for limb in limbs:
            if limb.enableLimb.get():
                enabledLimbs.append(limb)
            else:
                self.grpMng.Teardown_LimbGroupVisibility(limb)
        groups = []
        self.logger.debug('\tSetup Rig Limb Order:')
        for limb in enabledLimbs:
            self.logger.debug('\t\t' + str(limb))
            groups += self.grpMng.GetJointGroups(limb)
            groups += self.grpMng.GetLimbGroups(limb)
        self.Setup_Groups(groups)
        self.Setup_Controls(enabledLimbs, groups)
        self.Setup_Internal(enabledLimbs)
        self.Setup_External(enabledLimbs)
        self.Setup_Internal_MayaControllers(enabledLimbs)
        self.Setup_External_MayaControllers(enabledLimbs)
        pm.select(d=1)
        self.pfrs.root.rigMode.set(2) # ANIMATE Mode

    def Teardown_Rig(self):
        self.logger.info('BldMng > Test TEARDOWN\n')
        self.pfrs.root.rigMode.set(1) # BUILDING Mode
        enabledLimbs = []
        limbs = pm.listConnections(self.pfrs.root.jointLimbs)
        limbs += pm.listConnections(self.pfrs.root.emptyLimbs)
        for limb in limbs:
            if limb.enableLimb.get():
                enabledLimbs.append(limb)
            else:
                self.grpMng.Setup_LimbGroupVisibility(limb)
        self.Teardown_MayaControllers()
        pm.delete(pm.ls(type='multiplyDivide')) # Delete RFK extra nodes
        self.Teardown_Controls(enabledLimbs)
        self.Remove_Constraints()
        self.Teardown_Groups()
        self.pfrs.root.rigMode.set(0) # SETUP Mode

#=========== SETUP FUNCTIONALITY ====================================
    
    def Setup_Groups(self, groups):
        self.logger.debug('\tBldMng > Setup_Groups')
        for group in groups:
            if group.groupType.get() == 1: # joint
                joint = pm.listConnections(group.joint)[0]
                limb = pm.listConnections(joint.limb)[0]
                pm.parent(group, limb)

    def Setup_Controls(self, limbs, groups):
        self.logger.debug('\tBldMng > Setup_Controls')
        for group in groups:
            if group.groupType.get() == 2: # Skip IKPV
                limb = pm.listConnections(group.limb)[0]
                self.grpMng.UpdateIKPVCtr(limb)
                continue
            if group.groupType.get() == 4: # Skip Look At
                limb = pm.listConnections(group.limb)[0]
                self.grpMng.UpdateLookAtCtr(limb)
                continue
            control = pm.listConnections(group.control)[0]
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
            if limb.bhvType.get() in rigData.ROT_LOCK_OVERRIDE_BHV_INDEXES:
                rot = 1
            for joint in pm.listConnections(limb.joints):
                group = pm.listConnections(joint.group)[0]
                control = pm.listConnections(group.control)[0]
                util.ChannelBoxAttrs(control, pos, rot, scale, 0)
            pos = limb.channelBoxLimbCtrPos.get()
            rot = limb.channelBoxLimbCtrRot.get()
            scale = limb.channelBoxLimbCtrScale.get()
            if limb.bhvType.get() in rigData.POS_LOCK_OVERRIDE_BHV_INDEXES:
                pos = 1
            for group in self.grpMng.GetLimbGroups(limb):
                control = pm.listConnections(group.control)[0]
                util.ChannelBoxAttrs(control, pos, rot, scale, 0)
            
    def Setup_Internal(self, limbs):
        self.logger.debug('\tBldMng > Setup_Internal')
        for limb in limbs:
            self.logger.debug('\t\t' + str(limb))
            bhvType = limb.bhvType.get()
            if bhvType in rigData.FK_CHAIN_BHV_INDEXES:
                self.Setup_Internal_FKChain(limb)
            elif bhvType in rigData.IK_PV_BHV_INDEXES:
                self.Setup_Internal_IKPoleVector(limb)
            elif bhvType in rigData.CST_BHV_INDEXES:
                self.Setup_Internal_Constraint(limb)
            elif bhvType in rigData.LOOK_AT_BHV_INDEXES:
                self.Setup_Internal_LookAt(limb)
            elif bhvType in rigData.FK_BRANCH_BHV_INDEXES:
                self.Setup_Internal_FKBranch(limb)
            elif bhvType in rigData.RFK_BHV_INDEXES:
                self.Setup_Internal_RelativeFK(limb)

    def Setup_External(self, limbs):
        self.logger.debug('\tBldMng > Setup_External')
        for limb in limbs:
            self.logger.debug('\t\t' + str(limb))
            bhvType = limb.bhvType.get()
            if bhvType in rigData.FK_CHAIN_BHV_INDEXES:
                self.Setup_External_FKChain(limb)
            elif bhvType in rigData.IK_PV_BHV_INDEXES:
                self.Setup_External_IKPoleVector(limb)
            elif bhvType in rigData.CST_BHV_INDEXES:
                self.Setup_External_Constraint(limb)
            elif bhvType in rigData.FK_BRANCH_BHV_INDEXES:
                self.Setup_External_FKBranch(limb)
            elif bhvType in rigData.LOOK_AT_BHV_INDEXES:
                self.Setup_External_SingleControl(limb)
            elif bhvType in rigData.EMPTY_BHV_INDEXES:
                self.Setup_External_Empty(limb)
            elif bhvType in rigData.RFK_BHV_INDEXES:
                self.Setup_External_RelativeFK(limb)

    def Setup_Internal_MayaControllers(self, limbs):
        self.logger.debug('\tBldMng > Setup_Internal_MayaControllers')
        for limb in limbs:
            groups = self.grpMng.GetJointGroups(limb)
            bhvType = limb.bhvType.get()
            if bhvType in rigData.REVERSE_BHV_INDEXES:
                groups = groups[::-1]
            # if bhvType in rigData.OMIT_LAST_JOINT_BHV_INDEXES:
            #     groups = groups[:-1]
            controls = []
            for group in groups:
                if group.enableGroup.get():
                    controls += pm.listConnections(group.control)
            for group in self.grpMng.GetLimbGroups(limb):
                if group.enableGroup.get():
                    controls += pm.listConnections(group.control)
            pm.controller(controls, g=1)

    def Setup_External_MayaControllers(self, limbs):
        self.logger.debug('\tBldMng > Setup_External_MayaControllers')
        for limb in limbs:
            parent = pm.listConnections(limb.limbParent)
            if not parent:
                continue
            parent = parent[0]
            index = limb.limbParentJoint.get()
            parentGroups = self.grpMng.GetJointGroups(parent)
            parentGroup = parentGroups[index]
            parentControl = pm.listConnections(parentGroup.control)
            jointGroups = self.grpMng.GetJointGroups(limb)
            bhvType = limb.bhvType.get()
            if bhvType in rigData.REVERSE_BHV_INDEXES:
                jointGroups = jointGroups[::-1]
            # if bhvType in rigData.OMIT_LAST_JOINT_BHV_INDEXES:
            #     jointGroups = jointGroups[:-1]
            controls = []
            for group in jointGroups:
                if group.enableGroup.get():
                    controls += pm.listConnections(group.control)
            for group in self.grpMng.GetLimbGroups(limb):
                if group.enableGroup.get():
                    controls += pm.listConnections(group.control)
            pm.controller(controls, parentControl, p=1)

#=========== TEARDOWN FUNCTIONALITY ====================================
    
    def Teardown_Controls(self, limbs):
        self.logger.debug('\tBldMng > Teardown_Controls')
        for limb in limbs:
            self.logger.debug('\t\tLimb = ' + limb.pfrsName.get())
            groups = self.grpMng.GetJointGroups(limb)
            groups += self.grpMng.GetLimbGroups(limb)
            for group in groups:
                control = pm.listConnections(group.control)[0]
                util.ChannelBoxAttrs(control, 1, 1, 1, 1)
                util.ResetAttrs(control)
            if limb.bhvType.get() in rigData.IK_PV_BHV_INDEXES:
                self.grpMng.UpdateIKPVCtr(limb)
            if limb.bhvType.get() in rigData.LOOK_AT_BHV_INDEXES:
                self.grpMng.UpdateLookAtCtr(limb)

        pm.refresh() # Forces IK Handles to re-evaluate
    
    def Remove_Constraints(self):
        self.logger.debug('\tBldMng > Remove_Constraints')
        pm.delete(pm.ls(type='ikHandle'))
        pm.delete(pm.ls(type='parentConstraint'))
        pm.delete(pm.ls(type='pointConstraint'))
        pm.delete(pm.ls(type='orientConstraint'))
        pm.delete(pm.ls(type='scaleConstraint'))
        pm.delete(pm.ls(type='aimConstraint'))
        for limb in pm.listConnections(self.pfrs.root.jointLimbs): 
            bhvType = limb.bhvType.get()
            if bhvType in rigData.CST_BHV_INDEXES:
                self.Teardown_Constraint(limb)
            bhvFilter = rigData.FK_CHAIN_BHV_INDEXES
            bhvFilter += rigData.FK_BRANCH_BHV_INDEXES
            if bhvType in bhvFilter:
                joints = util.GetSortedLimbJoints(limb)
                if len(joints) >= 3: # Ignore last joint
                    lastJoint = joints[-1]
                    group = pm.listConnections(lastJoint.group)[0]
                    control = pm.listConnections(group.control) [0]
                    shape = pm.listRelatives(control, c=1, s=1) [0]
                    shape.v.set(1)
    
    def Teardown_Groups(self):
        self.logger.debug('\tBldMng > Teardown_Groups')
        for limb in pm.listConnections(self.pfrs.root.jointLimbs):
            for joint in pm.listConnections(limb.joints):
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
        self.logger.debug('\tBldMng > Setup_Internal_RelativeFK')
        # Con
        
        groups = self.grpMng.GetJointGroups(limb)
        if limb.bhvType.get() in rigData.REVERSE_BHV_INDEXES:
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
        self.logger.debug('\tBldMng > Setup_External_RelativeFK')
        groups = self.grpMng.GetJointGroups(limb)
        if limb.bhvType.get() in rigData.REVERSE_BHV_INDEXES:
            groups = groups[::-1]
        self.ParentConstrainGroup(limb, groups[0])

    # FK CHAIN / REVERSE CHAIN
    def Setup_Internal_FKChain(self, limb):
        self.logger.debug('\tBldMng > Setup_Internal_FKChain')
        groups = self.grpMng.GetJointGroups(limb)
        if limb.bhvType.get() in rigData.REVERSE_BHV_INDEXES:
            groups = groups[::-1]
        for i in range(len(groups)-1):
            childGroup = groups[i+1]
            parentCtr = pm.listConnections(groups[i].control)[0]
            pm.parent(childGroup, parentCtr)
        self.Bind_FK_Joints(limb)
        
    def Setup_External_FKChain(self, limb):
        self.logger.debug('\tBldMng > Setup_External_FKChain')
        groups = self.grpMng.GetJointGroups(limb)
        if limb.bhvType.get() in rigData.REVERSE_BHV_INDEXES:
            groups = groups[::-1]
        childGroup = groups[0]
        self.ParentConstrainGroup(limb, childGroup)

    # FK BRANCH
    def Setup_Internal_FKBranch(self, limb):
        self.logger.debug('\tBldMng > Setup_Internal_FKBranch')
        self.Bind_FK_Joints(limb)
        
    def Setup_External_FKBranch(self, limb):
        self.logger.debug('\tBldMng > Setup_External_FKBranch')
        for childGroup in self.grpMng.GetJointGroups(limb):
            self.ParentConstrainGroup(limb, childGroup)

    def Bind_FK_Joints(self, limb):
        self.logger.debug('\tBldMng > Bind_FK_Joints')
        joints = util.GetSortedLimbJoints(limb)
        bhvType = limb.bhvType.get()
        if bhvType in rigData.REVERSE_BHV_INDEXES:
            joints = joints[::-1]
        # if bhvType in rigData.OMIT_LAST_JOINT_BHV_INDEXES:
        #     joints = joints[:-1]
        for joint in joints:
            group = pm.listConnections(joint.group)[0]
            ctr = pm.listConnections(group.control)[0]
            pm.parentConstraint(ctr, joint, mo=1)

#=========== CONSTRAINT ====================================
    
    def Setup_Internal_Constraint(self, limb):
        self.logger.debug('\tBldMng > Setup_Internal_Constraint')
        for joint in pm.listConnections(limb.joints):
            group = pm.listConnections(joint.group)[0]
            control = pm.listConnections(group.control)[0]
            pm.parentConstraint(control, joint, mo=1)

    def Setup_External_Constraint(self, limb):
        parentLimbs = pm.listConnections(limb.limbParent)
        targetLimbs = pm.listConnections(limb.bhvParent)
        if not targetLimbs:
            msg = 'ERROR: Constraint Limb "%s" missing TARGET limb' % limb
            msg += '\n(Please set target limb in BEHAVIOR Tab)'
            pm.confirmDialog(t='Constraint Error', m=msg, icon='warning', b='Ok')
            return
        if not parentLimbs:
            msg = 'ERROR: Constraint Limb "%s" missing PARENT limb' % limb
            msg += '\n(Please PARENT limb to another limb in BEHAVIOR Tab)'
            pm.confirmDialog(t='Constraint Error', m=msg, icon='warning', b='Ok')
            return
        sourceIndex = limb.limbParentJoint.get()
        sourceJoint = util.GetSortedLimbJoints(parentLimbs[0])[sourceIndex]
        targetIndex = limb.bhvParentJoint.get()
        targetJoint = util.GetSortedLimbJoints(targetLimbs[0])[targetIndex]
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
        sourceGroup = pm.listConnections(sourceJoint.group)[0]
        sourceControl = pm.listConnections(sourceGroup.control)[0]
        targetGroup = pm.listConnections(targetJoint.group)[0]
        targetControl = pm.listConnections(targetGroup.control)[0]
        
        for group in self.grpMng.GetJointGroups(limb):
            self.ParentConstrainGroup(limb, group)
            control = pm.listConnections(group.control)[0]
            cstType = limb.bhvCstType.get()
            weight = group.weight.get()
            if cstType == 0:
                cst = pm.orientConstraint(sourceControl, targetControl, control)
                pm.setAttr('%s.%sW0' % (cst, sourceControl), 1-weight)
                pm.setAttr('%s.%sW1' % (cst, targetControl), weight)
                if skipRotX: pm.orientConstraint(cst, e=1, sk='x')
                if skipRotY: pm.orientConstraint(cst, e=1, sk='y')
                if skipRotZ: pm.orientConstraint(cst, e=1, sk='z')
            if cstType == 1:
                cst = pm.parentConstraint(sourceControl, targetControl, control)
                pm.setAttr('%s.%sW0' % (cst, sourceControl), 1-weight)
                pm.setAttr('%s.%sW1' % (cst, targetControl), weight)
                if skipPosX: pm.parentConstraint(cst, e=1, st='x')
                if skipPosY: pm.parentConstraint(cst, e=1, st='y')
                if skipPosZ: pm.parentConstraint(cst, e=1, st='z')
                if skipRotX: pm.parentConstraint(cst, e=1, sr='x')
                if skipRotY: pm.parentConstraint(cst, e=1, sr='y')
                if skipRotZ: pm.parentConstraint(cst, e=1, sr='z')
            if cstType == 2:
                cst = pm.pointConstraint(sourceControl, targetControl, control)
                pm.setAttr('%s.%sW0' % (cst, sourceControl), 1-weight)
                pm.setAttr('%s.%sW1' % (cst, targetControl), weight)
                if skipPosX: pm.pointConstraint(cst, e=1, sk='x')
                if skipPosY: pm.pointConstraint(cst, e=1, sk='y')
                if skipPosZ: pm.pointConstraint(cst, e=1, sk='z')
            if cstType == 3:
                cst = pm.scaleConstraint(sourceControl, targetControl, control)
                pm.setAttr('%s.%sW0' % (cst, sourceControl), 1-weight)
                pm.setAttr('%s.%sW1' % (cst, targetControl), weight)
            
    def Teardown_Constraint(self, limb):
        self.logger.debug('\tBldMng > Teardown_Constraint')
        for joint in util.GetSortedLimbJoints(limb):
            group = pm.listConnections(joint.group)[0]
            pos = pm.xform(group, q=1, t=1, ws=1)
            rot = pm.xform(group, q=1, ro=1, ws=1)
            scale = pm.xform(group, q=1, s=1, ws=1)
            pm.xform(joint, t=pos, ro=rot, s=scale, ws=1)

#=========== IK ====================================
    
    def Setup_Internal_IKPoleVector(self, limb):
        self.logger.debug('\tBldMng > Setup_Internal_IKPoleVector')
        joints = util.GetSortedLimbJoints(limb)
        startJoint = joints[0]
        endJoint = joints[-1]
        endGroup = pm.listConnections(endJoint.group)[0]
        endControl = pm.listConnections(endGroup.control)[0]
        handle = pm.ikHandle(sj=startJoint, ee=endJoint)[0]
        handle.v.set(0)
        pm.parent(handle, endControl)
        pm.orientConstraint(endControl, endJoint, mo=1)
        midGroup = pm.listConnections(limb.bhvIKPVGroup)[0]
        midControl = pm.listConnections(midGroup.control)[0]
        pm.poleVectorConstraint(midControl, handle)
        for group in self.grpMng.GetJointGroups(limb)[:-1]:
            joint = pm.listConnections(group.joint)[0]
            pm.parentConstraint(joint, group, mo=1)

    def Setup_External_IKPoleVector(self, limb):
        self.logger.debug('\tBldMng > Setup_External_IKPoleVector')
        endJoint = util.GetSortedLimbJoints(limb)[-1]
        endGroup = pm.listConnections(endJoint.group)[0]
        self.ParentConstrainGroup(limb, endGroup)
        midGroup = pm.listConnections(limb.bhvIKPVGroup)[0]
        self.ParentConstrainGroup(limb, midGroup)

#=========== MISC ====================================
    
    # LookAt
    def Setup_External_SingleControl(self, limb):
        self.logger.debug('\tBldMng > Setup_External_SingleControl')
        childGroup = self.grpMng.GetLimbGroups(limb)[0]
        self.ParentConstrainGroup(limb, childGroup)

    def Setup_External_Empty(self, limb):
        self.logger.debug('\tBldMng > Setup_External_Empty')
        group = pm.listConnections(limb.bhvEmptyGroup)[0]
        self.ParentConstrainGroup(limb, group)

    def Setup_Internal_LookAt(self, limb):
        self.logger.debug('\tBldMng > Setup_Internal_LookAt')
        joint = util.GetSortedLimbJoints(limb)[0]
        lookAtGroup = pm.listConnections(limb.bhvLookAtGroup)[0]
        lookAtControl = pm.listConnections(lookAtGroup.control)[0]
        pm.aimConstraint(lookAtControl, joint, mo=1)
        jointGroup = pm.listConnections(joint.group)[0]
        pm.parentConstraint(joint, jointGroup, mo=1)

    def ParentConstrainGroup(self, limb, childGroup):
        self.logger.debug('\tBldMng > ParentConstrainGroup')
        parents = pm.listConnections(limb.limbParent)
        if not parents:
            return 
        parent = parents[0]
        bhvType = parent.bhvType.get()
        # bhvFilter = rigData.IK_PV_BHV_INDEXES
        # bhvFilter += rigData.CST_BHV_INDEXES
        # bhvFilter += rigData.LOOK_AT_BHV_INDEXES
        if bhvType in rigData.EMPTY_BHV_INDEXES:
            group = pm.listConnections(parent.bhvEmptyGroup)[0]
            parentControl = pm.listConnections(group.control)[0]
        # elif bhvType in bhvFilter:
        #     index = limb.limbParentJoint.get()
        #     joint = util.GetSortedLimbJoints(parent)[index]
        #     parentControl = joint
        else:
            index = limb.limbParentJoint.get()
            joint = util.GetSortedLimbJoints(parent)[index]
            group = pm.listConnections(joint.group)[0]
            parentControl = pm.listConnections(group.control)[0]
        pm.parentConstraint(parentControl, childGroup, mo=1)

