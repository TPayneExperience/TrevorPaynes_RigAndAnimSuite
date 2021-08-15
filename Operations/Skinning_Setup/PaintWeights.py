
import os

import pymel.core as pm
import maya.mel as mel

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Utilities.Logger as log
reload(log)
import Data.Rig_Data as rigData
reload(rigData)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import Utilities.Skin_Utilities as skinUtil
reload(skinUtil)
import MeshSetup as ms
reload(ms)
import paintOp_Joints as jntOp
reload(jntOp)
import paintOp_Limbs as lmbOp
reload(lmbOp)

class PaintWeights(absOp.Abstract_Operation):
    isRigBuilt = True
    applyBakedAnimations = False
    validRigStates = (0,)       # 0 = Setup, 1 = Anim
    requiredLicense = 0         # 0 = Free, 1 = Personal, 2 = Pro
    controlLayerState = (1, 0)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef
    meshLayerState = (1, 0)     # isVis, isRef

    def __init__(self):
        self.ctx = ''
        self._skinTestAnimLayer = 'Skin_Test_Anim'
        self.meshSetup = ms.MeshSetup()

        # Import Paint Brush
        folder = os.path.dirname(__file__)
        paintJointMel = os.path.join(folder, 'paintBrush_Joints')
        paintLimbMel = os.path.join(folder, 'paintBrush_Limbs')
        paintJointMel = paintJointMel.replace('\\', '/')
        paintLimbMel = paintLimbMel.replace('\\', '/')
        mel.eval('source "%s";' % paintJointMel)
        mel.eval('source "%s";' % paintLimbMel)

