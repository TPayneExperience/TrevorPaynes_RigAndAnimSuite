
# GLOBAL VARS / FUNCTIONS for painting / viewing skin weights
import pymel.core as pm
import maya.api.OpenMaya as om

PFRS_MESH_NAME = ''
PFRS_ATTR = '' # J01, L22, ... J(oint)/L(imb) ID
# PFRS_CUR_JOINT = None # joint node| if none, is limb attr
PFRS_INF_JOINTS = [] # joint nodes. Set in PaintWeights_UI > JointSelected()
                    # If empty, painting limb

def initPFRSPyPaint(meshName):
    global PFRS_MESH_NAME
    PFRS_MESH_NAME = meshName
    print ('init py pfrs weights for mesh ' + meshName)

def finishPFRSPyPaint():
    print ('finish py pfrs weights')
    attr = '%s.%s' % (PFRS_MESH_NAME, PFRS_ATTR)
    print (pm.getAttr(attr))

def getPFRSPyPaintValue(vertIndex):
    global PFRS_MESH_NAME
    global PFRS_ATTR
    attr = '%s.%s' % (PFRS_MESH_NAME, PFRS_ATTR)
    value = pm.getAttr(attr)[vertIndex]
    print ('PY: Get Weight %s for vert %s' %(str(value), str(vertIndex)))
    return value

def setPFRSPyPaintValue(vertIndex, value):
    global PFRS_ATTR
    global PFRS_INF_JOINTS
    mainAttr = '%s.%s' % (PFRS_MESH_NAME, PFRS_ATTR)
    values = pm.getAttr(mainAttr)
    oldValue = values[vertIndex]
    values[vertIndex] = value
    pm.setAttr(mainAttr, values)
    print ('PY: attr %s vert %s set to %s' % (mainAttr, str(vertIndex), str(value)))
    
    # If painting limb mask, return
    if not PFRS_INF_JOINTS:
        # Set vertex color
        SetLimbVertexColor(vertIndex, value)
        return

    # Prepare to rebalance weights
    invValue = 1 - value
    otherValues = []
    for joint in PFRS_INF_JOINTS:
        ID = joint.ID.get()
        attr = '%s.%s' % (PFRS_MESH_NAME, 'J' + str(ID))
        otherValues.append(pm.getAttr(attr)[vertIndex])
    oldOtherTotal = sum(otherValues)

    # If no other weights, get closest joint, and set remaining weight
    if oldOtherTotal == 0:
        if value < 1: 
            # get vert pos, ws
            name = '%s.vtx[%d]' %(PFRS_MESH_NAME, vertIndex)
            vp = pm.xform(name, q=1, t=1, ws=1)
            # foreach joint, get dist to vert
            jointDist = {} # dist : joint
            for joint in PFRS_INF_JOINTS:
                jp = pm.xform(joint, q=1, t=1, ws=1)
                dist = ((vp[0]-jp[0])**2 + (vp[1]-jp[1])**2 + (vp[2]-jp[2])**2)
                jointDist[dist] = joint
            # get closest inf
            closestDist = sorted(list(jointDist.keys()))[0]
            closestAttr = 'J' + str(jointDist[closestDist].ID.get())
            # set value to invValue
            attr = '%s.%s' % (PFRS_MESH_NAME, closestAttr)
            values = pm.getAttr(attr)
            values[vertIndex] = invValue
            pm.setAttr(attr, values)
    # Else, Scale weights
    else:
        change = oldValue - value # Amount all other cha
        scalar = (oldOtherTotal + change) / oldOtherTotal
        attrs = ['J' + str(j.ID.get()) for j in PFRS_INF_JOINTS]
        for attr in attrs:
            meshAttr = '%s.%s' % (PFRS_MESH_NAME, attr)
            values = pm.getAttr(meshAttr)
            otherValue = values[vertIndex] * scalar
            values[vertIndex] = otherValue
            pm.setAttr(meshAttr, values)
            print ('REBALANCE WEIGHTS: attr %s to %s' % (meshAttr, str(otherValue)))
    SetJointVertexColor(vertIndex, value)

#============ VERTEX COLORS =======================

def SetLimbVertexColor(vertIndex, value):
    _SetColor([vertIndex], [om.MColor([value, value, value])])

def UpdateLimbVertexColors():
    global PFRS_MESH_NAME
    global PFRS_ATTR
    meshAttr = '%s.%s' % (PFRS_MESH_NAME, PFRS_ATTR)
    values = pm.getAttr(meshAttr)
    colors = [om.MColor([v, v, v]) for v in values]
    _SetColor(range(len(values)), colors)

def SetJointVertexColor(vertIndex, value):
    finalColor = [value, value, value]
    for joint in PFRS_INF_JOINTS:
        color = joint.jointColor.get()
        for i in range(3):
            finalColor[i] = min(1, finalColor[i] + color[i])
    _SetColor([vertIndex], [finalColor])

def UpdateJointVertexColors():
    meshAttr = '%s.%s' % (PFRS_MESH_NAME, PFRS_ATTR)
    values = pm.getAttr(meshAttr)
    colors = [om.MColor([v, v, v]) for v in values]
    vertIndexes = range(len(values))
    for joint in PFRS_INF_JOINTS:
        color = joint.jointColor.get()
        jointAttr = 'J%d' % joint.ID.get()
        fullJointAttr = '%s.%s' % (PFRS_MESH_NAME, jointAttr)
        jointValues = pm.getAttr(fullJointAttr)
        for index in vertIndexes:
            jVal = jointValues[index]
            for i in range(3):
                colors[index][i] = min(1, colors[index][i] + color[i]*jVal)
    _SetColor(vertIndexes, colors)

def _SetColor(vertIndexes, colors):
    tempSel = om.MSelectionList()
    tempSel.add(PFRS_MESH_NAME)
    mfnMesh = om.MFnMesh(tempSel.getDagPath(0)) # must be dagpath
    mfnMesh.setVertexColors(colors, vertIndexes)
