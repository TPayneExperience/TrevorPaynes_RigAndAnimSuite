
import os

import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
import Utilities.Logger as log
import Utilities.Rig_Utilities as rigUtil
import Utilities.General_Utilities as genUtil
import Operations.Rigging_Setup.LimbSetup as ls

class Animations(absOp.Abstract_Operation):
    isRigBuilt = True
    applyBakedAnimations = True
    areLimbsRequired = True
    areMeshesRequired = True
    validRigStates = (0, 1)     # 0 = Setup, 1 = Anim
    controlLayerState = (1, 0)  # isVis, isRef
    jointLayerState = (0, 1)    # isVis, isRef
    meshLayerState = (1, 1)    # isVis, isRef

    def __init__(self):
        self._ls = ls.LimbSetup()

    def RemoveLimbAnimations(self, limb):
        groups = pm.listConnections(limb.usedGroups)
        controls = [pm.listConnections(g.control)[0] for g in groups]
        pm.cutKey(controls)

    def ImportAnimation(self, limbs, animFilePath,
                        hasPosCst, hasRotCst, hasScaleCst):
        log.funcFileInfo()

        # import file
        mayaFilePath = animFilePath + '.ma'
        print ('AnimPath: ' + animFilePath)
        if os.path.exists(mayaFilePath):
            os.remove(mayaFilePath)
        os.rename(animFilePath, mayaFilePath)
        allNodes = pm.importFile(mayaFilePath, returnNewNodes=1)
        for rigRoot in genUtil.GetRigRoots():
            if rigRoot.rigMode.get() == 3: # Baked Anims
                break
        else:
            raise ValueError('Imported file missing animation nodes!')
        
        # Pair Limbs
        rigLimbs = {} # limbID : limb
        animLimbs = {} # limbID : limb
        for limb in limbs:
            limbID = '%s_%d' % (limb.pfrsName.get(), limb.side.get())
            rigLimbs[limbID] = limb
            limb.toBeBaked.set(1)
        for limb in pm.listConnections(rigRoot.limbs):
            limbID = '%s_%d' % (limb.pfrsName.get(), limb.side.get())
            animLimbs[limbID] = limb
        
        # Setup Anim Joints
        bakeLimbs = []
        for limbID in list(rigLimbs.keys()):
            if limbID not in animLimbs:
                continue

            # Get joints and group data
            rigLimb = rigLimbs[limbID]
            animLimb = animLimbs[limbID]
            animGroups = pm.listConnections(animLimb.jointGroups)
            animGroups = rigUtil.SortGroups(animGroups)
            animJoints = [pm.listConnections(g.animJoint)[0] for g in animGroups]
            rigGroups = pm.listConnections(rigLimb.jointGroups)
            rigGroups = rigUtil.SortGroups(rigGroups)

            for rigGroup, animJoint in zip(rigGroups, animJoints):
                # parent animJoint(s) to limb's parentJoint
                parentAnimJoint = pm.listRelatives(animJoint, p=1)[0]
                if parentAnimJoint not in animJoints:
                    limbJoint = pm.listConnections(rigGroup.joint)[0]
                    parentLimbJoint = pm.listRelatives(limbJoint, p=1)[0]
                    pm.parent(animJoint, parentLimbJoint, r=1)

                # Make animJoint Connections
                pm.disconnectAttr(animJoint.limb)
                pm.disconnectAttr(animJoint.group)
                pm.connectAttr(rigLimb.animJoints, animJoint.limb)
                pm.connectAttr(rigGroup.animJoint, animJoint.group)

            bakeLimbs.append(rigLimb)
        
        # Bake and Delete
        self.bhvMng.ApplyAnimJoints(bakeLimbs, hasPosCst, hasRotCst, hasScaleCst)
        pm.delete(allNodes)
        os.rename(mayaFilePath, animFilePath)

    def DeleteStaticChannelsOnLimb(self, limb):
        groups = pm.listConnections(limb.usedGroups)
        controls = [pm.listConnections(g.control)[0] for g in groups]
        pm.delete(controls, staticChannels=1)

#=========== FILES ====================================

    def GetRigRootAnimations(self, rigRoot):
        curFile = pm.sceneName()
        if not os.path.isfile(curFile):
            return dict()
        folder = rigRoot.animationFolderPath.get()
        files = [f for f in os.listdir(folder) if '.json' in f]
        filePaths = dict()
        for f in files:
            anim = os.path.splitext(f)[0]
            filePaths[anim] = os.path.join(folder, f)
        return filePaths

    def ExportControlAnimation(self, rigRoot, animName):
        log.funcFileDebug()
        curFile = pm.sceneName()
        pm.saveFile()
        self._ls._ExportAnimation(rigRoot, animName)
        pm.openFile(curFile, f=1)

    def DeleteAnimation(self, filePath):
        if os.path.isfile(filePath):
            os.remove(filePath)


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
