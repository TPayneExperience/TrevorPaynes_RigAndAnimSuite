
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

class RIG_BHV_Limb_Properties_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
        self.rigBHV = parent.rigBHV
        self.grpMng = parent.grpMng
        self.logger = parent.logger
        self.pfrs = parent.pfrs

        self.limb = None
        self.targetJnt_at = None
        self.cstLayout = None
        # self.rkfType_at = None

        self.jntLimbs = {} # limbName : limb
        self.jntLimbOrder = [] # limbs
        self.targetLimbs = {} # limbName : limb
        self.targetLimbOrder = [] # limbs

        self._Setup()
    
    def SetLimb(self, limb):
        self.logger.debug('\tBhv_LimbProp > SetLimb')
        pm.frameLayout(self.limbLayout, e=1, en=0)
        pm.frameLayout(self.targetLayout, e=1, en=0)
        self.limb = limb
        if not limb:
            return
        pm.frameLayout(self.limbLayout, e=1, en=1)

        # Add only bhv options relevant to that limb
        pm.optionMenu(self.bhvType_om, e=1, dai=1)
        bhvTypes = self.rigBHV.GetBhvOptions(self.limb)
        for bhvType in bhvTypes:
            pm.menuItem(l=bhvType, p=self.bhvType_om)

        # Convert bhv type enum on limb to select the proper index
        bhvType = self.limb.bhvType.get()
        # bhvTypeStr = self.rigBHV.bhvTypes[bhvType]
        bhvTypeStr = rigData.BHV_TYPES[bhvType]
        index = bhvTypes.index(bhvTypeStr) + 1
        pm.optionMenu(self.bhvType_om, e=1, sl=index)

        self.PopulateLimbProperties(bhvType)
        self.PopulateBhvProperties()
        # self.PopulateControlFrame(bhvType)

        # self.UpdateBhvFrame()
        # self.UpdateUI()


#=========== SETUP UI ==============================================

    def _Setup(self):
        '''Create frame layouts here because we have limb + cst frames'''
        with pm.frameLayout('Limb Properties', bv=1, en=0) as self.limbLayout:
            with pm.columnLayout(adj=1) as self.bhvLimbProp_cl:
                with pm.columnLayout(co=('left', -100)) as self.appLimbLockHide_cl:
                    self.enableLimb_cg = pm.attrControlGrp(l='Enable Limb',
                                                    a='perspShape.shakeEnabled')
                self.bhvType_om = pm.optionMenu(l='Bhv Type', 
                                                cc=pm.Callback(self.SetBhvType))
                self.grpParent_at = pm.attrEnumOptionMenu(  l='Parent Joint', 
                                                            at='perspShape.filmFit')

        with pm.frameLayout('Behavior Properties', bv=1, en=0) as self.targetLayout:
            with pm.columnLayout(adj=1) as self.targetProp_cl:
                self.targetLimb_om = pm.optionMenu( l='Target Limb', 
                                                    cc=self.SetBhvParentLimb)

#=========== FUNCTIONALITY ==============================================

    def SetBhvType(self): # Mostly UI
        self.logger.debug('\tBhv_LimbProp > SetBhvType')
        bhvTypeStr = pm.optionMenu(self.bhvType_om, q=1, v=1)
        newBhvIndex = rigData.BHV_TYPES.index(bhvTypeStr)
        old = rigData.BHV_TYPES[self.limb.bhvType.get()]
        self.logger.info('\tLimbProp > SET BEHAVIOR:')
        self.logger.info('\t\t%s >>> %s' % (old, bhvTypeStr))
        
        self.limbMng.SetBhvType(self.limb, newBhvIndex)
        # self.PopulateLimbProperties(newBhvIndex)
        # self.PopulateBhvProperties()
        # self.parent.SetBhvType(self.limb) 
        self.parent.Populate()

#=========== CONSTRAINT ==============================================

    def SetBhvParentLimb(self, limbName): # Called by UI
        self.logger.debug('\tBhv_LimbProp > SetBhvParentLimb')
        targetLimb = self.targetLimbs[limbName]
        msg = '\tLimbIKCst > SET TARGET LIMB to "%s"' % targetLimb.pfrsName.get()
        self.logger.info(msg)
        self.limbMng.SetBhvParentLimb(self.limb, targetLimb)

