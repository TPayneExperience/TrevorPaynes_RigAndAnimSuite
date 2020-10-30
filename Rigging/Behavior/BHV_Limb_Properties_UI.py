
import pymel.core as pm

class BHV_Limb_Properties_UI:
    def __init__(self, limbMng, jntMng, bhvMng, grpMng, parent):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.bhvMng = bhvMng
        self.grpMng = grpMng
        self.parent = parent

        self.limb = None
        self.cstTargetJnt_at = None
        self.cstType_at = None
        self.jntLimbs = {} # limbName : limb
        self.jntLimbOrder = [] # limbs
        self.fkEmptyLimbs = {} # limbName : limb
        self.fkLimbOrder = [] # limbs

        self._Setup()
    
    def SetLimb(self, limbID):
        self.limb = self.limbMng.GetLimb(limbID)
        pm.frameLayout(self.limbLayout, e=1, en=1)

        # Add only bhv options relevant to that limb
        pm.optionMenu(self.bhvType_om, e=1, dai=1)
        bhvTypes = self.bhvMng.GetBhvOptions(self.limb)
        for bhvType in bhvTypes:
            pm.menuItem(l=bhvType, p=self.bhvType_om)

        # Convert bhv type enum on limb to select the proper index
        bhvTypeStr = self.bhvMng.bhvTypes[self.limb.bhvType.get()]
        index = bhvTypes.index(bhvTypeStr) + 1
        pm.optionMenu(self.bhvType_om, e=1, sl=index)

        self.UpdateGroupParentUI()
        self.UpdateUI()


#=========== SETUP UI ==============================================

    def _Setup(self):
        '''Create frame layouts here because we have limb + cst frames'''
        with pm.frameLayout('Limb BEHAVIOR Properties', bv=1, en=0) as self.limbLayout:
            with pm.columnLayout(adj=1) as self.bhvLimbProp_cl:
                self.bhvType_om = pm.optionMenu(l='Bhv Type', 
                                                cc=pm.Callback(self.SetBhvType))
                self.grpParent_at = pm.attrEnumOptionMenu(  l='Bhv Grp Parent', 
                                                            at='perspShape.filmFit')

        with pm.frameLayout('Limb IK / CONSTRAINT Properties', bv=1) as self.miscLayout:
            with pm.columnLayout(adj=1) as self.miscProp_cl:
                self.ikTargetLimb_om = pm.optionMenu(   l='IK Target Limb', 
                                                        cc=self.SetIKTargetLimb)
                self.cstTargetLimb_om = pm.optionMenu(  l='Constraint Target Limb', 
                                                        cc=self.SetTargetCstLimb)

#=========== FUNCTIONALITY ==============================================

    def SetBhvType(self): # Mostly UI
        bhvTypeStr = pm.optionMenu(self.bhvType_om, q=1, v=1)
        newBhvTypeIndex = self.bhvMng.GetBhvIndex(bhvTypeStr)
        oldBhvTypeIndex = self.limb.bhvType.get()
        oldSourceLimbs = pm.listConnections(self.limb.bhvIKSourceLimb)
        if self.bhvMng.SetBhvType(self.limb, newBhvTypeIndex):
            # Force IKs which Targeted this limb, to find other
            if oldBhvTypeIndex in self.bhvMng.ikTargetTypeIndexes:
                if newBhvTypeIndex not in self.bhvMng.ikTargetTypeIndexes:
                    for limb in oldSourceLimbs:
                        self._SetIKBhv(limb)
            isIK = (newBhvTypeIndex in self.bhvMng.ikTypeIndexes)
            isCst = (newBhvTypeIndex == 3)
            enabled = any([isCst, isIK])
            pm.frameLayout(self.miscLayout, e=1, en=enabled)
            if isCst:
                self._SetCstBhv()
            elif isIK:
                self._SetIKBhv(self.limb)
            self.Populate()
            self.UpdateUI()
            self.parent.SetBhvType(self.limb) 
        else:
            self.SetLimb(self.limb.ID.get())

