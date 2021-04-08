
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
reload(absInit)
import Data.General_Data as genData
reload(genData)
import Data.Rig_Data as rigData
reload(rigData)
import Common.Logger as log
reload(log)

class InitRigRoot(absInit.Abstract_Initializer):
    @staticmethod
    # @log.static_decorator
    def Initialize(rigRoot):
        log.logFuncFile()
        if rigRoot.hasAttr('limbs'):
            return

        #============= ATTRS ============================

        hide = genData.HIDE_ATTRS
        rigModes = ':'.join(rigData.RIG_MODES)
        
        pm.addAttr(rigRoot, ln='ID', at='long', dv=1, h=hide)
        pm.addAttr(rigRoot, ln='rigMode', at='enum', en=rigModes, h=hide)
        
        # NAMING
        pm.addAttr(rigRoot, ln='prefix', dt='string')
        pm.addAttr(rigRoot, ln='prefixIndex', at='short')
        pm.addAttr(rigRoot, ln='limbIndex', at='short', dv=1)
        pm.addAttr(rigRoot, ln='jointIndex', at='short', dv=2)
        pm.addAttr(rigRoot, ln='sideIndex', at='short', dv=3)
        pm.addAttr(rigRoot, ln='typeIndex', at='short', dv=4)
        pm.addAttr(rigRoot, ln='showPrefix', at='bool')
        pm.addAttr(rigRoot, ln='mainTab', dt='string') # Changed to string
        pm.addAttr(rigRoot, ln='subTab', dt='string') # replace old indexes

        # ROOT CONNECTIONS
        pm.addAttr(rigRoot, ln='limbs', dt='string')
        pm.addAttr(rigRoot, ln='meshes', dt='string')
        pm.addAttr(rigRoot, ln='presets', dt='string')

        # IDS
        pm.addAttr(rigRoot, ln='nextLimbID', at='short', dv=1)
        pm.addAttr(rigRoot, ln='nextJointID', at='short', dv=1)
        # pm.addAttr(rigRoot, ln='nextGroupID', at='long')
        pm.addAttr(rigRoot, ln='nextControlID', at='long')
        pm.addAttr(rigRoot, ln='nextMeshID', at='short', dv=1)

        # When Joints/limbs added/removed
        pm.addAttr(rigRoot, ln='rebuildSkinInf', at='bool', h=hide)

        # CONTROLS
        pm.addAttr(rigRoot, ln='appEmptyCtrShape', dt='string', h=hide)
        pm.addAttr(rigRoot, ln='appJointCtrShape', dt='string', h=hide)
        pm.addAttr(rigRoot, ln='appIKPVCtrShape', dt='string', h=hide)
        pm.addAttr(rigRoot, ln='appLookAtCtrShape', dt='string', h=hide)

        # ANIMATION
        pm.addAttr(rigRoot, ln='posesFolderPath', dt='string')

        #============= LAYERS ============================

        controlDL = pm.createDisplayLayer(n=rigData.CONTROLS_LAYER, empty=True)
        jointDL = pm.createDisplayLayer(n=rigData.JOINTS_LAYER, empty=True)
        meshDL = pm.createDisplayLayer(n=rigData.MESHES_LAYER, empty=True)
        controlDL.visibility.set(0)
        controlDL.displayType.set(2)
        jointDL.displayType.set(2)
        meshDL.displayType.set(2)

        #============= GROUPS ============================

        # GROUPS
        pm.addAttr(rigRoot, ln='jointsParentGroup', dt='string')
        pm.addAttr(rigRoot, ln='limbsParentGroup', dt='string')
        pm.addAttr(rigRoot, ln='meshesParentGroup', dt='string')

        group = pm.group(name=rigData.JOINTS_GROUP, em=True, p=rigRoot)
        pm.addAttr(group, ln='rigRoot', dt='string')
        pm.connectAttr(rigRoot.jointsParentGroup, group.rigRoot)
        group = pm.group(name=rigData.LIMBS_GROUP, em=True, p=rigRoot)
        pm.addAttr(group, ln='rigRoot', dt='string')
        pm.connectAttr(rigRoot.limbsParentGroup, group.rigRoot)
        group = pm.group(name=rigData.MESHES_GROUP, em=True, p=rigRoot)
        pm.addAttr(group, ln='rigRoot', dt='string')
        pm.connectAttr(rigRoot.meshesParentGroup, group.rigRoot)