#=========== UI UPDATES ==============================================

    def PopulateLimbProperties(self, bhvType):
        self.logger.debug('\tBhv_LimbProp > PopulateLimbProperties')
        pm.attrControlGrp(  self.enableLimb_cg, e=1, 
                                a=self.limb.enableLimb,
                                cc=pm.Callback(self.SetEnableLimb, 1))
        pm.deleteUI(self.grpParent_at)
        self.grpParent_at = pm.attrEnumOptionMenu(  self.grpParent_at, 
                                                    l='Parent Joint', 
                                                    p=self.bhvLimbProp_cl,
                                                    at=self.limb.limbParentJoint,
                                                    cc=self.LogGroupParent)
    
    def SetEnableLimb(self, ignore):
        self.logger.debug('\tBhv_LimbProp > SetEnableLimb')
        self.parent.SetEnableLimb(self.limb)

    def PopulateBhvProperties(self):
        self.logger.debug('\tBhv_LimbProp > PopulateBhvProperties')
        pm.frameLayout(self.targetLayout, e=1, en=0)
        pm.optionMenu(self.targetLimb_om, e=1, dai=1)
        self.targetLimbs = {}
        self.targetLimbOrder = []
        for rootLimb in self.limbMng.GetRootLimbs(self.pfrs.root):
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                if limb == self.limb:
                    continue
                side = rigData.LIMB_SIDES[limb.side.get()]
                name = '%s_%s' % (limb.pfrsName.get(), side)
                pm.menuItem(l=name, p=self.targetLimb_om)
                self.targetLimbs[name] = limb
                self.targetLimbOrder.append(limb)
        self._PopulateTargetLimbProperties()
        self._PopulateConstraintProperties()

    def _PopulateTargetLimbProperties(self):
        if self.limb.bhvType.get() not in rigData.CST_BHV_INDEXES:
            return
        pm.frameLayout(self.targetLayout, e=1, en=1)
        targetLimbs = pm.listConnections(self.limb.bhvParent)
        if targetLimbs:
            targetLimb = targetLimbs[0]
            if targetLimb in self.targetLimbOrder:
                index = self.targetLimbOrder.index(targetLimb) + 1
                pm.optionMenu(self.targetLimb_om, e=1, sl=index)
        if self.targetJnt_at:
            pm.deleteUI(self.targetJnt_at)
            self.targetJnt_at = None
        self.targetJnt_at = pm.attrEnumOptionMenu(  l='Target Joint',
                                                    at=self.limb.bhvParentJoint,
                                                    p=self.targetProp_cl,
                                                    cc=self.LogBhvParentJoint)
        
    def _PopulateConstraintProperties(self):
        if self.cstLayout:
            pm.deleteUI(self.cstLayout)
            self.cstLayout = None
        if self.limb.bhvType.get() not in rigData.CST_BHV_INDEXES:
            return
        with pm.columnLayout(adj=1, p=self.targetProp_cl) as self.cstLayout:
            pm.attrEnumOptionMenu(  l='Constraint Type',
                                    at=self.limb.bhvCstType,
                                    cc=self.LogCstType)
            with pm.rowLayout(  nc=4,
                                cal=(1, 'right'), 
                                cat=[(1, 'both', 0), 
                                    (2, 'both', 0), 
                                    (3, 'both', 0), 
                                    (4, 'both', 0)]):
                pm.text('Constraint Pos Axes')
                with pm.columnLayout(co=('left', -140)):
                    pm.attrControlGrp(l='X', a=self.limb.cstPosX)
                with pm.columnLayout(co=('left', -140)):
                    pm.attrControlGrp(l='Y', a=self.limb.cstPosY)
                with pm.columnLayout(co=('left', -140)):
                    pm.attrControlGrp(l='Z', a=self.limb.cstPosZ)
            with pm.rowLayout(  nc=4,
                                cal=(1, 'right'), 
                                cat=[(1, 'both', 0), 
                                    (2, 'both', 0), 
                                    (3, 'both', 0), 
                                    (4, 'both', 0)]):
                pm.text('Constraint Rot Axes')
                with pm.columnLayout(co=('left', -140)):
                    pm.attrControlGrp(l='X', a=self.limb.cstRotX)
                with pm.columnLayout(co=('left', -140)):
                    pm.attrControlGrp(l='Y', a=self.limb.cstRotY)
                with pm.columnLayout(co=('left', -140)):
                    pm.attrControlGrp(l='Z', a=self.limb.cstRotZ)

    def LogGroupParent(self, jointName):
        msg = '\tLimbProp > SET GROUP PARENT to '
        msg += '"%s"' % jointName
        self.logger.info(msg)
    
    def LogCstType(self, cstTypeStr):
        msg = '\tLimbIKCst > SET CONSTRAINT to '
        msg += '"%s"' % cstTypeStr
        self.logger.info(msg)

    def LogBhvParentJoint(self, targetJointStr):
        msg = '\tLimbIKCst > SET TARGET JOINT to '
        msg += '"%s"' % targetJointStr
        self.logger.info(msg)