#=========== BRUSH ====================================

    def PaintBrushOn_Limbs(self):
        self.ctx = 'pfrsPaintCtx1'
        self._PaintBrushOn()
        cmd = 'pfrsPaintLimbs("%s");' % self.ctx
        mel.eval(cmd)
        mesh = lmbOp.PFRS_MESH_NAME
        vertCount = pm.polyEvaluate(mesh, v=1)

        # BEFORE JOINT WEIGHTS
        before = []
        beforeLimb = {} # Attr : weights
        for i in range(len(lmbOp.JOINT_ATTRS_BEFORE)):
            jAttr = lmbOp.JOINT_ATTRS_BEFORE[i]
            lAttr = lmbOp.LIMB_ATTRS_BEFORE[i]
            jWeights = pm.getAttr('%s.%s' % (mesh, jAttr))
            if lAttr not in beforeLimb:
                beforeLimb[lAttr] = pm.getAttr('%s.%s' % (mesh, lAttr))
            lWeights = beforeLimb[lAttr]
            count = len(jWeights)
            weights = [lWeights[i]*jWeights[i] for i in range(count)]
            before.append(weights)

        lmbOp.VERT_WEIGHTS_BEFORE = self._ConvertToVertWeights(
                                        len(lmbOp.JOINT_ATTRS_BEFORE),
                                        vertCount,
                                        before)

        # CURRENT JOINT WEIGHTS
        current = []
        for attr in lmbOp.JOINT_ATTRS_CURRENT:
            current.append(pm.getAttr('%s.%s' % (mesh, attr)))
        lmbOp.VERT_WEIGHTS_CURRENT = self._ConvertToVertWeights(
                                        len(lmbOp.JOINT_ATTRS_CURRENT),
                                        vertCount,
                                        current)

        # AFTER WEIGHTS
        after = []
        afterLimb = {} # Attr : weights
        for i in range(len(lmbOp.JOINT_ATTRS_AFTER)):
            jAttr = lmbOp.JOINT_ATTRS_AFTER[i]
            lAttr = lmbOp.LIMB_ATTRS_AFTER[i]
            jWeights = pm.getAttr('%s.%s' % (mesh, jAttr))
            if lAttr not in afterLimb:
                afterLimb[lAttr] = pm.getAttr('%s.%s' % (mesh, lAttr))
            lWeights = afterLimb[lAttr]
            count = len(jWeights)
            weights = [lWeights[i]*jWeights[i] for i in range(count)]
            after.append(weights)
        lmbOp.VERT_WEIGHTS_AFTER = self._ConvertToVertWeights(
                                        len(lmbOp.JOINT_ATTRS_AFTER),
                                        vertCount,
                                        after)
        
        # SET LIMB MASK VALUES
        name = '%s.%s' % (mesh, lmbOp.PFRS_ATTR)
        lmbOp.LIMB_MASK = pm.getAttr(name)

    def _ConvertToVertWeights(self, infCount, vertCount, oldInf):
        weights = [[0]*infCount for i in range(vertCount)]
        for inf in range(len(oldInf)):
            for vert in range(vertCount):
                weights[vert][inf] = oldInf[inf][vert]
        return weights

    def PaintBrushOn_Joints(self):
        self.ctx = 'pfrsPaintCtx2'
        self._PaintBrushOn()
        cmd = 'pfrsPaintJoints("%s");' % self.ctx
        mel.eval(cmd)

    def _PaintBrushOn(self):
        # Create Brush
        if not pm.artUserPaintCtx(self.ctx, ex=1):
            pm.artUserPaintCtx(self.ctx, dl=1, cl='both',
                                    whichTool='userPaint') 
        # Set Brush
        if pm.currentCtx() != self.ctx:
            pm.setToolTo(self.ctx)
        pm.polyOptions(cs=1)
        rigUtil.SetLayerState(rigData.JOINTS_DISP_LAYER, 1, 1)
        rigUtil.SetLayerState(rigData.CONTROL_DISP_LAYER, 0, 0)

    def PaintBrushOff(self):
        pm.polyOptions(cs=0)
        pm.setToolTo('selectSuperContext')
        rigUtil.SetLayerState(rigData.JOINTS_DISP_LAYER, 1, 1)
        rigUtil.SetLayerState(rigData.CONTROL_DISP_LAYER, 1, 0)

    def SetLimb(self, rigRoot, limb):
        lmbOp.PFRS_ATTR = 'L%03d' % limb.ID.get()
        limbs = pm.listConnections(rigRoot.limbs)
        limbOrder = skinUtil.GetSkeletalLimbOrder(limbs)
        index = limbOrder.index(limb)
        
        # BEFORE JOINTS
        beforeLimbs = limbOrder[:index]
        beforeJoints = []
        beforeLimbAttrs = []
        for tempLimb in beforeLimbs:
            joints = rigUtil.GetSortedLimbJoints(tempLimb)
            attr = 'L%03d' % tempLimb.ID.get()
            beforeLimbAttrs += [attr]*len(joints)
            beforeJoints += joints

        lmbOp.JOINT_NAMES_BEFORE = [j.longName() for j in beforeJoints]
        lmbOp.JOINT_ATTRS_BEFORE = ['J%03d' % j.ID.get() for j in beforeJoints]
        lmbOp.LIMB_ATTRS_BEFORE = beforeLimbAttrs

        # CURRENT JOINTS
        joints = rigUtil.GetSortedLimbJoints(limb)
        lmbOp.JOINT_NAMES_CURRENT = [j.longName() for j in joints]
        lmbOp.JOINT_ATTRS_CURRENT = ['J%03d' % j.ID.get() for j in joints]

        # AFTER JOINTS
        afterLimbs = limbOrder[index+1:]
        afterJoints = []
        afterLimbAttrs = []
        for tempLimb in afterLimbs:
            joints = rigUtil.GetSortedLimbJoints(tempLimb)
            attr = 'L%03d' % tempLimb.ID.get()
            afterLimbAttrs += [attr]*len(joints)
            afterJoints += joints
        lmbOp.JOINT_NAMES_AFTER = [j.longName() for j in afterJoints]
        lmbOp.JOINT_ATTRS_AFTER = ['J%03d' % j.ID.get() for j in afterJoints]
        lmbOp.LIMB_ATTRS_AFTER = afterLimbAttrs
    
    def SetJoint(self, limb, joint):
        joints = rigUtil.GetSortedLimbJoints(limb)
        index = joints.index(joint)
        
        jntOp.PFRS_ATTR = 'J%03d' % joint.ID.get()
        jntOp.PFRS_INF_JOINTS = joints
        jntOp.PFRS_JOINT_INDEX = index
    
    def SetMesh(self, mesh):
        lmbOp.PFRS_MESH_NAME = mesh.longName()
        jntOp.PFRS_MESH_NAME = mesh.longName()
        xform = pm.listRelatives(mesh, p=1)[0]
        skinCluster = pm.listConnections(xform.pfrsSkinCluster)[0]
        lmbOp.SKIN_CLUSTER = skinCluster.longName()
        jntOp.SKIN_CLUSTER = skinCluster.longName()
    
    def DisplayLimbVertexColors(self):
        lmbOp.DisplayVertexColors()

    def DisplayJointVertexColors(self):
        jntOp.DisplayVertexColors()
    

