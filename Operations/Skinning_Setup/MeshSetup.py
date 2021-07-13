
import os
import subprocess

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
        for mesh in meshes:
            msh.Mesh.Add(rigRoot, mesh)
    
    def RemoveMeshes(self, meshes):
        log.funcFileInfo()
        for mesh in meshes:
            msh.Mesh.Remove(mesh)

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

