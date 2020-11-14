
import pymel.core as pm


class APP_Control_Manager:
    def __init__(self, grpMng, nameMng):
        self.grpMng = grpMng
        self.nameMng = nameMng

        self._ctrs = {} # ctrID : ctr
        self.ctrTypes = [   'Square_Wire', # Empty
                            'Circle_Wire', # Joint
                            'Diamond_Wire', # Distance
                            'Pin_Wire'] # FKIK
        self._ctrTemplates = {} # CtrType/Name : ControlTemplate
    
    def NewRig(self, rigRoot):
        self.rigRoot = rigRoot
        self._ctrs = {} # ctrID : ctr
        self.ctrGroup = pm.group(name='ControlGroups', em=1)
        self.ctrTemplatesParent = pm.group(name='Internal', em=1)
        self.ctrTemplatesParent.v.set(0)
        pm.addAttr(rigRoot, ln='nextCtrID', at='long')
        path = r'D:\Assets\Programming\Python\Maya\ModularAutoRigger\Rigging\Templates\Controls\Controls.ma'
        ctrSourceNodes = pm.importFile(path, returnNewNodes=1)
        tempCtrs = [n for n in ctrSourceNodes if pm.objectType(n) == 'transform']
        pm.parent(tempCtrs, self.ctrTemplatesParent)
        for ctr in tempCtrs:
            self._ctrTemplates[ctr.shortName()] = ctr
        self.ctrLayer = pm.createDisplayLayer(n='Controls', e=True)
        self.SetLayerState(True, True)
    
#============= ACCESSORS + MUTATORS ============================

    def GetControl(self, ctrID):
        return self._ctrs[ctrID]

    def GetGroupControl(self, group):
        return pm.listConnections(group.control)

    def GetControlTypes(self):
        return list(self._ctrTemplates.keys())

    def SetLayerState(self, isVisible, isReference):
        self.ctrLayer.displayType.set(isReference) # 2 = reference, 0 = default
        self.ctrLayer.visibility.set(isVisible) # 0 = off, 1 = on

    def GetAllControls(self):
        return list(self._ctrs.values())

#============= FUNCTIONALITY ============================

    def Add(self, group, ctrType):
        ctrID = self.rigRoot.nextCtrID.get()
        self.rigRoot.nextCtrID.set(ctrID + 1)
        
        ctr = pm.duplicate(self._ctrTemplates[ctrType])[0]
        pm.addAttr(ctr, ln='ID', at='long', dv=ctrID)
        pm.addAttr(ctr, ln='group', dt='string')

        pm.editDisplayLayerMembers(self.ctrLayer, ctr)
        pm.connectAttr(group.control, ctr.group)
        pm.parent(ctr, group)
        pm.xform(ctr, t=[0,0,0], ro=[0,0,0], s=[1,1,1])

        self._ctrs[ctrID] = ctr
        return ctr

    def Remove(self, control):
        del(self._ctrs[control.ID.get()])

    def SetType(self, control, ctrType):
        group = pm.listConnections(control.group)[0]
        pm.disconnectAttr(group.control)
        newCtr = self.Add(group, ctrType)
        pm.parent(newCtr, control)
        pm.xform(newCtr, t=[0,0,0], ro=[0,0,0], s=[1,1,1])
        pm.parent(newCtr, group)
        self._ctrs[newCtr.ID.get()] = newCtr
        self.Remove(control)
        pm.delete(control)

#============= PRIVATE ============================

    def _SortGroups(self, groups):
        indexGroups = {} # jointIndex : group
        orderedGroups = []
        for group in groups:
            joints = pm.listConnections(group.joint)
            if not joints:
                return []
            indexGroups[joints[0].limbIndex.get()] = group
        for index in sorted(list(indexGroups.keys())):
            orderedGroups.append(indexGroups[index])
        return orderedGroups


























