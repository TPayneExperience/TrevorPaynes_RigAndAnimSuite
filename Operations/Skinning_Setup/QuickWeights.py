
import os

import pymel.core as pm
import maya.mel as mel
import maya.api.OpenMaya as om

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import Data.Skin_Data as skinData
reload(skinData)
import PaintWeights as pntWgt
reload(pntWgt)

class QuickWeights(absOp.Abstract_Operation):
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
        self._paintWeightsOp = pntWgt.PaintWeights()
        self._vertPositions = {} # mesh : [v1, v2...]
        self._jointPositions = {} # limb : [j1, j2]

#=========== ALL ====================================
   
    def SetLimb(self, limb):
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        self._paintWeightsOp.SetLimb(rigRoot, limb)

    def SetMesh(self, mesh):
        self._paintWeightsOp.SetMesh(mesh)
    
    def StorePositionData(self, rigRoot):
        self._vertPositions.clear()
        self._jointPositions.clear()
        tempValues = {} # control : [pos, rot, scale]

        # STORE + RESET CONTROLS
        for limb in pm.listConnections(rigRoot.limbs):
            for group in pm.listConnections(limb.usedGroups):
                control = pm.listConnections(group.control)[0]
                pos = pm.xform(control, q=1, t=1)
                rot = pm.xform(control, q=1, ro=1)
                scale = pm.xform(control, q=1, s=1, r=1)
                tempValues[control.longName()] = [pos, rot, scale]
                rigUtil.ResetAttrs(control)
        
        # GET JOINT POSITIONS
        for limb in pm.listConnections(rigRoot.limbs):
            joints = rigUtil.GetSortedLimbJoints(limb)
            jointPositions = [pm.xform(j, q=1, t=1, ws=1) for j in joints]
            self._jointPositions[limb] = jointPositions
        
        # GET VERT POSITIONS
        meshes = pm.listConnections(rigRoot.meshes, sh=1)
        for mesh in meshes:
            meshStr = '%s' % mesh
            vertCount = pm.polyEvaluate(mesh, v=1)
            self._vertPositions[mesh] = []
            for vertIndex in range(vertCount):
                attr = '%sOrig.vtx[%d]' % (meshStr, vertIndex)
                pos = pm.xform(attr, q=1, t=1, ws=1)
                self._vertPositions[mesh].append(pos)

        # RESTORE CONTROLS:
        for limb in pm.listConnections(rigRoot.limbs):
            for group in pm.listConnections(limb.usedGroups):
                control = pm.listConnections(group.control)[0]
                pm.xform(control, t=tempValues[control.longName()][0])
                pm.xform(control, ro=tempValues[control.longName()][1])
                pm.xform(control, s=tempValues[control.longName()][2], r=1)

