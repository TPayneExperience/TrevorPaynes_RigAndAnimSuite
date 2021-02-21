
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

import Common.Utilities as util
reload(util)

class Limb_Manager:
    def __init__(self, parent):
        self.nameMng = parent.nameMng
        self.grpMng = parent.grpMng
        self.jntMng = parent.jntMng
        self.logger = parent.logger

#============= ROOT ============================

    def NewRoot(self, root):
        self.logger.debug('\tLimbMng > NewRoot')
        self.limbGroup = pm.group(name='LIMBS', em=1, p=root)

    def SetRoot(self, root):
        self.logger.debug('\tLimbMng > SetRoot')
        for child in pm.listRelatives(root, c=1, type='transform'):
            if child.shortName() == 'LIMBS':
                self.jntGroup = child
                break

#============= ADD LIMB ============================

    def _AddLimb(self, root):
        self.logger.debug('\tLimbMng > AddLimb')
        limbID = root.nextLimbID.get()
        root.nextLimbID.set(limbID + 1)
        hide = rigData.HIDE_ATTRS
        pfrsName = 'Limb%03d' % limbID
        limbTypes = ':'.join(rigData.LIMB_TYPES)
        limbSides = ':'.join(rigData.LIMB_SIDES)
        bhvTypes = ':'.join(rigData.BHV_TYPES)
        visBhvTypes = ':'.join(rigData.VIS_BHV_TYPES)

        limb = pm.group(name=pfrsName, em=1, p=self.limbGroup)
        util.ChannelBoxAttrs(limb)
        pm.addAttr(limb, ln='rigRoot', dt='string', h=hide)
        pm.addAttr(limb, ln='ID', at='long', dv=limbID, h=hide)
        pm.addAttr(limb, ln='pfrsName', dt='string', h=hide)
        limb.pfrsName.set(pfrsName)
        pm.addAttr(limb, ln='limbType', at='enum', en=limbTypes,
                                        h=hide)
        pm.addAttr(limb, ln='side', at='enum', en=limbSides,
                                        h=hide)
        pm.addAttr(limb, ln='joints', dt='string', h=hide)

        # LIMB PARENTING
        pm.addAttr(limb, ln='limbParent', dt='string', h=hide)
        pm.addAttr(limb, ln='limbParentJoint', at='enum', en='None', 
                                        h=hide)
        pm.addAttr(limb, ln='limbChildren', dt='string', h=hide)
        
        pm.addAttr(limb, ln='defaultLimbParent', dt='string', 
                                        h=hide)
        pm.addAttr(limb, ln='defaultLimbChildren', dt='string', 
                                        h=hide)
        pm.addAttr(limb, ln='mirrorLimb', at='long', h=hide)

        # BEHAVIORS
        pm.addAttr(limb, ln='bhvType', at='enum', en=bhvTypes, h=hide)
        pm.addAttr(limb, ln='rebuildLimbType', at='bool', dv=1, h=hide)
        pm.addAttr(limb, ln='rebuildBhvType', at='bool', h=hide)
        pm.addAttr(limb, ln='rebuildBhvDep', at='bool', h=hide)
        pm.addAttr(limb, ln='rebuildAppDep', at='bool', h=hide)
        # pm.addAttr(limb, ln='rebuildSkinInf', at='bool', h=hide)
        
        # VIS PARENTING
        pm.addAttr(limb, ln='visParent', dt='string', h=hide)
        pm.addAttr(limb, ln='visChildren', dt='string', h=hide)
        pm.addAttr(limb, ln='visParentBhvType', at='enum', en=visBhvTypes, 
                                                        h=hide)

        # IK PV + CST
        pm.addAttr(limb, ln='bhvChildren', dt='string', h=hide) 

        # CHANNEL BOX
        pm.addAttr(limb, ln='channelBoxJointCtrPos', at='bool', h=hide)
        pm.addAttr(limb, ln='channelBoxJointCtrRot', at='bool', dv=1, h=hide)
        pm.addAttr(limb, ln='channelBoxJointCtrScale', at='bool', h=hide)
        pm.addAttr(limb, ln='channelBoxLimbCtrPos', at='bool', dv=1, h=hide)
        pm.addAttr(limb, ln='channelBoxLimbCtrRot', at='bool', h=hide)
        pm.addAttr(limb, ln='channelBoxLimbCtrScale', at='bool', h=hide)
        
        return limb

    def AddEmptyRigLimb(self, root):
        self.logger.debug('\tLimbMng > AddEmptyRigLimb')
        limb = self._AddLimb(root)
        pm.addAttr(limb, ln='bhvEmptyGroup', dt='string', h=rigData.HIDE_ATTRS)
        limb.bhvType.set(rigData.EMPTY_BHV_INDEXES[0])
        self.grpMng.AddEmptyGroup(limb)
        self.UpdateLimbName(limb)
        pm.connectAttr(root.emptyLimbs, limb.rigRoot)
        return limb

    def AddJointLimb(self, root, joints):
        self.logger.debug('\tLimbMng > AddJointLimb')
        limb = self._AddLimb(root)
        for joint in joints:
            self.jntMng.AddJoint(limb, joint)
        self.jntMng.ReindexJoints(limb)
        
        bhvCstTypes = ':'.join(rigData.CST_TYPES)
        axes = ':'.join(rigData.AXES_NAMES)
        hide = rigData.HIDE_ATTRS

        # LookAt, IKPV
        pm.addAttr(limb, ln='bhvIKPVGroup', dt='string', h=hide)
        pm.addAttr(limb, ln='bhvLookAtGroup', dt='string', h=hide)

        # IK PV + CST 
        pm.addAttr(limb, ln='bhvParent', dt='string', h=hide) 
        pm.addAttr(limb, ln='bhvParentJoint', at='enum', en='None', h=hide)
        pm.addAttr(limb, ln='bhvIKPVCtrJoint', at='enum', en='None', h=hide)
        pm.addAttr(limb, ln='bhvCstType', at='enum', en=bhvCstTypes, h=hide)
        pm.addAttr(limb, ln='cstPosX', at='bool', dv=1, h=hide)
        pm.addAttr(limb, ln='cstPosY', at='bool', dv=1, h=hide)
        pm.addAttr(limb, ln='cstPosZ', at='bool', dv=1, h=hide)
        pm.addAttr(limb, ln='cstRotX', at='bool', dv=1, h=hide)
        pm.addAttr(limb, ln='cstRotY', at='bool', dv=1, h=hide)
        pm.addAttr(limb, ln='cstRotZ', at='bool', dv=1, h=hide)

        # IK PV + Look At
        pm.addAttr(limb, ln='bhvAxis', at='enum', en=axes, dv=4) # IKPV, LookAt
        pm.addAttr(limb, ln='bhvDistance', at='float', min=0, dv=1) # IKPV, LookAt
        
        self.grpMng.AddIKPVGroup(limb)
        self.grpMng.AddLookAtGroup(limb)

        self.UpdateLimbName(limb)
        pm.connectAttr(root.jointLimbs, limb.rigRoot)
        root.rebuildSkinInf.set(1)
        return limb

