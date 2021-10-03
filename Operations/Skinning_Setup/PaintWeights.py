
import os

import pymel.core as pm

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
    areLimbsRequired = True
    areMeshesRequired = True
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
        pm.mel.eval('source "%s";' % paintJointMel)
        pm.mel.eval('source "%s";' % paintLimbMel)

#=========== BRUSH ====================================

    def PaintBrushOn_Limbs(self, brushMode, value, radius, softness):
        self.ctx = 'pfrsPaintCtx1'
        self._PaintBrushOn(brushMode, value, radius, softness)
        cmd = 'pfrsPaintLimbs("%s");' % self.ctx
        pm.mel.eval(cmd)
        self.UpdateLimbOps()
    
    def UpdateLimbOps(self):
        meshName = lmbOp.PFRS_MESH_NAME

        # BEFORE JOINT WEIGHTS
        lmbOp.VERT_WEIGHTS_BEFORE = []
        if lmbOp.LIMB_ATTRS_BEFORE:
            beforeJointWeights = self._GetJointWeights( meshName,
                                                        lmbOp.JOINT_ATTRS_BEFORE,
                                                        lmbOp.LIMB_ATTRS_BEFORE)

            lmbOp.VERT_WEIGHTS_BEFORE = self._ConvertToVertWeights(beforeJointWeights)

        # CURRENT JOINT WEIGHTS
        currentJointWeights = []
        for attr in lmbOp.JOINT_ATTRS_CURRENT:
            currentJointWeights.append(pm.getAttr('%s.%s' % (meshName, attr)))
        lmbOp.VERT_WEIGHTS_CURRENT = self._ConvertToVertWeights(currentJointWeights)

        # AFTER WEIGHTS
        lmbOp.VERT_WEIGHTS_AFTER = []
        if lmbOp.LIMB_ATTRS_AFTER:
            afterJointWeights = self._GetJointWeights(  meshName,
                                                        lmbOp.JOINT_ATTRS_AFTER,
                                                        lmbOp.LIMB_ATTRS_AFTER)
            lmbOp.VERT_WEIGHTS_AFTER = self._ConvertToVertWeights(afterJointWeights)
        
        # SET LIMB MASK VALUES
        name = '%s.%s' % (meshName, lmbOp.LIMB_ATTR)
        lmbOp.LIMB_WEIGHTS = pm.getAttr(name)

    def _GetJointWeights(self, meshName, jointAttrs, limbAttrs):
        jointWeights = []
        beforeLimb = {} # Attr : weights
        for i in range(len(jointAttrs)):
            jAttr = jointAttrs[i]
            lAttr = limbAttrs[i]
            jWeights = pm.getAttr('%s.%s' % (meshName, jAttr))
            if lAttr not in beforeLimb:
                beforeLimb[lAttr] = pm.getAttr('%s.%s' % (meshName, lAttr))
            lWeights = beforeLimb[lAttr]
            weights = [lWeights[i]*jWeights[i] for i in range(len(jWeights))]
            jointWeights.append(weights)
        return jointWeights

    def _ConvertToVertWeights(self, jointWeights):
        jointCount = len(jointWeights)
        vertCount = len(jointWeights[0])
        vertWeights = [[0]*jointCount for i in range(vertCount)]
        for inf in range(len(jointWeights)):
            for vert in range(vertCount):
                vertWeights[vert][inf] = jointWeights[inf][vert]
        return vertWeights

    def GetBrush(self):
        pm.setToolTo(self.ctx)

    def PaintBrushOn_Joints(self, brushMode, value, radius, softness):
        self.ctx = 'pfrsPaintCtx2'
        self._PaintBrushOn(brushMode, value, radius, softness)
        cmd = 'pfrsPaintJoints("%s");' % self.ctx
        pm.mel.eval(cmd)
        
    def UpdateJointOps(self):
        meshName = jntOp.PFRS_MESH_NAME
        # BEFORE JOINT WEIGHTS
        jntOp.VERT_WEIGHTS_BEFORE = []
        if jntOp.LIMB_ATTRS_BEFORE:
            beforeJointWeights = self._GetJointWeights( meshName,
                                                        jntOp.JOINT_ATTRS_BEFORE,
                                                        jntOp.LIMB_ATTRS_BEFORE)

            jntOp.VERT_WEIGHTS_BEFORE = self._ConvertToVertWeights(beforeJointWeights)

        # CURRENT JOINT WEIGHTS
        currentJointWeights = []
        for attr in jntOp.JOINT_ATTRS_CURRENT:
            currentJointWeights.append(pm.getAttr('%s.%s' % (meshName, attr)))
        jntOp.VERT_WEIGHTS_CURRENT = self._ConvertToVertWeights(currentJointWeights)

        # AFTER WEIGHTS
        jntOp.VERT_WEIGHTS_AFTER = []
        if jntOp.LIMB_ATTRS_AFTER:
            afterJointWeights = self._GetJointWeights(  meshName,
                                                        jntOp.JOINT_ATTRS_AFTER,
                                                        jntOp.LIMB_ATTRS_AFTER)
            jntOp.VERT_WEIGHTS_AFTER = self._ConvertToVertWeights(afterJointWeights)
        
        # SET LIMB MASK VALUES
        jntOp.JOINT_WEIGHTS = []
        for jointAttr in jntOp.JOINT_ATTRS_CURRENT:
            attr = '%s.%s' % (meshName, jointAttr)
            jntOp.JOINT_WEIGHTS.append(pm.getAttr(attr))
        attr = '%s.%s' % (meshName, jntOp.LIMB_ATTR)
        jntOp.LIMB_WEIGHTS = pm.getAttr(attr)

    def _PaintBrushOn(self, brushMode, value, radius, softness):
        # Create Brush
        if not pm.artUserPaintCtx(self.ctx, ex=1):
            pm.artUserPaintCtx(self.ctx, dl=1, cl='both',
                                    whichTool='userPaint') 
        # Set Brush
        if pm.currentCtx() != self.ctx:
            pm.setToolTo(self.ctx)
            if brushMode == 1: # Maya Add brush mode
                self.SetPaintModeAdd()
            else:
                self.SetPaintModeReplace()
            self.SetValue(value)
            self.SetRadius(radius)
            self.SetSoftness(softness)
        pm.polyOptions(cs=1)

    def PaintBrushOff(self):
        pm.polyOptions(cs=0)
        pm.setToolTo('selectSuperContext')

    def SetLimb(self, rigRoot, limb):
        attr = 'L%03d' % limb.ID.get()
        lmbOp.LIMB_ATTR = attr
        jntOp.LIMB_ATTR = attr
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
        jointNamesBefore = [j.longName() for j in beforeJoints]
        jointAttrsBefore = ['J%03d' % j.ID.get() for j in beforeJoints]
        lmbOp.JOINT_NAMES_BEFORE = jointNamesBefore
        jntOp.JOINT_NAMES_BEFORE = jointNamesBefore
        lmbOp.JOINT_ATTRS_BEFORE = jointAttrsBefore
        jntOp.JOINT_ATTRS_BEFORE = jointAttrsBefore
        lmbOp.LIMB_ATTRS_BEFORE = beforeLimbAttrs
        jntOp.LIMB_ATTRS_BEFORE = beforeLimbAttrs

        # CURRENT JOINTS
        joints = rigUtil.GetSortedLimbJoints(limb)
        jntOp.PFRS_INF_JOINTS = joints
        jointNamesCurrent = [j.longName() for j in joints]
        jointAttrsCurrent = ['J%03d' % j.ID.get() for j in joints]
        lmbOp.JOINT_NAMES_CURRENT = jointNamesCurrent
        jntOp.JOINT_NAMES_CURRENT = jointNamesCurrent
        lmbOp.JOINT_ATTRS_CURRENT = jointAttrsCurrent
        jntOp.JOINT_ATTRS_CURRENT = jointAttrsCurrent

        # AFTER JOINTS
        afterLimbs = limbOrder[index+1:]
        afterJoints = []
        afterLimbAttrs = []
        for tempLimb in afterLimbs:
            joints = rigUtil.GetSortedLimbJoints(tempLimb)
            attr = 'L%03d' % tempLimb.ID.get()
            afterLimbAttrs += [attr]*len(joints)
            afterJoints += joints
        jointNamesAfter = [j.longName() for j in afterJoints]
        jointAttrsAfter = ['J%03d' % j.ID.get() for j in afterJoints]
        lmbOp.JOINT_NAMES_AFTER = jointNamesAfter
        jntOp.JOINT_NAMES_AFTER = jointNamesAfter
        lmbOp.JOINT_ATTRS_AFTER = jointAttrsAfter
        jntOp.JOINT_ATTRS_AFTER = jointAttrsAfter
        lmbOp.LIMB_ATTRS_AFTER = afterLimbAttrs
    
    def SetJoint(self, limb, joint):
        joints = rigUtil.GetSortedLimbJoints(limb)
        index = joints.index(joint)
        jntOp.JOINT_INDEX = index
        positions = [pm.xform(j, q=1, t=1, ws=1) for j in joints]
        jntOp.LIMB_JOINT_POSITIONS = positions
    
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
    
    def UpdateControlDisplay(self, rigRoot):
        isRigged = not rigRoot.paintWeightsUseAnimJoints.get()
        rigUtil.SetLayerState(rigData.CONTROL_DISP_LAYER, isRigged, 0)

