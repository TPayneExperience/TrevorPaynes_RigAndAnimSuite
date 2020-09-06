import os
import sys

import pymel.core as pm



class RigSetup:
    def __init__(self, nameManager, fileManager, limbSetup):
        
        self.nameMng = nameManager
        self.fileMng = fileManager
        self.limbSetup = limbSetup

        self.rigRoot = None
        self.curMeshGrp = None
        self.oldMeshGrp = None
    
    def NewRig(self, prefix, nameOrder, showPrefix, meshPath):
        pm.flushUndo()
        pm.newFile(newFile=1, force=1)
        self.rigRoot = pm.group(name='temp', em=True)

        # NAMING
        pm.addAttr(self.rigRoot, ln='prefixIndex', at='short', dv=nameOrder[0])
        pm.addAttr(self.rigRoot, ln='limbIndex', at='short', dv=nameOrder[1])
        pm.addAttr(self.rigRoot, ln='jointIndex', at='short', dv=nameOrder[2])
        pm.addAttr(self.rigRoot, ln='sideIndex', at='short', dv=nameOrder[3])
        pm.addAttr(self.rigRoot, ln='typeIndex', at='short', dv=nameOrder[4])
        pm.addAttr(self.rigRoot, ln='showPrefix', at='bool', dv=showPrefix)
        pm.addAttr(self.rigRoot, ln='prefix', dt='string')
        pm.setAttr(self.rigRoot +'.prefix', prefix)
        pm.addAttr(self.rigRoot, ln='meshPath', dt='string')
        pm.setAttr(self.rigRoot +'.meshPath', meshPath)

        # MESH LAYER
        self.meshLayer = pm.createDisplayLayer(n='Rig Mesh', e=True)
        pm.setAttr(self.meshLayer + '.displayType', 2)
        pm.select(d=True)
        self.meshGrp = pm.group(name='Mesh_GRP', em=True)
        pm.parent(self.meshGrp, self.rigRoot)
        self.Import_Meshes()
        self.UpdatePrefix()
        self.nameMng.NewRig(self.rigRoot, 
                            self.limbSetup.limbMng, 
                            self.limbSetup.jntMng)
        self.limbSetup.NewRig(self.rigRoot)

    def UpdatePrefix(self):
        self.rigRoot.rename('%s_ROOT' % self.rigRoot.prefix.get())

    def Import_Meshes(self):
        pm.select(d=1)
        if self.oldMeshGrp:
            pm.delete(self.oldMeshGrp)
        if self.curMeshGrp:
            self.oldMeshGrp = self.curMeshGrp # for skin weight xfer,
            self.oldMeshGrp.rename('OldMesh') # delete after.
        self.curMeshGrp = pm.group(name='NewMesh', em=True)
        pm.parent(self.curMeshGrp, self.meshGrp)
        meshPath = self.rigRoot.meshPath.get()
        if(os.path.isfile(meshPath)):
            pm.importFile(meshPath, i=True, f=True)
            meshShapes = pm.ls(type='mesh')
            for meshShape in meshShapes:
                mesh = pm.listRelatives(meshShape, p=1)
                pm.parent(mesh, self.curMeshGrp)
                pm.editDisplayLayerMembers(self.meshLayer, mesh)
    
    
# #============= DEPRICATED ============================
# #============= DEPRICATED ============================
# #============= DEPRICATED ============================

    # def NewRig(self):
    #      SCENE
    #     cmds.flushUndo()
    #     cmds.file(newFile=1, force=1)
    #     rootName = '%s_ROOT' % self.nameMng.GetPrefix()
    #     self.rigRoot = cmds.group(name=rootName, em=True)
    #     self.meshGrp = cmds.group(name='Mesh_GRP', em=True)
    #     cmds.parent(self.meshGrp, self.rigRoot)

    #     # MESH LAYER
    #     self.meshLayer = cmds.createDisplayLayer(n='Rig Mesh', e=True)
    #     cmds.setAttr(self.meshLayer + '.displayType', 2)
    #     cmds.select(d=True)
    #     self._Import_Meshes()
    #     self.limbSetup.NewRig(self.rigRoot)

    # def _Import_Meshes(self):
    #     meshPath = self.fileMng.GetMeshPath()
    #     if(os.path.isfile(meshPath)):
    #         cmds.file(meshPath, i=True, f=True)
    #         meshShapes = cmds.ls(type='mesh')
    #         meshes = cmds.listRelatives(meshShapes, p=1)
    #         cmds.parent(meshes, self.meshGrp)
    #         cmds.editDisplayLayerMembers(self.meshLayer, meshes)
    
    # def UpdatePrefix(self):
    #     rigRootName = '%s_ROOT' % self.nameMng.GetPrefix()
    #     self.rigRoot = cmds.rename(self.rigRoot, rigRootName)

    # def UpdateMeshes(self):
    #     cmds.select(d=1)
    #     cmds.delete(self.meshGrp)
    #     self.meshGrp = cmds.group(name='Mesh_GRP', em=True)
    #     cmds.parent(self.meshGrp, self.rigRoot)
    #     self._Import_Meshes()