#=========== FLOOD ====================================

    def FloodAddLimb(self, mesh, limb, weight):
        attr = 'L%03d' % limb.ID.get()
        self.meshSetup.FloodAdd(mesh, attr, weight)
    
    def FloodAddJoint(self, mesh, limb, joint, weight):
        attr = 'J%03d' % joint.ID.get()
        joints = pm.listConnections(limb.joints)
        joints = [j for j in joints if j != joint]
        self.meshSetup.FloodAdd(mesh, attr, weight)

        # Get Weights
        vertCount = pm.polyEvaluate(mesh, v=1)
        attrs = ['J%03d' % j.ID.get() for j in joints]
        weights = [mesh.getAttr(a) for a in attrs]

        for i in range(vertCount):
            # Get old weight total for vertex
            oldWeightTotal = 0
            vertWeight = mesh.getAttr(attr)
            remainingWeight = 1 - vertWeight
            for jointWeights in weights:
                oldWeightTotal += jointWeights[i]
            oldWeightTotal = min(1, oldWeightTotal)
            # Scale vertex weights
            scalar = remainingWeight / oldWeightTotal
            for j in range(len(weights)):
                weights[j][i] *= scalar

        # Set Attrs values
        for i in range(len(attrs)):
            attr = attrs[i]
            newWeights = weights[i]
            mesh.setAttr(attr, newWeights)
    
    def FloodReplaceLimb(self, mesh, limb, weight):
        attr = 'L%03d' % limb.ID.get()
        self.meshSetup.FloodReplace(mesh, attr, weight)
    
    def FloodReplaceJoint(self, mesh, limb, joint, weight):
        attr = 'J%03d' % joint.ID.get()
        joints = pm.listConnections(limb.joints)
        joints = [j for j in joints if j != joint]
        self.meshSetup.FloodReplace(mesh, attr, weight)
        remainingWeight = 1-weight
        if remainingWeight < 0.001:
            for joint in joints:
                attr = 'J%03d' % joint.ID.get()
                self.meshSetup.FloodReplace(mesh, attr, 0)
        else:
            # Rebalance weights
            # Get amount to scale weights by
            attrs = ['J%03d' % j.ID.get() for j in joints]
            weights = [mesh.getAttr(a) for a in attrs]
            weightSums = [sum(w) for w in weights]
            oldWeightTotal = sum(weightSums)
            scalar = remainingWeight/oldWeightTotal
            newWeights = []

            # Scale weights
            for jointWeights in weights:
                newWeights.append([w*scalar for w in jointWeights])

            # Set Attrs values
            for i in range(len(attrs)):
                attr = attrs[i]
                weights = newWeights[i]
                mesh.setAttr(attr, weights)

    
#=========== PAINT SETTINGS ====================================

    def SetPaintModeAdd(self):
        mel.eval('artAttrPaintOperation artUserPaintCtx Add;')

    def SetPaintModeReplace(self):
        mel.eval('artAttrPaintOperation artUserPaintCtx Replace;')

    def SetValue(self, value):
        pm.artUserPaintCtx(self.ctx, e=1, val=value) 
        
    def SetRadius(self, radius):
        pm.artUserPaintCtx(self.ctx, e=1, r=radius) 
    
    def SetSoftness(self, softness):
        pm.artUserPaintCtx(self.ctx, e=1, lr=softness) 
    

#=========== ANIMATIONS ====================================

    def Setup_AnimJoints(self, rigRoot):
        self.bhvMng.Teardown_Rig(rigRoot)
        self._Setup_JointAnim(rigRoot)
        rigRoot.paintWeightsUseAnimJoints.set(1)

    def Teardown_AnimJoints(self, rigRoot):
        self._Teardown_JointAnim()
        self.bhvMng.Setup_Rig(rigRoot)
        rigRoot.paintWeightsUseAnimJoints.set(0)

    def SetTimeRange(self, joints):
        values = []
        for joint in joints:
            values.append(joint.skinAnimStart.get())
            values.append(joint.skinAnimEnd.get())
        start = min(values)
        end = max(values)
        pm.playbackOptions(min=start, max=end)

    def _Setup_JointAnim(self, rigRoot):
        allJoints = {}
        for limb in pm.listConnections(rigRoot.limbs):
            if limb.limbType.get() == 0:
                continue
            for joint in pm.listConnections(limb.joints):
                allJoints[joint.longName()] = joint
        sortedNames = sorted(list(allJoints.keys()))
        joints = [allJoints[n] for n in sortedNames]
        pm.select(joints)
        pm.animLayer(self._skinTestAnimLayer, aso=1, s=1)
        pm.select(d=1)
        startTime = 1
        for joint in joints:
            joint.skinAnimStart.set(startTime)
            for attr in ('.rx', '.ry', '.rz'):
                jointAttr = joint + attr
                pm.setKeyframe(jointAttr, t=startTime, v=0, itt='flat')
                pm.setKeyframe(jointAttr, t=startTime+3, v=90)
                pm.setKeyframe(jointAttr, t=startTime+9, v=-90)
                pm.setKeyframe(jointAttr, t=startTime+12, v=0, ott='flat')
                startTime += 12
            joint.skinAnimEnd.set(startTime)
            startTime += 1
        pm.animLayer(self._skinTestAnimLayer, e=1, l=1, m=0)

    def _Teardown_JointAnim(self):
        pm.currentTime(1)
        pm.playbackOptions(min=1, max=120)
        pm.delete(self._skinTestAnimLayer)

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
