
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
            if (bhvType == 0): # fk chain
                self.Setup_Internal_FKChain(limb)
            elif (bhvType == 4): # Look At
                self.Setup_Internal_LookAt(limb)
            elif (bhvType == 6): # fk Branch
                self.Setup_Internal_FKBranch(limb)
            elif (bhvType == 8): # fk reverse chain
                self.Setup_Internal_FKReverseChain(limb)

    def Setup_External(self):
        for limb in self.limbMng.GetAllLimbs():
            bhvType = limb.bhvType.get()
            if (bhvType == 0): # fk chain
                self.Setup_External_FKChain(limb)
            elif (bhvType == 6): # fk Branch
                self.Setup_External_FKBranch(limb)
            elif bhvType in [4, 7]: # LookAt, Empty
                self.Setup_External_SingleControl(limb)
            elif (bhvType == 8): # fk reverse chain
                self.Setup_External_FKReverseChain(limb)

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
    
    def Reparent_Groups(self):
        for group in self.grpMng.GetAllGroups():
            grpType = group.groupType.get()
            if grpType in [1,4]:
                joint = pm.listConnections(group.joint)[0]
                pm.parent(group, joint)
            else:
                pm.parent(group, self.grpMng.bhvGrp)

#=========== FK ====================================
    
    # FK CHAIN
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
            index = limb.parentGrp.get()-1
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
            index = limb.parentGrp.get()-1
            parentGroup = self.grpMng.GetLimbGroups(parent)[index]
            parentCtrs = self.ctrMng.GetGroupControl(parentGroup)
            if parentCtrs:
                for childGroup in self.grpMng.GetLimbGroups(limb):
                    pm.parent(childGroup, parentCtrs[0])

    # FK REVERSE CHAIN
    def Setup_Internal_FKReverseChain(self, limb):
        groups = self.grpMng.GetLimbGroups(limb)
        for i in range(len(groups)-1):
            childGroup = groups[i]
            parentCtr = self.ctrMng.GetGroupControl(groups[i-1])[0]
            pm.parent(childGroup, parentCtr)
        self.Bind_FK_Joints(limb)
        
    def Setup_External_FKReverseChain(self, limb):
        parent = self.limbMng.GetLimbParent(limb)
        if parent:
            childGroup = self.grpMng.GetLimbGroups(limb)[-1]
            index = limb.parentGrp.get()-1
            parentGroup = self.grpMng.GetLimbGroups(parent)[index]
            parentCtrs = self.ctrMng.GetGroupControl(parentGroup)
            if parentCtrs:
                pm.parent(childGroup, parentCtrs[0])

    def Bind_FK_Joints(self, limb):
        for joint in self.jntMng.GetLimbJoints(limb):
            group = pm.listConnections(joint.bhvFKGrp)[0]
            ctr = self.ctrMng.GetGroupControl(group)
            pm.parentConstraint(ctr, joint, mo=1)

#=========== MISC ====================================
    
    def Setup_External_SingleControl(self, limb):
        parent = self.limbMng.GetLimbParent(limb)
        if parent:
            childGroup = self.grpMng.GetLimbGroups(limb)[0]
            index = limb.parentGrp.get()-1
            parentGroup = self.grpMng.GetLimbGroups(parent)[index]
            parentCtrs = self.ctrMng.GetGroupControl(parentGroup)
            if parentCtrs:
                pm.parent(childGroup, parentCtrs[0])

    def Setup_Internal_LookAt(self, limb):
        joint = self.jntMng.GetLimbJoints(limb)[0]
        group = self.grpMng.GetLimbGroups(limb)[0]
        control = self.ctrMng.GetGroupControl(group)
        pm.aimConstraint(control, joint, mo=1)

