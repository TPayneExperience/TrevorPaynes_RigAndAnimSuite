
import imp

import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
import Utilities.Rig_Utilities as rigUtil
import Data.General_Data as genData

import Utilities.Logger as log

class FKIK_Simple_01(absBhv.Abstract_Behavior):
    bhvType = 'FK IK - Simple'
    validLimbTypes = (4,) # rigData.LIMB_TYPES
    groupType = 'IKPV'        # LookAt, IKPV...
    groupShape = 'Sphere_Poly'
    groupCount = 3
    groupMoveable = False   # for moving control pivots
    uiOrderIndex = 410
    usesJointControls = True
    usesLimbControls = True
    bakeLosesData = True
    duplicateJointGroups = True

    def InitLimb(self, limb):
        log.funcFileDebug()
        if not limb.hasAttr('fkik'):
            pm.addAttr(limb, ln='fkik', at='float', min=0, max=1,
                                k=1, h=genData.HIDE_ATTRS)
            pm.addAttr(limb, ln='fkJoints', dt='string')
            pm.addAttr(limb, ln='ikJoints', dt='string')
        joints = pm.listConnections(limb.joints)
        joints = rigUtil.GetSortedJoints(joints)

        # FK, Reposition to Joints
        fkGroups = rigUtil.GetLimbGroups(limb, 'FK')
        for i in range(len(joints)):
            joint = joints[i]
            fkGroup = fkGroups[i]
            pm.parent(fkGroup, limb)
            pm.delete(pm.parentConstraint(joint, fkGroup))

        # IK, Create attrs
        if limb.hasAttr('ikpvDistance'):
            pm.delete(pm.listConnections(limb.ikpvCurve))
            pm.delete(pm.listConnections(limb.ikpvClusters))
        else:
            pm.addAttr(limb, ln='ikpvDistance', at='float', 
                                                min=0, dv=10)
            pm.addAttr(limb, ln='ikpvCurve', dt='string')
            pm.addAttr(limb, ln='ikpvClusters', dt='string')

        # Turn off IK Vis
        ikpvGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        for limbGroup in ikpvGroups:
            limbGroup.v.set(0)
        ikpvGroup1 = ikpvGroups[0]
        ikpvGroup2 = ikpvGroups[1]
        ikpvGroup3 = ikpvGroups[2]
        jointCount = len(joints)

        # Avoid index conflict with fk groups
        ikpvGroup1.groupIndex.set(jointCount)
        ikpvGroup2.groupIndex.set(jointCount+1)
        ikpvGroup3.groupIndex.set(jointCount+2)

        # Position IK Groups
        pm.parent(ikpvGroup1, limb)
        pm.delete(pm.parentConstraint(joints[0], ikpvGroup1))
        pm.parent(ikpvGroup3, limb)
        pm.delete(pm.parentConstraint(joints[-1], ikpvGroup3))
        self.Setup_ForBhvOp(limb)
        self.Teardown_ForBhvOp(limb)

        # Create IKPV2 Display/helper curve
        curve = pm.curve(d=1, p=((0,0,0), (1,0,0)), k=(0, 1))
        cluster1 = pm.cluster(curve.cv[0])
        cluster2 = pm.cluster(curve.cv[1])
        xform1 = cluster1[1]
        xform2 = cluster2[1]
        control = pm.listConnections(ikpvGroup2.control)[0]
        pm.parent(xform1, xform2, curve, limb)
        pm.parentConstraint(control, xform1)
        pm.parentConstraint(joints[1], xform2)

        # Curve Cleanup
        curve.template.set(1)
        pm.addAttr(curve, ln='limb', dt='string')
        pm.addAttr(xform1, ln='limb', dt='string')
        pm.addAttr(xform2, ln='limb', dt='string')
        pm.connectAttr(limb.ikpvCurve, curve.limb)
        pm.connectAttr(limb.ikpvClusters, xform1.limb)
        pm.connectAttr(limb.ikpvClusters, xform2.limb)
        curve.v.set(0)
        xform1.v.set(0)
        xform2.v.set(0)
        pm.select(d=1)
        
    def CleanupLimb(self, limb):
        log.funcFileDebug()
        # FK Not Needed
        # IK
        pm.delete(pm.listConnections(limb.ikpvCurve))
        pm.delete(pm.listConnections(limb.ikpvClusters))
    
