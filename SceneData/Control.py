
import imp

import pymel.core as pm

import Utilities.Logger as log
#imp.reload(log)
import Utilities.General_Utilities as genUtil
#imp.reload(genUtil)
import Utilities.Rig_Utilities as rigUtil
#imp.reload(rigUtil)
import Data.Rig_Data as rigData
#imp.reload(rigData)

class Control:
    @staticmethod
    def Add(rigRoot, group):
        log.funcFileDebug()
        attr = '.%sShape' % group.groupType.get()
        template = pm.listConnections(rigRoot + attr)[0]
        control = pm.duplicate(template, ic=1)[0]
        genUtil.AbstractInitializer(control, 'Control')
        pm.disconnectAttr(control.rigRoot)
        rigUtil.ChannelBoxAttrs(control, 1, 1, 1, 0)
        pm.editDisplayLayerMembers( rigData.CONTROL_DISP_LAYER, 
                                    control, nr=1)
        pm.connectAttr(group.control, control.group)
        pm.parent(control, group)
        return control

    @staticmethod
    def Remove(control):
        log.funcFileDebug()
        pm.delete(control)
    
    
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
