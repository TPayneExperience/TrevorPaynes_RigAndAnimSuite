
import pymel.core as pm

class BHV_Limb_Properties_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
        self.bhvMng = parent.bhvMng
        self.grpMng = parent.grpMng
        self.logger = parent.logger

        self.limb = None
        self.targetJnt_at = None
        self.cstType_at = None
        self.rkfType_at = None

        self.jntLimbs = {} # limbName : limb
        self.jntLimbOrder = [] # limbs
        self.targetLimbs = {} # limbName : limb
        self.targetLimbOrder = [] # limbs

        self._Setup()
    
    def SetLimb(self, limb):
        self.logger.debug('\tBhv_LimbProp > SetLimb')
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
        self.logger.debug('\tBhv_LimbProp > SetBhvType')
        bhvTypeStr = pm.optionMenu(self.bhvType_om, q=1, v=1)
        newBhvIndex = self.bhvMng.bhvTypes.index(bhvTypeStr)
        old = self.bhvMng.bhvTypes[self.limb.bhvType.get()]
        self.logger.info('\tLimbProp > SET BEHAVIOR:')
        self.logger.info('\t\t%s >>> %s' % (old, bhvTypeStr))
        
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
        self.logger.debug('\tBhv_LimbProp > SetTargetLimb')
        targetLimb = self.targetLimbs[limbName]
        msg = '\tLimbIKCst > SET TARGET LIMB to "%s"' % targetLimb.pfrsName.get()
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
        self.logger.debug('\tBhv_LimbProp > GetLimbName')
        prefix = self.limbMng.GetLimbPrefix(limb)
        side = self.limbMng.GetLimbSide(limb)
        return '%s_%s_%s' % (prefix, limb.pfrsName.get(), side)

    def Depopulate(self):
        self.logger.debug('\tBhv_LimbProp > Depopulate')
        # self.limb = None
        pm.frameLayout(self.limbLayout, e=1, en=0)
        pm.frameLayout(self.targetLayout, e=1, en=0)
        # pm.frameLayout(self.ctrLayout, e=1, en=0)

    def PopulateBhvFrame(self, bhvType):
        self.logger.debug('\tBhv_LimbProp > PopulateBhvFrame')
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
        msg = '\tLimbProp > SET GROUP PARENT to '
        msg += '"%s"' % jointName
        self.logger.info(msg)
    
    def LogCstType(self, cstTypeStr):
        msg = '\tLimbIKCst > SET CONSTRAINT to '
        msg += '"%s"' % cstTypeStr
        self.logger.info(msg)

    def UpdateRFKTargetJoint(self, targetJointStr):
        msg = '\tLimbIKCst > SET Relative FK CENTER joint to '
        msg += '"%s"' % targetJointStr
        self.logger.info(msg)
        self.bhvMng.UpdateRFKConnections(self.limb)

    def PopulateTargetFrame(self, bhvType):
        self.logger.debug('\tBhv_LimbProp > PopulateTargetFrame')
        pm.frameLayout(self.targetLayout, e=1, en=0)
        if self.targetJnt_at:
            pm.deleteUI(self.targetJnt_at)
            self.targetJnt_at = None
        if bhvType not in self.bhvMng.targetIndexes:
            return

        # POPULATE TARGET LIMBS
        pm.optionMenu(self.targetLimb_om, e=1, dai=1)
        bhvType = self.limb.bhvType.get()
        if bhvType in self.bhvMng.cstTypes:
            bhvFilter = self.bhvMng.cstTargetTypeIndexes
        elif bhvType in self.bhvMng.ikTypeIndexes:
            bhvFilter = self.bhvMng.ikTargetableIndexes
        else:
            return
        pm.frameLayout(self.targetLayout, e=1, en=1)
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
            if targetLimb in self.targetLimbOrder:
                index = self.targetLimbOrder.index(targetLimb) + 1
                pm.optionMenu(self.targetLimb_om, e=1, sl=index)
        # if bhvType not in self.bhvMng.fkikTypeIndexes:
        if bhvType in self.bhvMng.ikPVTypeIndexes + self.bhvMng.cstTypeIndexes:
            self.targetJnt_at = pm.attrEnumOptionMenu(  l='Target Joint',
                                                        at=self.limb.bhvTargetJoint,
                                                        p=self.targetProp_cl,
                                                        cc=self.LogTargetJoint)

    def LogTargetJoint(self, targetJointStr):
        msg = '\tLimbIKCst > SET TARGET JOINT to '
        msg += '"%s"' % targetJointStr
        self.logger.info(msg)