#============= FOR BEHAVIOR OPERATION ============================

    def Setup_ForBhvOp(self, limb):
        tempGroup = pm.group(em=1, w=1)
        self._InitIKPV2(limb, tempGroup)
        group = rigUtil.GetLimbGroups(limb, self.groupType)[1]
        pm.delete(pm.parentConstraint(tempGroup, group))
        pm.parent(group, tempGroup)
        pm.makeIdentity(group, a=1, t=1, r=1, s=1)
        control = pm.listConnections(group.control)[0]
        pm.delete(pm.parentConstraint(group, control))
        self._UpdateIKPV2(limb)
    
    def Teardown_ForBhvOp(self, limb):
        group = rigUtil.GetLimbGroups(limb, self.groupType)[1]
        tempGroup = pm.listRelatives(group, p=1)[0]
        pm.parent(group, limb)
        pm.delete(tempGroup)
    
#============= SETUP ============================

    def Setup_Rig_Controls(self, limb):
        log.funcFileDebug()
        # --------- Internal -----------
        # Create IK helper display curve
        curve = pm.listConnections(limb.ikpvCurve)[0]
        curve.v.set(1)

        # Inter parent FK groups/Controls
        fkGroups = rigUtil.GetLimbGroups(limb, 'FK')
        for i in range(len(fkGroups)-1):
            group = fkGroups[i+1]
            parentCtr = pm.listConnections(fkGroups[i].control)[0]
            pm.parent(group, parentCtr)

        # --------- External -----------
        # Get FK / IK Groups
        ikpvGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        ikpvGroup1 = ikpvGroups[0]
        ikpvGroup2 = ikpvGroups[1]
        ikpvGroup3 = ikpvGroups[2]
        fkGroup = fkGroups[0]

        # # Move Mid Group to Mid control position
        # ikpvControl2 = pm.listConnections(ikpvGroup2.control)[0]
        # pm.xform(ikpvControl2, cp=1)
        # pos = pm.xform(ikpvControl2, q=1, t=1, ws=1)
        # pm.xform(ikpvGroup2, t=pos, ws=1)
        # rigUtil.ResetAttrs(ikpvControl2)

        # Parent FK / IK1 to joint parent, if exists
        joints = pm.listConnections(limb.joints)
        joint = rigUtil.GetSortedJoints(joints)[0]
        parentJoints = pm.listRelatives(joint, p=1, type='joint')
        if parentJoints:
            parentJoint = parentJoints[0]
            parentGroup = pm.listConnections(parentJoint.group)[0]
            parentControl = pm.listConnections(parentGroup.control)[0]
            pm.parentConstraint(parentControl, ikpvGroup1, mo=1)
            pm.parentConstraint(parentControl, fkGroup, mo=1)

        # Parekt IK2 / IK3 to parent control
        ikParentControl = rigUtil.GetParentControl(limb)
        if ikParentControl:
            pm.parentConstraint(ikParentControl, ikpvGroup2, mo=1)
            pm.parentConstraint(ikParentControl, ikpvGroup3, mo=1)
        
    def Setup_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        joints = pm.listConnections(limb.joints)
        joints = rigUtil.GetSortedJoints(joints)

        # ------- JOINTS ---------
        ikJoints = pm.duplicate(joints, po=1, rc=1)
        fkJoints = pm.duplicate(joints, po=1, rc=1)
        pm.disconnectAttr(limb.fkJoints)
        pm.disconnectAttr(limb.ikJoints)
        for joint in ikJoints:
            pm.connectAttr(limb.ikJoints, joint.limb)
        for joint in fkJoints:
            pm.connectAttr(limb.fkJoints, joint.limb)
        
        # ------- IK ---------
        # IK Handle
        startJoint = ikJoints[0]
        endJoint = ikJoints[-1]
        handle = pm.ikHandle(sj=startJoint, ee=endJoint)[0]
        handle.v.set(0)

        # IK Groups + Controls
        ikpvGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        ikpvGroup1 = ikpvGroups[0]
        ikpvGroup2 = ikpvGroups[1]
        ikpvGroup3 = ikpvGroups[2]
        startControl = pm.listConnections(ikpvGroup1.control)[0]
        midControl = pm.listConnections(ikpvGroup2.control)[0]
        endControl = pm.listConnections(ikpvGroup3.control)[0]

        # point cst start joint to control
        pm.pointConstraint(startControl, startJoint)

        # Parent IK Handle to control, PV mid control
        pm.parent(handle, endControl)
        pm.orientConstraint(endControl, endJoint, mo=1)
        pm.poleVectorConstraint(midControl, handle)

        # ------- FK ---------
        fkGroups = rigUtil.GetLimbGroups(limb, 'FK')
        fkControls = [pm.listConnections(g.control)[0] for g in fkGroups]
        for joint, control in zip(fkJoints, fkControls):
            pm.parentConstraint(control, joint, mo=1)

        # ------- FKIK ---------
        # create math node
        invertNode = pm.createNode('plusMinusAverage')
        invertNode.operation.set(2) # Subtract
        invertNode.input1D[0].set(1)
        pm.connectAttr(limb.fkik, invertNode.input1D[1])

        # cst main joints to FKIK joints
        for fk, ik, main in zip(fkJoints, ikJoints, joints):
            cst = pm.parentConstraint(fk, ik, main)
            fkAttr = '%s.%sW0' % (cst, fk.shortName())
            pm.connectAttr(invertNode.output1D, fkAttr)
            ikAttr = '%s.%sW1' % (cst, ik.shortName())
            pm.connectAttr(limb.fkik, ikAttr)

        # ------- VISIBILITY ---------
        fkJoints[0].v.set(0)
        ikJoints[0].v.set(0)
        for group in fkGroups:
            pm.connectAttr(invertNode.output1D, group.v)
        for group in ikpvGroups:
            pm.connectAttr(limb.fkik, group.v)
        curve = pm.listConnections(limb.ikpvCurve)[0]
        pm.connectAttr(limb.fkik, curve.v)

        # ------- JOINT GROUPS ---------
        for joint in joints:
            jointGroup = pm.listConnections(joint.group)[0]
            pm.parentConstraint(joint, jointGroup, mo=1)

    def Setup_Constraint_ControlsToXforms(self, limb, 
            xforms, hasPosCst, hasRotCst, hasScaleCst):
        log.funcFileDebug()
        # ------- IK ---------
        limbGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        limbControls = [pm.listConnections(g.control)[0] for g in limbGroups]
        ikpvStart = limbControls[0]
        ikpvMid = limbControls[1]
        ikpvEnd = limbControls[2]
        if hasPosCst:
            pm.pointConstraint(xforms[0], ikpvStart)
            pm.pointConstraint(xforms[-1], ikpvEnd)
        if hasRotCst:
            pm.orientConstraint(xforms[-1], ikpvEnd)
        if hasScaleCst:
            pm.scaleConstraint(xforms[0], ikpvStart)
            pm.scaleConstraint(xforms[-1], ikpvEnd)
        if hasPosCst or hasRotCst:
            pm.parentConstraint(xforms[1], ikpvMid, mo=1)
        
        # ------- FK ---------
        fkGroups = rigUtil.GetLimbGroups(limb, 'FK')
        fkControls = [pm.listConnections(g.control)[0] for g in fkGroups]
        for xform, control in zip(xforms, fkControls):
            if hasPosCst:
                pm.pointConstraint(xform, control)
            if hasRotCst:
                pm.orientConstraint(xform, control)
            if hasScaleCst:
                pm.scaleConstraint(xform, control)
        return limbControls + fkControls

