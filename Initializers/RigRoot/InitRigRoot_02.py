
import imp

import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
import Data.General_Data as genData
import Utilities.Logger as log
import Utilities.Rig_Utilities as rigUtil

class InitRigRoot(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(rigRoot):
        log.funcFileDebug()
        if rigRoot.pfrsVersion.get() > 110:
            return

        # New Stuff
        hide = genData.HIDE_ATTRS
        rigRoot.pfrsVersion.set(110)
        pm.addAttr(rigRoot, ln='paintWeightsUseAnimJoints', at='bool', h=hide)

        pm.addAttr(rigRoot, ln='nextAttachPointID', at='short', dv=1, h=hide)
        pm.addAttr(rigRoot, ln='nextGhostID', at='short', dv=1, h=hide)
        pm.addAttr(rigRoot, ln='nextSetDrivenGroupID', at='short', dv=1, h=hide)

        pm.addAttr(rigRoot, ln='arePhysicsActive', at='bool', dv=1, h=hide)
        
        #============= GROUPS ============================

        pm.addAttr(rigRoot, ln='attachPoints', dt='string', h=hide)
        pm.addAttr(rigRoot, ln='ghosts', dt='string', h=hide)

        group = pm.group(name='ATTACH_POINTS', em=1, p=rigRoot)
        pm.addAttr(group, ln='rigRoot', dt='string')
        pm.connectAttr(rigRoot.attachPoints, group.rigRoot)
        rigUtil.ChannelBoxAttrs(group, 0, 0, 0, 0)

        group = pm.group(name='GHOSTS', em=1, p=rigRoot)
        pm.addAttr(group, ln='rigRoot', dt='string')
        pm.connectAttr(rigRoot.ghosts, group.rigRoot)
        rigUtil.ChannelBoxAttrs(group, 0, 0, 0, 0)


# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
