
import pymel.core as pm


class APP_Control_Manager:
    def __init__(self, parent):
        self.nameMng = parent.nameMng
        self.logger = parent.logger

        self._ctrs = {} # ctrID : ctr
        # self.ctrTypes = (   'PFRSCTR_Square_Wire', # Empty
        #                     'PFRSCTR_Circle_Wire', # Joint
        #                     'PFRSCTR_Diamond_Wire', # Distance
        #                     'PFRSCTR_Pin_Wire') # FKIK
        self._ctrTemplates = {} # CtrType/Name : ControlTemplate
        self.ctrTypesStr = '' # 'ctr1:ctr2...'
        self.hideAttrs = False
    
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
        names = list(self._ctrTemplates.keys())
        names = [name[8:] for name in names]
        self.ctrTypesStr = ':'.join(names)
        pm.addAttr(rigRoot, ln='nextCtrID', at='long')
        pm.addAttr(rigRoot, ln='appEmptyCtrShape', at='enum', 
                            en=self.ctrTypesStr, h=self.hideAttrs)
        pm.addAttr(rigRoot, ln='appJointCtrShape', at='enum', 
                            en=self.ctrTypesStr, h=self.hideAttrs)
        pm.addAttr(rigRoot, ln='appIKPVCtrShape', at='enum', 
                            en=self.ctrTypesStr, h=self.hideAttrs)
        pm.addAttr(rigRoot, ln='appLookAtCtrShape', at='enum', 
                            en=self.ctrTypesStr, h=self.hideAttrs)
        pm.addAttr(rigRoot, ln='appFKIKCtrShape', at='enum', 
                            en=self.ctrTypesStr, h=self.hideAttrs)
        pm.addAttr(rigRoot, ln='appRFKCtrShape', at='enum', 
                            en=self.ctrTypesStr, h=self.hideAttrs)
        rigRoot.appEmptyCtrShape.set(names.index('Square_Wire'))
        rigRoot.appJointCtrShape.set(names.index('Sphere_Poly'))
        rigRoot.appIKPVCtrShape.set(names.index('Diamond_Wire'))
        rigRoot.appLookAtCtrShape.set(names.index('Circle_Wire'))
        rigRoot.appFKIKCtrShape.set(names.index('Pin_Wire'))
        rigRoot.appRFKCtrShape.set(names.index('Cylinder_Poly'))
        self.ctrLayer = pm.createDisplayLayer(n='Controls', e=True)
        self.SetLayerState(True, True)
    
#============= ACCESSORS + MUTATORS ============================

    def GetControl(self, ctrID):
        self.logger.debug('\tCtrMng > GetControl')
        return self._ctrs[ctrID]

    # def GetGroupControl(self, group):
    #     return pm.listConnections(group.control)

    # def GetControlTypes(self):
    #     self.logger.debug('\tCtrMng > GetControlTypes')
    #     return list(self._ctrTemplates.keys())

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

        pm.editDisplayLayerMembers(self.ctrLayer, ctr, nr=1)
        pm.connectAttr(group.control, ctr.group)
        pm.parent(ctr, group)
        # pm.xform(ctr, t=(0,0,0), ro=(0,0,0), s=(1,1,1))

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

    def AddFKIKControl(self, group):
        index = self.rigRoot.appFKIKCtrShape.get()
        self._Add(group, index)

    def AddRKFControl(self, group):
        index = self.rigRoot.appRFKCtrShape.get()
        self._Add(group, index)

    def Remove(self, control):
        self.logger.debug('\tCtrMng > Remove')
        del(self._ctrs[control.ID.get()])


#============= SHAPE ============================

    def GetShapeName(self, group):
        groupType = group.groupType.get()
        if groupType == 0:
            index = self.rigRoot.appEmptyCtrShape.get()
        elif groupType == 1:
            index = self.rigRoot.appJointCtrShape.get()
        elif groupType == 2:
            index = self.rigRoot.appIKPVCtrShape.get()
        elif groupType == 3:
            index = self.rigRoot.appFKIKCtrShape.get()
        elif groupType == 4:
            index = self.rigRoot.appLookAtCtrShape.get()
        elif groupType in (5, 6, 7):
            index = self.rigRoot.appRFKCtrShape.get()
        shapeNames = list(self._ctrTemplates.keys())
        return shapeNames[index]

    def SetShape(self, group, shapeIndex):
        self.logger.debug('\tCtrMng > SetShape')
        control = pm.listConnections(group.control)[0]
        pm.disconnectAttr(group.control)
        newCtr = self._Add(group, shapeIndex)
        pm.parent(newCtr, control)
        pm.xform(newCtr, t=(0,0,0), ro=(0,0,0), s=(1,1,1))
        pm.parent(newCtr, group)
        self._ctrs[newCtr.ID.get()] = newCtr
        self.Remove(control)
        pm.delete(control)


























