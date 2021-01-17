
import pymel.core as pm

class BHV_Limb_Properties_UI:
    def __init__(self, limbMng, jntMng, bhvMng, grpMng, parent):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.bhvMng = bhvMng
        self.grpMng = grpMng
        self.parent = parent
        self.logger = parent.logger

        self.limb = None
        self.targetJnt_at = None
        self.cstType_at = None
        self.rkfType_at = None
        # self.ctrAxis_at = None
        self.fkikJoint_at = None

        self.jntLimbs = {} # limbName : limb
        self.jntLimbOrder = [] # limbs
        self.targetLimbs = {} # limbName : limb
        self.targetLimbOrder = [] # limbs

        self._Setup()
    
    def SetLimb(self, limb):
        self.limb = limb
        if not limb:
            pm.frameLayout(self.limbLayout, e=1, en=0)
            return
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
        # self.PopulateControlFrame(bhvType)

        # self.UpdateBhvFrame()
        # self.UpdateUI()


#=========== SETUP UI ==============================================

    def _Setup(self):
        '''Create frame layouts here because we have limb + cst frames'''
        with pm.frameLayout('Limb BEHAVIOR Properties', bv=1, en=0) as self.limbLayout:
            with pm.columnLayout(adj=1) as self.bhvLimbProp_cl:
                self.bhvType_om = pm.optionMenu(l='Bhv Type', 
                                                cc=pm.Callback(self.SetBhvType))
                self.grpParent_at = pm.attrEnumOptionMenu(  l='Parent Joint', 
                                                            at='perspShape.filmFit')

        with pm.frameLayout('Limb IK / Constraint Target', bv=1, en=0) as self.targetLayout:
            with pm.columnLayout(adj=1) as self.targetProp_cl:
                self.targetLimb_om = pm.optionMenu( l='Target Limb', 
                                                    cc=self.SetTargetLimb)

#=========== FUNCTIONALITY ==============================================

    def SetBhvType(self): # Mostly UI
        bhvTypeStr = pm.optionMenu(self.bhvType_om, q=1, v=1)
        newBhvIndex = self.bhvMng.bhvTypes.index(bhvTypeStr)
        old = self.bhvMng.bhvTypes[self.limb.bhvType.get()]
        self.logger.info('\t\tLimbProp > SET BEHAVIOR:')
        self.logger.info('\t\t\t%s >>> %s' % (old, bhvTypeStr))
        
        self.bhvMng.SetBhvType(self.limb, newBhvIndex)
        self.PopulateBhvFrame(newBhvIndex)
        self.PopulateTargetFrame(newBhvIndex)
        # self.PopulateControlFrame(newBhvIndex)
        # self.Populate()
        # self.PopulateTargetLimbs()
        # self.UpdateUI()
        self.parent.SetBhvType(self.limb) 

        # else:
        #     self.SetLimb(self.limb.ID.get())

#=========== CONSTRAINT ==============================================

    def SetTargetLimb(self, limbName): # Called by UI
        targetLimb = self.targetLimbs[limbName]
        msg = '\t\tLimbIKCst > SET TARGET LIMB to "%s"' % targetLimb.pfrsName.get()
        self.logger.info(msg)
        bhvType = self.limb.bhvType.get()
        isCst = (bhvType in self.bhvMng.cstTypeIndexes) 
        # pm.frameLayout(self.targetLayout, e=1, en=isCst)
        if isCst:
            self.bhvMng.SetCstTargetLimb(self.limb, targetLimb)
        else:
            self.bhvMng.SetIKTargetLimb(self.limb, targetLimb)
        # self.UpdateUI()


