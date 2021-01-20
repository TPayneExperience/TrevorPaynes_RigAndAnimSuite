
# from random import random

import pymel.core as pm

class Skin_Mananger:
    def __init__(self, limbMng, jntMng, meshMng):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.meshMng = meshMng

        self._skinTestAnimLayer = 'Skin_Test_Anim'
    
    def NewRig(self, rigRoot):
        pass


#============= SETUP / TEARDOWNS ============================

    def Setup_Skins(self):
        joints = []
        for rootLimb in self.limbMng.GetRootLimbs():
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                joints += self.jntMng.GetLimbJoints(limb, False)
        for mesh in self.meshMng.GetAllMeshes():
            pm.skinCluster(joints, mesh)

    def Teardown_Skins(self):
        for mesh in self.meshMng.GetAllMeshes():
            skinCsts = pm.listConnections(mesh, type='skinCluster')
            if skinCsts:
                skinCst = skinCsts[0]
                skinCst.unbind()
        
    def Setup_JointAnim(self):
        joints = []
        for rootLimb in self.limbMng.GetRootLimbs():
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                if limb.limbType.get() == 2:
                    joints += self.jntMng.GetLimbJoints(limb)[:-1]
                else:
                    joints += self.jntMng.GetLimbJoints(limb)
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

    def Teardown_JointAnim(self):
        pm.currentTime(1)
        pm.playbackOptions(min=1, max=120)
        pm.delete(self._skinTestAnimLayer)

    # def Setup_JointColors(self):
    #     for limb in self.limbMng.GetAllLimbs():
    #         if limb.limbType.get() == 0:
    #             continue
    #         for joint in self.jntMng.GetLimbJoints(limb, False):
    #             values = [0.5 + (random()*0.5) for i in range(3)]
    #             joint.jointColor.set(values)

#============= PAINT DISPLAY ============================

    def Setup_PaintDisplay(self, mesh):
        skinCluster = pm.listConnections(mesh, type='skinCluster')[0]
        vtxColor = pm.createNode('polyColorPerVertex')
        pm.connectAttr(skinCluster.outputGeometry[0], vtxColor.inputPolymesh)
        pm.disconnectAttr(mesh.inMesh)
        pm.connectAttr(vtxColor.output, mesh.inMesh)

    def Teardown_PaintDisplay(self, mesh):
        vtxColor = pm.listConnections(mesh, type='polyColorPerVertex')
        pm.delete(vtxColor)
        # skinCluster = pm.listConnections(mesh, type='skinCluster')[0]
        # pm.connectAttr(skinCluster.outputGeometry[0], mesh.inMesh)


#============= MISC ============================

    # def GetSkinCluster(self, mesh):
    #     return pm.listConnections(mesh, type='skinCluster')

    # Used for Getting total influence joints, removing
    # dead joints before export
    def GetUsedInfJoints(self, mesh):
        joints = []
        for joint in self.jntMng.GetAllJoints():
            attr = 'J' + str(joint.ID.get())
            array = mesh.getAttr(attr)
            if any(array):
                joints.append(joint)
        return joints

#============= LIMB / JOINT ANIM (TIMELINE) ============================

    def SkinTestLimbAnim(self, limb):
        joints = self.jntMng.GetLimbJoints(limb)
        if limb.limbType.get() == 2:
            joints = joints[:-1]
        start = joints[0].skinAnimStart.get()
        end = joints[-1].skinAnimEnd.get()
        pm.playbackOptions(min=start, max=end)
        pm.currentTime(start)

    def SkinTestJointAnim(self, joint):
        start = joint.skinAnimStart.get()
        end = joint.skinAnimEnd.get()
        pm.playbackOptions(min=start, max=end)
        pm.currentTime(start)

#============= ADD / REMOVE ATTRS ============================

    def AddSkinAttrs(self, mesh):
        for rootLimb in self.limbMng.GetRootLimbs():
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                self.AddLimbAttrs(mesh, limb)

    def RemoveSkinAttrs(self, mesh): # FINALIZE MESHES
        for rootLimb in self.limbMng.GetRootLimbs():
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                self.RemoveLimbAttrs(mesh, limb)

    def AddLimbAttrs(self, mesh, limb):
        attr = 'L' + str(limb.ID.get())
        if not mesh.hasAttr(attr):
            pm.addAttr(mesh, ln=attr, dt='doubleArray', h=1)
            if limb.limbType.get() in [2, 4]: # Joint chain
                self.SetDefaultLimbSurfaceMask(mesh, limb)
            else:
                self.Flood(mesh, attr, 0.3) # FIX LATER
        for joint in self.jntMng.GetLimbJoints(limb):
            self.AddJointAttr(mesh, joint)

    def RemoveLimbAttrs(self, mesh, limb):
        attr = 'L' + str(limb.ID.get())
        if not mesh.hasAttr(attr):
            mesh.deleteAttr(attr)
        for joint in self.jntMng.GetLimbJoints(limb):
            self.RemoveJointAttr(mesh, joint)

    def AddJointAttr(self, mesh, joint):
        attr = 'J' + str(joint.ID.get())
        if not mesh.hasAttr(attr):
            pm.addAttr(mesh, ln=attr, dt='doubleArray', h=1)
            self.Flood(mesh, attr, 0.5)

    def RemoveJointAttr(self, mesh, joint):
        attr = 'J' + str(joint.ID.get())
        if mesh.hasAttr(attr):
            mesh.deleteAttr(attr)

