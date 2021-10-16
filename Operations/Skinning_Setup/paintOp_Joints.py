
import imp

# GLOBAL VARS / FUNCTIONS for painting / viewing skin weights
import pymel.core as pm
import maya.api.OpenMaya as om

import Data.Skin_Data as skinData
#imp.reload(skinData)

# PFRS_ATTR = ''      # J01, J22, ... J(oint) ID
PFRS_MESH_NAME = ''
SKIN_CLUSTER = ''   #  'skinCluster1'
LIMB_WEIGHTS = []           # [v1, v2...]
LIMB_ATTR = ''
JOINT_WEIGHTS = []          # [j1[v1, v2...], j2[v1,v2...]]
JOINT_INDEX = -1 #

PFRS_INF_JOINTS = []        # joints!
LIMB_JOINT_POSITIONS = []   # [[jPos1], [jPos2]...]

JOINT_NAMES_BEFORE = []     # long? joint names
JOINT_ATTRS_BEFORE = []     # [J001, J002...]
LIMB_ATTRS_BEFORE = []      # [L001, L002...]
VERT_WEIGHTS_BEFORE = []    # [v1[j1, j2,... all joints], v2[...], ...]

JOINT_NAMES_CURRENT = []  
JOINT_ATTRS_CURRENT = []    
VERT_WEIGHTS_CURRENT = []   # [v1[j1, j2,... all joints], v2[...], ...]

JOINT_NAMES_AFTER = []
JOINT_ATTRS_AFTER = []    
LIMB_ATTRS_AFTER = []     # [L001, L002...]
VERT_WEIGHTS_AFTER = []


def initPFRSPyPaint(meshName):
    pass

def finishPFRSPyPaint():
    pass

def getPFRSPyPaintValue(vertIndex):
    value = VERT_WEIGHTS_CURRENT[vertIndex][JOINT_INDEX]
    return value

