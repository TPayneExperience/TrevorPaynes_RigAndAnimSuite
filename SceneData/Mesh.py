
import imp

import pymel.core as pm

import Utilities.Logger as log
#imp.reload(log)
import Utilities.General_Utilities as genUtil
#imp.reload(genUtil)
import Utilities.Rig_Utilities as rigUtil
#imp.reload(rigUtil)
import Data.Rig_Data as rigData
#imp.reload(rigData)

import SceneData.Group as grp
#imp.reload(grp)

class Mesh:
    @staticmethod
    def Add(rigRoot, mesh):
        log.funcFileDebug()
        genUtil.AbstractInitializer(mesh, 'Mesh')
        nextMeshID = rigRoot.nextMeshID.get()
        rigRoot.nextMeshID.set(nextMeshID + 1)
        mesh.ID.set(nextMeshID)

        # Create back for rebuilding skin if joints moved
        backupMesh = pm.duplicate(mesh, ic=1)[0]
        backupMesh.v.set(0)
        pm.connectAttr(mesh.backupMesh, backupMesh.backupMesh)

        # Connect to rigRoot
        pm.connectAttr(rigRoot.meshes, mesh.rigRoot)

    @staticmethod
    def BindSkin(rigRoot, mesh):
        joints = rigUtil.GetSkinnableRigJoints(rigRoot)
        skinCls = pm.skinCluster(joints, mesh)
        Mesh.ConnectSkin(mesh, skinCls)
    
    @staticmethod
    def ConnectSkin(mesh, skinCls):
        pm.addAttr(skinCls, ln='pfrsMeshes', dt='string')
        pm.connectAttr(skinCls + '.pfrsMeshes', mesh.pfrsSkinCluster)

    @staticmethod
    def UnbindSkin(mesh):
        pm.skinCluster(mesh, e=1, unbind=1)
    
    @staticmethod
    def Remove(mesh):
        log.funcFileDebug()
        pm.delete(pm.listConnections(mesh.backupMesh))
        pm.disconnectAttr(mesh.rigRoot)
    
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"

    