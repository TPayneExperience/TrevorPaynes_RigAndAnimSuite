
import pymel.core as pm

class BHV_Limb_Properties_UI:
    def __init__(self, limbMng, jntMng, bhvMng, grpMng, parent):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.bhvMng = bhvMng
        self.grpMng = grpMng
        self.parent = parent

        self.limb = None
        self.targetJnt_at = None
        self.cstType_at = None
        self.ctrAxis_at = None
        self.fkikJoint_at = None

        self.jntLimbs = {} # limbName : limb
        self.jntLimbOrder = [] # limbs
        self.targetLimbs = {} # limbName : limb
        self.targetLimbOrder = [] # limbs

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
        bhvType = self.limb.bhvType.get()
        bhvTypeStr = self.bhvMng.bhvTypes[bhvType]
        index = bhvTypes.index(bhvTypeStr) + 1
        pm.optionMenu(self.bhvType_om, e=1, sl=index)

        self.PopulateBhvFrame(bhvType)
        self.PopulateTargetFrame(bhvType)
        self.PopulateControlFrame(bhvType)

        # self.UpdateBhvFrame()
        # self.UpdateUI()


#=========== SETUP UI ==============================================

    def _Setup(self):
        '''Create frame layouts here because we have limb + cst frames'''
        with pm.frameLayout('Limb BEHAVIOR Properties', bv=1, en=0) as self.limbLayout:
            with pm.columnLayout(adj=1) as self.bhvLimbProp_cl:
                self.bhvType_om = pm.optionMenu(l='Bhv Type', 
                                                cc=pm.Callback(self.SetBhvType))
                self.grpParent_at = pm.attrEnumOptionMenu(  l='Bhv Group Parent', 
                                                            at='perspShape.filmFit')

        with pm.frameLayout('Limb IK / Constraint Target', bv=1, en=0) as self.targetLayout:
            with pm.columnLayout(adj=1) as self.targetProp_cl:
                self.targetLimb_om = pm.optionMenu( l='Target Limb', 
                                                    cc=self.SetTargetLimb)

        with pm.frameLayout('IKPV / LookAt CONTROL Position', bv=1, en=0) as self.ctrLayout:
            with pm.columnLayout(adj=1) as self.ctrProp_cl:
                self.ctrDist_cg = pm.attrControlGrp( l='Control Distance', a='persp.translateX')
                # self.ikTargetLimb_om = pm.optionMenu(   l='Target Limb', 
                #                                         cc=self.SetIKTargetLimb)
                

#=========== FUNCTIONALITY ==============================================

    def SetBhvType(self): # Mostly UI
        bhvTypeStr = pm.optionMenu(self.bhvType_om, q=1, v=1)
        newBhvIndex = self.bhvMng.GetBhvIndex(bhvTypeStr)
        oldBhvIndex = self.limb.bhvType.get()
        oldSourceLimbs = pm.listConnections(self.limb.bhvIKSourceLimb)
        if self.bhvMng.SetBhvType(self.limb, oldBhvIndex, newBhvIndex):
            # Force IKs which Targeted this limb, to find other
            if oldBhvIndex in self.bhvMng.ikTargetTypeIndexes:
                if newBhvIndex not in self.bhvMng.ikTargetTypeIndexes:
                    for limb in oldSourceLimbs:
                        self._SetIKBhv(limb)
            isIK = (newBhvIndex in self.bhvMng.ikTypeIndexes)
            isCst = (newBhvIndex == 3)
            pm.frameLayout(self.targetLayout, e=1, en=isCst)
            pm.frameLayout(self.ctrLayout, e=1, en=isIK)
            if isCst:
                self._SetCstBhv()
            elif isIK:
                self._SetIKBhv(self.limb)
                # if newBhvIndex == 2: # FKIK
                    # joints = self.jntMng.GetLimbJoints(self.limb)
                    # self.UpdateFKIKSwitchJoint(1, joints)
            if newBhvIndex in self.bhvMng.distanceIndexes:
                group = pm.listConnections(self.limb.bhvDistanceGroup)[0]
                self.grpMng.UpdateGroupDistance(group)
            self.PopulateBhvFrame(newBhvIndex)
            self.PopulateTargetFrame(newBhvIndex)
            self.PopulateControlFrame(newBhvIndex)
            # self.Populate()
            # self.PopulateTargetLimbs()
            # self.UpdateUI()
            self.parent.SetBhvType(self.limb) 
        else:
            self.SetLimb(self.limb.ID.get())

