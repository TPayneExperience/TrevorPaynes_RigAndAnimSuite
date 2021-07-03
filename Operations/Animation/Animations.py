
import os
# import subprocess

import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Utilities.Logger as log
reload(log)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import Utilities.General_Utilities as genUtil
reload(genUtil)
import Utilities.Anim_Utilities as animUtil
reload(animUtil)
# import Data.Anim_Data as animData
# reload(animData)
# import Data.Rig_Data as rigData
# reload(rigData)
import Operations.Rigging_Setup.LimbSetup as ls
reload(ls)
import SceneData.Limb as lmb
reload(lmb)

class Animations(absOp.Abstract_Operation):
    isRigBuilt = True
    validRigStates = (0, 1)     # 0 = Setup, 1 = Anim
    controlLayerState = (1, 0)  # isVis, isRef
    jointLayerState = (0, 1)    # isVis, isRef
    meshLayerState = (1, 1)    # isVis, isRef
    def __init__(self):
        self._ls = ls.LimbSetup()

    def RemoveControlAnimation(self, rigRoot):
        log.funcFileInfo()
        for limb in pm.listConnections(rigRoot.limbs):
            groups = pm.listConnections(limb.usedGroups)
            controls = [pm.listConnections(g.control)[0] for g in groups]
            pm.cutKey(controls)

    def ApplyAnimation(self, limbs, animData, newStartFrame,
                        hasPosCst, hasRotCst, hasScaleCst):
        log.funcFileInfo()

        # import file
        filePath = animData['filePath']
        filePath = os.path.splitext(filePath)[0]
        filePath += '.ma'
        allNodes = pm.importFile(filePath, rnn=1)
        for rigRoot in genUtil.GetRigRoots():
            if rigRoot.rigMode.get() == 3: # Baked Anims
                break
        else:
            raise ValueError('Imported file missing animation nodes!')
        
        # Pair Limbs
        controlLimbs = {}
        bakeLimbs = {}
        limbIDs = []
        for limb in limbs:
            limbID = '%s_%d' % (limb.pfrsName.get(), limb.side.get())
            controlLimbs[limbID] = limb
            limbIDs.append(limbID)
        for limb in pm.listConnections(rigRoot.limbs):
            limbID = '%s_%d' % (limb.pfrsName.get(), limb.side.get())
            bakeLimbs[limbID] = limb

        # bind limb anim groups to joints
        controls = []
        bakeLocs = []
        for limbID in limbIDs:
            # Control limb
            controlLimb = controlLimbs[limbID]
            joints = pm.listConnections(controlLimb.joints)
            joints = rigUtil.GetSortedJoints(joints)
            groups = pm.listConnections(controlLimb.usedGroups)
            controls += [pm.listConnections(g.control)[0] for g in groups]
            # Bake Limb
            bakeLimb = bakeLimbs[limbID]
            bakeGroup = pm.listConnections(bakeLimb.animGroups)[0]
            locs = pm.listRelatives(bakeGroup, c=1)
            bhv = self.bhvMng.bhvs[controlLimb.bhvFile.get()]
            # Constrain
            bhv.Setup_Constraint_ControlsToXforms(controlLimb, locs,
                                    hasPosCst, hasRotCst, hasScaleCst)
            bakeLocs += locs

        # Offset loc animation
        start = animData['startFrame']
        end = start + animData['frameCount']
        offset = newStartFrame - start
        newEndFrame = newStartFrame + animData['frameCount']
        pm.keyframe(bakeLocs, r=1, tc=offset, t=(start, end))
        pm.bakeResults(controls, sm=1, t=(newStartFrame, newEndFrame))
        pm.delete(allNodes)

#=========== FILES ====================================

    def SetAnimationFolder(self, rigRoot, folderPath):
        rigRoot.animationFolderPath.set(folderPath)

    def GetRigRootAnimations(self, rigRoot):
        curFile = pm.sceneName()
        animUtil.UpdateAnimFolder(rigRoot, curFile)
        folder = rigRoot.animationFolderPath.get()
        files = [f for f in os.listdir(folder) if '.json' in f]
        filePaths = {}
        for f in files:
            anim = os.path.splitext(f)[0]
            filePaths[anim] = os.path.join(folder, f)
        return filePaths

    def ExportControlAnimation(self, rigRoot, animName):
        log.funcFileDebug()
        curFile = pm.sceneName()
        animUtil.UpdateAnimFolder(rigRoot, curFile)
        pm.saveFile()
        limbs = pm.listConnections(rigRoot.limbs)
        animLimbs = self.bhvMng.BakeControlAnimation(limbs, animName)
        self._ls._ExportAnimation(rigRoot, animLimbs, animName)
        pm.openFile(curFile, f=1)

    def DeleteAnimation(self, filePath):
        if os.path.isfile(filePath):
            os.remove(filePath)

