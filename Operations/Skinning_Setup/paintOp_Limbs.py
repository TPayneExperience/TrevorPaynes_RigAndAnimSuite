
# GLOBAL VARS / FUNCTIONS for painting / viewing skin weights
import pymel.core as pm
import maya.api.OpenMaya as om

PFRS_ATTR = '' # L022, L001... LimbID Attr
PFRS_MESH_NAME = ''
SKIN_CLUSTER = '' #  'skinCluster1'
LIMB_MASK = [] # 
JOINT_NAMES_BEFORE = []     # long? joint names
JOINT_ATTRS_BEFORE = []     # [J001, J002...]
LIMB_ATTRS_BEFORE = []     # [L001, L002...]
VERT_WEIGHTS_BEFORE = []    # [v1[j1, j2,...], v2[j1, j2, ...], ...]

JOINT_NAMES_CURRENT = []  
JOINT_ATTRS_CURRENT = []    
VERT_WEIGHTS_CURRENT = [] 

JOINT_NAMES_AFTER = []
JOINT_ATTRS_AFTER = []    
LIMB_ATTRS_AFTER = []     # [L001, L002...]
VERT_WEIGHTS_AFTER = []

#============ BRUSH OPERATIONS =======================

def initPFRSPyPaint(meshName):
    pass
    # global PFRS_MESH_NAME
    # PFRS_MESH_NAME = meshName
    # print ('init py pfrs weights for mesh ' + meshName)

def finishPFRSPyPaint():
    pass
    # global PFRS_MESH_NAME
    # global PFRS_ATTR
    # print ('finish py pfrs weights')
    # attr = '%s.%s' % (PFRS_MESH_NAME, PFRS_ATTR)
    # print (pm.getAttr(attr))

def getPFRSPyPaintValue(vertIndex):
    value = LIMB_MASK[vertIndex]
    # print ('PY: Get Weight %s for vert %s' %(str(value), str(vertIndex)))
    return value

def setPFRSPyPaintValue(vertIndex, value):
    global PFRS_ATTR

    # SET VALUE
    mainAttr = '%s.%s' % (PFRS_MESH_NAME, PFRS_ATTR)
    LIMB_MASK[vertIndex] = value
    pm.setAttr(mainAttr, LIMB_MASK)

    # UPDATE DISPLAY
    # print ('PY: attr %s vert %s set to %s' % (mainAttr, str(vertIndex), str(value)))
    _SetColor([vertIndex], [om.MColor([value, value, value])])

    # SKIP IF BEFORE WEIGHTS >= 1
    beforeSum = 0
    if VERT_WEIGHTS_BEFORE:
        beforeSum = sum(VERT_WEIGHTS_BEFORE[vertIndex])
    if beforeSum >= 1:
        return

    # CALC NEW WEIGHTS
    currentCopy = VERT_WEIGHTS_CURRENT[vertIndex][:]
    currentCopy = [w*value for w in currentCopy]
    currentSum = sum(currentCopy)
    names = JOINT_NAMES_BEFORE + JOINT_NAMES_CURRENT
    weights = VERT_WEIGHTS_BEFORE[vertIndex] + currentCopy

    # POSSIBLY SKIP END WEIGHTS
    if beforeSum + currentSum < 1:
        names += JOINT_NAMES_AFTER
        weights += VERT_WEIGHTS_AFTER[vertIndex]
    
    # SET WEIGHTS
    influences = zip(names, weights)
    mesh = '%s.vtx[%d]' % (PFRS_MESH_NAME, vertIndex)
    pm.skinPercent(SKIN_CLUSTER, mesh, tv=influences)

#============ VERTEX COLORS =======================

def DisplayVertexColors():
    colors = [om.MColor([v, v, v]) for v in LIMB_MASK]
    _SetColor(range(len(LIMB_MASK)), colors)

def _SetColor(vertIndexes, colors):
    tempSel = om.MSelectionList()
    tempSel.add(PFRS_MESH_NAME)
    mfnMesh = om.MFnMesh(tempSel.getDagPath(0)) # must be dagpath
    mfnMesh.setVertexColors(colors, vertIndexes)
