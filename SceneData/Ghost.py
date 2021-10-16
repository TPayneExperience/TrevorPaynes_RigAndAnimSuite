
import imp

import pymel.core as pm

import Utilities.Logger as log
#imp.reload(log)
import Utilities.General_Utilities as genUtil
#imp.reload(genUtil)
import Utilities.Rig_Utilities as rigUtil
#imp.reload(rigUtil)
import Utilities.Skin_Utilities as skinUtil
#imp.reload(skinUtil)
import Data.Rig_Data as rigData
#imp.reload(rigData)
import Data.Skin_Data as skinData
#imp.reload(skinData)

class Ghost:
    @staticmethod
    def Add(rigRoot):
        log.funcFileDebug()
        newID = rigRoot.nextGhostID.get()
        rigRoot.nextGhostID.set(newID + 1)

        parent = pm.listConnections(rigRoot.ghosts)[0]
        newRigRoot = pm.duplicate(rigRoot, un=1)[0]
        newRigRoot.rename('Ghost_%03d' % newID)
        newRigRoot.ID.set(newID)
        joints = rigUtil.GetSkinnableRigJoints(rigRoot)
        start = pm.playbackOptions(q=1, ast=1)
        end = pm.playbackOptions(q=1, aet=1)
        saveGroups = pm.listConnections(newRigRoot.meshesParentGroup)
        saveGroups += pm.listConnections(newRigRoot.jointsParentGroup)
        pm.bakeResults(joints, sm=1, t=(start, end))

        pm.addAttr(newRigRoot, ln='ghostMtr', dt='string')
        pm.addAttr(newRigRoot, ln='ghostSg', dt='string')
        newRigRoot.rigMode.set(4) # ghost

        name = 'GhostMaterial'
        mtr = pm.shadingNode(  'lambert', 
                                n=name, 
                                asShader=1)
        mtr.color.set(skinData.GHOST_COLOR)
        mtr.transparency.set(skinData.GHOST_TRANSPARNCY)
        sg = pm.sets(em=1, r=1, nss=1, name=name+'SG')
        pm.connectAttr( mtr+'.outColor', sg+'.surfaceShader', f=1)        
        pm.addAttr(sg, ln='rigRoot', dt='string')
        attr = '%s.ghostMtr' % newRigRoot
        pm.connectAttr(attr, sg.rigRoot)
        for mesh in pm.listConnections(newRigRoot.meshes, sh=1):
            pm.sets(sg, e=True, forceElement=mesh)
        for child in pm.listRelatives(newRigRoot, c=1):
            if child not in saveGroups:
                pm.delete(child)
        pm.parent(newRigRoot, parent)

        return newRigRoot

    @staticmethod
    def Remove(ghost):
        log.funcFileDebug()
        pm.delete(ghost)
    
    def UpdateUsedControlMaterials(rigRoot, limb):
        groups = pm.listConnections(limb.usedGroups)
        controls = [pm.listConnections(g.control)[0] for g in groups]
        if limb.side.get() == 0:
            sg = pm.listConnections(rigRoot.controlMtrM)[0]
        elif limb.side.get() == 1:
            sg = pm.listConnections(rigRoot.controlMtrL)[0]
        elif limb.side.get() == 2:
            sg = pm.listConnections(rigRoot.controlMtrR)[0]
        mtr = pm.listConnections(sg.surfaceShader)[0]
        for control in controls:
            shape = pm.listRelatives(control, c=1)[0]
            if pm.objectType(shape) == 'mesh':
                pm.sets(sg, e=True, forceElement=shape)
            elif pm.objectType(shape) == 'nurbsCurve':
                shape.overrideEnabled.set(1)
                shape.overrideRGBColors.set(1)
                pm.disconnectAttr(shape.overrideColorRGB)
                pm.connectAttr(mtr.outColor, shape.overrideColorRGB)

    
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