#=========== LIMB ====================================
   
    def UpdateLimbWeights(self, mesh, limb):
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        self._paintWeightsOp.SetLimb(rigRoot, limb)
        self._paintWeightsOp.SetMesh(mesh)
        self._paintWeightsOp.UpdateLimbOps()
        vertCount = pm.polyEvaluate(mesh, v=1)
        newWeights = mesh.getAttr('L%03d' % limb.ID.get())
        self._paintWeightsOp.SetLimbWeights(newWeights, range(vertCount))
            
    def ApplyLimbMaskCrawl(self, mesh, limb):
        vertCount = pm.polyEvaluate(mesh, v=1)
        jointPositions = self._jointPositions[limb]
        vertexPositions = self._vertPositions[mesh]
        closestStartVertIndex = 0
        closestStartDistance = 999999
        closestEndVertIndex = 0
        closestEndDistance = 999999
        attr = '%s' % mesh

        # GET START / END VERTS
        for vertIndex in range(vertCount):
            vp = vertexPositions[vertIndex]
            
            # CLOSEST START VERT
            jp = jointPositions[-1]
            dist = ((vp[0]-jp[0])**2 + (vp[1]-jp[1])**2 + (vp[2]-jp[2])**2)
            if dist < closestStartDistance:
                closestStartDistance = dist
                closestStartVertIndex = vertIndex

            # CLOSEST END VERT
            jp = jointPositions[0]
            dist = ((vp[0]-jp[0])**2 + (vp[1]-jp[1])**2 + (vp[2]-jp[2])**2)
            if dist < closestEndDistance:
                closestEndDistance = dist
                closestEndVertIndex = vertIndex
    
        # SURFACE CRAWL
        visitedVerts = set()
        currentVerts = [closestStartVertIndex]
        while(currentVerts):
            nextVerts = []
            for vertIndex in currentVerts:
                visitedVerts.add(vertIndex)
                edges = mesh.vtx[vertIndex].connectedEdges()
                for edge in edges:
                    for vert in edge.connectedVertices():
                        newIndex = vert.index()
                        if newIndex in visitedVerts:
                            continue
                        if newIndex in nextVerts:
                            continue
                        if newIndex in currentVerts:
                            continue
                        nextVerts.append(newIndex)
            currentVerts = nextVerts
            if closestEndVertIndex in nextVerts:
                break
        
        # SET ATTR
        newLimbMask = [0]*vertCount
        for vertIndex in visitedVerts:
            newLimbMask[vertIndex] = 1
        attr = '%s.L%03d' % (mesh, limb.ID.get())
        pm.setAttr(attr, newLimbMask)
        
    def ApplyLimbMaskRadius(self, mesh, limb, radius, midpoints):
        # GET JOINT POSITIONS
        joints = rigUtil.GetSortedLimbJoints(limb)
        jointCount = len(joints)
        positions = self._jointPositions[limb]
        divisions = midpoints + 1
        sqRadius = radius * radius
        vertexPositions = self._vertPositions[mesh]

        # GET MIDPOINTS
        for i in range(jointCount-1):
            start = positions[i]
            end = positions[i+1]
            for division in range(1, divisions):
                lerp = float(division) / divisions
                invLerp = 1 - lerp
                pos = [start[j]*lerp + end[j]*invLerp for j in range(3)]
                positions.append(pos)
        
        # STORE CLOSE VERTS
        vertCount = pm.polyEvaluate(mesh, v=1)
        newLimbMask = [0]*vertCount
        attr = '%s' % mesh
        for vertIndex in range(vertCount):
            vp = vertexPositions[vertIndex]
            for p in positions:
                dist = ((vp[0]-p[0])**2 + (vp[1]-p[1])**2 + (vp[2]-p[2])**2)
                if dist < sqRadius:
                    newLimbMask[vertIndex] = 1
                    break
        attr = '%s.L%03d' % (mesh, limb.ID.get())
        pm.setAttr(attr, newLimbMask)

    def ApplyLimbMaskSoften(self, mesh, limb, softenSteps):
        attr = '%s.L%03d' % (mesh, limb.ID.get())
        maskWeights = pm.getAttr(attr)
        vertCount = len(maskWeights)
        vertNeighbors = self._GetVertNeighbors(mesh)

        # SOFTEN WEIGHTS
        for s in range(softenSteps):
            newWeights = [0]*vertCount
            for vertIndex in range(vertCount):
                tempWeights = [maskWeights[v] for v in vertNeighbors[vertIndex]]
                newWeights[vertIndex] = sum(tempWeights)/len(tempWeights)
            maskWeights = newWeights
        pm.setAttr(attr, maskWeights)

    def _GetVertNeighbors(self, mesh):
        vertCount = pm.polyEvaluate(mesh, v=1)
        vertNeighbors = {} # vertIndex : set([v1, v4, ...])
        for vertIndex in range(vertCount):
            vertNeighbors[vertIndex] = set()
            for edge in mesh.vtx[vertIndex].connectedEdges():
                for vert in edge.connectedVertices():
                    newIndex = vert.index()
                    vertNeighbors[vertIndex].add(newIndex)
        return vertNeighbors