#============= TEARDOWN ============================

    def Teardown_Rig_Controls(self, limb):
        log.funcFileDebug()
        # ------- IK ---------
        curve = pm.listConnections(limb.ikpvCurve)[0]
        curve.v.set(0)

        # ------- FK ---------
        fkGroups = rigUtil.GetLimbGroups(limb, 'FK')
        pm.parent(fkGroups[1:], limb)
        for fkGroup in fkGroups:
            fkGroup.v.set(1)

        # EXTERNAL

        # ------- IK ---------
        ikGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        for group in ikGroups:
            pm.delete(pm.listRelatives(group, c=1, type='constraint'))
            group.v.set(1)
                
        # ------- FK ---------
        fkGroup = fkGroups[0]
        pm.delete(pm.listRelatives(fkGroup, c=1, type='constraint'))

    def Teardown_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        # ------- IK ---------

        # Reposition group to second joint
        joints = pm.listConnections(limb.joints)
        joints = rigUtil.GetSortedJoints(joints)
        # limbGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        # midGroup = limbGroups[1]
        # jointPos = pm.xform(joints[1], q=1, t=1, ws=1)
        # pm.xform(midGroup, t=jointPos, ws=1)
        # self._UpdateIKPV2(limb)

        # ------- FK ---------
        pm.delete(pm.listConnections(limb.fkik, type='plusMinusAverage'))
        pm.delete(pm.listConnections(limb.fkJoints))
        pm.delete(pm.listConnections(limb.ikJoints))
        pm.disconnectAttr(limb.fkik)

        # ------- Joint Groups ---------
        jointGroups = [pm.listConnections(j.group)[0] for j in joints]
        for jointGroup in jointGroups:
            pm.delete(pm.listRelatives(jointGroup, c=1, type='constraint'))
    
    def Teardown_Constraint_ControlsToXforms(self, limb):
        log.funcFileDebug()
        # ------- IK ---------
        limbGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        controls = [pm.listConnections(g.control)[0] for g in limbGroups]
        for control in controls:
            pm.delete(pm.listRelatives(control, c=1, type='constraint'))

        # ------- FK ---------
        fkGroups = rigUtil.GetLimbGroups(limb, 'FK')
        controls = [pm.listConnections(g.control)[0] for g in fkGroups]
        for control in controls:
            pm.delete(pm.listRelatives(control, c=1, type='constraint'))
    
