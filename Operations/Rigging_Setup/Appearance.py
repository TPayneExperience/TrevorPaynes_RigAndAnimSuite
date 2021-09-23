
import os

import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Utilities.Logger as log
reload(log)
import SceneData.Control as ctr
reload(ctr)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import Data.Rig_Data as rigData
reload(rigData)
import Utilities.General_Utilities as genUtil
reload(genUtil)

class Appearance(absOp.Abstract_Operation):
    isRigBuilt = False
    applyBakedAnimations = False
    validRigStates = (0,)     # 0 = Setup, 1 = Anim
    controlLayerState = (1, 0)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef
    meshLayerState = (1, 1)    # isVis, isRef

    @staticmethod
    def ReimportControlShapes(rigRoot):
        log.funcFileDebug()
        pm.delete(pm.listConnections(rigRoot.controlTemplates))

        # Import Control Shapes
        rootFolder = os.path.dirname(__file__)  # Rigging_Setup
        rootFolder = os.path.dirname(rootFolder)  # Operations
        rootFolder = os.path.dirname(rootFolder)  # Main
        folder = os.path.join(rootFolder, 'Data')
        filePath = os.path.join(folder, 'Config.json')
        config = genUtil.Json.Load(filePath)
        shapeFile = config['controlShapesFilePath']
        if not shapeFile:
            folder = os.path.join(rootFolder, 'Templates')
            shapeFile = os.path.join(folder, 'Control_Shapes.ma')
        nodes = pm.importFile(shapeFile, returnNewNodes=1)

        # Setup Control template parent
        ctrShapes = [n for n in nodes if pm.objectType(n) == 'transform']
        ctrShapesParent = pm.group(ctrShapes, p=rigRoot,
                                    name=rigData.CONTROL_TEMPLATE_GROUP)
        ctrShapesParent.v.set(0)
        rigUtil.ChannelBoxAttrs(ctrShapesParent, 0, 0, 0, 0)
        pm.addAttr(ctrShapesParent, ln='rigRoot', dt='string')
        pm.connectAttr(rigRoot.controlTemplates, ctrShapesParent.rigRoot)

        # Connect Shape Templates to RigRoot
        shapeDict = {} # ctrName : ctrShape
        for ctr in ctrShapes:
            pm.addAttr(ctr, ln='rigRoot', dt='string')
            ctr.rigRoot.set(ctr.shortName())
            shapeDict[ctr.shortName()] = ctr
        groupTypes = list(Appearance.bhvMng.groupTypes)
        for groupType in groupTypes:
            attr = '%s.%sShape' % (rigRoot, groupType)
            shapeName = pm.getAttr(attr)
            shape = shapeDict[shapeName]
            pm.connectAttr(shape.rigRoot, attr)

        # Cleanup from import
        if pm.objExists('Control_Shapes_sceneConfigurationScriptNode'):
            pm.delete([ 'Control_Shapes_sceneConfigurationScriptNode', 
                        'Control_Shapes_uiConfigurationScriptNode'])

    def SetupOp(self, rigRoot):
        for limb in pm.listConnections(rigRoot.limbs):
            bhv = self.bhvMng.bhvs[limb.bhvFile.get()]
            if bhv.groupMoveable:
                continue
            for group in pm.listConnections(limb.usedGroups):
                control = pm.listConnections(group.control)[0]
                rigUtil.ChannelBoxAttrs(control, 0, 1, 1, 0)

    def TeardownOp(self, rigRoot):
        for limb in pm.listConnections(rigRoot.limbs):
            bhv = self.bhvMng.bhvs[limb.bhvFile.get()]
            if bhv.groupMoveable:
                continue
            for group in pm.listConnections(limb.usedGroups):
                control = pm.listConnections(group.control)[0]
                rigUtil.ChannelBoxAttrs(control, 1, 1, 1, 0)
                pm.makeIdentity(control, a=1, t=1)

    def GetShapeTemplates(self, rigRoot):
        controlTemplates = {}
        controlTemplateParent = pm.listConnections(rigRoot.controlTemplates)[0]
        for shape in pm.listRelatives(controlTemplateParent, c=1):
            controlTemplates[shape.shortName()] = shape
        return controlTemplates

    def SetControlShape(self, rigRoot, groupType, shapeTemplate):
        attr = '%s.%sShape' %(rigRoot, groupType)
        pm.disconnectAttr(attr)
        pm.connectAttr(shapeTemplate.rigRoot, attr)
        groups = []
        if groupType == 'Joint':
            for limb in pm.listConnections(rigRoot.limbs):
                for joint in pm.listConnections(limb.joints):
                    groups += pm.listConnections(joint.group)
        else:
            for limb in pm.listConnections(rigRoot.limbs):
                for group in pm.listConnections(limb.limbGroups):
                    if group.groupType.get() == groupType:
                        groups.append(group)
        for group in groups:
            oldControl = pm.listConnections(group.control)[0]
            pm.disconnectAttr(group.control)
            
            # Pos new control
            newControl = ctr.Control.Add(rigRoot, group)
            pm.parent(newControl, oldControl)
            pm.xform(newControl, t=(0,0,0), ro=(0,0,0), s=(1,1,1))

            # Remove old control
            oldParent = pm.listRelatives(oldControl, p=1)[0]
            pm.parent(newControl, oldParent)
            ctr.Control.Remove(oldControl)
    
    def SetControlChannelboxes(self, limb, 
                                fkTranslate, 
                                fkRotate, 
                                fkScale,
                                miscTranslate,
                                miscRotate,
                                miscScale):
        limb.channelBoxJointCtrPos.set(fkTranslate)
        limb.channelBoxJointCtrRot.set(fkRotate)
        limb.channelBoxJointCtrScale.set(fkScale)
        limb.channelBoxLimbCtrPos.set(miscTranslate)
        limb.channelBoxLimbCtrRot.set(miscRotate)
        limb.channelBoxLimbCtrScale.set(miscScale)

        
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
