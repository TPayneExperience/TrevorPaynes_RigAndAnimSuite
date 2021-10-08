

import random

import pymel.core as pm
import maya.mel as mel

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Utilities.Logger as log
reload(log)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import Utilities.General_Utilities as genUtil
reload(genUtil)
import Data.Rig_Data as rigData
reload(rigData)
import SceneData.Mesh as msh
reload(msh)
import Data.General_Data as genData
reload(genData)
import Utilities.Skin_Utilities as skinUtil
reload(skinUtil)

class MeshSetup(absOp.Abstract_Operation):
    isRigBuilt = False
    applyBakedAnimations = False
    areLimbsRequired = True
    areMeshesRequired = False
    validRigStates = (0,)     # 0 = Setup, 1 = Anim
    controlLayerState = (0, 0)  # isVis, isRef
    jointLayerState = (0, 1)    # isVis, isRef
    meshLayerState = (1, 0)    # isVis, isRef

    def InitSceneMeshes(self, rigRoot):
        log.funcFileInfo()
        meshGroup = pm.listConnections(rigRoot.meshesParentGroup)[0]
        # For each mesh in scene
        for mesh in pm.ls(type='mesh'):
            xform = pm.listRelatives(mesh, p=1)
            parent = pm.listRelatives(xform, p=1)
            # If unparented OR parent is not a transform
            if not parent or pm.objectType(parent[0]) != 'transform':
                if parent != meshGroup:
                    pm.parent(xform, meshGroup)
                    pm.editDisplayLayerMembers(rigData.MESHES_DISP_LAYER, 
                                        mesh, nr=1)
    
    def RenameMesh(self, mesh, newName):
        log.funcFileInfo()
        pm.rename(mesh, newName)

    def AddMeshes(self, rigRoot, meshes):
        log.funcFileInfo()
        for mesh in meshes:
            msh.Mesh.Add(rigRoot, mesh)
            if not pm.listConnections(mesh.pfrsSkinCluster):
                msh.Mesh.BindSkin(rigRoot, mesh)
            shouldUnpackWeights = True
            for limb in pm.listConnections(rigRoot.limbs):
                if limb.limbType.get() == 0: # Empty
                    continue
                
                # ADD LIMB MASK
                attr = 'L%03d' % limb.ID.get()
                if not mesh.hasAttr(attr):
                    pm.addAttr(mesh, ln=attr, dt='doubleArray', h=1) # Remove Later?
                else:
                    shouldUnpackWeights = False

                # Add Joint Mask
                for joint in pm.listConnections(limb.joints):
                    attr = 'J%03d' % joint.ID.get()
                    if not mesh.hasAttr(attr):
                        pm.addAttr(mesh, ln=attr, dt='doubleArray', h=1)
                    else:
                        shouldUnpackWeights = False
            if shouldUnpackWeights:
                self._UnpackWeights(rigRoot, mesh)

    def RemoveMeshes(self, rigRoot, meshes):
        log.funcFileInfo()
        for mesh in meshes:
            msh.Mesh.Remove(mesh)
            for limb in pm.listConnections(rigRoot.limbs):
                if limb.limbType.get() == 0: # Empty
                    continue
                self._RemoveLimbMask(mesh, limb)
                for joint in pm.listConnections(limb.joints):
                    self._RemoveJointMask(mesh, joint)

    def RebuildSkin(self, mesh):
        log.funcFileInfo()
        rigRoot = pm.listConnections(mesh.rigRoot)[0]
        joints = rigUtil.GetSkinnableRigJoints(rigRoot)
        backupMesh = pm.listConnections(mesh.backupMesh)[0]
        backupSkin = pm.skinCluster(joints, backupMesh)
        meshSkin = mel.eval('findRelatedSkinCluster %s;' % mesh)
        pm.copySkinWeights( ss=meshSkin, ds=backupSkin, nm=1)
        pm.skinCluster(mesh, e=1, unbind=1)
        meshSkin = pm.skinCluster(joints, mesh)
        pm.copySkinWeights( ss=backupSkin, ds=meshSkin, nm=1)

    def PasteWeights(self, rigRoot, sourceMesh, targetMesh):
        sourceSkin = pm.listConnections(sourceMesh.pfrsSkinCluster)[0]
        targetSkin = pm.listConnections(targetMesh.pfrsSkinCluster)[0]
        pm.copySkinWeights(ss=sourceSkin, ds=targetSkin, noMirror=1)
        self._UnpackWeights(targetMesh)

