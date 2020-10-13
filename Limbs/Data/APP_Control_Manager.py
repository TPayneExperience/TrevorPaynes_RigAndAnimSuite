
import pymel.core as pm


class APP_Control_Manager:
    def __init__(self, grpMng, nameMng):
        self.grpMng = grpMng
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
        ctrSourceNodes = pm.importFile(path, returnNewNodes=1)
        tempCtrs = [n for n in ctrSourceNodes if pm.objectType(n) == 'transform']
        pm.parent(tempCtrs, self.ctrTemplatesParent)
        for ctr in tempCtrs:
            self._ctrTemplates[ctr.shortName()] = ctr
    
#============= ACCESSORS  ============================

    def GetControl(self, ctrID):
        return self._ctrs[ctrID]

    def GetGroupControl(self, group):
        return pm.listConnections(group.control)

    # def GetLimbControls(self, limb):
    #     ctrs = []
    #     for group in self.grpMng.GetLimbGroups(limb):
    #         ctrs += pm.listConnections(group.control)
    #     return ctrs

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

#============= FUNCTIONALITY ============================

    def Add(self, group):
        ctrID = self.rigRoot.nextCtrID.get()
        self.rigRoot.nextCtrID.set(ctrID + 1)

        if group.groupType.get() in [0, 4, 5]: # FK, LookAt, Empty
            ctr = self._Add('Circle_Wire', ctrID)
        elif (group.groupType.get() == 2): # FK / IK Switch
            ctr = self._Add('FKIK_Wire', ctrID)
        else:
            return None
        pm.connectAttr(group.control, ctr.group)
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
        pm.delete(control)

#============= PRIVATE ============================

    def _Add(self, ctrType, ctrID):
        ctr = pm.duplicate(self._ctrTemplates[ctrType])[0]
        pm.addAttr(ctr, ln='ID', at='long', dv=ctrID)
        pm.addAttr(ctr, ln='group', dt='string')
        return ctr

    def _CopyXForm(self, source, target):
        pos = pm.xform(source, q=1, t=1, ws=1)
        rot = pm.xform(source, q=1, ro=1, ws=1)
        scale = pm.xform(source, q=1, s=1, ws=1)
        pm.xform(target, t=pos, ws=1)
        pm.xform(target, ro=rot, ws=1)
        pm.xform(target, s=scale, ws=1)


























