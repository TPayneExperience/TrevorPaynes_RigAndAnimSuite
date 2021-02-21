
import os

import pymel.core as pm

import Common.Utilities as util
reload(util)
import Data.Rig_Data as rigData
reload(rigData)

class Control_Manager:
    def __init__(self, parent):
        self.nameMng = parent.nameMng
        self.logger = parent.logger

#============= SCENE ============================

    def NewScene(self):
        folder = os.path.dirname(os.path.dirname(__file__)) # Root Folder
        path = os.path.join(os.path.join(folder, 'Templates'), 'Control_Shapes.ma')
        nodes = pm.importFile(path, returnNewNodes=1)
        ctrShapes = [n for n in nodes if pm.objectType(n) == 'transform']
        rigData.CONTROL_TEMPLATES = {}
        for control in ctrShapes:
            rigData.CONTROL_TEMPLATES[control.shortName()] = control
        ctrShapesParent = pm.group(name='CONTROL_SHAPE_TEMPLATES', em=1)
        ctrShapesParent.v.set(0)
        pm.parent(ctrShapes, ctrShapesParent)

        self.ctrLayer = pm.createDisplayLayer(n='Controls', e=True)
        self.SetLayerState(True, True)

    def LoadScene(self):
        temp = pm.ls('Controls', type='displayLayer')
        if temp:
            self.ctrLayer = temp[0]
        temp = pm.ls('CTR_TEMPLATES', type='transform')
        if temp:
            ctrShapesParent = temp[0]
            rigData.CONTROL_TEMPLATES = {}
            for control in pm.listRelatives(ctrShapesParent, c=1):
                rigData.CONTROL_TEMPLATES[control.shortName()] = control

    def SetLayerState(self, isVisible, isReference):
        self.logger.debug('\tCtrMng > SetLayerState')
        # Maya Bug: Layer Editor won't refresh buttons
        if isReference:
            self.ctrLayer.displayType.set(2) # 2 = reference, 0 = default
        else:
            self.ctrLayer.displayType.set(0)
        self.ctrLayer.visibility.set(isVisible) # 0 = off, 1 = on

#============= FUNCTIONALITY ============================

    def _Add(self, root, group, index):
        self.logger.debug('\tCtrMng > _Add')
        ctrID = root.nextCtrID.get()
        root.nextCtrID.set(ctrID + 1)
        
        shapeName = rigData.CONTROL_TEMPLATES.keys()[index]
        sourceShape = rigData.CONTROL_TEMPLATES[shapeName]
        ctr = pm.duplicate(sourceShape, ic=1)[0]
        pm.addAttr(ctr, ln='ID', at='long', dv=ctrID)
        pm.addAttr(ctr, ln='group', dt='string')
        util.ChannelBoxAttrs(ctr, 1, 1, 1)

        pm.editDisplayLayerMembers(self.ctrLayer, ctr, nr=1)
        pm.connectAttr(group.control, ctr.group)
        pm.parent(ctr, group)

    def AddEmptyControl(self, root, group):
        index = root.appEmptyCtrShape.get()
        self._Add(root, group, index)

    def AddJointControl(self, root, group):
        index = root.appJointCtrShape.get()
        self._Add(root, group, index)

    def AddIKPVControl(self, root, group):
        index = root.appIKPVCtrShape.get()
        self._Add(root, group, index)

    def AddLookAtControl(self, root, group):
        index = root.appLookAtCtrShape.get()
        self._Add(root, group, index)

#============= SHAPE ============================

    def SetShape(self, root, group, shapeIndex):
        self.logger.debug('\tCtrMng > SetShape')
        control = pm.listConnections(group.control)[0]
        pm.disconnectAttr(group.control)
        newCtr = self._Add(root, group, shapeIndex)
        pm.parent(newCtr, control)
        pm.xform(newCtr, t=(0,0,0), ro=(0,0,0), s=(1,1,1))
        pm.parent(newCtr, group)
        newCtr.ID.set(control.ID.get())
        pm.delete(control)



