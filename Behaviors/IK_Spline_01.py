
import pymel.core as pm

import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)

import Common.Logger as log
reload(log)

class IK_Spline_01(absBhv.Abstract_Behavior):
    bhvName = 'IK Spline'
    validLimbTypes = (4,)   # rigData.LIMB_TYPES
    groupType = 'IKS'  # LookAt, IKPV...
    groupShape = 'Cylinder_Poly'
    groupCount = 4
    groupMoveable = False    # for moving control pivots
    orderIndex = 320  
    
    def InitLimb(self, limb):
        log.funcFileDebug()
        if not limb.hasAttr('IKSCurve'):
            pm.addAttr(limb, ln='IKSCurve', dt='string')
        limbGroups = pm.listConnections(limb.usedGroups)
        limbGroups = rigUtil.SortGroups(limbGroups)
        jointGroups = pm.listConnections(limb.parentableGroups)
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

    def Setup_Rig_Internal(self, limb):
        log.funcFileDebug()
        limbGroups = pm.listConnections(limb.usedGroups)
        limbGroups = rigUtil.SortGroups(limbGroups)
        jointGroups = pm.listConnections(limb.parentableGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]
        curve = pm.listConnections(limb.IKSCurve)[0]
        temp = pm.ikHandle(sj=joints[0], ee=joints[-1], c=curve, ccv=0, 
                                                    sol='ikSplineSolver')
        handle = temp[0]
        pm.parent(handle, limb)
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

    def Setup_Rig_External(self, limb):
        log.funcFileDebug()
        parentControl = rigUtil.GetParentControl(limb)
        if not parentControl:
            return
        for group in pm.listConnections(limb.usedGroups):
            pm.parentConstraint(parentControl, group, mo=1)
    
    def Teardown_Rig(self, limb):
        log.funcFileDebug()
        jointGroups = pm.listConnections(limb.parentableGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]
        handle = pm.listConnections(joints[0].message)[0]
        pm.delete(handle)
        pm.delete(pm.listConnections(joints[-1].rx)) # orientCst
        constraints = [pm.listConnections(g.rx)[0] for g in jointGroups]
        pm.delete(constraints) # parentCsts
        limbGroups = pm.listConnections(limb.usedGroups)
        limbGroups = rigUtil.SortGroups(limbGroups)
        toDelete = []
        for limbGroup in limbGroups:
            control = pm.listConnections(limbGroup.control)[0]
            for child in pm.listRelatives(control, c=1):
                toDelete += pm.listRelatives(child, c=1, type='clusterHandle')
        pm.delete(toDelete)

        for group in pm.listConnections(limb.usedGroups):
            pm.parent(group, limb)

#============= BAKE (Requires Setup) ============================

    def Setup_Bake(self, limb):
        log.funcFileDebug()
    
    def Teardown_Bake(self, limb):
        log.funcFileDebug()
    
#============= EDITABLE UI ============================

    def Setup_Editable_Limb_UI(self, limb):
        log.funcFileDebug()
        return False
    
    def Setup_Editable_Group_UI(self, group):
        log.funcFileDebug()
    
#============= ANIMATION UI ============================

    def Setup_Animation_Limb_UI(self, limb):
        return False # return if UI is enabled
    
    def Setup_Animation_Group_UI(self, group):
        pass
    
    