#============= REMOVE LIMB ============================

    def _RemoveLimb(self, limb): # Should be called after joints deleted
        self.logger.debug('\tLimbMng > Remove')
        if pm.listConnections(limb.mirrorLimb):
            self._BreakMirror(limb)
        del(self._limbs[limb.ID.get()])
        pm.select(d=1)
        pm.delete(limb)

    def RemoveEmptyLimb(self, limb):
        group = pm.listConnections(limb.bhvEmptyGroup)[0]
        self.grpMng.Remove(group)
        self._RemoveLimb(limb)

    def RemoveJointLimb(self, limb):
        root = pm.listConnections(limb.rigRoot)[0]
        root.rebuildSkinInf.set(1)
        for joint in pm.listConnections(limb.joints):
            self.jntMng.RemoveJoint(joint)
        for group in self.grpMng.GetLimbGroups(limb):
            self.grpMng.Remove(group)
        self._RemoveLimb(limb)

#============= MISC ============================

    def ReparentLimb(self, child, parent):
        self.logger.debug('\tLimbMng > ReparentLimb')
        pm.disconnectAttr(child.limbParent)
        if parent:
            pm.connectAttr(parent.limbChildren, child.limbParent)

    def RenameLimb(self, sourceLimb, newName): # list should repopulate after call
        self.logger.debug('\tLimbMng > Rename')
        names = [limb.pfrsName.get() for limb in self._limbs.values()]
        if (names.count(newName) >= 2): # Only 2 can have same name
            return False

        # PAIR WITH MIRROR
        if (names.count(newName) == 1):
            for mirrorLimb in list(self._limbs.values()):
                if (mirrorLimb.pfrsName.get() == newName):
                    break
            if (sourceLimb == mirrorLimb): # prevent pairing with self
                return
            pm.connectAttr(sourceLimb.mirrorLimb, mirrorLimb.mirrorLimb)
            mirrorLimb.side.set(1)
            sourceLimb.side.set(2)

        # BREAK MIRROR
        else:
            if pm.listConnections(sourceLimb.mirrorLimb):
                self._BreakMirror(sourceLimb)
        sourceLimb.pfrsName.set(newName)
        self.UpdateLimbName(sourceLimb)
        return True
    
    def _BreakMirror(self, sourceLimb):
        self.logger.debug('\tLimbMng > _BreakMirror')
        mirrorLimb = pm.listConnections(sourceLimb.mirrorLimb)[0]
        mirrorLimb.side.set(0)
        sourceLimb.side.set(0)
        pm.disconnectAttr(sourceLimb.mirrorLimb)
        self.UpdateLimbName(mirrorLimb)

    def FlipSides(self, limb1):
        self.logger.debug('\tLimbMng > FlipSides')
        limb2 = pm.listConnections(limb1.mirrorLimb)[0]
        side1 = limb1.side.get()
        side2 = limb2.side.get()
        limb1.side.set(side2)
        limb2.side.set(side1)


