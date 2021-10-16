
# GLOBAL VARS / FUNCTIONS for painting / viewing skin weights
import pymel.core as pm
import maya.api.OpenMaya as om

LIMB_ATTR = ''      # L022, L001... LimbID Attr
PFRS_MESH_NAME = ''
SKIN_CLUSTER = ''   #  'skinCluster1'
LIMB_WEIGHTS = []      # [v1, v2, ...]

JOINT_NAMES_BEFORE = []     # long? joint names
JOINT_ATTRS_BEFORE = []     # [J001, J002...]
LIMB_ATTRS_BEFORE = []      # [L001, L002...] IGNORE, FOR WEIGHT CALCS
VERT_WEIGHTS_BEFORE = []    # [v1[j1, j2,...], v2[j1, j2, ...], ...]

JOINT_NAMES_CURRENT = []  
JOINT_ATTRS_CURRENT = []    # For use in PaintWeights.py
VERT_WEIGHTS_CURRENT = [] 

JOINT_NAMES_AFTER = []
JOINT_ATTRS_AFTER = []    
LIMB_ATTRS_AFTER = []     # [L001, L002...] IGNORE, FOR WEIGHT CALCS
VERT_WEIGHTS_AFTER = []

#============ BRUSH OPERATIONS =======================

def initPFRSPyPaint(meshName):
    pass

def finishPFRSPyPaint():
    pass

def getPFRSPyPaintValue(vertIndex):
    value = LIMB_WEIGHTS[vertIndex]
    return value

def setPFRSPyPaintValue(vertIndex, value):
    # SET VALUE
    mainAttr = '%s.%s' % (PFRS_MESH_NAME, LIMB_ATTR)
    LIMB_WEIGHTS[vertIndex] = value
    pm.setAttr(mainAttr, LIMB_WEIGHTS)

    # UPDATE DISPLAY
    _SetColor([vertIndex], [om.MColor([value, value, value])])

    # SKIP IF BEFORE WEIGHTS >= 1
    beforeSum = 0
    weights = []
    names = []
    remainingWeight = 1
    if VERT_WEIGHTS_BEFORE:
        beforeSum = sum(VERT_WEIGHTS_BEFORE[vertIndex])
        remainingWeight -= beforeSum
        weights += VERT_WEIGHTS_BEFORE[vertIndex]
        names += JOINT_NAMES_BEFORE
    if beforeSum >= 1:
        return

    # CALC NEW WEIGHTS
    currentCopy = VERT_WEIGHTS_CURRENT[vertIndex][:]
    currentCopy = [w*value for w in currentCopy]
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
        if VERT_WEIGHTS_AFTER and sum(VERT_WEIGHTS_AFTER[vertIndex]): # difference
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

def DisplayVertexColors():
    colors = [om.MColor([v, v, v]) for v in LIMB_WEIGHTS]
    _SetColor(range(len(LIMB_WEIGHTS)), colors)

def _SetColor(vertIndexes, colors):
    tempSel = om.MSelectionList()
    tempSel.add(PFRS_MESH_NAME)
    mfnMesh = om.MFnMesh(tempSel.getDagPath(0)) # must be dagpath
    mfnMesh.setVertexColors(colors, vertIndexes)
