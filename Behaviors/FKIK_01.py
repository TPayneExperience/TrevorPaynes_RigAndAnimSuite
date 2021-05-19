
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)
import Data.General_Data as genData
reload(genData)
import Behaviors.FK_Chain_01 as fkcBhv
reload(fkcBhv)
import Behaviors.IK_PoleVector_01 as ikpvBhv
reload(ikpvBhv)
# import SceneData.Group as grp
# reload(grp)

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
    fk = fkcBhv.FK_Chain_01()
    ik = ikpvBhv.IK_PoleVector_01()

    def InitLimb(self, limb):
        log.funcFileDebug()
        joints = pm.listConnections(limb.joints)
        joints = rigUtil.Joint._GetSortedJoints(joints)
        self._CreateFKJoints(limb, joints)
        self.fk.InitLimb(limb)
        self._CreateIKJoints(limb, joints)
        self.ik.InitLimb(limb)
        # for group in pm.listConnections(limb.usedGroups):
        #     group.v.set(0)
        pm.disconnectAttr(limb.usedGroups)
        if not limb.hasAttr('fkik'):
            pm.addAttr(limb, ln='fkik', at='float', min=0, max=1,
                                k=1, dv=0, h=genData.HIDE_ATTRS)
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
        self.fk.CleanupLimb(limb)
        self.ik.CleanupLimb(limb)
    
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
        # self.ik.Setup_Constraint_JointsToControls(limb)

        # # FK
        # fkJoints = pm.duplicate(joints, po=1, rc=1)
        # for group, joint in zip(jointGroups, fkJoints):
        #     pm.disconnectAttr(group.joint)
        #     pm.connectAttr(joint.group, group.joint)
        #     cst = pm.listRelatives(group, c=1, type='parentConstraint')
        #     pm.delete(cst)
        # self.fk.Setup_Constraint_JointsToControls(limb)
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
    