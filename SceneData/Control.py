
import pymel.core as pm

import Common.Logger as log
reload(log)
import Common.General_Utilities as genUtil
reload(genUtil)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)
import Data.Rig_Data as rigData
reload(rigData)

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
        pm.editDisplayLayerMembers( rigData.CONTROLS_LAYER, 
                                    control, nr=1)
        pm.connectAttr(group.control, control.group)
        pm.parent(control, group)
        return control

    @staticmethod
    def Remove(control):
        log.funcFileDebug()
        pm.delete(control)
    
    # @staticmethod
    # def InitScene(rigRoot):
    #     log.funcFileDebug()
    #     group = None
    #     Control._shapeTemplates = {}
    #     Control._rigRoot = rigRoot
    #     for child in pm.listRelatives(rigRoot, c=1):
    #         if child.shortName() == rigData.CONTROL_TEMPLATE_GROUP:
    #             group = child
    #             break
    #     for child in pm.listRelatives(group, c=1):
    #         name = child.shortName()[8:]
    #         Control._shapeTemplates[name] = child
    
    