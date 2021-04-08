
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
    _rigRoot = None
    _shapeTemplates = {} # shapeName : templateNode

    @staticmethod
    @log.static_decorator
    def Add(group):
        attr = group.groupType.get() + 'Shape'
        shape = Control._rigRoot.getAttr(attr)
        template = Control._shapeTemplates[shape]
        control = pm.duplicate(template, ic=1)[0]
        genUtil.AbstractInitializer(control, 'Control')
        controlID = Control._rigRoot.nextControlID.get()
        Control._rigRoot.nextControlID.set(controlID + 1)
        control.ID.set(controlID)
        rigUtil.ChannelBoxAttrs(control, 1, 1, 1, 0)
        pm.editDisplayLayerMembers( rigData.CONTROLS_LAYER, 
                                    control, nr=1)
        pm.connectAttr(group.control, control.group)
        pm.parent(control, group)
        return group

    @staticmethod
    @log.static_decorator
    def Remove(control):
        pm.delete(control)
    
    @staticmethod
    @log.static_decorator
    def InitScene(rigRoot):
        group = None
        Control._shapeTemplates = {}
        Control._rigRoot = rigRoot
        for child in pm.listRelatives(rigRoot, c=1):
            if child.shortName() == rigData.CONTROL_TEMPLATE_GROUP:
                group = child
                break
        for child in pm.listRelatives(group, c=1):
            name = child.shortName()[8:]
            Control._shapeTemplates[name] = child
    
    