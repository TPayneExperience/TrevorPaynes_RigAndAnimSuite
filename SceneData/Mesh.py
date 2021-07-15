
import pymel.core as pm

import Utilities.Logger as log
reload(log)
import Utilities.General_Utilities as genUtil
reload(genUtil)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import Data.Rig_Data as rigData
reload(rigData)

import Group as grp
reload(grp)

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

        # Skin Mesh
        joints = rigUtil.GetSkinnableRigJoints(rigRoot)
        pm.skinCluster(joints, mesh)
    
    @staticmethod
    def Remove(mesh):
        log.funcFileDebug()
        pm.delete(pm.listConnections(mesh.backupMesh))
        pm.disconnectAttr(mesh.rigRoot)
        pm.skinCluster(mesh, e=1, unbind=1)
    
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"

    