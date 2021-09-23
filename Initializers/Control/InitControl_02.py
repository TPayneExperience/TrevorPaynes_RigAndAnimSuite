
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
reload(absInit)
import Data.General_Data as genData
reload(genData)
# import Data.Rig_Data as rigData
# reload(rigData)
import Utilities.Logger as log
reload(log)

class InitControl(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(control):
        log.funcFileDebug()
        if control.pfrsVersion.get() >= 110:
            return 
        control.pfrsVersion.set(110)
        # hide = genData.HIDE_ATTRS

        # # Rigid bodies
        # pm.addAttr(control, ln='RIGID_BODY', at='enum', en=':', k=0)
        # pm.addAttr(control, ln='rbMass', at='double', 
        #                                     k=0, dv=1)
        # pm.addAttr(control, ln='rbBounciness', at='double', 
        #                                     k=0, dv=0.6)
        # pm.addAttr(control, ln='rbDamping', at='double', 
        #                                     k=0, dv=0)

        # # Springs
        # pm.addAttr(control, ln='SPRING', at='enum', en=':', k=0)
        # pm.addAttr(control, ln='sInterpenetrate', at='bool', 
        #                                     k=0, dv=1)
        # pm.addAttr(control, ln='sStiffness', at='double', 
        #                                     k=0, dv=5.0)
        # pm.addAttr(control, ln='sDamping', at='double', 
        #                                     k=0, dv=0.1)
        # pm.addAttr(control, ln='sRestLength', at='double', 
        #                                     k=0, dv=0)

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"

        