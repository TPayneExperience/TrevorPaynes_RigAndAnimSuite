
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
# import Utilities.Logger as log
# reload(log)
# import Data.Rig_Data as rigData
# reload(rigData)
# import Utilities.Skin_Utilities as skinUtil
# reload(skinUtil)
# import MeshSetup as ms
# reload(ms)
# import paintOp_Joints as jntOp
# reload(jntOp)
# import paintOp_Limbs as lmbOp
# reload(lmbOp)

class QuickWeights(absOp.Abstract_Operation):
    isRigBuilt = True
    applyBakedAnimations = False
    validRigStates = (0,)       # 0 = Setup, 1 = Anim
    requiredLicense = 0         # 0 = Free, 1 = Personal, 2 = Pro
    controlLayerState = (1, 0)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef
    meshLayerState = (1, 0)     # isVis, isRef

    def __init__(self):
        self._paintWeightsOp = pntWgt.PaintWeights()

#=========== ??? ====================================
   
    def SetLimb(self, limb):
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        self._paintWeightsOp.SetLimb(rigRoot, limb)

    def SetMesh(self, mesh):
        self._paintWeightsOp.SetMesh(mesh)

#=========== LIMB ====================================
   
    def ApplyLimbMaskCrawl(self, mesh, limb):
        vertCount = pm.polyEvaluate(mesh, v=1)
        joints = rigUtil.GetSortedLimbJoints(limb)
        jointPositions = [pm.xform(j, q=1, t=1, ws=1) for j in joints]
        closestStartVertIndex = 0
        closestStartDistance = 999999
        closestEndVertIndex = 0
        closestEndDistance = 999999
        attr = '%s' % mesh

        # GET START / END VERTS
        for vertIndex in range(vertCount):
            vp = pm.xform('%sOrig.vtx[%d]' % (attr, vertIndex), q=1, t=1, ws=1)
            
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
        
    def UpdateLimbWeights(self, mesh, limb):
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        self._paintWeightsOp.SetLimb(rigRoot, limb)
        self._paintWeightsOp.SetMesh(mesh)
        self._paintWeightsOp.UpdateLimbOps()
        vertCount = pm.polyEvaluate(mesh, v=1)
        newWeights = mesh.getAttr('L%03d' % limb.ID.get())
        self._paintWeightsOp.SetLimbWeights(newWeights, range(vertCount))
            
    def ApplyLimbMaskRadius(self, mesh, limb, radius, midpoints):
        # GET JOINT POSITIONS
        joints = rigUtil.GetSortedLimbJoints(limb)
        jointCount = len(joints)
        positions = [pm.xform(j, q=1, t=1, ws=1) for j in joints]
        divisions = midpoints + 1
        sqRadius = radius * radius

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
            vp = pm.xform('%sOrig.vtx[%d]' % (attr, vertIndex), q=1, t=1, ws=1)
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
        # Store neighboring verts for rapid data retrieval
        vertNeighbors = {} # vertIndex : [v1, v4, ...]
        for vertIndex in range(vertCount):
            vertNeighbors[vertIndex] = []
            for edge in mesh.vtx[vertIndex].connectedEdges():
                for vert in edge.connectedVertices():
                    newIndex = vert.index()
                    if vertIndex == newIndex:
                        continue
                    vertNeighbors[vertIndex].append(newIndex)
        for i in range(softenSteps):
            newWeights = [0]*vertCount
            for vertIndex in range(vertCount):
                tempWeights = [maskWeights[v] for v in vertNeighbors[vertIndex]]
                newWeights[vertIndex] = sum(tempWeights)/len(tempWeights)
            maskWeights = newWeights
        pm.setAttr(attr, maskWeights)

#=========== DISPLAY ====================================
   
    def DisplayLimbVertexColors(self):
        self._paintWeightsOp.UpdateLimbOps()
        self._paintWeightsOp.DisplayLimbVertexColors()

    def DisplayJointVertexColors(self, mesh, limb):
        vertCount = pm.polyEvaluate(mesh, v=1)
        # attr = '%s.L%03d' % (mesh, limb.ID.get())
        # limbMask = pm.getAttr(attr)
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

        # # MULTIPLY MASK ONTO COLORS
        # for jointIndex in range(len(jointMasks)):
        #     jointMask = jointMasks[jointIndex]
        #     for vertIndex in range(len(limbMask)):
        #         for i in range(3):
        #             val = colors[vertIndex][i]
        #             colors[vertIndex][i] = val*limbMask[vertIndex]
                    
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
