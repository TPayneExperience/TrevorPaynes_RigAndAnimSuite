
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
reload(absInit)
import Data.General_Data as genData
reload(genData)
# import Data.Rig_Data as rigData
# reload(rigData)
import Common.Logger as log
reload(log)

class InitGroup(absInit.Abstract_Initializer):
    @staticmethod
    @log.static_decorator
    def Initialize(group):
        if group.hasAttr('control'):
            return 
            
        hide = genData.HIDE_ATTRS
        # pm.addAttr(group, ln='ID', at='long', dv=groupID, h=hide)
        pm.addAttr(group, ln='index', at='long', h=hide)
        pm.addAttr(group, ln='control', dt='string', h=hide)
        pm.addAttr(group, ln='joint', dt='string', h=hide)
        pm.addAttr(group, ln='limb', dt='string', h=hide)
            # >>> TO IMPLEMENT
        pm.addAttr(group, ln='used', dt='string', h=hide)
        pm.addAttr(group, ln='groupType', dt='string', h=hide)
        pm.addAttr(group, ln='enableGroup', at='bool', dv=1, h=hide)
        pm.addAttr(group, ln='parentable', dt='string', h=hide)


        