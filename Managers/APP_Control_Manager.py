
import pymel.core as pm

import Common.Utilities as util
reload(util)
import Data.Rig_Data as rigData
reload(rigData)

class APP_Control_Manager:
    def __init__(self, parent):
        self.nameMng = parent.nameMng
        self.logger = parent.logger

        self._ctrs = {} # ctrID : ctr
        self._ctrTemplates = {} # CtrType/Name : ControlTemplate
    
    def NewRig(self, rigRoot):
        self.logger.debug('\tCtrMng > NewRig')
        self.rigRoot = rigRoot
        self._ctrs = {} # ctrID : ctr
        self.ctrTemplatesParent = pm.group(name='Internal', em=1)
        self.ctrTemplatesParent.v.set(0)
        path = r'D:\Assets\Programming\Python\Maya\ModularAutoRigger'
        path += r'\Rigging\Templates\Controls\Controls.ma'
        nodes = pm.importFile(path, returnNewNodes=1)
        tempControls = [n for n in nodes if pm.objectType(n) == 'transform']
        pm.parent(tempControls, self.ctrTemplatesParent)
        for control in tempControls:
            self._ctrTemplates[control.shortName()] = control
        names = self.GetControlNames()
        ctrTypesStr = ':'.join(names)
        pm.addAttr(rigRoot, ln='nextCtrID', at='long')
        pm.addAttr(rigRoot, ln='appEmptyCtrShape', at='enum', 
                            en=ctrTypesStr, h=rigData.HIDE_ATTRS)
        pm.addAttr(rigRoot, ln='appJointCtrShape', at='enum', 
                            en=ctrTypesStr, h=rigData.HIDE_ATTRS)
        pm.addAttr(rigRoot, ln='appIKPVCtrShape', at='enum', 
                            en=ctrTypesStr, h=rigData.HIDE_ATTRS)
        pm.addAttr(rigRoot, ln='appLookAtCtrShape', at='enum', 
                            en=ctrTypesStr, h=rigData.HIDE_ATTRS)
        rigRoot.appEmptyCtrShape.set(names.index('Square_Wire'))
        rigRoot.appJointCtrShape.set(names.index('Sphere_Poly'))
        rigRoot.appIKPVCtrShape.set(names.index('Diamond_Wire'))
        rigRoot.appLookAtCtrShape.set(names.index('Circle_Wire'))
        self.ctrLayer = pm.createDisplayLayer(n='Controls', e=True)
        self.SetLayerState(True, True)
    
#============= ACCESSORS + MUTATORS ============================

    def GetControl(self, ctrID):
        self.logger.debug('\tCtrMng > GetControl')
        return self._ctrs[ctrID]

    def SetLayerState(self, isVisible, isReference):
        self.logger.debug('\tCtrMng > SetLayerState')
        # Maya Bug: Layer Editor won't refresh buttons
        if isReference:
            self.ctrLayer.displayType.set(2) # 2 = reference, 0 = default
        else:
            self.ctrLayer.displayType.set(0)
        self.ctrLayer.visibility.set(isVisible) # 0 = off, 1 = on

    def GetAllControls(self):
        self.logger.debug('\tCtrMng > NewRig')
        return list(self._ctrs.values())

    def GetControlNames(self):
        names = list(self._ctrTemplates.keys())
        return [name[8:] for name in names]

#============= FUNCTIONALITY ============================

    def _Add(self, group, index):
        self.logger.debug('\tCtrMng > NewRig')
        ctrID = self.rigRoot.nextCtrID.get()
        self.rigRoot.nextCtrID.set(ctrID + 1)
        
        shapeName = list(self._ctrTemplates.keys())[index]
        sourceShape = self._ctrTemplates[shapeName]
        ctr = pm.duplicate(sourceShape, ic=1)[0]
        pm.addAttr(ctr, ln='ID', at='long', dv=ctrID)
        pm.addAttr(ctr, ln='group', dt='string')
        util.ChannelBoxAttrs(ctr, 1, 1, 1)

        pm.editDisplayLayerMembers(self.ctrLayer, ctr, nr=1)
        pm.connectAttr(group.control, ctr.group)
        pm.parent(ctr, group)

        self._ctrs[ctrID] = ctr
        return ctr

    def AddEmptyControl(self, group):
        index = self.rigRoot.appEmptyCtrShape.get()
        self._Add(group, index)

    def AddJointControl(self, group):
        index = self.rigRoot.appJointCtrShape.get()
        self._Add(group, index)

    def AddIKPVControl(self, group):
        index = self.rigRoot.appIKPVCtrShape.get()
        self._Add(group, index)

    def AddLookAtControl(self, group):
        index = self.rigRoot.appLookAtCtrShape.get()
        self._Add(group, index)

    def Remove(self, control):
        self.logger.debug('\tCtrMng > Remove')
        del(self._ctrs[control.ID.get()])

#============= SHAPE ============================

    # def GetShapeName(self, group):
    #     groupType = group.groupType.get()
    #     if groupType == 0:
    #         index = self.rigRoot.appEmptyCtrShape.get()
    #     elif groupType == 1:
    #         index = self.rigRoot.appJointCtrShape.get()
    #     elif groupType == 2:
    #         index = self.rigRoot.appIKPVCtrShape.get()
    #     elif groupType == 4:
    #         index = self.rigRoot.appLookAtCtrShape.get()
    #     shapeNames = list(self._ctrTemplates.keys())
    #     return shapeNames[index]

    def SetShape(self, group, shapeIndex):
        self.logger.debug('\tCtrMng > SetShape')
        control = pm.listConnections(group.control)[0]
        pm.disconnectAttr(group.control)
        newCtr = self._Add(group, shapeIndex)
        pm.parent(newCtr, control)
        pm.xform(newCtr, t=(0,0,0), ro=(0,0,0), s=(1,1,1))
        pm.parent(newCtr, group)
        newCtr.ID.set(control.ID.get())
        self._ctrs[newCtr.ID.get()] = newCtr
        self.Remove(control)
        pm.delete(control)


