#=========== JOINT ====================================
   
    def ApplyClosestBranchJoint(self, mesh, limb):
        vertCount = pm.polyEvaluate(mesh, v=1)
        joints = rigUtil.GetSortedLimbJoints(limb)
        jointAttrs = ['J%03d' % j.ID.get() for j in joints]
        jointPositions = self._jointPositions[limb]
        newWeights = [[0]*vertCount for j in joints] # [j1[v1,v2], j2[...]]

        # FOR EACH VERT, GET CLOSEST JOINT 
        vertPositions = self._vertPositions[mesh]
        for vertIndex in range(vertCount):
            vp = vertPositions[vertIndex]
            closestDist = 999999
            closestJointIndex = 0
            for jointIndex in range(len(joints)):
                jp = jointPositions[jointIndex]
                dist = ((vp[0]-jp[0])**2 + (vp[1]-jp[1])**2 + (vp[2]-jp[2])**2)
                if dist < closestDist:
                    closestDist = dist
                    closestJointIndex = jointIndex
            newWeights[closestJointIndex][vertIndex] = 1.0

        # SET ATTRS
        for jointIndex in range(len(joints)):
            attr = jointAttrs[jointIndex]
            mesh.setAttr(attr, newWeights[jointIndex])

    def ApplyClosestChainJoint(self, mesh, limb, skipLast):
        vertCount = pm.polyEvaluate(mesh, v=1)
        joints = rigUtil.GetSortedLimbJoints(limb)
        jointCount = len(joints)
        jointAttrs = ['J%03d' % j.ID.get() for j in joints]
        jointPositions = self._jointPositions[limb]
        newWeights = [[0]*vertCount for j in joints] # [j1[v1,v2], j2[...]]
        newWeights[0] = [1]*vertCount
        vertPositions = self._vertPositions[mesh]
        # GET VERTS BEING AIMED AT
        for jointIndex in range(1, jointCount-1):
            jp1 = jointPositions[jointIndex]
            jp2 = jointPositions[jointIndex+1]
            jVec = [jp2[i] - jp1[i] for i in range(3)]
            for vertIndex in range(vertCount):
                vp = vertPositions[vertIndex]
                vVec = [vp[i] - jp1[i] for i in range(3)]
                dot = (jVec[0]*vVec[0] + jVec[1]*vVec[1] + jVec[2]*vVec[2])
                if dot < 0:
                    continue
                for jointIndex2 in range(jointCount):
                    if jointIndex2 == jointIndex:
                        newWeights[jointIndex2][vertIndex] = 1
                    else:
                        newWeights[jointIndex2][vertIndex] = 0
        
        if not skipLast:
            jp1 = jointPositions[-2]
            jp2 = jointPositions[-1]
            jVec = [jp2[i] - jp1[i] for i in range(3)]
            for vertIndex in range(vertCount):
                pass
        # SET ATTRS
        for jointIndex in range(len(joints)):
            attr = jointAttrs[jointIndex]
            mesh.setAttr(attr, newWeights[jointIndex])

    def ApplyJointMaskSoften(self, mesh, limb, softenSteps):
        vertCount = pm.polyEvaluate(mesh, v=1)
        joints = rigUtil.GetSortedLimbJoints(limb)
        jointCount = len(joints)
        jointAttrs = ['J%03d' % j.ID.get() for j in joints]
        jointWeights = [mesh.getAttr(a) for a in jointAttrs]
        meshStr = '%s' % mesh
        
        vertNeighbors = self._GetVertNeighbors(mesh)

        # SOFTEN WEIGHTS
        for s in range(softenSteps):
            newWeights = [[0]*vertCount for j in range(jointCount)]
            for vertIndex in range(vertCount):
                remainingWeight = 1
                biggestJointIndex = 0
                biggestJointWeight = 0
                for jointIndex in range(jointCount):
                    tempWeights = [jointWeights[jointIndex][v] for v in vertNeighbors[vertIndex]]
                    newWeight = sum(tempWeights)/len(tempWeights)
                    if newWeight > biggestJointWeight:
                        biggestJointWeight = newWeight
                        biggestJointIndex = jointIndex
                    newWeights[jointIndex][vertIndex] = newWeight
                    remainingWeight -= newWeight
                if remainingWeight:
                    newWeights[biggestJointIndex][vertIndex] += remainingWeight
            jointWeights = newWeights
        
        # SET ATTRS
        for jointIndex in range(jointCount):
            attr = jointAttrs[jointIndex]
            mesh.setAttr(attr, jointWeights[jointIndex])

