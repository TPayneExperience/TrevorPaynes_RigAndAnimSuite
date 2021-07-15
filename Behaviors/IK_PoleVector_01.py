
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)

import Utilities.Logger as log
reload(log)

class IK_PoleVector_01(absBhv.Abstract_Behavior):
    bhvType = 'IK Pole Vector'
    validLimbTypes = (4,)   # rigData.LIMB_TYPES
    groupType = 'IKPV'  # LookAt, IKPV...
    groupShape = 'Sphere_Poly'
    groupCount = 3
    groupMoveable = False    # for moving control pivots
    uiOrderIndex = 310  
    usesJointControls = False
    usesLimbControls = True
    bakeLosesData = True
    duplicateJointGroups = False
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        if not limb.hasAttr('ikpvDistance'):
            pm.addAttr(limb, ln='ikpvDistance', at='float', 
                                                min=0, dv=10)
            pm.addAttr(limb, ln='ikpvCurve', dt='string')
        joints = pm.listConnections(limb.joints)
        joints = rigUtil.GetSortedJoints(joints)
        limbGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        ikpv1 = limbGroups[0]
        ikpv2 = limbGroups[1]
        ikpv3 = limbGroups[2]
        pm.parent(ikpv1, joints[0])
        rigUtil.ResetAttrs(ikpv1)
        pm.parent(ikpv1, limb)
        pm.parent(ikpv3, joints[-1])
        rigUtil.ResetAttrs(ikpv3)
        pm.parent(ikpv3, limb)
        self._InitIKPV2(limb, ikpv2)
        self._UpdateIKPV2(limb)
        if not pm.listConnections(limb.ikpvCurve):
            curve = pm.curve(d=1, p=((0,0,0), (1,0,0)), k=(0, 1))
            cluster1 = pm.cluster(curve.cv[0])
            cluster2 = pm.cluster(curve.cv[1])
            xform1 = cluster1[1]
            xform2 = cluster2[1]
            control = pm.listConnections(ikpv2.control)[0]
            pm.parent(xform1, xform2, curve, limb)
            pm.parentConstraint(control, xform1)
            pm.parentConstraint(joints[1], xform2)

            # Curve Cleanup
            curve.template.set(1)
            pm.addAttr(curve, ln='limb', dt='string')
            pm.connectAttr(limb.ikpvCurve, curve.limb)
            curve.v.set(0)
            xform1.v.set(0)
            xform2.v.set(0)
            pm.select(d=1)
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
        pm.delete(pm.listConnections(limb.ikpvCurve))
    
#============= SETUP ============================

    def Setup_Rig_Controls(self, limb):
        log.funcFileDebug()
        # Create IK helper display curve
        curve = pm.listConnections(limb.ikpvCurve)[0]
        curve.v.set(1)

        # Get Groups
        ikpvGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        ikpvGroup1 = ikpvGroups[0]
        ikpvGroup2 = ikpvGroups[1]
        ikpvGroup3 = ikpvGroups[2]
        ikpvGroup1.v.set(0)
        
        # Move Mid Group to Mid control position
        ikpvControl2 = pm.listConnections(ikpvGroup2.control)[0]
        pm.xform(ikpvControl2, cp=1)
        pos = pm.xform(ikpvControl2, q=1, t=1, ws=1)
        pm.xform(ikpvGroup2, t=pos, ws=1)
        rigUtil.ResetAttrs(ikpvControl2)

        # Parent IK Group 1
        joints = pm.listConnections(limb.joints)
        joint = rigUtil.GetSortedJoints(joints)[0]
        parentJoints = pm.listRelatives(joint, p=1, type='joint')
        if parentJoints:
            parentJoint = parentJoints[0]
            parentGroup = pm.listConnections(parentJoint.group)[0]
            parentControl = pm.listConnections(parentGroup.control)[0]
            pm.parentConstraint(parentControl, ikpvGroup1, mo=1)
        
        # Parent IK Group 2/3
        parentControl = rigUtil.GetParentControl(limb)
        if parentControl:
            pm.parentConstraint(parentControl, ikpvGroup2, mo=1)
            pm.parentConstraint(parentControl, ikpvGroup3, mo=1)
    
    def Setup_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        # IK Handle
        pm.refresh()
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]
        startJoint = joints[0]
        endJoint = joints[-1]
        handle = pm.ikHandle(sj=startJoint, ee=endJoint)[0]
        handle.v.set(0)

        # IK Groups + Controls
        ikpvGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        ikpvGroup1 = ikpvGroups[0]
        ikpvGroup2 = ikpvGroups[1]
        ikpvGroup3 = ikpvGroups[2]
        ikpvControl1 = pm.listConnections(ikpvGroup1.control)[0]
        ikpvControl2 = pm.listConnections(ikpvGroup2.control)[0]
        ikpvControl3 = pm.listConnections(ikpvGroup3.control)[0]

        # point cst start joint to control
        pm.pointConstraint(ikpvControl1, startJoint)

        # # Move Mid Group to Mid control position
        # pm.xform(midControl, cp=1)
        # pos = pm.xform(midControl, q=1, t=1, ws=1)
        # pm.xform(midGroup, t=pos, ws=1)
        # rigUtil.ResetAttrs(midControl)

        # Parent IK Handle to control, PV mid control
        pm.parent(handle, ikpvControl3)
        pm.poleVectorConstraint(ikpvControl2, handle)
        pm.orientConstraint(ikpvControl3, endJoint, mo=1)

        # Joint groups for parenting
        for group in jointGroups:
            joint = pm.listConnections(group.joint)[0]
            pm.parentConstraint(joint, group, mo=1)
    
    def Setup_Constraint_ControlsToXforms(self, limb, 
            xforms, hasPosCst, hasRotCst, hasScaleCst):
        log.funcFileDebug()
        limbGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        controls = [pm.listConnections(g.control)[0] for g in limbGroups]
        ikpvStart = controls[0]
        ikpvMid = controls[1]
        ikpvEnd = controls[2]
        if hasPosCst:
            pm.pointConstraint(xforms[0], ikpvStart)
            pm.pointConstraint(xforms[-1], ikpvEnd)
        if hasRotCst:
            pm.orientConstraint(xforms[-1], ikpvEnd)
        if hasScaleCst:
            pm.scaleConstraint(xforms[0], ikpvStart)
            pm.scaleConstraint(xforms[-1], ikpvEnd)
        self._UpdateIKPV2(limb)
        if hasPosCst or hasRotCst:
            pm.parentConstraint(xforms[1], ikpvMid, mo=1)
        return controls

