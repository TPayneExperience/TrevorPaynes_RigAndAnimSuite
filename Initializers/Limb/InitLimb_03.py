
import imp

import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
#imp.reload(absInit)
import Data.General_Data as genData
#imp.reload(genData)
import Data.Rig_Data as rigData
#imp.reload(rigData)
import Utilities.Logger as log
#imp.reload(log)

class InitLimb(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(limb):
        log.funcFileDebug()
        if limb.pfrsVersion.get() > 120:
            return
        limb.pfrsVersion.set(120)
        #============= ATTRS ============================

        hide = genData.HIDE_ATTRS
        
        # Delete depricated attrs
        if limb.hasAttr('bakeInternal'):
            limb.deleteAttr('bakeInternal')
        if limb.hasAttr('bakeExternal'):
            limb.deleteAttr('bakeExternal')
        if limb.hasAttr('hasKeys'):
            limb.deleteAttr('hasKeys')

        pm.addAttr(limb, ln='toBeBaked', at='bool', h=hide)
        pm.addAttr(limb, ln='isFirstIkGroupVis', at='bool', h=hide)
        
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
