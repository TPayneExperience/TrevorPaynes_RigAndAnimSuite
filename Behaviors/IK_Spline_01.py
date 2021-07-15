
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)

import Utilities.Logger as log
reload(log)

class IK_Spline_01(absBhv.Abstract_Behavior):
    bhvType = 'IK Spline'
    validLimbTypes = (4,)   # rigData.LIMB_TYPES
    groupType = 'IKS'  # LookAt, IKPV...
    groupShape = 'Cylinder_Poly'
    groupCount = 4
    groupMoveable = False    # for moving control pivots
    uiOrderIndex = 320  
    usesJointControls = False
    usesLimbControls = True
    bakeLosesData = True
    duplicateJointGroups = False
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        if not limb.hasAttr('IKSCurve'):
            pm.addAttr(limb, ln='IKSCurve', dt='string')
            pm.addAttr(limb, ln='IKSTwist', at='float')
            pm.setAttr(limb.IKSTwist, cb=1)
        limbGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]
        startJoint = joints[0]
        endJoint = joints[-1]

        # Get IK Spline Curve
        temp = pm.ikHandle(sj=startJoint, ee=endJoint, sol='ikSplineSolver')
        handle = temp[0]
        curve = temp[2]
        curve.v.set(0)
        pm.addAttr(curve, ln='limb', dt='string')
        pm.connectAttr(limb.IKSCurve, curve.limb)
        pm.parent(curve, limb)

        # Position Groups
        for i in range(4):
            attr = '%s.cv[%d]' %(curve, i)
            pos = pm.xform(attr, q=1, t=1, ws=1)
            pm.xform(limbGroups[i], t=pos, ws=1)
        pm.delete(handle)

        # Aim Groups
        for i in range(4):
            group = limbGroups[i]
            cst = pm.aimConstraint(startJoint, group, aim=(0,1,0))
            pm.delete(cst)
    
    def CleanupLimb(self, limb):
        log.funcFileDebug()
        pm.delete(pm.listConnections(limb.IKSCurve))
    
#============= RIG ============================

    def Setup_Rig_Controls(self, limb):
        log.funcFileDebug()
        limbGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        joint = [pm.listConnections(g.joint)[0] for g in jointGroups][0]
        parentJoints = pm.listRelatives(joint, p=1, type='joint')
        if parentJoints:
            parentJoint = parentJoints[0]
            parentGroup = pm.listConnections(parentJoint.group)[0]
            parentControl = pm.listConnections(parentGroup.control)[0]
            pm.parentConstraint(parentControl, limbGroups[0], mo=1)
        parentControl = rigUtil.GetParentControl(limb)
        if parentControl:
            for group in limbGroups[1:]:
                pm.parentConstraint(parentControl, group, mo=1)
    
    def Setup_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        # Get Stuff
        limbGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]
        curve = pm.listConnections(limb.IKSCurve)[0]

        # Handle setup
        handle = pm.ikHandle(sj=joints[0], ee=joints[-1], 
                                            c=curve, 
                                            ccv=0, 
                                            sol='ikSplineSolver')[0]
        handle.v.set(0)
        pm.connectAttr(limb.IKSTwist, handle.twist)
        pm.parent(handle, curve, limb)

        # Setup Control clusters
        for i in range(4):
            control = pm.listConnections(limbGroups[i].control)[0]
            attr = '%s.cv[%d]' %(curve, i)
            clusters = pm.cluster(attr)
            clusterXform = clusters[1]
            pm.parent(clusterXform, control)
            clusterXform.v.set(0)

        # Joint groups for parenting
        for group in jointGroups:
            joint = pm.listConnections(group.joint)[0]
            pm.parentConstraint(joint, group, mo=1)
    
    def Setup_Constraint_ControlsToXforms(self, limb, 
            xforms, hasPosCst, hasRotCst, hasScaleCst):
        log.funcFileDebug()
        limbGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        limbControls = [pm.listConnections(g.control)[0] for g in limbGroups]

        # Constrain end controls
        for i in (-2, -1, 0, 1):
            if hasPosCst:
                pm.pointConstraint(xforms[i], limbControls[i])
            if hasRotCst:
                pm.orientConstraint(xforms[i], limbControls[i])
            if hasScaleCst:
                pm.scaleConstraint(xforms[i], limbControls[i])
        return limbControls

#============= TEARDOWN ============================

    def Teardown_Rig_Controls(self, limb):
        log.funcFileDebug()
        if pm.listConnections(limb.limbParent):
            for group in rigUtil.GetLimbGroups(limb, self.groupType):
                cst = pm.listRelatives(group, c=1, type='parentConstraint')
                pm.delete(cst)

    def Teardown_Constraint_JointsToControls(self, limb):
        log.funcFileDebug()
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)

        # Delete IK Handle
        handle = pm.listRelatives(limb, c=1, type='ikHandle')
        pm.delete(handle)

        # Delete Joint Constraints
        for group in jointGroups:
            cst = pm.listRelatives(group, c=1, type='parentConstraint')
            pm.delete(cst)

        # Delete Limb Group Constraints
        limbGroups = rigUtil.GetLimbGroups(limb, self.groupType)
        if pm.listConnections(limb.limbParent):
            for group in limbGroups:
                cst = pm.listRelatives(group, c=1, type='parentConstraint')
                pm.delete(cst)

        # Delete Clusters
        toDelete = []
        for limbGroup in limbGroups:
            control = pm.listConnections(limbGroup.control)[0]
            for child in pm.listRelatives(control, c=1):
                toDelete += pm.listRelatives(child, c=1, type='clusterHandle')
        pm.delete(toDelete)

    def Teardown_Constraint_ControlsToXforms(self, limb):
        log.funcFileDebug()
        groups = rigUtil.GetLimbGroups(limb, self.groupType)
        controls = [pm.listConnections(g.control)[0] for g in groups]
        for control in controls:
            pm.delete(pm.listRelatives(control, c=1, type='constraint'))
    
#============= EDITABLE UI ============================

    def Setup_Editable_Limb_UI(self, limb):
        log.funcFileDebug()
        group = rigUtil.GetLimbGroups(limb, self.groupType)[0]
        with pm.columnLayout(co=('left', -100)):
            pm.attrControlGrp( l='Show Start Control', a=group.v)
        return True
    
#============= ANIMATION UI ============================

    def Setup_Animation_Limb_UI(self, limb):
        with pm.columnLayout(co=('left', -100)):
            pm.attrControlGrp(l='Twist', a=limb.IKSTwist)
        return True # return if UI is enabled
    
    
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
