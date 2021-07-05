
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
reload(absInit)
import Data.General_Data as genData
reload(genData)
import Utilities.Logger as log
reload(log)

class InitGroup(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(group):
        log.funcFileDebug()
        if group.hasAttr('pfrsVersion'):
            return 
            
        hide = genData.HIDE_ATTRS
        pm.addAttr(group, ln='pfrsVersion', at='short', dv=100, h=hide)
        pm.addAttr(group, ln='groupIndex', at='long', h=hide)
        pm.addAttr(group, ln='control', dt='string', h=hide)
        pm.addAttr(group, ln='joint', dt='string', h=hide)
        pm.addAttr(group, ln='limb', dt='string', h=hide)
        pm.addAttr(group, ln='constraintGroups', dt='string', h=hide)
        pm.addAttr(group, ln='used', dt='string', h=hide)
        pm.addAttr(group, ln='groupType', dt='string', h=hide)
        pm.addAttr(group, ln='animJoint', dt='string', h=hide)


        