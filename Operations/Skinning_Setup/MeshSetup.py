

import imp

import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
import Utilities.Logger as log
import Utilities.Rig_Utilities as rigUtil
import Utilities.General_Utilities as genUtil
import Data.Rig_Data as rigData
import SceneData.Mesh as msh
import Utilities.Skin_Utilities as skinUtil

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
        joints = rigUtil.GetSkinnableRigJoints(rigRoot)
        for mesh in meshes:
            msh.Mesh.Add(rigRoot, mesh)
            skinCls = pm.mel.eval('findRelatedSkinCluster %s;' % mesh)
            if skinCls:
                msh.Mesh.ConnectSkin(mesh, skinCls)
                infJoints = set(pm.skinCluster(skinCls, q=1, inf=1))
                missingInf = set(joints).difference(infJoints)
                for joint in missingInf:
                    pm.skinCluster(skinCls, e=1, ai=joint)
            else:
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

    def DeleteMeshes(self, meshes):
        for mesh in meshes:
            pm.delete(pm.listRelatives(mesh, p=1))

    def RebuildSkin(self, mesh):
        log.funcFileInfo()
        rigRoot = pm.listConnections(mesh.rigRoot)[0]
        joints = rigUtil.GetSkinnableRigJoints(rigRoot)
        backupMesh = pm.listConnections(mesh.backupMesh)[0]
        backupSkin = pm.skinCluster(joints, backupMesh)
        meshSkin = pm.listConnections(mesh.pfrsSkinCluster)[0]
        pm.copySkinWeights( ss=meshSkin, ds=backupSkin, nm=1)
        msh.Mesh.UnbindSkin(mesh)
        msh.Mesh.BindSkin(rigRoot, mesh)
        meshSkin = pm.listConnections(mesh.pfrsSkinCluster)[0]
        pm.copySkinWeights( ss=backupSkin, ds=meshSkin, nm=1)

    def PasteWeights(self, rigRoot, sourceMesh, targetMesh):
        sourceSkin = pm.listConnections(sourceMesh.pfrsSkinCluster)[0]
        targetSkin = pm.listConnections(targetMesh.pfrsSkinCluster)[0]
        pm.copySkinWeights(ss=sourceSkin, ds=targetSkin, noMirror=1)
        self._UnpackWeights(rigRoot, targetMesh)

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
        limbIndexes = range(len(limbs))
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
        progressBar = pm.mel.eval('$tmp = $gMainProgressBar')
        pm.progressBar(progressBar, e=1, beginProgress=1, max=vertCount, 
                                        st='Unpacking Skin Weights...')
        for vert in range(vertCount):
            pm.progressBar(progressBar, e=1, pr=vert)
            vAttr = '%s.vtx[%d]' % (mesh, vert)
            vPos = pm.xform(vAttr, q=1, t=1, ws=1)
            for l in limbIndexes:
                # Get joint weights on vert
                jointWeights = []
                for joint in joints[l]:
                    jointWeights.append(pm.skinPercent(skin, vAttr, 
                                                        t=joint, q=1))

                # Limb weight
                limbWeight = sum(jointWeights)
                # Get closest joint and flood
                if limbWeight == 0:
                    closestDist = 999999
                    closestJointIndex = None
                    for j in range(len(jointPositions[l])):
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
                    for j in range(len(jointPositions[l])):
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
        pm.progressBar(progressBar, e=1, endProgress=1)
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
