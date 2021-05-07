
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)

import Common.Logger as log
reload(log)

class IK_PoleVector_01(absBhv.Abstract_Behavior):
    bhvType = 'IK Pole Vector'
    validLimbTypes = (4,)   # rigData.LIMB_TYPES
    groupType = 'IKPV'  # LookAt, IKPV...
    groupShape = 'Sphere_Poly'
    groupCount = 2
    groupMoveable = False    # for moving control pivots
    orderIndex = 310  
    usesJointControls = False
    usesLimbControls = True
    bakeLosesData = True
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        if not limb.hasAttr('ikpvDistance'):
            pm.addAttr(limb, ln='ikpvDistance', at='float', 
                                                min=0, dv=1)
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]
        limbGroups = pm.listConnections(limb.usedGroups)
        limbGroups = rigUtil.SortGroups(limbGroups)
        ikpv1 = limbGroups[0]
        ikpv2 = limbGroups[1]
        pm.parent(ikpv2, joints[-1])
        rigUtil.ResetAttrs(ikpv2)
        pm.parent(ikpv2, limb)
        self._InitIKPV1(limb, ikpv1)
        self._UpdateIKPV1(limb)
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
    
#============= SETUP ============================

    def Setup_Rig_Internal(self, limb):
        log.funcFileDebug()
        return []
    
    def Setup_Rig_External(self, limb):
        log.funcFileDebug()
        groups = pm.listConnections(limb.usedGroups)
        parentControl = rigUtil.GetParentControl(limb)
        if parentControl:
            for group in groups:
                pm.parentConstraint(parentControl, group, mo=1)
        return groups
    
    def Setup_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        # IK Handle
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]
        startJoint = joints[0]
        endJoint = joints[-1]
        handle = pm.ikHandle(sj=startJoint, ee=endJoint)[0]
        handle.v.set(0)

        # IK Groups + Controls
        groups = pm.listConnections(limb.usedGroups)
        groups = rigUtil.SortGroups(groups)
        midGroup = groups[0]
        endGroup = groups[1]
        midControl = pm.listConnections(midGroup.control)[0]
        endControl = pm.listConnections(endGroup.control)[0]

        # Move Mid Group to Mid control position
        pos = pm.xform(midControl, q=1, t=1, ws=1)
        pm.xform(midGroup, t=pos, ws=1)
        rigUtil.ResetAttrs(midControl)

        # Parent IK Handle to control, PV mid control
        pm.parent(handle, endControl)
        pm.orientConstraint(endControl, endJoint, mo=1)
        pm.poleVectorConstraint(midControl, handle)

        # Joint groups for parenting
        for group in jointGroups:
            joint = pm.listConnections(group.joint)[0]
            pm.parentConstraint(joint, group, mo=1)
    
    def Setup_Constraint_ControlsToJoints(self, limb):
        log.funcFileDebug()
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]
        limbGroups = pm.listConnections(limb.usedGroups)
        limbGroups = rigUtil.SortGroups(limbGroups)
        controls = [pm.listConnections(g.control)[0] for g in limbGroups]
        ikpvMid = controls[0]
        ikpvEnd = controls[1]
        pm.parentConstraint(joints[-1], ikpvEnd)
        self._UpdateIKPV1(limb)
        pm.parentConstraint(joints[1], ikpvMid, mo=1)

    
#============= TEARDOWN ============================

    def Teardown_Rig_Internal(self, limb):
        log.funcFileDebug()

    def Teardown_Rig_External(self, limb):
        log.funcFileDebug()
        if pm.listConnections(limb.limbParent):
            groups = pm.listConnections(limb.usedGroups)
            for group in groups:
                cst = pm.listRelatives(group, c=1, type='parentConstraint')
                pm.delete(cst)

    def Teardown_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]

        # Delete ikHandle
        limbGroups = pm.listConnections(limb.usedGroups)
        endGroup = rigUtil.SortGroups(limbGroups)[1]
        endControl = pm.listConnections(endGroup.control)[0]
        handle = pm.listRelatives(endControl, c=1, type='ikHandle')
        pm.delete(handle)

        # Delete joint constraints
        pm.delete(pm.listRelatives(joints[-1], c=1, type='orientConstraint'))
        for group in jointGroups:
            cst = pm.listRelatives(group, c=1, type='parentConstraint')
            pm.delete(cst)
        
        # Delete limb groups constraints
        if pm.listConnections(limb.limbParent):
            for group in limbGroups:
                cst = pm.listRelatives(group, c=1, type='parentConstraint')
                pm.delete(cst)

        # Reposition group to second joint
        groups = pm.listConnections(limb.usedGroups)
        groups = rigUtil.SortGroups(groups)
        midGroup = groups[0]
        jointPos = pm.xform(joints[1], q=1, t=1, ws=1)
        pm.xform(midGroup, t=jointPos, ws=1)
        self._UpdateIKPV1(limb)

    def Teardown_Constraint_ControlsToJoints(self, limb):
        log.funcFileDebug()
        limbGroups = pm.listConnections(limb.usedGroups)
        controls = [pm.listConnections(g.control)[0] for g in limbGroups]
        for control in controls:
            pm.delete(pm.listRelatives(control, c=1, type='parentConstraint'))
    
#============= EDITABLE UI ============================

    def Setup_Editable_Limb_UI(self, limb):
        log.funcFileDebug()
        pm.attrControlGrp( l='Control Distance', a=limb.ikpvDistance,
                            cc=pm.Callback(self._UpdateIKPV1, limb))
        return True
    
#============= ANIMATION UI ============================

    def Setup_Animation_Limb_UI(self, limb):
        return False # return if UI is enabled
    
    def _UpdateIKPV1(self, limb):
        dist = limb.ikpvDistance.get()
        ikpv1 = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        control = pm.listConnections(ikpv1.control)[0]
        control.tx.set(dist)
        control.ty.set(0)
        control.tz.set(0)

    def _InitIKPV1(self, limb, ikpv1):
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        j1 = pm.listConnections(jointGroups[0].joint)[0]
        j2 = pm.listConnections(jointGroups[1].joint)[0]
        j3 = pm.listConnections(jointGroups[-1].joint)[0]
        
        # Get vectors
        pos1 = pm.xform(j1, t=1, q=1, ws=1)
        pos2 = pm.xform(j2, t=1, q=1, ws=1)
        pos3 = pm.xform(j3, t=1, q=1, ws=1)
        v12 = (pos2[0] - pos1[0], pos2[1] - pos1[1], pos2[2] - pos1[2])
        v13 = (pos3[0] - pos1[0], pos3[1] - pos1[1], pos3[2] - pos1[2])

        # Get Angle
        dot = (v12[0]*v13[0] + v12[1]*v13[1] + v12[2]*v13[2])
        mag12 = (v12[0]**2 + v12[1]**2 + v12[2]**2)**0.5
        mag13 = (v13[0]**2 + v13[1]**2 + v13[2]**2)**0.5
        magProd = mag12 * mag13
        cosAngle = dot / magProd

        # Get perp v13 point
        scalar = (cosAngle*mag12)/ mag13
        posP = (scalar*v13[0], scalar*v13[1], scalar*v13[2])
        posPOffset = (posP[0]+pos1[0], posP[1]+pos1[1], posP[2]+pos1[2])

        # pos/rot group
        pm.xform(ikpv1, t=posPOffset, ws=1)
        a = pm.aimConstraint(j2, ikpv1)
        pm.delete(a)
        pm.xform(ikpv1, t=pos2, ws=1)