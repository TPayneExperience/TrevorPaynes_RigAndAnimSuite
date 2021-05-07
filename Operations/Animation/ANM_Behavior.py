
import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Common.Logger as log
reload(log)
import Operations.Rigging.RIG_Behavior as rigBhv
reload(rigBhv)
import SceneData.Behavior_Manager as bhvMng
reload(bhvMng)

class ANM_Behavior(absOp.Abstract_Operation):
    isRigBuilt = True
    validRigStates = (0, 1)     # 0 = Setup, 1 = Anim
    controlLayerState = (1, 0)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef
    meshLayerState = (1, 1)    # isVis, isRef
    def __init__(self):
        self._rigBhv = rigBhv.RIG_Behavior()

    def ApplyPreset(self, preset, keyframesOnly=True):
        log.funcFileDebug()
        rigRoot = pm.listConnections(preset.rigRoot)[0]
        mng = bhvMng.Behavior_Manager
        limbPresets = pm.listConnections(preset.limbPresets)
        limbs = [pm.listConnections(lp.limb)[0] for lp in limbPresets]
        start = int(pm.playbackOptions(q=1, ast=1))
        end = int(pm.playbackOptions(q=1, aet=1))
        
        # keyframe data
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
                    keyframes = sorted(list(keyframes))
                    keyframes = [str(k) for k in keyframes]
                    limb.controlKeyframes.set(':'.join(keyframes))

        mng.Teardown_Anim_Rig(rigRoot)

        # Assign new Behaviors + new parents
        log.debug('Assign New Behaviors')
        for limbPreset in limbPresets:
            limb = pm.listConnections(limbPreset.limb)[0]
            limb.bakeInternal.set(False)
            limb.bakeExternal.set(False)
            if self._rigBhv._ApplyLimbPreset_Bhv(limbPreset):
                if limb.hasKeys.get():
                    limb.bakeInternal.set(True)
                    limb.bakeExternal.set(True)
        log.debug('Assign New Parents')
        for limbPreset in limbPresets:
            limb = pm.listConnections(limbPreset.limb)[0]
            if self._rigBhv._ApplyLimbPreset_Parent(limbPreset):
                if limb.hasKeys.get():
                    limb.bakeExternal.set(True)

        mng.Setup_Anim_Rig(rigRoot)

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