#============= PARENTS / TREE MANIPULATION ============================

    def GetDefaultLimbHier(self):
        self.logger.debug('\tBhvMng > GetDefaultLimbHier')
        limbParents = {} # childLimb : parentLimb
        for childJoint in self.jntMng.GetAllJoints():
            childLimb = pm.listConnections(childJoint.limb)
            if not childLimb or childLimb[0] in limbParents:
                continue
            parentJoint = pm.listRelatives(childJoint, p=1, type='joint')
            if not parentJoint or not parentJoint[0].hasAttr('limb'):
                continue
            parentLimb = pm.listConnections(parentJoint[0].limb)
            if not parentLimb:
                continue
            if childLimb[0] != parentLimb[0]:
                limbParents[childLimb[0]] = parentLimb[0]
        return limbParents

    def RebuildLimbDict(self):
        self.logger.debug('\tLimbMng > RebuildLimbDict')
        self._limbs = {}
        for limb in pm.listRelatives(self.limbGroup, c=1):
            limbID = limb.ID.get()
            if limbID in self._limbs:
                nextID = self.root.nextLimbID.get()
                maxID = max(list(self._limbs.keys())) + 1
                limbID = max(nextID, maxID)
                self.root.nextLimbID.set(limbID + 1)
                limb.ID.set(limbID)
            self._limbs[limbID] = limb

    def GetRootLimbs(self):
        self.logger.debug('\tLimbMng > GetRootLimbs')
        rootLimbs = []
        for limb in list(self._limbs.values()):
            if not pm.listConnections(limb.limbParent):
                rootLimbs.append(limb)
        return rootLimbs

    def GetLimbCreationOrder(self, rootLimb):
        '''Returns an ordered list of limb IDs FROM ROOT TO bottom most CHILD'''
        self.logger.debug('\tLimbMng > GetLimbCreationOrder')
        orderedLimbs = [rootLimb]
        parents = [rootLimb]
        while(parents):
            children = []
            for parent in parents:
                children += sorted(pm.listConnections(parent.limbChildren))
            parents = children[:]
            orderedLimbs += children[:]
        return orderedLimbs
    
    def UpdateLimbName(self, limb):
        self.logger.debug('\tLimbMng > UpdateLimbName')
        pfrsName = limb.pfrsName.get()
        limbName = self.nameMng.GetName(pfrsName,
                                    'Limb',
                                    # self.GetLimbSide(limb), 
                                    rigData.LIMB_SIDES[limb.side.get()],
                                    'NODE')
        limb.rename(limbName)
        for joint in pm.listConnections(limb.joints):
            self.jntMng.UpdateJointName(joint)
        for group in self.grpMng.GetLimbGroups(limb):
            self.grpMng.UpdateGroupName(group)

    def ParentLimbsBySkeleton(self):
        limbParents = self.GetDefaultLimbHier()
        for child, parent in limbParents.items():
            self.ReparentLimb(child, parent)
            self.jntMng.UpdateLimbParentJoint(child)