def setPFRSPyPaintValue(vertIndex, value):
    remainingWeight = 1 - value
    weightIndexes = {} # weight : jointIndex

    # SET Current joint weight
    JOINT_WEIGHTS[JOINT_INDEX][vertIndex] = value
    VERT_WEIGHTS_CURRENT[vertIndex][JOINT_INDEX] = value
    attr = '%s.%s' % (PFRS_MESH_NAME, JOINT_ATTRS_CURRENT[JOINT_INDEX])
    pm.setAttr(attr, JOINT_WEIGHTS[JOINT_INDEX])

    # REBALANCE WEIGHTS
    otherWeightTotal = sum(VERT_WEIGHTS_CURRENT[vertIndex])
    otherWeightTotal -= VERT_WEIGHTS_CURRENT[vertIndex][JOINT_INDEX]
    invValue = 1 - value

    # IF NO OTHER WEIGHTS AND NEW WEIGHT <1
    if otherWeightTotal == 0:
        if value < 1 and len(LIMB_JOINT_POSITIONS) > 1:
            name = '%s.vtx[%d]' %(PFRS_MESH_NAME, vertIndex)
            vp = pm.xform(name, q=1, t=1, ws=1)

            # FIND CLOSEST JOINT TO VERT
            jointDist = {} # dist : joint
            for index in range(len(LIMB_JOINT_POSITIONS)):
                if index == JOINT_INDEX:
                    continue
                jp = LIMB_JOINT_POSITIONS[index]
                dist = ((vp[0]-jp[0])**2 + (vp[1]-jp[1])**2 + (vp[2]-jp[2])**2)
                jointDist[dist] = index
            closestDist = sorted(list(jointDist.keys()))[0]
            jointIndex = jointDist[closestDist]
            closestAttr = JOINT_ATTRS_CURRENT[jointIndex]

            # SET TO REMAINING WEIGHT
            attr = '%s.%s' % (PFRS_MESH_NAME, closestAttr)
            VERT_WEIGHTS_CURRENT[vertIndex][jointIndex] = invValue
            JOINT_WEIGHTS[jointIndex][vertIndex] = invValue
            pm.setAttr(attr, JOINT_WEIGHTS[jointIndex])
    else:
        scalar = invValue / otherWeightTotal
        for jointIndex in range(len(JOINT_WEIGHTS)):
            if jointIndex == JOINT_INDEX:
                continue
            # SCALE WEIGHTS
            JOINT_WEIGHTS[jointIndex][vertIndex] *= scalar
            VERT_WEIGHTS_CURRENT[vertIndex][jointIndex] *= scalar
            jointAttr = JOINT_ATTRS_CURRENT[jointIndex]
            attr = '%s.%s' % (PFRS_MESH_NAME, jointAttr)
            pm.setAttr(attr, JOINT_WEIGHTS[jointIndex])

            # CALC REMAINING WEIGHT
            weight = JOINT_WEIGHTS[jointIndex][vertIndex]
            remainingWeight -= weight
            weightIndexes[weight] = jointIndex

        # ADD MISSING WEIGHT
        if remainingWeight != 0 and weightIndexes:
            index = sorted(list(weightIndexes.keys()))[0]
            jointIndex = weightIndexes[index]
            JOINT_WEIGHTS[jointIndex][vertIndex] += remainingWeight
            VERT_WEIGHTS_CURRENT[vertIndex][jointIndex] += remainingWeight
            jointAttr = JOINT_ATTRS_CURRENT[jointIndex]
            attr = '%s.%s' % (PFRS_MESH_NAME, jointAttr)
            pm.setAttr(attr, JOINT_WEIGHTS[jointIndex])

    # DISPLAY # difference
    SetJointVertexColor(vertIndex, value)

    # SKIP IF BEFORE WEIGHTS >= 1
    beforeSum = 0
    names = [] 
    weights = []
    remainingWeight = 1
    if VERT_WEIGHTS_BEFORE:
        beforeSum = sum(VERT_WEIGHTS_BEFORE[vertIndex])
        remainingWeight -= beforeSum
        weights += VERT_WEIGHTS_BEFORE[vertIndex]
        names += JOINT_NAMES_BEFORE
    if beforeSum >= 1:
        return

    # CALC NEW WEIGHTS
    maskWeight = LIMB_WEIGHTS[vertIndex] # difference
    currentCopy = VERT_WEIGHTS_CURRENT[vertIndex][:]
    currentCopy = [w*maskWeight for w in currentCopy]
    currentSum = sum(currentCopy)
    scalar = 1
    if remainingWeight < currentSum:
        scalar = remainingWeight / currentSum
        remainingWeight = 0
    else:
        remainingWeight -= currentSum
    currentCopy = [w*scalar for w in currentCopy]
    names += JOINT_NAMES_CURRENT
    weights += currentCopy

    # POSSIBLY SKIP END WEIGHTS
    if remainingWeight:
        if VERT_WEIGHTS_AFTER:
            afterWeights = VERT_WEIGHTS_AFTER[vertIndex]
            scalar = remainingWeight / sum(afterWeights)
            afterWeights = [w*scalar for w in afterWeights]
            weights += afterWeights
            names += JOINT_NAMES_AFTER
    else:
        weights += [0]*len(VERT_WEIGHTS_AFTER)
        names += JOINT_NAMES_AFTER
    
    # SET WEIGHTS
    influences = zip(names, weights)
    mesh = '%s.vtx[%d]' % (PFRS_MESH_NAME, vertIndex)
    pm.skinPercent(SKIN_CLUSTER, mesh, tv=influences)


#============ VERTEX COLORS =======================

def SetJointVertexColor(vertIndex, value):
    finalColor = om.MColor([value, value, value])
    dataLen = len(skinData.JOINT_COLORS)
    for jointIndex in range(len(PFRS_INF_JOINTS)):
        if jointIndex == JOINT_INDEX:
            continue
        color = skinData.JOINT_COLORS[jointIndex % dataLen]
        jVal = JOINT_WEIGHTS[jointIndex][vertIndex]
        for j in range(3):
            finalColor[j] = min(1, finalColor[j] + color[j]*jVal)
    _SetColor([vertIndex], [finalColor])

def DisplayVertexColors():
    values = JOINT_WEIGHTS[JOINT_INDEX]
    colors = [om.MColor([v, v, v]) for v in values]
    vertIndexes = range(len(values))
    dataLen = len(skinData.JOINT_COLORS)
    for jointIndex in range(len(JOINT_WEIGHTS)):
        if jointIndex == JOINT_INDEX:
            continue
        color = skinData.JOINT_COLORS[jointIndex % dataLen]
        for vert in vertIndexes:
            jVal = JOINT_WEIGHTS[jointIndex][vert]
            for i in range(3):
                colors[vert][i] = min(1, colors[vert][i] + color[i]*jVal)
    _SetColor(vertIndexes, colors)

def _SetColor(vertIndexes, colors):
    tempSel = om.MSelectionList()
    tempSel.add(PFRS_MESH_NAME)
    mfnMesh = om.MFnMesh(tempSel.getDagPath(0)) # must be dagpath
    mfnMesh.setVertexColors(colors, vertIndexes)