#=========== CONSTRAINT ==============================================

    def SetTargetLimb(self, limbName): # Called by UI
        targetLimb = self.targetLimbs[limbName]
        bhvType = self.limb.bhvType.get()
        if bhvType == 3:
            self._SetCstTargetLimb(self.limb, targetLimb)
        else:
            self._SetIKTargetLimb(self.limb, targetLimb)
        # self.UpdateUI()

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
        self._SetCstTargetLimb(self.limb, targetLimb)

    def _SetCstTargetLimb(self, sourceLimb, targetLimb):
        pm.disconnectAttr(sourceLimb.bhvCstTargetLimb)
        pm.connectAttr(targetLimb.bhvCstSourceLimb, sourceLimb.bhvCstTargetLimb)
        joints = self.jntMng.GetLimbJoints(targetLimb)
        jointNames = [j.pfrsName.get() for j in joints]
        pm.addAttr(sourceLimb.bhvCstTargetJnt, e=1, en=':'.join(jointNames))

#=========== IK ==============================================

    def SetIKTargetLimb(self, limbName):
        targetLimb = self.targetLimbs[limbName]
        self._SetIKTargetLimb(self.limb, targetLimb)
    
    def _SetIKBhv(self, sourceLimb):
        '''Set closest FK limb to current IK limb as target'''
        distances = {} # dist : group
        sourceGroup = self.grpMng.GetLimbGroups(sourceLimb)[0]
        sourcePos = pm.xform(sourceGroup, q=1, t=1, ws=1)
        # Create distance dictionary to groups
        for limb in self.limbMng.GetAllLimbs():
            if limb.bhvType.get() in self.bhvMng.ikTargetTypeIndexes:
                for targetGroup in self.grpMng.GetLimbGroups(limb):
                    targetPos = pm.xform(targetGroup, q=1, t=1, ws=1)
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

    def _SetIKTargetLimb(self, sourceLimb, targetLimb):
        '''Auto assign each IK limb group to closest FK limb's group'''
        # targetGroups = self.grpMng.GetLimbGroups(targetLimb)
        targetJoints = self.jntMng.GetLimbJoints(targetLimb)
        sourceGroups = self.grpMng.GetLimbIKGroups(sourceLimb)
        pm.disconnectAttr(sourceLimb.bhvIKTargetLimb)
        pm.connectAttr(targetLimb.bhvIKSourceLimb, sourceLimb.bhvIKTargetLimb)
        # If only one target, set and return
        if len(targetJoints) < 2:
            if targetLimb.bhvType.get() == 7: # Empty
                for sourceGroup in sourceGroups:
                    pm.addAttr(sourceGroup.targetJoint, e=1, en='Empty')
            else:
                jointName = targetJoints[0].pfrsName.get()
                for sourceGroup in sourceGroups:
                    pm.addAttr(sourceGroup.targetJoint, e=1, en=jointName)
            return
        targetJointNames = [j.pfrsName.get() for j in targetJoints]
        names = ':'.join(targetJointNames)
        # For each group, set target to closest group on target limb
        bhvType = sourceLimb.bhvType.get()

        # IK PV / FKIK
        if bhvType in self.bhvMng.ikPVTypeIndexes: 
            sourceGroup = sourceGroups[0]
            pm.addAttr(sourceGroup.targetJoint, e=1, en=names)
            sourceJoint = self.jntMng.GetLimbJoints(sourceLimb)[-1]
            sourcePos = pm.xform(sourceJoint, q=1, t=1, ws=1)
            targetJoint = self._GetClosestJoint(sourcePos, targetJoints)
            index = targetJointNames.index(targetJoint.pfrsName.get())
            sourceGroup.targetJoint.set(index)

        # IK Chain
        elif bhvType == 5:
            for sourceGroup in sourceGroups:
                pm.addAttr(sourceGroup.targetJoint, e=1, en=names)
                sourceJoint = pm.listConnections(sourceGroup.joint)[0]
                sourcePos = pm.xform(sourceJoint, q=1, t=1, ws=1)
                targetJoint = self._GetClosestJoint(sourcePos, targetJoints)
                index = targetJointNames.index(targetJoint.pfrsName.get())
                sourceGroup.targetJoint.set(index)
        # if sourceLimb.bhvType.get() in self.bhvMng.ikPVTypeIndexes:
        #     self.grpMng.UpdateGroupDistance(sourceGroups[0])

    def _GetClosestJoint(self, sourcePos, targetJoints):
        distances = {} # dist : targetJoint
        for targetJoint in targetJoints:
            targetPos = pm.xform(targetJoint, q=1, t=1, ws=1)
            dist = 0
            for i in range(3):
                dist += (sourcePos[i]-targetPos[i])**2
            if dist not in distances:
                distances[dist] = []
            distances[dist].append(targetJoint)
        # Set source Group's target group index
        targetDist = sorted(list(distances.keys()))[0]
        return distances[targetDist][0]


