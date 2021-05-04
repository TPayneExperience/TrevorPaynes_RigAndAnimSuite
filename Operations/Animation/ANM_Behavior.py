
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

    def ApplyPreset(self, preset):
        log.funcFileDebug()
        mng = bhvMng.Behavior_Manager
        limbPresets = pm.listConnections(preset.limbPresets)
        limbs = [pm.listConnections(p.limb)[0] for p in limbPresets]
        tempParent = pm.group(n='PFRS_BAKED_JOINT_DATA', em=1, w=1)
        start = pm.playbackOptions(q=1, ast=1)
        end = pm.playbackOptions(q=1, aet=1)
        
        tempGroups = mng._BakeControlsToJointData(limbs, tempParent,
                                                        start,
                                                        end)
        keyedLimbs = mng._TeardownLimbs(limbs)

        log.debug('Assign New Behaviors')
        bakeAll = []
        for limbPreset in limbPresets:
            limb = pm.listConnections(limbPreset.limb)[0]
            if self._rigBhv._ApplyLimbPreset_Bhv(limbPreset):
                if limb in keyedLimbs:
                    bakeAll.append(limb)
                
        log.debug('Assign New Parents')
        bakeExternalOnly = []
        for limbPreset in limbPresets:
            limb = pm.listConnections(limbPreset.limb)[0]
            if self._rigBhv._ApplyLimbPreset_Parent(limbPreset):
                if limb not in bakeAll and limb in keyedLimbs:
                    bakeExternalOnly.append(limb)

        controls = mng._SetupRigConstrainedToJoints(limbs, bakeAll, 
                                                        bakeExternalOnly)

        if controls:
            mng._BakeJointDataToControls(tempGroups, controls, start, end)
        pm.delete(tempParent)
        mng._SetupJointsConstrainedToRig(limbs)