#=========== DISPLAY ====================================
   
    def DisplayLimbVertexColors(self):
        self._paintWeightsOp.UpdateLimbOps()
        self._paintWeightsOp.UpdateJointOps()
        self._paintWeightsOp.DisplayLimbVertexColors()

    def DisplayJointVertexColors(self, mesh, limb):
        vertCount = pm.polyEvaluate(mesh, v=1)
        colors = [om.MColor([0,0,0]) for i in range(vertCount)]
        joints = rigUtil.GetSortedLimbJoints(limb)
        jointAttrs = ['J%03d' % j.ID.get() for j in joints]
        jointMasks = [pm.getAttr('%s.%s' % (mesh, a)) for a in jointAttrs]
        dataLen = len(skinData.LIMB_JOINT_COLORS)
        for jointIndex in range(len(joints)):
            color = skinData.LIMB_JOINT_COLORS[jointIndex % dataLen]
            jointMask = jointMasks[jointIndex]
            for vertIndex in range(vertCount):
                jVal = jointMask[vertIndex]
                for i in range(3):
                    val = colors[vertIndex][i]
                    colors[vertIndex][i] = min(1, val + jVal*color[i])
      
        self._SetColor(mesh, colors)

    def DisplayLimbJointVertexColors(self, mesh, limb):
        attr = '%s.L%03d' % (mesh, limb.ID.get())
        limbMask = pm.getAttr(attr)
        colors = [om.MColor([0,0,0]) for i in range(len(limbMask))]
        joints = rigUtil.GetSortedLimbJoints(limb)
        jointAttrs = ['J%03d' % j.ID.get() for j in joints]
        jointMasks = [pm.getAttr('%s.%s' % (mesh, a)) for a in jointAttrs]
        dataLen = len(skinData.LIMB_JOINT_COLORS)
        for jointIndex in range(len(jointMasks)):
            color = skinData.LIMB_JOINT_COLORS[jointIndex % dataLen]
            jointMask = jointMasks[jointIndex]
            for vertIndex in range(len(limbMask)):
                jVal = jointMask[vertIndex]
                for i in range(3):
                    val = colors[vertIndex][i]
                    colors[vertIndex][i] = min(1, val + jVal*color[i])

        # MULTIPLY MASK ONTO COLORS
        for jointIndex in range(len(jointMasks)):
            jointMask = jointMasks[jointIndex]
            for vertIndex in range(len(limbMask)):
                for i in range(3):
                    val = colors[vertIndex][i]
                    colors[vertIndex][i] = val*limbMask[vertIndex]
                    
        self._SetColor(mesh, colors)

    def SetupDisplay(self):
        pm.polyOptions(cs=1)
    
    def TeardownDisplay(self):
        pm.polyOptions(cs=0)

    def _SetColor(self, mesh, colors):
        tempSel = om.MSelectionList()
        tempSel.add(mesh.longName())
        vertIndexes = range(pm.polyEvaluate(mesh, v=1))
        mfnMesh = om.MFnMesh(tempSel.getDagPath(0))
        mfnMesh.setVertexColors(colors, vertIndexes)

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
