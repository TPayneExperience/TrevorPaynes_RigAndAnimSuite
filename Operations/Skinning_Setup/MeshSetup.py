

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
import Data.Anim_Data as animData
reload(animData)
import Data.Rig_Data as rigData
reload(rigData)
import SceneData.Mesh as msh
reload(msh)
import Data.General_Data as genData
reload(genData)

class MeshSetup(absOp.Abstract_Operation):
    isRigBuilt = False
    applyBakedAnimations = False
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
        for xform in meshes:
            msh.Mesh.Add(rigRoot, xform)
            mesh = pm.listRelatives(xform, c=1, type='mesh')[0]
            for limb in pm.listConnections(rigRoot.limbs):
                if limb.limbType.get() == 0: # Empty
                    continue
                self._AddLimbMask(mesh, limb)
                # TEMP FLOODING
                attr = 'L%03d' % limb.ID.get()
                value = random.random()
                self.FloodReplace(mesh, attr, value)
                
                for joint in pm.listConnections(limb.joints):
                    self._AddJointMask(mesh, joint)
                    # TEMP FLOODING
                    attr = 'J%03d' % joint.ID.get()
                    value = random.random()
                    self.FloodReplace(mesh, attr, value)
    
    def RemoveMeshes(self, rigRoot, meshes):
        log.funcFileInfo()
        for xform in meshes:
            msh.Mesh.Remove(xform)
            mesh = pm.listRelatives(xform, c=1, type='mesh')[0]
            for limb in pm.listConnections(rigRoot.limbs):
                if limb.limbType.get() == 0: # Empty
                    continue
                self._RemoveLimbMask(mesh, limb)
                for joint in pm.listConnections(limb.joints):
                    self._RemoveJointMask(mesh, joint)

    def PaintSkinWeightsTool(self):
        mel.eval('ArtPaintSkinWeightsTool;')
    
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

#=========== ADD + REMOVE MASKS ====================================

    def _AddLimbMask(self, mesh, limb):
        log.funcFileInfo()
        attr = 'L%03d' % limb.ID.get()
        if mesh.hasAttr(attr):
            return
        pm.addAttr(mesh, ln=attr, dt='doubleArray', h=genData.HIDE_ATTRS) # Remove Later?
        # pm.addAttr(mesh, ln=attr, dt='floatArray', h=1)
    
    def _AddJointMask(self, mesh, joint):
        log.funcFileInfo()
        attr = 'J%03d' % joint.ID.get()
        if mesh.hasAttr(attr):
            return
        pm.addAttr(mesh, ln=attr, dt='doubleArray', h=genData.HIDE_ATTRS)
        # pm.addAttr(mesh, ln=attr, dt='floatArray', h=1)
    
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

#=========== FLOOD ====================================

    def FloodReplace(self, mesh, attr, weight):
        vertCount = pm.polyEvaluate(mesh, v=1)
        values = [weight] * vertCount
        mesh.setAttr(attr, values)

    def FloodAdd(self, mesh, attr, weight):
        weights = mesh.getAttr(attr)
        weights = [min(1, w + weight) for w in weights]
        mesh.setAttr(attr, weights)


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
