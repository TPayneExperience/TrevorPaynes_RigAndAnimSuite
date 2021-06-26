
import pymel.core as pm

import Utilities.Logger as log
reload(log)
import Utilities.General_Utilities as genUtil
reload(genUtil)
# import Utilities.Rig_Utilities as rigUtil
# reload(rigUtil)
import Data.Rig_Data as rigData
reload(rigData)

import Group as grp
reload(grp)

class Mesh:
    @staticmethod
    def Add(rigRoot, mesh):
        log.funcFileDebug()
        # pm.editDisplayLayerMembers(rigData.MESHES_DISP_LAYER, 
        #                                 mesh, nr=1)
        genUtil.AbstractInitializer(mesh, 'Mesh')
        nextMeshID = rigRoot.nextMeshID.get()
        rigRoot.nextMeshID.set(nextMeshID + 1)
        mesh.ID.set(nextMeshID)
        pm.connectAttr(rigRoot.meshes, mesh.rigRoot)
    
    @staticmethod
    def Remove(mesh):
        log.funcFileDebug()
        pm.disconnectAttr(mesh.rigRoot)
    
    