#============= SET WEIGHTS ============================

    def Flood(self, mesh, attr, value):
        values = [value] * pm.polyEvaluate(mesh, v=1)
        mesh.setAttr(attr, values)

    def SetDefaultLimbJointWeights(self, mesh, limb):
        # set limb mask to all vert influenced by child joints
        joints = self.jntMng.GetLimbJoints(limb)
        if limb.limbType.get() == 2:
            joints = joints[:-1]
        jointPos = {} # joint : pos
        jointValues = {} # joint : [jointValueList1, jointValueList2...]
        vertCount = pm.polyEvaluate(mesh, v=1)

        # Get Joint positions
        for joint in joints:
            pos = pm.xform(joint, q=1, t=1, ws=1)
            jointPos[joint] = pos
            jointValues[joint] = [0]*vertCount

        # Find closest joint to each vert, set weight to 1
        meshText = mesh.longName() + '.vtx['
        for v in range(vertCount):
            name = meshText + str(v) + ']'
            vp = pm.xform(name, q=1, t=1, ws=1)
            jointDist = {} # dist : joint
            for j, jp in jointPos.items():
                dist = ((vp[0]-jp[0])**2 + (vp[1]-jp[1])**2 + (vp[2]-jp[2])**2)
                jointDist[dist] = j
            closestDist = sorted(list(jointDist.keys()))[0]
            closestJoint = jointDist[closestDist]
            jointValues[closestJoint][v] = 1

        # Set Values
        for joint in joints:
            values = jointValues[joint]
            attr = 'J' + str(joint.ID.get())
            mesh.setAttr(attr, values)

    def SetDefaultLimbSurfaceMask(self, mesh, limb):
        '''Gets closest vert to end joint of limb, then grows upward
        until closest vert to start joint reached and sets that
        as limb mask'''
        # ONLY USE IF LIMBTYPE = Chain
        # From the end joint of the limb
        joints = self.jntMng.GetLimbJoints(limb)
        startJoint = joints[0]
        endJoint = joints[-1]
        sp = pm.xform(startJoint, q=1, t=1, ws=1)
        ep = pm.xform(endJoint, q=1, t=1, ws=1)
        startVertDist = {} # dist : vertIndex
        endVertDist = {} # dist : vertIndex

        # Get closest start/end verts
        meshText = mesh.longName() + '.vtx['
        vertCount = pm.polyEvaluate(mesh, v=1)
        for i in range(vertCount):
            name = meshText + str(i) + ']'
            vp = pm.xform(name, q=1, t=1, ws=1)
            startDist = ((vp[0]-sp[0])**2 + (vp[1]-sp[1])**2 + (vp[2]-sp[2])**2)
            startVertDist[startDist] = i
            endDist = ((vp[0]-ep[0])**2 + (vp[1]-ep[1])**2 + (vp[2]-ep[2])**2)
            endVertDist[endDist] = i
        closestStartDist = sorted(list(startVertDist.keys()))[0]
        closestStartIndex = startVertDist[closestStartDist]
        closestEndDist = sorted(list(endVertDist.keys()))[0]
        closestEndIndex = endVertDist[closestEndDist]

        # Grow upward until closest vert to root joint reached
        #   or if end of mesh reached
        toVisit = [closestEndIndex] # vertIndex
        visited = []
        while (toVisit):
            nextIndex = toVisit[0]
            visited.append(nextIndex)
            if nextIndex == closestEndIndex:
                break
            toVisit.remove(nextIndex)
            vtx = pm.ls(meshText + str(nextIndex) + ']')[0]
            for v in vtx.connectedVertices().indices():
                if v not in toVisit and v not in visited:
                    toVisit.append(v)

        attr = 'L' + str(limb.ID.get())
        if toVisit:
            # Assign visited verts with values of 1, all other zero
            values = [0] * vertCount
            for v in visited:
                values[v] = 1
            mesh.setAttr(attr, values)
        else:
            print ('ERROR: SkinMng > Surface SetDefaultLimbSurfaceMask:')
            print ('End verts to not connect to the start vers surface')
            print ('Start Vert: ' + str(closestStartIndex))
            print ('End Vert: ' + str(closestEndIndex))
            self.Flood(mesh, attr, 0)

    def SetDefaultLimbRadiusMask(self, mesh, limb, radius):
        pass


