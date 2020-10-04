
import pymel.core as pm

class BHV_Limb_Properties_UI:
    def __init__(self, limbMng, jntMng, bhvMng, grpMng, parent):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.bhvMng = bhvMng
        self.grpMng = grpMng
        self.parent = parent

        self.limb = None
        self.limbIDs = [] #ID's to be paired with limbs added to option dropdown

        self._Setup()
    
    def SetLimb(self, limbID):
        self.limb = self.limbMng.GetLimb(limbID)
        pm.frameLayout(self.limbLayout, en=1)

    # BEHAVIOR TYPE + GROUP MENUES
        pm.optionMenu(self.bhvType_om, e=1, dai=1)
        # Add only bhv options relevant to that limb
        bhvTypes = self.bhvMng.GetBhvOptions(self.limb)
        for bhvType in bhvTypes:
            pm.menuItem(l=bhvType, p=self.bhvType_om)
        # Convert bhv type enum on limb to select the proper index
        bhvTypeStr = self.bhvMng.bhvTypes[self.limb.bhvType.get()]
        index = bhvTypes.index(bhvTypeStr) + 1
        pm.optionMenu(self.bhvType_om, e=1, sl=index)
        # GroupParentEnum
        pm.attrEnumOptionMenu(self.grpParent_at, e=1, at=self.limb.parentGrp)

    # CONSTRAINT DATA
        pm.attrEnumOptionMenu(self.cstType_at, e=1, at=self.limb.bhvCstTypeIndex)
        # Get stored limb id and select index from stored list
        cstTargetLimbID = self.limb.bhvCstTargetLimbID.get()
        index = self.limbIDs.index(cstTargetLimbID) + 1
        pm.optionMenu(self.cstTargetLimb_om, e=1, sl=index)
        pm.attrEnumOptionMenu(self.cstType_at, e=1, at=self.limb.bhvCstTargetJntIndex)
        self.SetCstTargetLimb(cstTargetLimbID)
        
    def SetGroup(self):
        pm.frameLayout(self.limbLayout, en=0)
        pm.frameLayout(self.cstLayout, vis=0)

    def Populate(self): # Tab selected
        pm.optionMenu(self.cstTargetLimb_om, e=1, dai=1)
        self.limbIDs = []
        for rootLimb in self.limbMng.GetRootLimbs():
            prefix = pm.listConnections(rootLimb.rigRoot)[0].prefix.get()
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                limbID = limb.ID.get()
                side = self.limbMng.limbSides[limb.side.get()]
                name = '%s_%s_%s' % (prefix, limb.pfrsName.get(), side)
                pm.menuItem(limbID, l=name, p=self.cstTargetLimb_om)
                self.limbIDs.append(limbID)


#=========== SETUP UI ==============================================

    def _Setup(self):
        '''Create frame layouts here because we have limb + cst frames'''
        with pm.frameLayout('Limb BEHAVIOR Properties', bv=1, en=0) as self.limbLayout:
            with pm.columnLayout(adj=1):
                self.bhvType_om = pm.optionMenuGrp(l='Bhv Type', cc=self.SetBhvType)
                self.grpParent_at = pm.attrEnumOptionMenu(l='Bhv Grp Parent', 
                                                            at='perspShape.filmFit')

        with pm.frameLayout('Limb CONSTRAINT Properties', bv=1) as self.cstLayout:
            with pm.columnLayout(adj=1):
                self.cstType_at = pm.attrEnumOptionMenu(l='Cst Type',  
                                                        at='perspShape.filmFit')
                self.cstTargetLimb_om = pm.optionMenuGrp(l='Target Limb', 
                                                            cc=self.SetCstTargetLimb)
                self.cstTargetJnt_at = pm.attrEnumOptionMenu(l='Target Joint',  
                                                        at='perspShape.filmFit')

#=========== FUNCTIONALITY ==============================================

    def SetBhvType(self, bhvTypeStr):
        print (bhvTypeStr)
        pm.frameLayout(self.cstLayout, e=1, vis=(bhvTypeStr == 'Constraint'))
        index = self.bhvMng.bhvTypes.index(bhvTypeStr)
        self.limb.bhvType.set(index)
        self.parent.SetBhvType(self.limb) 

    def SetCstTargetLimb(self, limbIDStr):
        limbID = int(limbIDStr)
        self.limb.bhvCstTargetLimbID.set(limbID)
        joints = self.jntMng.GetLimbJoints(limbID)
        jointNames = [j.pfrsName.get() for j in joints]
        pm.addAttr(self.limb.bhvCstTargetJntIndex, e=1, en=':'.join(jointNames))









