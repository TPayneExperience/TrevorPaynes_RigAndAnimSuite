
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)
import Data.General_Data as genData
reload(genData)

import Common.Logger as log
reload(log)

class FKIK_01(absBhv.Abstract_Behavior):
    bhvType = 'FK IK'
    validLimbTypes = (4,) # rigData.LIMB_TYPES
    groupType = 'IKPV'        # LookAt, IKPV...
    groupShape = 'Sphere_Poly'
    groupCount = 3
    groupMoveable = False   # for moving control pivots
    orderIndex = 410
    usesJointControls = True
    usesLimbControls = True
    bakeLosesData = True

    def InitLimb(self, limb):
        log.funcFileDebug()
        if not limb.hasAttr('fkik'):
            pm.addAttr(limb, ln='fkik', at='float', min=0, max=1,
                                k=1, h=genData.HIDE_ATTRS)
        # FK, Not Needed

        # IK
        if not limb.hasAttr('ikpvDistance'):
            pm.addAttr(limb, ln='ikpvDistance', at='float', 
                                                min=0, dv=10)
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]
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
        
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
        # FK Not Needed
        # IK not needed
    
#============= SETUP ============================

    def Setup_Rig_Internal(self, limb):
        log.funcFileDebug()
        groups = self.fk.Setup_Rig_Internal(limb)
        groups += self.ik.Setup_Rig_Internal(limb)

        # Create dummy groups/controls for external parenting
        pm.disconnectAttr(limb.jointGroups)
        for joint in pm.listConnections(limb.joints):
            jointGroup = pm.listConnections(joint.group)[0]
            index = jointGroup.groupIndex.get()
            group = pm.group(em=1, p=joint)
            pm.addAttr(group, ln='control', dt='string')
            pm.addAttr(group, ln='limb', dt='string')
            pm.addAttr(group, ln='groupIndex', at='long', dv=index)
            pm.parent(group, limb)
            control = pm.group(em=1, p=group)
            pm.addAttr(control, ln='group', dt='string')
            pm.connectAttr(group.control, control.group)
            pm.connectAttr(limb.jointGroups, group.limb)

        return groups
    
    def Setup_Rig_External(self, limb):
        log.funcFileDebug()
        # Parent FK to start joint's parent joint control
        joints = pm.listConnections(limb.joints)
        joints = rigUtil.Joint._GetSortedJoints(joints)
        jointGroups = [pm.listConnections(j.group)[0] for j in joints]
        parentJoints = pm.listRelatives(joints[0], p=1, type='joint')
        if parentJoints:
            parentJoint = parentJoints[0]
            parentGroup = pm.listConnections(parentJoint.group)[0]
            parentControl = pm.listConnections(parentGroup.control)[0]
            pm.parentConstraint(parentControl, jointGroups[0], mo=1)
        groups = self.ik.Setup_Rig_External(limb)
        groups.append(jointGroups[0])
        return groups
    
    def Setup_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]

        # IK
        # ikJoints = pm.duplicate(joints, po=1, rc=1)
        # for group, joint in zip(jointGroups, ikJoints):
        #     pm.disconnectAttr(group.joint)
        #     pm.connectAttr(joint.group, group.joint)
        self.ik.Setup_Constraint_JointsToControls(limb)

        # # FK
        # fkJoints = pm.duplicate(joints, po=1, rc=1)
        # for group, joint in zip(jointGroups, fkJoints):
        #     pm.disconnectAttr(group.joint)
        #     pm.connectAttr(joint.group, group.joint)
        #     cst = pm.listRelatives(group, c=1, type='parentConstraint')
        #     pm.delete(cst)
        self.fk.Setup_Constraint_JointsToControls(limb)
        # for joint in fkJoints:
        #     pm.connectAttr(limb.fkJoints, joint.limb)
        # for joint in ikJoints:
        #     pm.connectAttr(limb.ikJoints, joint.limb)

        fkJoints = pm.listConnections(limb.fkJoints)
        fkJoints = rigUtil.Joint._GetSortedJoints(fkJoints)
        ikJoints = pm.listConnections(limb.ikJoints)
        ikJoints = rigUtil.Joint._GetSortedJoints(ikJoints)

        # create math node
        invertNode = pm.createNode('plusMinusAverage')
        invertNode.operation.set(2) # Subtract
        invertNode.input1D[0].set(1)
        pm.connectAttr(limb.fkik, invertNode.input1D[1])

        # cst main joints to FKIK joints
        csts = []
        for fk, ik, main in zip(fkJoints, ikJoints, joints):
            cst = pm.parentConstraint(fk, ik, main)
            fkAttr = '%s.%sW0' % (cst, fk.shortName())
            pm.connectAttr(invertNode.output1D, fkAttr)
            ikAttr = '%s.%sW1' % (cst, ik.shortName())
            pm.connectAttr(limb.fkik, ikAttr)
            csts.append(cst)

        # Visibility : hide joints, bind groups vis to fkik
        fkJoints[0].v.set(0)
        ikJoints[0].v.set(0)
        for jointGroup in jointGroups:
            pm.connectAttr(invertNode.output1D, jointGroup.v)
            pm.connectAttr(limb.usedGroups, jointGroup.used)
        limbGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        for limbGroup in limbGroups:
            pm.connectAttr(limb.fkik, limbGroup.v)
            pm.connectAttr(limb.usedGroups, limbGroup.used)
        curve = pm.listConnections(limb.IKPVCurve)[0]
        pm.connectAttr(limb.fkik, curve.v)

        # Cleanup
        for group, joint in zip(jointGroups, ikJoints):
            pm.disconnectAttr(group.joint)
            pm.connectAttr(joint.group, group.joint)
    
    def Setup_Constraint_ControlsToJoints(self, limb):
        log.funcFileDebug()
        self.ik.Setup_Constraint_ControlsToJoints()
        self.fk.Setup_Constraint_ControlsToJoints()
    
    def _CreateFKJoints(self, limb, joints):
        fkJoints = pm.duplicate(joints, po=1, rc=1)
        pm.disconnectAttr(limb.joints)
        for joint in fkJoints:
            pm.connectAttr(limb.joints, joint.limb)
            joint.v.set(0)
        # for group, joint in zip(jointGroups, fkJoints):
        #     pm.disconnectAttr(group.joint)
        #     pm.connectAttr(joint.group, group.joint)
        #     cst = pm.listRelatives(group, c=1, type='parentConstraint')
        #     pm.delete(cst)
        # self.fk.Setup_Constraint_JointsToControls(limb)
        # for joint in fkJoints:
        #     pm.connectAttr(limb.fkJoints, joint.limb)

    def _CreateIKJoints(self, limb, joints):
        ikJoints = pm.duplicate(joints, po=1, rc=1)
        pm.disconnectAttr(limb.joints)
        for joint in ikJoints:
            pm.connectAttr(limb.joints, joint.limb)
            joint.v.set(0)
        # for group, joint in zip(jointGroups, ikJoints):
        #     pm.disconnectAttr(group.joint)
        #     pm.connectAttr(joint.group, group.joint)
        # self.ik.Setup_Constraint_JointsToControls(limb)
        # for joint in ikJoints:
        #     pm.connectAttr(limb.ikJoints, joint.limb)
        

