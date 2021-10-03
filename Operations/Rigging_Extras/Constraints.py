
import inspect
import os
import sys

import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import SceneData.Group as grp
reload(grp)

class Constraints(absOp.Abstract_Operation):
    isRigBuilt = True
    applyBakedAnimations = True
    areLimbsRequired = True
    areMeshesRequired = False
    validRigStates = (0, 1)      # 0 = Setup, 1 = Anim
    controlLayerState = (1, 0)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef
    meshLayerState = (1, 1)    # isVis, isRef

    def ApplyOrientConstraint(self, affectedControl, target1, target2,
                    hasMaintainOffset, lockX, lockY, lockZ):
        self._ApplyConstraint(affectedControl, target1, target2,
                    hasMaintainOffset, lockX, lockY, lockZ, 0)

    def ApplyParentConstraint(self, affectedControl, target1, target2,
                    hasMaintainOffset, lockX, lockY, lockZ):
        self._ApplyConstraint(affectedControl, target1, target2,
                    hasMaintainOffset, lockX, lockY, lockZ, 1)

    def ApplyPointConstraint(self, affectedControl, target1, target2,
                    hasMaintainOffset, lockX, lockY, lockZ):
        self._ApplyConstraint(affectedControl, target1, target2,
                    hasMaintainOffset, lockX, lockY, lockZ, 2)

    def ApplyScaleConstraint(self, affectedControl, target1, target2,
                    hasMaintainOffset, lockX, lockY, lockZ):
        self._ApplyConstraint(affectedControl, target1, target2,
                    hasMaintainOffset, lockX, lockY, lockZ, 3)

    def RemoveConstraintGroups(self, constraintGroups):
        for cstGroup in constraintGroups:
            self.bhvMng._TeardownConstraintGroup(cstGroup)
            grp.Group.Remove(cstGroup)

#============= PRIVATE ============================

    def _ApplyConstraint(self, affectedControl, target1, target2, 
                    hasMaintainOffset, lockX, lockY, lockZ, index):
        if not target2:
            target2 = pm.listRelatives(affectedControl, p=1)[0]
        if not target1.hasAttr('cstSources'):
            pm.addAttr(target1, ln='cstSources', dt='string')
        if not target2.hasAttr('cstSources'):
            pm.addAttr(target2, ln='cstSources', dt='string')

        group = grp.Group.AddConstraintGroup(affectedControl)
        group.cstType.set(index)
        group.maintainOffset.set(hasMaintainOffset)
        group.lockX.set(lockX)
        group.lockY.set(lockY)
        group.lockZ.set(lockZ)
        pm.connectAttr(target1.cstSources, group.target1)
        pm.connectAttr(target2.cstSources, group.target2)

        self.bhvMng._SetupConstraintGroup(group)
        
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