#=========== ADD + REMOVE MASKS ====================================

    def _RemoveLimbMask(self, mesh, limb):
        log.funcFileInfo()
        attr = 'L%03d' % limb.ID.get()
        if not mesh.hasAttr(attr):
            return
        mesh.deleteAttr(attr)

    def _RemoveJointMask(self, mesh, joint):
        log.funcFileInfo()
        attr = 'J%03d' % joint.ID.get()
        if not mesh.hasAttr(attr):
            return
        mesh.deleteAttr(attr)

    def _UnpackWeights(self, rigRoot, mesh):
        # create dict of limbs attrs to joint attrs
        limbs = pm.listConnections(rigRoot.limbs)
        limbs = skinUtil.GetSkeletalLimbOrder(limbs)[::-1]
        limbParents = genUtil.GetDefaultLimbHier(limbs)
        limbChildren = {}
        for limb in limbs:
            limbChildren[limb] = []
        for child, parent in limbParents.items():
            if parent:
                limbChildren[parent].append(child)
        joints = [] # [[j1, j2...], [...]]
        jointPositions = [] # [l1[j1[0,0,0], j2...], l2[...]]
        limbAttrs = []
        jointAttrs = [] # [[j1, j2...], [...]]
        finalLWeights = [] # [limb01[v1,v2...], limb02[v1,v2...], ...]
        finalJWeights = [] # [L1[j1[v1,v2...], j2[v1,v2...]], L2[j1[v1,c2...], ...]
        vertCount = pm.polyEvaluate(mesh, v=1)
        skin = pm.listConnections(mesh.pfrsSkinCluster)[0]

        # Get Limb Attr, Joint Attrs, empty limb/joint weight lists
        for limb in limbs:
            if limb.limbType.get() == 0: # Skip empty
                continue
            tempJoints = rigUtil.GetSortedLimbJoints(limb)
            joints.append(tempJoints)
            jointPositions.append([pm.xform(j, q=1, t=1, ws=1) for j in tempJoints])
            limbAttrs.append('L%03d' % limb.ID.get())
            jointAttrs.append(['J%03d' % j.ID.get() for j in tempJoints])
            finalLWeights.append([0]*vertCount)
            finalJWeights.append([[0]*vertCount for j in tempJoints])

        # For each vert
        for vert in range(vertCount):
            vAttr = '%s.vtx[%d]' % (mesh, vert)
            vPos = pm.xform(vAttr, q=1, t=1, ws=1)
            for l in range(len(limbAttrs)):
                limbAttr = limbAttrs[l]
                jointAttr = jointAttrs[l]
                jointWeights = []
                # Get joint weights on vert
                for j in range(len(jointAttr)):
                    joint = joints[l][j]
                    jointWeights.append(pm.skinPercent(skin, vAttr, t=joint, q=1))

                # Limb weight
                limbWeight = sum(jointWeights)
                if limbWeight == 0:
                    # Get closest joint and flood
                    closestDist = 999999
                    closestJointIndex = None
                    for j in range(len(jointAttr)):
                        jPos = jointPositions[l][j]
                        squared = [(vPos[i] - jPos[i])**2 for i in range(3)]
                        dist = sum(squared)
                        if dist < closestDist:
                            closestDist = dist
                            closestJointIndex = j
                    finalJWeights[l][closestJointIndex][vert] = 1
                else:
                    # Scale Joint weights up
                    scalar = 1.0/limbWeight
                    jointWeights = [min(j*scalar, 1) for j in jointWeights]
                    for j in range(len(jointAttr)):
                        finalJWeights[l][j][vert] = jointWeights[j]
                limb = limbs[l]
                for child in limbChildren[limb]:
                    ci = limbs.index(child)
                    limbWeight = min(finalLWeights[ci][vert] + limbWeight, 1)
                finalLWeights[l][vert] = limbWeight

        # Set Attrs
        for l in range(len(limbAttrs)):
            limbAttr = limbAttrs[l]
            mesh.setAttr(limbAttr, finalLWeights[l])
            for j in range(len(jointAttrs[l])):
                jointAttr = jointAttrs[l][j]
                mesh.setAttr(jointAttr, finalJWeights[l][j])
        print('done!')

#=========== FLOOD ====================================

    def FloodReplace(self, mesh, attr, weight):
        vertCount = pm.polyEvaluate(mesh, v=1)
        values = [weight] * vertCount
        mesh.setAttr(attr, values)

    def FloodAdd(self, mesh, attr, weight):
        combineAttr = '%s.%s' % (mesh, attr)
        weights = pm.getAttr(combineAttr)
        weights = [min(1, w + weight) for w in weights]
        mesh.setAttr(combineAttr, weights)


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
