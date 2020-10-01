
import pymel.core as pm

import BHV_Group_Manager as grpMng
reload(grpMng)

class BHV_Limb_Manager:
    def __init__ (self, limbMng, jntMng):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.grpMng = grpMng.BHV_Group_Manager()

        self.bhvTypes = [   'FK - Chain',

                            'IK',
                            'FK / IK',
                            'Constraint',
                            'Look At',
                            'IK Chain',

                            'FK - Branch',
                            'Empty']
        self.cstTypes = ['Parent', 'Point', 'Orient', 'Scale']

#============= LIMBS + JOINTS ============================

    def AddLimb(self, limb):
        if not limb.hasAttr('bhvType'):
            bhvTypes = ':'.join(self.bhvTypes)
            bhvCstTypes = ':'.join(self.cstTypes)

            pm.addAttr(limb, ln='bhvType', at='enum', en=bhvTypes)

            # Limb interconnections
            pm.addAttr(limb, ln='bhvParentLimb', dt='string')
            pm.addAttr(limb, ln='bhvParentGrp', at='enum', en='None')
            pm.addAttr(limb, ln='bhvChildrenLimbs', dt='string')
            
            # Limb Groups
            pm.addAttr(limb, ln='bhvFKGrps', dt='string')
            pm.addAttr(limb, ln='bhvIKGrps', dt='string')
            pm.addAttr(limb, ln='bhvFKIKSwitchGrp', dt='string')
            pm.addAttr(limb, ln='bhvCstGrps', dt='string')
            pm.addAttr(limb, ln='bhvLookAtGrp', dt='string')
            pm.addAttr(limb, ln='bhvIKChainGrps', dt='string')
            pm.addAttr(limb, ln='bhvEmptyGrp', dt='string')

            pm.addAttr(limb, ln='bhvCstType', at='enum', en=bhvCstTypes)
            pm.addAttr(limb, ln='bhvCstTargetLimbID', at='long')
            pm.addAttr(limb, ln='bhvCstTargetJntIndex', at='enum', en='None')


#============= BHV TYPES ============================
# CURRENTLY, THIS ONLY ACCOUNTS FOR EDITABLE SETUP, NOT FINAL

    def Set_BhvType(self, limb, bhvType):
        index = self.bhvTypes.index(bhvType)
        limb.bhvType.set(index)
        if index == 0:
            self.Set_FK(limb)
        elif index == 1:
            self.Set_IK(limb)
        # elif index == 2:
        #     self.Set_FKIK(limb)
        # elif index == 3:
        #     self.Set_Cst(limb)
        # elif index == 4:
        #     self.Set_LookAt(limb)
        # elif index == 5:
        #     self.Set_IKChain(limb)

    def Set_FK(self, limb):
        pm.disconnectAttr(limb.bhvFKGrps)
        for joint in self.jntMng.GetLimbJoints(limb.ID.get()):
            groups = pm.listConnections(joint.bhvFKGrp)
            if groups:
                group = groups[0]
                pm.disconnectAttr(group.limb)
                pm.connectAttr(limb.bhvFKGrps, group.limb)
            else:
                self.grpMng.Add_FK(limb, joint)


    def Set_IK(self, limb):
        joints = self.jntMng.GetLimbJoints(limb.ID.get())
        pm.delete(pm.listConnections(limb.bhvIKGrps))
        self.grpMng.Add_IKHandle(limb, joints[0], joints[-1])

    def Set_FKIK(self, limb):
        self.Set_FK(limb)
        self.Set_IK(limb)

    def Set_Cst(self, limb):
        pass

    def Set_LookAt(self, limb):
        pass

    def Set_IKChain(self, limb):
        pass
