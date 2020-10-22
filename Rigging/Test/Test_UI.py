
import pymel.core as pm


class Test_UI:
    def __init__(self, limbMng, jntMng, grpMng, ctrMng):
        self.limbMng = limbMng
        self.jntMng = jntMng
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
        self.ctrMng.SetLayerState(True, False)
        pm.select(d=1)

    def Teardown_Editable(self):
        self.Reset_Controls()
        self.Remove_Constraints()
        self.Reparent_Groups()

#=========== SETUP FUNCTIONALITY ====================================
    
    def Setup_Groups(self):
        for group in self.grpMng.GetAllGroups():
            for attr in ['.tx', '.ty', '.tz', '.rx', '.ry', '.rz']:
                pm.setAttr(group+attr, l=0)
            pm.parent(group, self.grpMng.bhvGrp)

    def Setup_Controls(self):
        for control in self.ctrMng.GetAllControls():
            pm.makeIdentity(control, a=1, t=1, r=1, s=1)
            group = pm.listConnections(control.group)[0]
            pos = pm.xform(group, q=1, t=1)
            pm.move(pos[0], pos[1], pos[2], 
                        control.scalePivot, 
                        control.rotatePivot, 
                        a=1)

    def Setup_Internal(self):
        for limb in self.limbMng.GetAllLimbs():
            bhvType = limb.bhvType.get()
            if bhvType in [0, 8]: # fk chain
                self.Setup_Internal_FKChain(limb)
            elif (bhvType == 3): # Constraint
                self.Setup_Internal_Constraint(limb)
            elif (bhvType == 4): # Look At
                self.Setup_Internal_LookAt(limb)
            elif (bhvType == 5): # IK chain
                self.Setup_Internal_IKChain(limb)
            elif (bhvType == 6): # fk Branch
                self.Setup_Internal_FKBranch(limb)
            # elif (bhvType == 8): # fk reverse chain
            #     self.Setup_Internal_FKReverseChain(limb)

    def Setup_External(self):
        for limb in self.limbMng.GetAllLimbs():
            bhvType = limb.bhvType.get()
            if bhvType in [0,8]: # fk chain
                self.Setup_External_FKChain(limb)
            elif (bhvType == 6): # fk Branch
                self.Setup_External_FKBranch(limb)
            elif bhvType in [4, 7]: # LookAt, Empty
                self.Setup_External_SingleControl(limb)

#=========== TEARDOWN FUNCTIONALITY ====================================
    
    def Reset_Controls(self):
        for control in self.ctrMng.GetAllControls():
            pm.xform(control, t=[0,0,0], ro=[0,0,0], s=[1,1,1])
    
    def Remove_Constraints(self):
        pm.delete(pm.ls(type='ikHandle'))
        pm.delete(pm.ls(type='parentConstraint'))
        pm.delete(pm.ls(type='pointConstraint'))
        pm.delete(pm.ls(type='orientConstraint'))
        pm.delete(pm.ls(type='scaleConstraint'))
        for limb in self.limbMng.GetAllLimbs():
            if (limb.bhvType.get() == 3):
                self.Teardown_Constraint(limb)
    
    def Reparent_Groups(self):
        for group in self.grpMng.GetAllGroups():
            grpType = group.groupType.get()
            if grpType in [1,4]:
                joint = pm.listConnections(group.joint)[0]
                pm.parent(group, joint)
            else:
                pm.parent(group, self.grpMng.bhvGrp)

#=========== FK ====================================
    
    # FK CHAIN / REVERSE CHAIN
    def Setup_Internal_FKChain(self, limb):
        groups = self.grpMng.GetLimbGroups(limb)
        for i in range(len(groups)-1, 0, -1):
            childGroup = groups[i]
            parentCtr = self.ctrMng.GetGroupControl(groups[i-1])[0]
            pm.parent(childGroup, parentCtr)
        self.Bind_FK_Joints(limb)
        
    def Setup_External_FKChain(self, limb):
        parent = self.limbMng.GetLimbParent(limb)
        if parent:
            childGroup = self.grpMng.GetLimbGroups(limb)[0]
            index = limb.parentGrp.get()
            parentGroup = self.grpMng.GetLimbGroups(parent)[index]
            parentCtrs = self.ctrMng.GetGroupControl(parentGroup)
            if parentCtrs:
                pm.parent(childGroup, parentCtrs[0])

    # FK BRANCH
    def Setup_Internal_FKBranch(self, limb):
        self.Bind_FK_Joints(limb)
        
    def Setup_External_FKBranch(self, limb):
        parent = self.limbMng.GetLimbParent(limb)
        if parent:
            childGroup = self.grpMng.GetLimbGroups(limb)[0]
            index = limb.parentGrp.get()
            parentGroup = self.grpMng.GetLimbGroups(parent)[index]
            parentCtrs = self.ctrMng.GetGroupControl(parentGroup)
            if parentCtrs:
                for childGroup in self.grpMng.GetLimbGroups(limb):
                    pm.parent(childGroup, parentCtrs[0])

    def Bind_FK_Joints(self, limb):
        for joint in self.jntMng.GetLimbJoints(limb):
            group = pm.listConnections(joint.bhvFKGrp)[0]
            ctr = self.ctrMng.GetGroupControl(group)
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
        sourceIndex = limb.parentGrp.get()
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

    def Teardown_Constraint(self, limb):
        for joint in self.jntMng.GetLimbJoints(limb):
            group = pm.listConnections(joint.bhvCstGrp)[0]
            pos = pm.xform(group, q=1, t=1, ws=1)
            rot = pm.xform(group, q=1, ro=1, ws=1)
            scale = pm.xform(group, q=1, s=1, ws=1)
            pm.xform(joint, t=pos, ro=rot, s=scale, ws=1)

#=========== IK ====================================
    
    def Setup_Internal_IKChain(self, limb):
        targetLimb = pm.listConnections(limb.IKTargetLimb)
        if not targetLimb:
            msg = 'IK Chain Limb "%s" missing TARGET limb' % limb
            pm.confirmDialog(t='IK CHAIN Error', m=msg, icon='warning', b='Ok')
            return
        targetLimb = targetLimb[0]
        for group in pm.listConnections(limb.bhvIKChainGrps):
            startJoint = pm.listConnections(group.joint)[0]
            endJoint = pm.listConnections(group.joint2)[0]
            index = group.IKTargetGroup.get()
            targetGroup = self.grpMng.GetLimbGroups(targetLimb)[index]
            targetControl = pm.listConnections(targetGroup.control)[0]
            handle = pm.ikHandle(sj=startJoint, ee=endJoint)[0]
            handle.v.set(0)
            pm.parent(handle, targetControl)


#=========== MISC ====================================
    
    def Setup_External_SingleControl(self, limb):
        parent = self.limbMng.GetLimbParent(limb)
        if parent:
            childGroup = self.grpMng.GetLimbGroups(limb)[0]
            index = limb.parentGrp.get()
            parentGroup = self.grpMng.GetLimbGroups(parent)[index]
            parentCtrs = self.ctrMng.GetGroupControl(parentGroup)
            if parentCtrs:
                pm.parent(childGroup, parentCtrs[0])

    def Setup_Internal_LookAt(self, limb):
        joint = self.jntMng.GetLimbJoints(limb)[0]
        group = self.grpMng.GetLimbGroups(limb)[0]
        control = self.ctrMng.GetGroupControl(group)
        pm.aimConstraint(control, joint, mo=1)