#=========== UI UPDATES ==============================================

    # def GetGroupName(self, group):
    #     if (pm.listConnections(group.joint)):
    #         return self.grpMng.GetJointGroupName(group)
    #     else:
    #         return self.grpMng.GetLimbGroupName(group)

    def GetLimbName(self, limb):
        prefix = self.limbMng.GetLimbPrefix(limb)
        side = self.limbMng.GetLimbSide(limb)
        return '%s_%s_%s' % (prefix, limb.pfrsName.get(), side)

    def Depopulate(self):
        self.limb = None
        pm.frameLayout(self.limbLayout, e=1, en=0)
        pm.frameLayout(self.targetLayout, e=1, en=0)
        pm.frameLayout(self.ctrLayout, e=1, en=0)

    # def PopulateTargetLimbs(self):
    #     pm.optionMenu(self.targetLimb_om, e=1, dai=1)
    #     bhvType = self.limb.bhvType.get()
    #     if bhvType == 3: #Cst
    #         bhvFilter = self.bhvMng.cstTargetTypeIndexes
    #     elif bhvType in self.bhvMng.ikTypeIndexes:
    #         bhvFilter = self.bhvMng.ikTargetTypeIndexes
    #     else:
    #         return
    #     self.targetLimbs = {}
    #     self.targetLimbOrder = []
    #     for rootLimb in self.limbMng.GetRootLimbs():
    #         for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
    #             if (limb.bhvType.get() in bhvFilter):
    #                 name = self.GetLimbName(limb)
    #                 pm.menuItem(l=name, p=self.targetLimb_om)
    #                 self.targetLimbs[name] = limb
    #                 self.targetLimbOrder.append(limb)

    # def Populate(self):
    #     self.PopulateIKTargetLimbs()
    #     self.PopulateCstTargetLimbs()

    # def PopulateCstTargetLimbs(self):
    #     pm.optionMenu(self.targetLimb_om, e=1, dai=1)
    #     self.jntLimbs = {}
    #     self.jntLimbOrder = []
    #     for rootLimb in self.limbMng.GetRootLimbs():
    #         for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
    #             if (limb.bhvType.get() in self.bhvMng.cstTargetTypeIndexes): # not Constraint or Empty
    #                 name = self.GetLimbName(limb)
    #                 pm.menuItem(l=name, p=self.targetLimb_om)
    #                 self.jntLimbs[name] = limb
    #                 self.jntLimbOrder.append(limb)

    # def PopulateIKTargetLimbs(self):
    #     pm.optionMenu(self.ikTargetLimb_om, e=1, dai=1)
    #     self.fkEmptyLimbs = {}
    #     self.fkLimbOrder = []
    #     for rootLimb in self.limbMng.GetRootLimbs():
    #         for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
    #             if (limb.bhvType.get() in self.bhvMng.ikTargetTypeIndexes):
    #                 name = self.GetLimbName(limb)
    #                 pm.menuItem(l=name, p=self.ikTargetLimb_om)
    #                 self.fkEmptyLimbs[name] = limb
    #                 self.fkLimbOrder.append(limb)

    def PopulateBhvFrame(self, bhvType):
        pm.deleteUI(self.grpParent_at)
        self.grpParent_at = pm.attrEnumOptionMenu(  self.grpParent_at, 
                                                    l='Bhv Group Parent', 
                                                    p=self.bhvLimbProp_cl,
                                                    at=self.limb.parentGroup)
        if self.cstType_at:
            pm.deleteUI(self.cstType_at)
            self.cstType_at = None
        if bhvType == 3:
            self.cstType_at = pm.attrEnumOptionMenu(l='Constraint Type',
                                                    at=self.limb.bhvCstType,
                                                    p=self.targetProp_cl)

    def PopulateControlFrame(self, bhvType):
        isDist = bhvType in self.bhvMng.distanceIndexes
        pm.frameLayout(self.ctrLayout, e=1, en=isDist)
        if not isDist:
            return
        if self.ctrAxis_at:
            pm.deleteUI(self.ctrAxis_at)
            self.ctrAxis_at = None
        group = pm.listConnections(self.limb.bhvDistanceGroup)[0]
        pm.attrControlGrp(  self.ctrDist_cg, e=1, en=1, 
                            a=group.distance,
                            cc=pm.Callback(self.UpdateGroupDistance, 1))
        self.ctrAxis_at = pm.attrEnumOptionMenu(l='Position Axis',
                                                at=group.axis,
                                                p=self.ctrProp_cl,
                                                cc=self.UpdateGroupDistance)

    def PopulateTargetFrame(self, bhvType):
        isTarget = bhvType in self.bhvMng.targetIndexes
        pm.frameLayout(self.targetLayout, e=1, en=isTarget)
        if not isTarget:
            return
        if self.targetJnt_at:
            pm.deleteUI(self.targetJnt_at)
            self.targetJnt_at = None
        if self.fkikJoint_at:
            pm.deleteUI(self.fkikJoint_at)
            self.fkikJoint_at = None

        # POPULATE TARGET LIMBS
        pm.optionMenu(self.targetLimb_om, e=1, dai=1)
        bhvType = self.limb.bhvType.get()
        if bhvType == 3: #Cst
            bhvFilter = self.bhvMng.cstTargetTypeIndexes
        elif bhvType in self.bhvMng.ikTypeIndexes:
            bhvFilter = self.bhvMng.ikTargetTypeIndexes
        else:
            return
        self.targetLimbs = {}
        self.targetLimbOrder = []
        for rootLimb in self.limbMng.GetRootLimbs():
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                if (limb.bhvType.get() in bhvFilter):
                    name = self.GetLimbName(limb)
                    pm.menuItem(l=name, p=self.targetLimb_om)
                    self.targetLimbs[name] = limb
                    self.targetLimbOrder.append(limb)

        # SELECT CURRENT LIMB TARGET
        targetLimbs = pm.listConnections(self.limb.bhvIKTargetLimb)
        if targetLimbs:
            targetLimb = targetLimbs[0]
            if targetLimb in self.targetLimbs:
                index = self.targetLimbOrder.index(targetLimb) + 1
                pm.optionMenu(self.targetLimb_om, e=1, sl=index)
        if bhvType != 5:
            group = pm.listConnections(self.limb.bhvDistanceGroup)[0]
            self.targetJnt_at = pm.attrEnumOptionMenu(  l='Target Joint',
                                                        at=group.targetJoint,
                                                        p=self.targetProp_cl)
        # FKIK
        if bhvType == 2: # FKIK
            fkikGroup = pm.listConnections(self.limb.bhvFKIKSwitchGroup)[0]
            self.fkikJoint_at = pm.attrEnumOptionMenu(  l='FKIK Joint',
                                                        at=fkikGroup.targetJoint, 
                                                        p=self.targetProp_cl,
                                                        cc=self.UpdateFKIKSwitchJoint)

    # def UpdateUI(self):
        # bhvType = self.limb.bhvType.get()
        # isDist = (bhvType in self.bhvMng.distanceIndexes)
        # isCst = (bhvType == 3)
        # isLookAt = (bhvType == 4)

        # pm.frameLayout(self.ctrLayout, e=1, en=isDist)
        # pm.frameLayout(self.lookAtLayout, e=1, en=isLookAt)
        # pm.frameLayout(self.targetLayout, e=1, en=isCst)
        # pm.optionMenu(self.ikTargetLimb_om, e=1, en=isDist)
        # pm.optionMenu(self.targetLimb_om, e=1, en=isCst)
        # if isDist:
            # targetLimbs = pm.listConnections(self.limb.bhvIKTargetLimb)
            # if targetLimbs:
            #     targetLimb = targetLimbs[0]
            #     if targetLimb in self.fkLimbOrder:
            #         index = self.fkLimbOrder.index(targetLimb) + 1
                    # pm.optionMenu(self.ikTargetLimb_om, e=1, sl=index)
                # else:
                #     pm.optionMenu(self.ikTargetLimb_om, e=1, sl=1)
        # IK PV or FKIK
        # if bhvType in self.bhvMng.distanceIndexes: 
        #     group = pm.listConnections(self.limb.bhvDistanceGroup)[0]
        #     pm.attrControlGrp(  self.ctrDist_cg, e=1, en=1, 
        #                         a=group.distance,
        #                         cc=pm.Callback(self.UpdateGroupDistance, 1))
        #     self.ctrAxis_at = pm.attrEnumOptionMenu(l='Position Axis',
        #                         at=group.axis,
        #                         p=self.ctrProp_cl,
        #                         cc=self.UpdateGroupDistance)
        #     self.targetJnt_at = pm.attrEnumOptionMenu( l='Target Joint',
        #                                 at=group.targetJoint,
        #                                 p=self.targetProp_cl)
            # if bhvType == 2: # FKIK
            #     fkikGroup = pm.listConnections(self.limb.bhvFKIKSwitchGroup)[0]
            #     self.fkikJoint_at = pm.attrEnumOptionMenu(  l='FKIK Joint',
            #                                                 at=fkikGroup.targetJoint, 
            #                                                 p=self.targetProp_cl,
            #                                                 cc=self.UpdateFKIKSwitchJoint)
        # # LOOK AT
        # if bhvType == 4: 
        #     group = pm.listConnections(self.limb.bhvDistaceGroup)[0]
        #     pm.attrControlGrp(  self.lookAtDist_cg, e=1, en=1, 
        #                         a=group.distance,
        #                         cc=pm.Callback(self.UpdateLookAtPosition, 1))
        #     self.ctrAxis_at = pm.attrEnumOptionMenu(l='Look At Axis Direction',
        #                         at=group.axis,
        #                         p=self.lookAtProp_cl,
        #                         cc=self.UpdateLookAtPosition)
        # CONSTRAINT
        # if isCst:
        #     self.targetJnt_at = pm.attrEnumOptionMenu( l='Target Joint',
        #                                 at=self.limb.bhvCstTargetJnt,
        #                                 p=self.targetProp_cl)
        #     self.cstType_at = pm.attrEnumOptionMenu(l='Constraint Type',
        #                                 at=self.limb.bhvCstType,
        #                                 p=self.targetProp_cl)
        #     cstLimbs = pm.listConnections(self.limb.bhvCstTargetLimb)
        #     if cstLimbs:
        #         cstLimb = cstLimbs[0]
        #         index = self.jntLimbOrder.index(cstLimb) + 1
        #         pm.optionMenu(self.targetLimb_om, e=1, sl=index)
        
    def UpdateGroupDistance(self, ignore):
        group = pm.listConnections(self.limb.bhvDistanceGroup)[0]
        self.grpMng.UpdateGroupDistance(group)

    # def UpdateLookAtPosition(self, ignore):
    #     self.grpMng.UpdateLookAtPosition(self.limb)
               
    # def UpdateIKPVPosition(self, ignore):
    #     self.grpMng.UpdateIKPVPosition(self.limb)

    # def UpdateGroupParentUI(self):
    #     pass

    def UpdateFKIKSwitchJoint(self, ignore):
        joints = self.jntMng.GetLimbJoints(self.limb)
        group = pm.listConnections(self.limb.bhvFKIKSwitchGroup)[0]
        self.grpMng.UpdateFKIKSwitchJoint(group, joints)
        # index = self.limb.bhvFKIKParentJoint.get()
        # joints = self.jntMng.GetLimbJoints(self.limb)
        # group = pm.listConnections(self.limb.bhvFKIKSwitchGroup)[0]
        # self.grpMng.SetLockGroup(group, False)
        # self.grpMng.PosRotGroupToJoint(group, joints[index])
        # self.grpMng.SetLockGroup(group, True)