#=========== UI UPDATES ==============================================

    def GetLimbName(self, limb):
        prefix = self.limbMng.GetLimbPrefix(limb)
        side = self.limbMng.GetLimbSide(limb)
        return '%s_%s_%s' % (prefix, limb.pfrsName.get(), side)

    def Depopulate(self):
        # self.limb = None
        pm.frameLayout(self.limbLayout, e=1, en=0)
        pm.frameLayout(self.targetLayout, e=1, en=0)
        # pm.frameLayout(self.ctrLayout, e=1, en=0)

    def PopulateBhvFrame(self, bhvType):
        pm.deleteUI(self.grpParent_at)
        self.grpParent_at = pm.attrEnumOptionMenu(  self.grpParent_at, 
                                                    l='Parent Joint', 
                                                    p=self.bhvLimbProp_cl,
                                                    at=self.limb.parentJoint,
                                                    cc=self.LogGroupParent)
        if self.cstType_at:
            pm.deleteUI(self.cstType_at)
            self.cstType_at = None
        if bhvType in self.bhvMng.cstTypeIndexes:
            self.cstType_at = pm.attrEnumOptionMenu(l='Constraint Type',
                                                    at=self.limb.bhvCstType,
                                                    p=self.targetProp_cl,
                                                    cc=self.LogCstType)
        if self.rkfType_at:
            pm.deleteUI(self.rkfType_at)
            self.rkfType_at = None
        if bhvType in self.bhvMng.rfkTypeIndexes:
            self.rkfType_at = pm.attrEnumOptionMenu(l='Relative FK Center Joint',
                                                    at=self.limb.bhvRFKCenterJoint,
                                                    p=self.bhvLimbProp_cl,
                                                    cc=self.UpdateRFKTargetJoint)

    def LogGroupParent(self, jointName):
        msg = '\t\tLimbProp > SET GROUP PARENT to '
        msg += '"%s"' % jointName
        self.logger.info(msg)
    
    def LogCstType(self, cstTypeStr):
        msg = '\t\tLimbIKCst > SET CONSTRAINT to '
        msg += '"%s"' % cstTypeStr
        self.logger.info(msg)

    def UpdateRFKTargetJoint(self, targetJointStr):
        msg = '\t\tLimbIKCst > SET Relative FK CENTER joint to '
        msg += '"%s"' % targetJointStr
        self.logger.info(msg)
        self.bhvMng.UpdateRFKConnections(self.limb)

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
            bhvFilter = self.bhvMng.ikTargetableIndexes
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
        # targetLimbs = pm.listConnections(self.limb.bhvIKTargetLimb)
        targetLimbs = pm.listConnections(self.limb.bhvTargetLimb)
        if targetLimbs:
            targetLimb = targetLimbs[0]
            if targetLimb in self.targetLimbs:
                index = self.targetLimbOrder.index(targetLimb) + 1
                pm.optionMenu(self.targetLimb_om, e=1, sl=index)
        if bhvType not in self.bhvMng.fkikTypeIndexes:
            self.targetJnt_at = pm.attrEnumOptionMenu(  l='Target Joint',
                                                        at=self.limb.bhvTargetJoint,
                                                        p=self.targetProp_cl,
                                                        cc=self.LogTargetJoint)
            # group = pm.listConnections(self.limb.bhvDistanceGroup)[0]
            # self.targetJnt_at = pm.attrEnumOptionMenu(  l='Target Joint',
            #                                             at=group.targetJoint,
            #                                             p=self.targetProp_cl)
        # FKIK
        if bhvType in self.bhvMng.fkikTypeIndexes: # FKIK
            fkikGroup = pm.listConnections(self.limb.bhvFKIKSwitchGroup)[0]
            self.fkikJoint_at = pm.attrEnumOptionMenu(  l='FKIK Joint',
                                                        at=fkikGroup.targetJoint, 
                                                        p=self.targetProp_cl,
                                                        cc=self.UpdateFKIKSwitchJoint)

    def LogTargetJoint(self, targetJointStr):
        msg = '\t\tLimbIKCst > SET TARGET JOINT to '
        msg += '"%s"' % targetJointStr
        self.logger.info(msg)

    def UpdateFKIKSwitchJoint(self, jointStr):
        msg = '\t\tLimbIKCst > FKIK JOINT to "%s"' % jointStr
        self.logger.info(msg)
        joints = self.jntMng.GetLimbJoints(self.limb)
        group = pm.listConnections(self.limb.bhvFKIKSwitchGroup)[0]
        self.grpMng.UpdateFKIKSwitchJoint(group, joints)
        # index = self.limb.bhvFKIKParentJoint.get()
        # joints = self.jntMng.GetLimbJoints(self.limb)
        # group = pm.listConnections(self.limb.bhvFKIKSwitchGroup)[0]
        # self.grpMng.SetLockGroup(group, False)
        # self.grpMng.PosRotGroupToJoint(group, joints[index])
        # self.grpMng.SetLockGroup(group, True)

    # def _SetCstBhv(self):
    #     targetLimb = None
    #     for possibleLimb in self.jntLimbOrder:
    #         if (possibleLimb != self.limb):
    #             targetLimb = possibleLimb
    #             break
    #     else:
    #         msg = 'No Valid Target for Constraint Limb "%s"' % self.limb
    #         pm.confirmDialog(t='Constraint Error', m=msg, icon='warning', b='Ok')
    #         return
    #     self._SetCstTargetLimb(self.limb, targetLimb)

    # def GetGroupName(self, group):
    #     if (pm.listConnections(group.joint)):
    #         return self.grpMng.GetJointGroupName(group)
    #     else:
    #         return self.grpMng.GetLimbGroupName(group)

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
        
    # def UpdateGroupDistance(self, ignore):
    #     group = pm.listConnections(self.limb.bhvDistanceGroup)[0]
    #     self.grpMng.UpdateGroupDistance(group)

    # def UpdateLookAtPosition(self, ignore):
    #     self.grpMng.UpdateLookAtPosition(self.limb)
               
    # def UpdateIKPVPosition(self, ignore):
    #     self.grpMng.UpdateIKPVPosition(self.limb)

    # def UpdateGroupParentUI(self):
    #     pass



    # def PopulateTargetLimbs(self):
    #     pm.optionMenu(self.targetLimb_om, e=1, dai=1)
    #     bhvType = self.limb.bhvType.get()
    #     if bhvType == 3: #Cst
    #         bhvFilter = self.bhvMng.cstTargetTypeIndexes
    #     elif bhvType in self.bhvMng.ikTypeIndexes:
    #         bhvFilter = self.bhvMng.ikTargetableIndexes
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
    #             if (limb.bhvType.get() in self.bhvMng.ikTargetableIndexes):
    #                 name = self.GetLimbName(limb)
    #                 pm.menuItem(l=name, p=self.ikTargetLimb_om)
    #                 self.fkEmptyLimbs[name] = limb
    #                 self.fkLimbOrder.append(limb)


    # def PopulateControlFrame(self, bhvType):
    #     isDist = bhvType in self.bhvMng.distanceIndexes
    #     pm.frameLayout(self.ctrLayout, e=1, en=isDist)
    #     if not isDist:
    #         return
    #     if self.ctrAxis_at:
    #         pm.deleteUI(self.ctrAxis_at)
    #         self.ctrAxis_at = None
    #     group = pm.listConnections(self.limb.bhvDistanceGroup)[0]
    #     pm.attrControlGrp(  self.ctrDist_cg, e=1, en=1, 
    #                         a=group.distance,
    #                         cc=pm.Callback(self.UpdateGroupDistance, 1))
    #     self.ctrAxis_at = pm.attrEnumOptionMenu(l='Position Axis',
    #                                             at=group.axis,
    #                                             p=self.ctrProp_cl,
    #                                             cc=self.UpdateGroupDistance)



