

import pymel.core as pm

class APP_Control_Manager:
    def __init__(self, nameMng):
        self.nameMng = nameMng

        self._ctrs = {} # ctrID : ctr
        self._ctrTemplates = {} # shortName : transformNode
    
    def NewRig(self, rigRoot):
        self.rigRoot = rigRoot
        self._ctrs = {} # ctrID : ctr
        self.ctrGrp = pm.group(name='ControlGroups', em=1)
        self.ctrTemplatesParent = pm.group(name='Internal', em=1)
        pm.addAttr(rigRoot, ln='nextCtrID', at='long')
        path = r'D:\Assets\Programming\Python\Maya\ModularAutoRigger\Limbs\Templates\Controls\Controls.ma'
        nodes = pm.importFile(path, returnNewNodes=1)
        tempCtrs = [n for n in nodes if pm.objectType(n) == 'transform']
        pm.parent(tempCtrs, self.ctrTemplatesParent)
        self._ctrTemplates = [c.shortName() for c in self._ctrTemplates]
    
#============= ACCESSORS  ============================

    def GetControl(self, ctrID):
        return self._ctrs[ctrID]

    def GetTypes(self):
        return list(self._ctrTemplates.keys())
    
    def GetGroupControl(self, group):
        return pm.listConnections(group.control)

#============= FUNCTIONALITY ============================

    def Add(self, group):
        ctrID = self.rigRoot.nextCtrID.get()
        self.rigRoot.nextCtrID.set(ctrID + 1)

        if (group.groupType.get() == 0): # FK
            ctr = self._Add('Circle_Wire', ctrID)
        elif (group.groupType.get() == 1): # IK
            ctr = self._Add('Circle_Wire', ctrID)
        elif (group.groupType.get() == 2): # FK / IK Switch
            ctr = self._Add('Cylinder_Poly', ctrID)
        elif (group.groupType.get() == 3): # Constraint
            pass
        elif (group.groupType.get() == 4): # Look At
            ctr = self._Add('Circle_Wire', ctrID)
        elif (group.groupType.get() == 5): # Empty
            ctr = self._Add('Circle_Wire', ctrID)

        self._CopyXForm(group, ctr)
        pm.parent(ctr, group)
        self._ctrs[ctrID] = ctr
        return ctr

    def Remove(self, control):
        del(self._ctrs[control.ID.get()])
        pm.delete(control)

    def SetType(self, control, ctrType):
        newCtr = self._Add(ctrType, control.ID.get())
        self._CopyXForm(control, newCtr)
        group = pm.listConnections(control.group)[0]
        pm.disconnectAttr(control.group)
        pm.connectAttr(group.control , newCtr.group)
        self._ctrs[newCtr.ID.get()] = newCtr

#============= PRIVATE ============================

    def _Add(self, ctrType, ctrID):
        ctr = pm.duplicate(self._ctrTemplates[ctrType])
        ctrTypes = self.GetTypes()
        index = ctrTypes.index(ctrType)
        pm.addAttr(ctr, ln='ID', at='long', dv=ctrID)
        pm.addAttr(ctr, ln='group', dt='string')
        pm.addAttr(ctr, ln='lockHideTranslate', at='bool')
        pm.addAttr(ctr, ln='lockHideRotate', at='bool')
        pm.addAttr(ctr, ln='lockHideScale', at='bool')
        pm.addAttr(ctr, ln='controlType', at='enum', 
                        en=':'.join(ctrTypes), dv=index)
        return ctr

    def _CopyXForm(self, source, target):
        pos = pm.xform(source, q=1, t=1, ws=1)
        rot = pm.xform(source, q=1, ro=1, ws=1)
        scale = pm.xform(source, q=1, s=1, ws=1)
        pm.xform(target, t=pos, ws=1)
        pm.xform(target, ro=rot, ws=1)
        pm.xform(target, s=scale, ws=1)


























