
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
import MeshSetup as ms
reload(ms)
import pfrsPaintOperations as paint
reload(paint)

class PaintWeights(absOp.Abstract_Operation):
    isRigBuilt = True
    applyBakedAnimations = False
    validRigStates = (0,)       # 0 = Setup, 1 = Anim
    requiredLicense = 0         # 0 = Free, 1 = Personal, 2 = Pro
    controlLayerState = (1, 0)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef
    meshLayerState = (1, 0)     # isVis, isRef

    def __init__(self):
        self.ctx = 'pfrsPaintCtx'
        self._skinTestAnimLayer = 'Skin_Test_Anim'
        self.meshSetup = ms.MeshSetup()

        # Import Paint Brush
        folder = os.path.dirname(__file__)
        pfrsPaintMel = os.path.join(folder, 'pfrsPaintBrush')
        pfrsPaintMel = pfrsPaintMel.replace('\\', '/')
        mel.eval('source "%s";' % pfrsPaintMel)

#=========== BRUSH ====================================

    def PaintBrushOn(self):
        # Create Brush
        if not pm.artUserPaintCtx(self.ctx, ex=1):
            pm.artUserPaintCtx(self.ctx, dl=1, cl='both',
                                    whichTool='userPaint') 
        # Set Brush
        if pm.currentCtx() != self.ctx:
            pm.setToolTo(self.ctx)
        mel.eval('pfrsPaint("pfrsPaintCtx");')
        pm.polyOptions(cs=1)
        rigUtil.SetLayerState(rigData.JOINTS_DISP_LAYER, 1, 1)
        rigUtil.SetLayerState(rigData.CONTROL_DISP_LAYER, 0, 0)

    def PaintBrushOff(self):
        pm.polyOptions(cs=0)
        pm.setToolTo('selectSuperContext')
        rigUtil.SetLayerState(rigData.JOINTS_DISP_LAYER, 1, 1)
        rigUtil.SetLayerState(rigData.CONTROL_DISP_LAYER, 1, 0)

    def SetLimb(self, limb):
        if limb:
            paint.PFRS_ATTR = 'L%03d' % limb.ID.get()
            paint.PFRS_INF_JOINTS = []
        else:
            paint.PFRS_ATTR = ''
            paint.PFRS_INF_JOINTS = []
    
    def SetJoint(self, limb, joint):
        if joint:
            joints = pm.listConnections(limb.joints)
            
            paint.PFRS_ATTR = 'J%03d' % joint.ID.get()
            paint.PFRS_INF_JOINTS = []
        else:
            paint.PFRS_ATTR = ''
            paint.PFRS_INF_JOINTS = []
    
    def SetMesh(self, mesh):
        if mesh:
            paint.PFRS_MESH_NAME = mesh.longName()
        else:
            paint.PFRS_MESH_NAME = ''
    
    def UpdatePaintDisplay(self):
        paint.UpdateLimbVertexColors()

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

    
#=========== Paint Mode ====================================

    def SetPaintModeAdd(self):
        mel.eval('artAttrPaintOperation artUserPaintCtx Add;')

    def SetPaintModeReplace(self):
        mel.eval('artAttrPaintOperation artUserPaintCtx Replace;')

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