#============= TEARDOWN ============================

    def Teardown_Rig_Controls(self, limb):
        log.funcFileDebug()
        curve = pm.listConnections(limb.ikpvCurve)[0]
        curve.v.set(0)
        if pm.listConnections(limb.limbParent):
            groups = rigUtil.GetLimbGroups(limb, self.groupType)
            for group in groups:
                cst = pm.listRelatives(group, c=1, type='parentConstraint')
                pm.delete(cst)

    def Teardown_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]
        startJoint = joints[0]
        endJoint = joints[-1]

        # Delete ikHandle
        limbGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        endGroup = rigUtil.SortGroups(limbGroups)[2]
        endControl = pm.listConnections(endGroup.control)[0]
        handle = pm.listRelatives(endControl, c=1, type='ikHandle')
        pm.delete(handle)

        # Delete joint constraints
        pm.delete(pm.listRelatives(startJoint, c=1, type='pointConstraint'))
        pm.delete(pm.listRelatives(endJoint, c=1, type='orientConstraint'))
        for group in jointGroups:
            cst = pm.listRelatives(group, c=1, type='parentConstraint')
            pm.delete(cst)
        
        # Remove weird end joint rotations
        endJoint.r.set(0,0,0)

        # Reposition group to second joint
        midGroup = limbGroups[1]
        jointPos = pm.xform(joints[1], q=1, t=1, ws=1)
        pm.xform(midGroup, t=jointPos, ws=1)
        self._UpdateIKPV2(limb)

    def Teardown_Constraint_ControlsToXforms(self, limb):
        log.funcFileDebug()
        limbGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        controls = [pm.listConnections(g.control)[0] for g in limbGroups]
        for control in controls:
            pm.delete(pm.listRelatives(control, c=1, type='constraint'))
    
#============= EDITABLE UI ============================

    def Setup_Editable_Limb_UI(self, limb):
        log.funcFileDebug()
        group = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        with pm.columnLayout(co=('left', -50)):
            pm.attrControlGrp( l='Control Distance', a=limb.ikpvDistance,
                                cc=pm.Callback(self._UpdateIKPV2, limb))
        with pm.columnLayout(co=('left', -100)):
            pm.attrControlGrp( l='Show Start Control', a=group.v)
        return True
    
#============= ANIMATION UI ============================

    def Setup_Animation_Limb_UI(self, limb):
        return False # return if UI is enabled
    
#============= UTIL ============================

    def _UpdateIKPV2(self, limb):
        dist = limb.ikpvDistance.get()
        ikpv2 = rigUtil.GetLimbGroups(limb, self.groupType)[1]
        control = pm.listConnections(ikpv2.control)[0]
        control.tx.set(dist)
        control.ty.set(0)
        control.tz.set(0)

    def _InitIKPV2(self, limb, ikpv2):
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
        pm.xform(ikpv2, t=posPOffset, ws=1)
        a = pm.aimConstraint(j2, ikpv2)
        pm.delete(a)
        pm.xform(ikpv2, t=pos2, ws=1)