
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
        self._pwOp = pntWgt.PaintWeights()

#=========== ALGORHITHMS ====================================
   
    def LimbMaskCrawl(self, rigRoot, mesh, limb):
        vertCount = pm.polyEvaluate(mesh, v=1)
        joints = rigUtil.GetSortedLimbJoints(limb)
        jointPositions = [pm.xform(j, q=1, t=1, ws=1) for j in joints]
        closestStartVertIndex = 0
        closestStartDistance = 999999
        closestEndVertIndex = 0
        closestEndDistance = 999999
        attr = '%s' % mesh
        for vertIndex in range(vertCount):
            vp = pm.xform('%s.vtx[%d]' % (attr, vertIndex), q=1, t=1, ws=1)
            
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
        visitedVerts = []
        currentVerts = [closestStartVertIndex]
        for i in range(9999):
            nextVerts = []
            for vertIndex in currentVerts:
                visitedVerts.append(vertIndex)
                edges = mesh.vtx[vertIndex].connectedEdges()
                for edge in edges:
                    for vert in edge.connectedVertices():
                        newIndex = vert.index()
                        if newIndex in nextVerts:
                            continue
                        if newIndex in visitedVerts:
                            continue
                        if newIndex in currentVerts:
                            continue
                        nextVerts.append(newIndex)
            currentVerts = nextVerts
            if closestEndVertIndex in nextVerts:
                break
            if not nextVerts:
                break
        
        # SET ATTR
        newLimbMask = [0]*vertCount
        for vertIndex in visitedVerts:
            newLimbMask[vertIndex] = 1
        attr = '%s.L%03d' % (mesh, limb.ID.get())
        pm.setAttr(attr, newLimbMask)
        
        # APPLY WEIGHTS
        self._pwOp.SetLimb(rigRoot, limb)
        self._pwOp.SetMesh(mesh)
        self._pwOp.UpdateLimbOps()
        self._pwOp.SetLimbWeights(mesh, newLimbMask)
            


#=========== DISPLAY ====================================
   
    def DisplayLimb(self, mesh, limb):
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