#============= TEARDOWN ============================

    def Teardown_Rig_Internal(self, limb):
        log.funcFileDebug()
        self.fk.Teardown_Rig_Internal(limb)
        self.ik.Teardown_Rig_Internal(limb)
        for group in pm.listConnections(limb.jointGroups):
            group.v.set(0)
        limbGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        for group in limbGroups:
            group.v.set(0)

    def Teardown_Rig_External(self, limb):
        log.funcFileDebug()
        self.fk.Teardown_Rig_External(limb)
        self.ik.Teardown_Rig_External(limb)

    def Teardown_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        self.ik.Teardown_Constraint_JointsToControls(limb)
        self.fk.Teardown_Constraint_JointsToControls(limb)
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        joints = pm.listConnections(limb.joints)
        joints = rigUtil.Joint._GetSortedJoints(joints)
        for group, joint in zip(jointGroups, joints):
            pm.disconnectAttr(group.joint)
            pm.connectAttr(joint.group, group.joint)
        pm.delete(pm.listConnections(limb.fkik, type='plusMinusAverage'))
        pm.delete(pm.listConnections(limb.fkJoints))
        pm.delete(pm.listConnections(limb.ikJoints))
        pm.disconnectAttr(limb.fkik)
    
    def Teardown_Constraint_ControlsToJoints(self, limb):
        log.funcFileDebug()
        self.fk.Teardown_Constraint_ControlsToJoints(limb)
        self.ik.Teardown_Constraint_ControlsToJoints(limb)
    
#============= EDITABLE UI ============================

    def Setup_Editable_Limb_UI(self, limb):
        log.funcFileDebug()
        return False
    
#============= ANIMATION UI ============================

    def Setup_Animation_Limb_UI(self, limb):
        log.funcFileDebug()
        return False 
    
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