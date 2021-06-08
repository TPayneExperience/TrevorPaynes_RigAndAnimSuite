
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
    validRigStates = (0, 1)      # 0 = Setup, 1 = Anim
    controlLayerState = (1, 0)  # isVis, isRef
    jointLayerState = (1, 0)    # isVis, isRef
    meshLayerState = (1, 1)    # isVis, isRef

    def ApplyOrientConstraint(self, affectedControl, target, 
                    hasMaintainOffset, lockX, lockY, lockZ):
        self._ApplyConstraint(affectedControl, target, 
                    hasMaintainOffset, lockX, lockY, lockZ, 0)

    def ApplyParentConstraint(self, affectedControl, target, 
                    hasMaintainOffset, lockX, lockY, lockZ):
        self._ApplyConstraint(affectedControl, target, 
                    hasMaintainOffset, lockX, lockY, lockZ, 1)

    def ApplyPointConstraint(self, affectedControl, target, 
                    hasMaintainOffset, lockX, lockY, lockZ):
        self._ApplyConstraint(affectedControl, target, 
                    hasMaintainOffset, lockX, lockY, lockZ, 2)

    def ApplyScaleConstraint(self, affectedControl, target, 
                    hasMaintainOffset, lockX, lockY, lockZ):
        self._ApplyConstraint(affectedControl, target, 
                    hasMaintainOffset, lockX, lockY, lockZ, 3)

    def RemoveConstraintGroup(self, constraintGroup):
        self.bhvMng._TeardownConstraintGroup(constraintGroup)
        grp.Group.Remove(constraintGroup)

#============= PRIVATE ============================

    def _ApplyConstraint(self, affectedControl, target, 
                    hasMaintainOffset, lockX, lockY, lockZ, index):
        if not target.hasAttr('cstSources'):
            pm.addAttr(target, ln='cstSources', dt='string')

        group = grp.Group.AddConstraintGroup(affectedControl)
        group.cstType.set(index)
        group.maintainOffset.set(hasMaintainOffset)
        group.lockX.set(lockX)
        group.lockY.set(lockY)
        group.lockZ.set(lockZ)
        pm.connectAttr(target.cstSources, group.target)

        self.bhvMng._SetupConstraintGroup(group)
        