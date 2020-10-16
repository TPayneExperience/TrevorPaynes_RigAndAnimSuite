
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
        self.limbs = {} # limbName : limb
        self.limbOrder = [] # limbs

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
        self.UpdateCstUI()

    def SetGroup(self):
        pm.frameLayout(self.limbLayout, e=1, en=0)
        pm.frameLayout(self.cstLayout, e=1, en=0)

    def Populate(self):
        '''Called when Bhvs tab clicked, 
        populates Constraint Target Limbs option menu
        '''
        pm.optionMenu(self.cstTargetLimb_om, e=1, dai=1)
        self.limbs = {}
        self.limbOrder = []
        for rootLimb in self.limbMng.GetRootLimbs():
            prefix = self.limbMng.GetLimbPrefix(rootLimb)
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                side = self.limbMng.GetLimbSide(limb)
                name = '%s_%s_%s' % (prefix, limb.pfrsName.get(), side)
                pm.menuItem(l=name, p=self.cstTargetLimb_om)
                self.limbs[name] = limb
                self.limbOrder.append(limb)


#=========== SETUP UI ==============================================

    def _Setup(self):
        '''Create frame layouts here because we have limb + cst frames'''
        with pm.frameLayout('Limb BEHAVIOR Properties', bv=1, en=0) as self.limbLayout:
            with pm.columnLayout(adj=1) as self.bhvLimbProp_cl:
                self.bhvType_om = pm.optionMenu(l='Bhv Type', 
                                                cc=pm.Callback(self.SetBhvType))
                self.grpParent_at = pm.attrEnumOptionMenu(  l='Bhv Grp Parent', 
                                                            at='perspShape.filmFit')

        with pm.frameLayout('Limb CONSTRAINT Properties', bv=1) as self.cstLayout:
            with pm.columnLayout(adj=1) as self.bhvCstProp_cl:
                self.cstTargetLimb_om = pm.optionMenu(  l='Target Limb', 
                                                        cc=self.SetTargetCstLimb)

#=========== FUNCTIONALITY ==============================================

    def SetBhvType(self):
        bhvType = pm.optionMenu(self.bhvType_om, q=1, v=1)
        isVis = (bhvType == 'Constraint')
        pm.frameLayout(self.cstLayout, e=1, en=isVis)
        self.bhvMng.SetBhv(self.limb, bhvType)
        self.parent.SetBhvType(self.limb) 
        self.UpdateCstUI()

    def SetTargetCstLimb(self, limbName):
        limb = self.limbs[limbName]
        self.ConnectTargetCstLimb(limb)
    
    def ConnectTargetCstLimb(self, limb):
        pm.disconnectAttr(self.limb.bhvCstTargetLimb)
        pm.connectAttr(limb.bhvCstSourceLimb, self.limb.bhvCstTargetLimb)
        joints = self.jntMng.GetLimbJoints(limb)
        jointNames = [j.pfrsName.get() for j in joints]
        pm.addAttr(self.limb.bhvCstTargetJnt, e=1, en=':'.join(jointNames))
        self.UpdateCstUI()


#=========== UI UPDATES ==============================================

    def UpdateGroupParentUI(self):
        if self.limb:
            pm.deleteUI(self.grpParent_at)
            self.grpParent_at = pm.attrEnumOptionMenu(  self.grpParent_at, 
                                                        l='Bhv Grp Parent', 
                                                        p=self.bhvLimbProp_cl,
                                                        at=self.limb.parentGrp)

    def UpdateCstUI(self):
        if self.cstTargetJnt_at:
            pm.deleteUI(self.cstTargetJnt_at)
            self.cstTargetJnt_at = None
        if self.cstType_at:
            pm.deleteUI(self.cstType_at)
            self.cstType_at = None
        isCstType = (self.limb.bhvType.get() == 3)
        pm.frameLayout(self.cstLayout, e=1, en=isCstType)
        if isCstType:
            self.cstTargetJnt_at = pm.attrEnumOptionMenu( l='Target Joint',
                                        at=self.limb.bhvCstTargetJnt,
                                        p=self.bhvCstProp_cl)
            self.cstType_at = pm.attrEnumOptionMenu(l='Constraint Type',
                                        at=self.limb.bhvCstType,
                                        p=self.bhvCstProp_cl)
            cstLimbs = pm.listConnections(self.limb.bhvCstTargetLimb)
            if cstLimbs:
                cstLimb = cstLimbs[0]
                index = self.limbOrder.index(cstLimb)
                pm.optionMenu(self.cstTargetLimb_om, e=1, sl=index)
        







