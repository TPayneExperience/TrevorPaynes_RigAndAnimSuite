
import os

import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Common.Logger as log
reload(log)
import SceneData.Control as ctr
reload(ctr)
# import Common.Rig_Utilities as rigUtil
# reload(rigUtil)
import Data.Rig_Data as rigData
reload(rigData)
# import SceneData.Limb as lmb
# reload(lmb)
# import LimbSetup as ls
# reload(ls)
# import Common.General_Utilities as genUtil
# reload(genUtil)
# import SceneData.RigRoot as rrtp
# reload(rrt)

class Appearance(absOp.Abstract_Operation):
    isRigBuilt = False
    validRigStates = (0, 1)     # 0 = Setup, 1 = Anim
    controlLayerState = (1, 0)  # isVis, isRef
    jointLayerState = (1, 1)    # isVis, isRef
    meshLayerState = (1, 1)    # isVis, isRef

    @staticmethod
    def ReimportControlShapes(rigRoot):
        log.funcFileDebug()
        old = pm.listConnections(rigRoot.controlTemplates)
        pm.delete(old)

        folder = os.path.dirname(__file__)  # Rigging
        folder = os.path.dirname(folder)  # Operations
        folder = os.path.dirname(folder)  # Main
        folder = os.path.join(folder, 'Templates')
        filePath = os.path.join(folder, 'Control_Shapes.ma')
        nodes = pm.importFile(filePath, returnNewNodes=1)
        ctrShapes = [n for n in nodes if pm.objectType(n) == 'transform']
        ctrShapesParent = pm.group(ctrShapes, p=rigRoot,
                                    name=rigData.CONTROL_TEMPLATE_GROUP)
        ctrShapesParent.v.set(0)
        pm.addAttr(ctrShapesParent, ln='rigRoot', dt='string')
        pm.connectAttr(rigRoot.controlTemplates, ctrShapesParent.rigRoot)
        for ctr in ctrShapes:
            pm.addAttr(ctr, ln='rigRoot', dt='string')
        for ctr in ctrShapes:
            if 'Cube_Poly' in ctr.shortName():
                attr = '.' + rigData.JOINT_SHAPE_ATTR
                pm.connectAttr(ctr.rigRoot, rigRoot + attr)
                break
        if pm.objExists('Control_Shapes_sceneConfigurationScriptNode'):
            pm.delete([ 'Control_Shapes_sceneConfigurationScriptNode', 
                        'Control_Shapes_uiConfigurationScriptNode'])

    def GetShapeTemplates(self, rigRoot):
        controlTemplates = {}
        controlTemplateParent = pm.listConnections(rigRoot.controlTemplates)[0]
        for shape in pm.listRelatives(controlTemplateParent, c=1):
            controlTemplates[shape.shortName()] = shape
        return controlTemplates

    def SetControlShape(self, rigRoot, groupType, shapeTemplate):
        attr = '%s.%sShape' %(rigRoot, groupType)
        pm.disconnectAttr(attr)
        pm.connectAttr(attr, shapeTemplate.rigRoot)
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
            newControl = ctr.Control.Add(rigRoot, group)
            pm.parent(newControl, oldControl)
            pm.xform(newControl, t=(0,0,0), ro=(0,0,0), s=(1,1,1))
            pm.parent(newControl, group)
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