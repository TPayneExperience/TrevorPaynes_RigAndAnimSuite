
import imp

import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
import Utilities.Logger as log
import Utilities.General_Utilities as genUtil

class SetDrivenKeys(absOp.Abstract_Operation):
    isRigBuilt = True
    applyBakedAnimations = False
    areLimbsRequired = True
    areMeshesRequired = False
    validRigStates = (0,)     # 0 = Setup, 1 = Anim
    controlLayerState = (1, 0)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef
    meshLayerState = (1, 1)    # isVis, isRef

    def AddSetDrivenGroup(self, rigRoot, limb, control, driver):
        nextID = rigRoot.nextSetDrivenGroupID.get()
        rigRoot.nextSetDrivenGroupID.set(nextID + 1)
        
        controlParent = pm.listRelatives(control, p=1)[0]
        name = str(control).replace('CTR', 'SDG%03d' % nextID)
        group = pm.group(em=1, n=name, p=controlParent)
        pm.addAttr(group, ln='limb', dt='string')
        pm.addAttr(group, ln='driver', dt='string')
        pm.addAttr(group, ln='ID', at='short', dv=nextID)
        
        pm.connectAttr(limb.setDrivenGroups, group.limb)
        pm.connectAttr(driver.message, group.driver)
        pm.parent(control, group)

        return group

    def RemoveSetDrivenGroup(self, group):
        parent = pm.listRelatives(group, p=1)[0]
        children = pm.listRelatives(group, c=1)
        pm.parent(children, parent)
        pm.delete(group)

    def RenameSetDrivenGroup(self, group, newName):
        oldName = group.shortName()
        msg = '\t"%s" to "%s"' % (oldName, newName)
        log.info(msg)
        if not genUtil.Name.IsValidCharacterLength(newName):
            msg = 'Joint Name Must be 2 or more characters'
            log.error(msg)
            return False
        if not genUtil.Name.DoesNotStartWithNumber(newName):
            msg = 'Cannot start with number OR _'
            log.error(msg)
            return False
        if not genUtil.Name.AreAllValidCharacters(newName):
            msg = 'May only contain A-Z, a-z, 0-9, _'
            log.error(msg)
            return False
        limbs = pm.listConnections(group.limb)
        if not limbs:
            msg = 'Cannot rename group DISCONNECTED from limb'
            log.error(msg)
            return False
        limb = limbs[0]
        groups = pm.listConnections(limb.setDrivenGroups)
        groupNames = [g.shortName() for g in groups]
        if newName in groupNames:
            msg = 'Every limb joint name must be UNIQUE'
            log.error(msg)
            return False
        group.rename(newName)
        return True

    def OpenSetDrivenKeyWindow(self, setDrivenGroup):
        cmd = 'setDrivenKeyWindow "%s" {};' % setDrivenGroup
        pm.mel.eval(cmd)
        driver = pm.listConnections(setDrivenGroup.driver)[0]
        pm.select(driver)
        cmd = 'updateSetDrivenWnd("driver","%s",{});' % driver
        pm.mel.eval(cmd)
        
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