#=========== IK ==============================================

    # def SetIKTargetLimb(self, limbName):
    #     targetLimb = self.targetLimbs[limbName]
    #     self.bhvMng.SetIKTargetLimb(self.limb, targetLimb)
    
    # def _SetIKBhv(self, sourceLimb):
        # targetLimb = self._GetClosestFKLimb(sourceLimb)
        # self._SetIKTargetLimb(sourceLimb, targetLimb)

        # # For each group, set target to closest group on target limb
        # # IK PV / FKIK
        # bhvType = sourceLimb.bhvType.get()
        # if bhvType in self.bhvMng.ikPVTypeIndexes: 
        #     # sourceGroup = sourceGroups[0]
        #     # pm.addAttr(sourceGroup.targetJoint, e=1, en=names)
        #     sourceJoint = self.jntMng.GetLimbJoints(sourceLimb)[-1]
        #     sourcePos = pm.xform(sourceJoint, q=1, t=1, ws=1)
        #     targetJoint = self._GetClosestJoint(sourcePos, targetJoints)
        #     index = targetJointNames.index(targetJoint.pfrsName.get())
        #     sourceLimb.bhvTargetJoint.set(index)
        #     # sourceGroup.targetJoint.set(index)

        # # IK Chain
        # elif bhvType in self.bhvMng.ikChainTypeIndexes:
        #     for sourceGroup in sourceGroups:
        #         # pm.addAttr(sourceGroup.targetJoint, e=1, en=names)
        #         sourceJoint = pm.listConnections(sourceGroup.joint)[0]
        #         sourcePos = pm.xform(sourceJoint, q=1, t=1, ws=1)
        #         targetJoint = self._GetClosestJoint(sourcePos, targetJoints)
        #         index = targetJointNames.index(targetJoint.pfrsName.get())
        #         sourceGroup.targetJoint.set(index)
        # if sourceLimb.bhvType.get() in self.bhvMng.ikPVTypeIndexes:
        #     self.grpMng.UpdateGroupDistance(sourceGroups[0])

    # def _GetClosestJoint(self, sourcePos, targetJoints):
    #     distances = {} # dist : targetJoint
    #     for targetJoint in targetJoints:
    #         targetPos = pm.xform(targetJoint, q=1, t=1, ws=1)
    #         dist = 0
    #         for i in range(3):
    #             dist += (sourcePos[i]-targetPos[i])**2
    #         if dist not in distances:
    #             distances[dist] = []
    #         distances[dist].append(targetJoint)
    #     # Set source Group's target group index
    #     targetDist = sorted(list(distances.keys()))[0]
    #     return distances[targetDist][0]

    # def _GetClosestFKLimb(self, sourceLimb):
    #     distances = {} # dist : group
    #     sourceGroup = self.grpMng.GetLimbGroups(sourceLimb)[0]
    #     sourcePos = pm.xform(sourceGroup, q=1, t=1, ws=1)
    #     # Create distance dictionary to groups
    #     for limb in self.limbMng.GetAllLimbs():
    #         if limb.bhvType.get() in self.bhvMng.ikTargetableIndexes:
    #             for targetGroup in self.grpMng.GetLimbGroups(limb):
    #                 targetPos = pm.xform(targetGroup, q=1, t=1, ws=1)
    #                 dist = 0
    #                 for i in range(3):
    #                     dist += (sourcePos[i]-targetPos[i])**2
    #                 distances[dist] = targetGroup
    #     # Get Closest limb
    #     for dist in sorted(list(distances.keys())):
    #         closestGroup = distances[dist]
    #         closestLimbs = pm.listConnections(closestGroup.limb)
    #         if closestLimbs:
    #             return closestLimbs[0]
    #     msg = 'No Valid Target for IK Limb "%s"' % sourceLimb
    #     pm.confirmDialog(t='IK Error', m=msg, icon='warning', b='Ok')
    #     return None