#=========== CONSTRAINT ==============================================

    def SetTargetCstLimb(self, limbName): # Called by UI
        targetlimb = self.jntLimbs[limbName]
        self._SetTargetCstLimb(self.limb, targetlimb)
        self.UpdateUI()

    def _SetCstBhv(self):
        targetLimb = None
        for possibleLimb in self.jntLimbOrder:
            if (possibleLimb != self.limb):
                targetLimb = possibleLimb
                break
        else:
            msg = 'No Valid Target for Constraint Limb "%s"' % self.limb
            pm.confirmDialog(t='Constraint Error', m=msg, icon='warning', b='Ok')
            return
        self._SetTargetCstLimb(self.limb, targetLimb)

    def _SetTargetCstLimb(self, sourceLimb, targetLimb):
        pm.disconnectAttr(sourceLimb.bhvCstTargetLimb)
        pm.connectAttr(targetLimb.bhvCstSourceLimb, sourceLimb.bhvCstTargetLimb)
        joints = self.jntMng.GetLimbJoints(targetLimb)
        jointNames = [j.pfrsName.get() for j in joints]
        pm.addAttr(sourceLimb.bhvCstTargetJnt, e=1, en=':'.join(jointNames))

#=========== IK ==============================================

    def _SetIKBhv(self, sourceLimb):
        distances = {} # dist : group
        sourceGroups = self.grpMng.GetLimbGroups(sourceLimb)
        sourceGroup = sourceGroups[0]
        sourcePos = pm.xform(sourceGroup, q=1, t=1)
        # Create distance dictionary to groups
        for targetGroup in self.grpMng.GetAllGroups():
            if targetGroup not in sourceGroups:
                targetPos = pm.xform(targetGroup, q=1, t=1)
                dist = 0
                for i in range(3):
                    dist += (sourcePos[i]-targetPos[i])**2
                distances[dist] = targetGroup
        # Get Closest limb
        for dist in sorted(list(distances.keys())):
            closestGroup = distances[dist]
            closestLimbs = pm.listConnections(closestGroup.limb)
            if closestLimbs:
                targetLimb = closestLimbs[0]
                break
        else:
            msg = 'No Valid Target for IK Limb "%s"' % sourceLimb
            pm.confirmDialog(t='IK Error', m=msg, icon='warning', b='Ok')
            return
        self._SetIKTargetLimb(sourceLimb, targetLimb)

    def SetIKTargetLimb(self, limbName):
        targetLimb = self.fkEmptyLimbs[limbName]
        self._SetIKTargetLimb(self.limb, targetLimb)
    
    def _SetIKTargetLimb(self, sourceLimb, targetLimb):
        targetGroups = self.grpMng.GetLimbGroups(targetLimb)
        targetGroupNames = [self.GetGroupName(g) for g in targetGroups] # should be fk/empty
        sourceGroups = self.grpMng.GetLimbGroups(sourceLimb)
        if targetGroupNames:
            names = ':'.join(targetGroupNames)
            # For each group, set target to closest group on target limb
            for sourceGroup in sourceGroups:
                if (sourceGroup.groupType.get() in [1, 6]): # IK Pole / IK Chain
                    pm.addAttr(sourceGroup.IKTargetGroup, e=1, en=names)
                    sourcePos = pm.xform(sourceGroup, q=1, t=1, ws=1)
                    # Get Distances from source group to target groups
                    distances = {} # dist : targetGroup
                    for targetGroup in targetGroups:
                        targetPos = pm.xform(targetGroup, q=1, t=1, ws=1)
                        dist = 0
                        for i in range(3):
                            dist += (sourcePos[i]-targetPos[i])**2
                        if dist not in distances:
                            distances[dist] = []
                        distances[dist].append(targetGroup)
                    # Set source Group's target group index
                    targetDist = sorted(list(distances.keys()))[0]
                    targetGroup = distances[targetDist][0]
                    targetGroupName = self.GetGroupName(targetGroup)
                    index = targetGroupNames.index(targetGroupName)
                    sourceGroup.IKTargetGroup.set(index)
        else:
            for sourceGroup in sourceGroups:
                if (sourceGroup.groupType.get() in [1, 6]):
                    pm.addAttr(sourceGroup.IKTargetGroup, e=1, en='None')
        pm.disconnectAttr(sourceLimb.bhvIKTargetLimb)
        pm.connectAttr(targetLimb.bhvIKSourceLimb, sourceLimb.bhvIKTargetLimb)