#=========== FLOOD ====================================

    def FloodAddLimb(self, mesh, weight):
        lmbOp.LIMB_WEIGHTS = [min(1, w + weight) for w in lmbOp.LIMB_WEIGHTS]
        vertCount = pm.polyEvaluate(mesh, v=1)
        for vertIndex in range(vertCount):
            value = lmbOp.LIMB_WEIGHTS[vertIndex]
            lmbOp.setPFRSPyPaintValue(vertIndex, value)

    def FloodReplaceLimb(self, mesh, weight):
        lmbOp.LIMB_WEIGHTS = [weight]*len(lmbOp.LIMB_WEIGHTS)
        vertCount = pm.polyEvaluate(mesh, v=1)
        for vertIndex in range(vertCount):
            value = lmbOp.LIMB_WEIGHTS[vertIndex]
            lmbOp.setPFRSPyPaintValue(vertIndex, value)

    def FloodAddJoint(self, mesh, weight):
        jointIndex = jntOp.JOINT_INDEX
        weights = jntOp.JOINT_WEIGHTS[jointIndex]
        weights = [min(1, weight + w) for w in weights]
        jntOp.JOINT_WEIGHTS[jointIndex] = weights
        vertCount = pm.polyEvaluate(mesh, v=1)
        for vertIndex in range(vertCount):
            value = weights[vertIndex]
            jntOp.setPFRSPyPaintValue(vertIndex, value)

    def FloodReplaceJoint(self, mesh, weight):
        jointIndex = jntOp.JOINT_INDEX
        weights = jntOp.JOINT_WEIGHTS[jointIndex]
        weights = [weight] * len(weights)
        self.SetJointWeights(jointIndex, weights)
        vertCount = pm.polyEvaluate(mesh, v=1)
        for vertIndex in range(vertCount):
            value = weights[vertIndex]
            jntOp.setPFRSPyPaintValue(vertIndex, value)
    
    def SetLimbWeights(self, weights, vertsToUpdate):
        lmbOp.LIMB_WEIGHTS = weights
        for vertIndex in vertsToUpdate:
            value = weights[vertIndex]
            lmbOp.setPFRSPyPaintValue(vertIndex, value)

#=========== PAINT SETTINGS ====================================

    def SetPaintModeAdd(self):
        pm.mel.eval('artAttrPaintOperation artUserPaintCtx Add;')

    def SetPaintModeReplace(self):
        pm.mel.eval('artAttrPaintOperation artUserPaintCtx Replace;')

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
        rigUtil.SetLayerState(rigData.CONTROL_DISP_LAYER, 0, 0)

    def Teardown_AnimJoints(self, rigRoot):
        self._Teardown_JointAnim()
        self.bhvMng.Setup_Rig(rigRoot)
        rigRoot.paintWeightsUseAnimJoints.set(0)
        rigUtil.SetLayerState(rigData.CONTROL_DISP_LAYER, 1, 0)

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
