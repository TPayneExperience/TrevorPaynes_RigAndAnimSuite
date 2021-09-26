
import pymel.core as pm

import Operations.Rigging_Setup.LimbSetup as ls
reload(ls)

class Export(object):
    def __init__(self):
        self.limbSetup = ls.LimbSetup()

# ============= MAIN =============

    def SaveAsFile(self, rigRoot, filePath, areKeysReduced, 
                   areUnusedJointsRemoved):
        curFile = pm.sceneName()
        rigRoot.rigMode.set(5) # Exported
        self._RemoveBackupMeshes(rigRoot)
        self._BakeKeysToSkeleton(rigRoot, areKeysReduced)
        self._DeleteEmptyLimbs(rigRoot)
        if areUnusedJointsRemoved:
            self._RemoveUnusedJoints(rigRoot)
        self._RemoveExtraGroups(rigRoot)
        self._SaveToFile(rigRoot, filePath)
        pm.openFile(curFile, f=1)

    def ExportFBX(self, rigRoot, filePath, areKeysReduced, 
                   areUnusedJointsRemoved):
        curFile = pm.sceneName()
        rigRoot.rigMode.set(5) # Exported
        self._RemoveBackupMeshes(rigRoot)
        self._BakeKeysToSkeleton(rigRoot, areKeysReduced)
        self._DeleteEmptyLimbs(rigRoot)
        if areUnusedJointsRemoved:
            self._RemoveUnusedJoints(rigRoot)
        self._RemoveExtraGroups(rigRoot)
        self._ExportFBX(rigRoot, filePath)
        pm.openFile(curFile, f=1)

# ============= BEHAVIORS =============

    def _BakeKeysToSkeleton(self, rigRoot, areKeysReduced):
        start = pm.playbackOptions(q=1, ast=1)
        end = pm.playbackOptions(q=1, aet=1)
        joints = list()
        for limb in pm.listConnections(rigRoot.limbs):
            if limb.limbType.get() != 0:
                joints += pm.listConnections(limb.joints)
        pm.bakeResults(joints, sm=1, t=(start, end))
        if areKeysReduced:
            pm.filterCurve(joints, f='keyReducer', pre=80)

    def _RemoveExtraGroups(self, rigRoot):
        meshGroup = pm.listConnections(rigRoot.meshesParentGroup)[0]
        jointGroup = pm.listConnections(rigRoot.jointsParentGroup)[0]
        skip = [meshGroup, jointGroup]
        for child in pm.listRelatives(rigRoot, c=1):
            if child in skip:
                continue
            pm.delete(child)

    def _RemoveBackupMeshes(self, rigRoot):
        meshes = pm.listConnections(rigRoot.meshes, sh=1)
        for mesh in meshes:
            backup = pm.listConnections(mesh.backupMesh)[0]
            pm.delete(backup)

    def _DeleteEmptyLimbs(self, rigRoot):
        for limb in pm.listConnections(rigRoot.limbs):
            if limb.limbType.get() == 0: #Empty
                self.limbSetup.RemoveLimbAndJoints(limb)

    def _RemoveUnusedJoints(self, rigRoot):
        meshes = pm.listConnections(rigRoot.meshes, sh=1)
        joints = list()
        for limb in pm.listConnections(rigRoot.limbs):
            joints += pm.listConnections(limb.joints)

        for mesh in meshes:
            skin = pm.listConnections(mesh.pfrsSkinCluster)[0]
            allInfluences = set(pm.skinCluster(skin, q=1, inf=1))
            unusedJoints = allInfluences.intersection(set(joints))
            vertCount = pm.polyEvaluate(mesh, v=1)
            for vert in range(vertCount):
                toRemove = set([])
                vAttr = '%s.vtx[%d]' % (mesh, vert)
                for joint in unusedJoints:
                    if not pm.skinPercent(skin, vAttr, t=joint, q=1):
                        continue
                    toRemove.add(joint)
                unusedJoints = unusedJoints.difference(toRemove)
            for joint in unusedJoints:
                pm.skinCluster(skin, e=1, ri=joint)


    def _SaveToFile(self, rigRoot, filePath):
        pm.select(rigRoot)
        pm.exportSelected(filePath, f=1)

    def _ExportFBX(self, rigRoot, filePath):
        pm.select(rigRoot)
        pm.mel.FBXExport(f=filePath, s=1)


















