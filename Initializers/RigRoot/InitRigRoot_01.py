
import pymel.core as pm

import Abstracts.Abstract_Initializer as absInit
reload(absInit)
import Data.General_Data as genData
reload(genData)
import Data.Rig_Data as rigData
reload(rigData)
import Utilities.Logger as log
reload(log)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)

class InitRigRoot(absInit.Abstract_Initializer):
    @staticmethod
    def Initialize(rigRoot):
        log.funcFileDebug()
        if rigRoot.hasAttr('pfrsVersion'):
            return

        #============= ATTRS ============================

        hide = genData.HIDE_ATTRS
        rigModes = ':'.join(rigData.RIG_MODES)
        
        pm.addAttr(rigRoot, ln='pfrsVersion', at='short', dv=100, h=hide)
        pm.addAttr(rigRoot, ln='ID', at='long', dv=1, h=hide)
        pm.addAttr(rigRoot, ln='rigMode', at='enum', en=rigModes, h=hide)
        pm.addAttr(rigRoot, ln='isBuilt', at='bool', h=hide)
        
        # NAMING
        pm.addAttr(rigRoot, ln='pfrsName', dt='string', h=hide)
        pm.addAttr(rigRoot, ln='rigRootIndex', at='short', h=hide)
        pm.addAttr(rigRoot, ln='limbIndex', at='short', dv=1, h=hide)
        pm.addAttr(rigRoot, ln='jointIndex', at='short', dv=2, h=hide)
        pm.addAttr(rigRoot, ln='sideIndex', at='short', dv=3, h=hide)
        pm.addAttr(rigRoot, ln='typeIndex', at='short', dv=4, h=hide)
        pm.addAttr(rigRoot, ln='showRootName', at='bool', h=hide)
        pm.addAttr(rigRoot, ln='category', dt='string', h=hide)
        pm.addAttr(rigRoot, ln='operation', dt='string', h=hide)

        # ROOT CONNECTIONS
        pm.addAttr(rigRoot, ln='limbs', dt='string', h=hide)
        pm.addAttr(rigRoot, ln='meshes', dt='string', h=hide)
        pm.addAttr(rigRoot, ln='presets', dt='string', h=hide)
        pm.addAttr(rigRoot, ln='controlMtrL', dt='string', h=hide)
        pm.addAttr(rigRoot, ln='controlMtrM', dt='string', h=hide)
        pm.addAttr(rigRoot, ln='controlMtrR', dt='string', h=hide)

        # IDS
        pm.addAttr(rigRoot, ln='nextLimbID', at='short', dv=1, h=hide)
        pm.addAttr(rigRoot, ln='nextPresetID', at='short', dv=1, h=hide)
        pm.addAttr(rigRoot, ln='nextJointID', at='short', dv=1, h=hide)
        pm.addAttr(rigRoot, ln='nextMeshID', at='short', dv=1, h=hide)

        # When Joints/limbs added/removed
        pm.addAttr(rigRoot, ln='rebuildSkinInf', at='bool', h=hide)

        # ANIMATION
        pm.addAttr(rigRoot, ln='posesFolderPath', dt='string', h=hide)

        #============= GROUPS ============================

        # GROUPS
        pm.addAttr(rigRoot, ln='jointsParentGroup', dt='string', h=hide)
        pm.addAttr(rigRoot, ln='limbsParentGroup', dt='string', h=hide)
        pm.addAttr(rigRoot, ln='meshesParentGroup', dt='string', h=hide)
        pm.addAttr(rigRoot, ln='bakedDataGroup', dt='string', h=hide)
        pm.addAttr(rigRoot, ln='controlTemplates', dt='string', h=hide)

        group = pm.group(name='JOINTS', em=1, p=rigRoot)
        pm.addAttr(group, ln='rigRoot', dt='string')
        pm.connectAttr(rigRoot.jointsParentGroup, group.rigRoot)
        rigUtil.ChannelBoxAttrs(group, 0, 0, 0, 0)

        group = pm.group(name='LIMBS', em=1, p=rigRoot)
        pm.addAttr(group, ln='rigRoot', dt='string')
        pm.connectAttr(rigRoot.limbsParentGroup, group.rigRoot)
        rigUtil.ChannelBoxAttrs(group, 0, 0, 0, 0)

        group = pm.group(name='MESHES', em=1, p=rigRoot)
        pm.addAttr(group, ln='rigRoot', dt='string')
        pm.connectAttr(rigRoot.meshesParentGroup, group.rigRoot)
        rigUtil.ChannelBoxAttrs(group, 0, 0, 0, 0)
        
        group = pm.group(name='BAKED_DATA', em=1, p=rigRoot)
        pm.addAttr(group, ln='rigRoot', dt='string')
        pm.connectAttr(rigRoot.bakedDataGroup, group.rigRoot)
        rigUtil.ChannelBoxAttrs(group, 0, 0, 0, 0)
        
        #============= DISPLAY LAYERS ============================

        controlDL = pm.createDisplayLayer(n=rigData.CONTROL_DISP_LAYER, empty=1)
        jointDL = pm.createDisplayLayer(n=rigData.JOINTS_DISP_LAYER, empty=1)
        meshDL = pm.createDisplayLayer(n=rigData.MESHES_DISP_LAYER, empty=1)
        controlDL.visibility.set(0)
        controlDL.displayType.set(2)
        jointDL.displayType.set(2)
        meshDL.displayType.set(2)

        #============= ANIM LAYERS ============================

        pm.animLayer(rigData.JOINTS_ANIM_LAYER, override=1, mute=1)
