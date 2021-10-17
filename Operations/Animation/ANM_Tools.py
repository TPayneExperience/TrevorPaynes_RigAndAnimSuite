
import imp
import os

import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
#imp.reload(absOp)
import Utilities.Logger as log
#imp.reload(log)
import Operations.Rigging_Setup.Behavior as rigBhv
#imp.reload(rigBhv)
import Utilities.General_Utilities as genUtil
#imp.reload(genUtil)

class ANM_Tools(absOp.Abstract_Operation):
    isRigBuilt = True
    applyBakedAnimations = True
    areLimbsRequired = True
    areMeshesRequired = True
    validRigStates = (0, 1)     # 0 = Setup, 1 = Anim
    controlLayerState = (1, 0)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef
    meshLayerState = (1, 1)    # isVis, isRef
    
    def __init__(self):
        self._rigBhv = rigBhv.Behavior()

    def ApplyPreset(self, rigRoot, presetID, keyframesOnly=True):
        log.funcFileDebug()
        folder = os.path.dirname(__file__)
        folder = os.path.dirname(folder)
        folder = os.path.dirname(folder)
        folder = os.path.join(folder, 'Data')
        filePath = os.path.join(folder, 'Config.json')
        config = genUtil.Json.Load(filePath)
        scl = config['useScaleConstraints']

        self._rigBhv.bhvMng = self.bhvMng
        allPresets = pm.listConnections(rigRoot.presets)
        presets = [p for p in allPresets if p.ID.get() == presetID]
        limbs = [pm.listConnections(p.limb)[0] for p in presets]
        start = int(pm.playbackOptions(q=1, ast=1))
        end = int(pm.playbackOptions(q=1, aet=1))
        
        # Get Specific keyframes
        if keyframesOnly:
            for limb in limbs:
                groups = pm.listConnections(limb.usedGroups)
                controls = [pm.listConnections(g.control)[0] for g in groups]
                limb.hasKeys.set(False)
                if any([pm.keyframe(c, q=1, kc=1) for c in controls]):
                    limb.hasKeys.set(True)
                    limb.controlKeyframes.set('')
                    keyframes = set()
                    for control in controls:
                        for k in pm.keyframe(control, q=1, t=(start,end), 
                                                            vc=1, tc=1):
                            keyframes.add(k[0])
                    keyframes = sorted(keyframes)
                    keyframes = [str(k) for k in keyframes]
                    limb.controlKeyframes.set(':'.join(keyframes))

        self.bhvMng.SetupAnimJoints(rigRoot)
        rigRoot.hasAnimJoints.set(1)
        self.bhvMng.Teardown_Rig(rigRoot)

        # Assign new Behaviors + new parents
        log.debug('Assign New Behaviors')
        for preset in presets:
            limb = pm.listConnections(preset.limb)[0]
            limb.toBeBaked.set(False)
            limb.bakeExternal.set(False)
            if self._rigBhv._ApplyLimbPreset_Bhv(preset):
                if limb.hasKeys.get():
                    limb.toBeBaked.set(True)
                    limb.bakeExternal.set(True)
        log.debug('Assign New Parents')
        for preset in presets:
            limb = pm.listConnections(preset.limb)[0]
            if self._rigBhv._ApplyLimbPreset_Parent(preset):
                if limb.hasKeys.get():
                    limb.bakeExternal.set(True)

        self.bhvMng.Setup_Rig(rigRoot)
        self.bhvMng.ApplyAnimJoints(limbs, 1, 1, scl)
        for limb in pm.listConnections(rigRoot.limbs):
            self.bhvMng.TeardownAnimJoints(limb)
        rigRoot.hasAnimJoints.set(0)

        if keyframesOnly:
            for limb in limbs:
                if not limb.hasKeys.get():
                    continue
                keyframes = limb.controlKeyframes.get()
                if not keyframes:
                    continue
                keyframes = keyframes.split(':')
                keyframes = set([int(float(k)) for k in keyframes])
                groups = pm.listConnections(limb.usedGroups)
                controls = [pm.listConnections(g.control)[0] for g in groups]
                for i in range(start, end+1):
                    if i in keyframes:
                        continue
                    pm.cutKey(controls, t=(i, i))
                    
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