#=========== UI UPDATES ==============================================

    def GetGroupName(self, group):
        if (pm.listConnections(group.joint)):
            return self.grpMng.GetJointGroupName(group)
        else:
            return self.grpMng.GetLimbGroupName(group)

    def GetLimbName(self, limb):
        prefix = self.limbMng.GetLimbPrefix(limb)
        side = self.limbMng.GetLimbSide(limb)
        return '%s_%s_%s' % (prefix, limb.pfrsName.get(), side)

    def Depopulate(self):
        self.limb = None
        pm.frameLayout(self.limbLayout, e=1, en=0)
        pm.frameLayout(self.miscLayout, e=1, en=0)

    def Populate(self):
        self.PopulateIKTargetLimbs()
        self.PopulateCstTargetLimbs()

    def PopulateCstTargetLimbs(self):
        pm.optionMenu(self.cstTargetLimb_om, e=1, dai=1)
        self.jntLimbs = {}
        self.jntLimbOrder = []
        for rootLimb in self.limbMng.GetRootLimbs():
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                if (limb.bhvType.get() in self.bhvMng.cstTargetTypeIndexes): # not Constraint or Empty
                    name = self.GetLimbName(limb)
                    pm.menuItem(l=name, p=self.cstTargetLimb_om)
                    self.jntLimbs[name] = limb
                    self.jntLimbOrder.append(limb)

    def PopulateIKTargetLimbs(self):
        pm.optionMenu(self.ikTargetLimb_om, e=1, dai=1)
        self.fkEmptyLimbs = {}
        self.fkLimbOrder = []
        for rootLimb in self.limbMng.GetRootLimbs():
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                if (limb.bhvType.get() in self.bhvMng.ikTargetTypeIndexes):
                    name = self.GetLimbName(limb)
                    pm.menuItem(l=name, p=self.ikTargetLimb_om)
                    self.fkEmptyLimbs[name] = limb
                    self.fkLimbOrder.append(limb)

    def UpdateGroupParentUI(self):
        if not self.limb:
            return
        pm.deleteUI(self.grpParent_at)
        self.grpParent_at = pm.attrEnumOptionMenu(  self.grpParent_at, 
                                                    l='Bhv Grp Parent', 
                                                    p=self.bhvLimbProp_cl,
                                                    at=self.limb.parentGroup)

    def UpdateUI(self):
        if not self.limb:
            pm.frameLayout(self.miscLayout, e=1, en=0)
            return
        if self.cstTargetJnt_at:
            pm.deleteUI(self.cstTargetJnt_at)
            self.cstTargetJnt_at = None
        if self.cstType_at:
            pm.deleteUI(self.cstType_at)
            self.cstType_at = None
        isIK = (self.limb.bhvType.get() in self.bhvMng.ikTypeIndexes)
        isCst = (self.limb.bhvType.get() == 3)
        enabled = any([isCst, isIK])

        pm.frameLayout(self.miscLayout, e=1, en=enabled)
        pm.optionMenu(self.ikTargetLimb_om, e=1, en=isIK)
        pm.optionMenu(self.cstTargetLimb_om, e=1, en=isCst)
        if isIK:
            targetLimbs = pm.listConnections(self.limb.bhvIKTargetLimb)
            if targetLimbs:
                targetLimb = targetLimbs[0]
                if targetLimb in self.fkLimbOrder:
                    index = self.fkLimbOrder.index(targetLimb) + 1
                    pm.optionMenu(self.ikTargetLimb_om, e=1, sl=index)
                else:
                    pm.optionMenu(self.ikTargetLimb_om, e=1, sl=0)
        if isCst:
            self.cstTargetJnt_at = pm.attrEnumOptionMenu( l='Target Joint',
                                        at=self.limb.bhvCstTargetJnt,
                                        p=self.miscProp_cl)
            self.cstType_at = pm.attrEnumOptionMenu(l='Constraint Type',
                                        at=self.limb.bhvCstType,
                                        p=self.miscProp_cl)
            cstLimbs = pm.listConnections(self.limb.bhvCstTargetLimb)
            if cstLimbs:
                cstLimb = cstLimbs[0]
                index = self.jntLimbOrder.index(cstLimb) + 1
                pm.optionMenu(self.cstTargetLimb_om, e=1, sl=index)
        