#============= EDITABLE UI ============================

    def Setup_Behavior_Limb_UI(self, limb):
        with pm.columnLayout(co=('left', -50)):
            pm.attrControlGrp( l='Control Distance', a=limb.ikpvDistance,
                                cc=pm.Callback(self._UpdateIKPV2, limb))
        return True
    
#============= ANIMATION UI ============================

    def Setup_AnimationTools_Limb_UI(self, limb):
        with pm.columnLayout(adj=1):
            pm.button('Snap Switch FK IK', c=pm.Callback(
                      self._SnapSwitch, limb))
        return True 
    
#============= UTIL ============================

    def _SnapSwitch(self, limb):
        fkGroups = rigUtil.GetLimbGroups(limb, 'FK')
        fkCtrs = [pm.listConnections(g.control)[0] for g in fkGroups]
        ikGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        ikCtrs = [pm.listConnections(g.control)[0] for g in ikGroups]

        if limb.fkik.get() < 0.5:
            limb.fkik.set(1)
            pm.delete(pm.parentConstraint(fkCtrs[0], ikCtrs[0]))
            pm.delete(pm.parentConstraint(fkCtrs[-1], ikCtrs[-1]))
            inner = pm.group(em=1, w=1)
            outer = pm.group(inner, w=1)
            self._InitIKPV2(limb, outer)
            inner.tx.set(limb.ikpvDistance.get())
            pm.parent(outer, w=1)
            pm.delete(pm.parentConstraint(inner, ikCtrs[1]))
            pm.delete(outer)
        else:
            locs = []
            for joint in rigUtil.GetSortedLimbJoints(limb):
                loc = pm.spaceLocator()
                pm.delete(pm.parentConstraint(joint, loc))
                locs.append(loc)
            for loc, fk in zip(locs, fkCtrs):
                pm.delete(pm.parentConstraint(loc, fk))
                pm.refresh()
            pm.delete(locs)
            limb.fkik.set(0)

    def _UpdateIKPV2(self, limb):
        dist = limb.ikpvDistance.get()
        group = rigUtil.GetLimbGroups(limb, self.groupType)[1]
        group.tx.set(dist)
        group.ty.set(0)
        group.tz.set(0)

    def _InitIKPV2(self, limb, ikpv2):
        joints = pm.listConnections(limb.joints)
        joints = rigUtil.GetSortedJoints(joints)
        j1 = joints[0]
        j2 = joints[1]
        j3 = joints[-1]
        
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
        pm.parent(ikpv2, j2)

        
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
