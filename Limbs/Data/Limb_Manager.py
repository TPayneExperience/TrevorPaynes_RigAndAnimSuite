
import pymel.core as pm

class Limb_Manager():
    def __init__(self, nameMng):

        self.nameMng = nameMng

        self.limbTypes = [  'Empty',
                            'OneJoint',
                            'Chain', 
                            'Branch']
        self.limbSides = ['M', 'L', 'R', '-']
        
    def NewRig(self, rigRoot):
        self.rigRoot = rigRoot
        self._limbs = {} # limbID : limbNode
        pm.addAttr(rigRoot, ln='nextLimbID', at='short', dv=1)
        pm.addAttr(rigRoot, ln='limbs', dt='string')

    def SetRig(self, rigRoot):
        self.rigRoot = rigRoot
        self._limbs = {} # limbID : limbNode
        for limb in pm.listConnections(self.rigRoot.limbs):
            self._limbs[limb.ID.get()] = limb
        
#============= ACCESSORS + MUTATORS ============================

    def GetLimb(self, limbID):
        return self._limbs[limbID]
    
    def GetLimbSide(self, limbID): # Name Manager + button labels
        return self.limbSides[self._limbs[limbID].sideIndex.get()]

    def GetLimbMirror(self, limb):
        return pm.listConnections(limb.mirrorLimb)

    def SetLimbParent(self, childID, parentID = -1):
        limb = self.GetLimb(childID)
        if (parentID == -1):
            pm.disconnectAttr(limb.parentLimbID)
            limb.parentLimbID.set(-1)
        else:
            parent = self.GetLimb(parentID)
            pm.connectAttr(parent.ID, limb.parentLimbID)

#============= FUNCTIONS ============================

    def Add(self):
        limbID = self.rigRoot.nextLimbID.get()
        self.rigRoot.nextLimbID.set(limbID + 1)
        
        pfrsName = 'Limb_%03d' % limbID
        limbTypes = ':'.join(self.limbTypes)
        limbSides = ':'.join(self.limbSides)

        limb = pm.createNode('network', name='Limb')
        pm.addAttr(limb, ln='ID', at='long', dv=limbID)
        pm.addAttr(limb, ln='pfrsName', dt='string')
        pm.setAttr(limb+'.pfrsName', pfrsName)
        pm.addAttr(limb, ln='limbType', at='enum', enumName=limbTypes)
        pm.addAttr(limb, ln='sideIndex', at='enum', enumName=limbSides)
        pm.addAttr(limb, ln='mirrorLimb', at='long')
        pm.addAttr(limb, ln='parentLimbID', at='long', dv=-1)
        # pm.addAttr(limb, ln='parentJntIndex', at='enum', enumName='None')
        # pm.addAttr(limb, ln='parentCtrID', at='long')
        pm.addAttr(limb, ln='joints', dt='string')
        pm.addAttr(limb, ln='rigRoot', dt='string')
        pm.connectAttr(self.rigRoot.limbs, limb.rigRoot)

        self._limbs[limbID] = limb
        return limb

    def Remove(self, limb): # Should be called after joints deleted
        self._BreakMirror(limb)
        del(self._limbs[limb.ID.get()])
        pm.select(d=1)
        pm.delete(limb)

    def Rename(self, sourceLimbID, newName): # list should repopulate after call
        names = [limb.pfrsName.get() for limb in self._limbs.values()]
        if (names.count(newName) >= 2): # Only 2 can have same name
            return 

        # PAIR WITH MIRROR
        if (names.count(newName) == 1):
            sourceLimb = self.GetLimb(sourceLimbID)
            for mirrorLimb in list(self._limbs.values()):
                if (mirrorLimb.pfrsName.get() == newName):
                    break
            if (sourceLimb == mirrorLimb): # prevent pairing with self
                return
            pm.connectAttr(sourceLimb.mirrorLimb, mirrorLimb.mirrorLimb)
            mirrorLimb.sideIndex.set(1)
            sourceLimb.sideIndex.set(2)

        # BREAK MIRROR
        else:
            sourceLimb = self.GetLimb(sourceLimbID)
            self._BreakMirror(sourceLimb)
        sourceLimb.pfrsName.set(newName)
    
    def _BreakMirror(self, sourceLimb):
        mirrorLimbs = self.GetLimbMirror(sourceLimb)
        if mirrorLimbs:
            mirrorLimbs[0].sideIndex.set(0)
            sourceLimb.sideIndex.set(0)
            pm.disconnectAttr(sourceLimb.mirrorLimb)

    def Reparent(self, childID, parentID=-1):
        child = self.GetLimb(childID)
        if (parentID == -1):
            pm.disconnectAttr(child.parentLimbID)
            child.parentLimbID.set(-1)
        else:
            parent = self.GetLimb(parentID)
            pm.connectAttr(parent.ID, child.parentLimbID)

    def UpdateLimbType(self, limb):
        joints = pm.listConnections(limb.joints)
        if (len(joints) == 0):
            limb.limbType.set(0)
        elif (len(joints) == 1):
            limb.limbType.set(1)

    def FlipSides(self, limbID):
        limb1 = self.GetLimb(limbID)
        limb2 = pm.listConnections(limb1.mirrorLimb)
        if limb2:
            limb2 = limb2[0]
            side1 = limb1.sideIndex.get()
            side2 = limb2.sideIndex.get()
            limb1.sideIndex.set(side2)
            limb2.sideIndex.set(side1)

    # def DuplicateLimb(self, sourceLimbID):
    #     targetID = self.rigRoot.nextLimbID.get()
    #     self.rigRoot.nextLimbID.set(targetID + 1)
    #     source = self.GetLimb(sourceLimbID)
    #     target = pm.duplicate(source)[0]
    #     target.ID.set(targetID)
    #     sourceName = source.pfrsName.get()
    #     for i in range(2,9999):
    #         name = '%s_%d' % (sourceName, i)
    #         if self.IsNameUnique(name):
    #             break
    #     target.pfrsName.set(name)
    #     self._limbs[targetID] = target
    #     return target.ID.get()

    # def SetMirrorLimb(self, sourceID, targetID):
    #     source = self.GetLimb(sourceID)
    #     target = self.GetLimb(targetID)
    #     source.mirrorLimbID.set(targetID)
    #     target.mirrorLimbID.set(sourceID)
    #     target.pfrsName.set(source.pfrsName.get())
    #     source.sideIndex.set(1)
    #     target.sideIndex.set(2)
    #     return targetID


#============= PARENTS / TREE MANIPULATION ============================

    def GetRootLimbIDs(self):
        rootLimbIDs = []
        for limbID, limb in self._limbs.items():
            if (limb.getAttr('parentLimbID') == -1):
                rootLimbIDs.append(limbID)
        return rootLimbIDs

    def GetLimbCreationOrder(self, rootLimbID):
        '''Returns an ordered list of limb IDs FROM ROOT TO bottom most CHILD'''
        limbParents = {}
        for limbID, limb in self._limbs.items():
            limbParents[limbID] = limb.parentLimbID.get()
        limbIDs = [rootLimbID]
        complete = False
        while(limbParents and not complete):
            complete = True
            for childID, parentID in limbParents.items():
                if (parentID in limbIDs):
                    complete = False
                    limbIDs.append(childID)
                    del(limbParents[childID])
                    break
        return limbIDs
    
    def GetDefaultLimbHier(self, jntMng):
        # UNTESTED
        limbParents = {} # childLimb : parentLimb
        for childLimb in list(self._limbs.values()):
            joints = jntMng.GetLimbJoints(childLimb)
            if joints:
                childJoint = joints[0]
                parentJoint = pm.listRelatives(childJoint, parent=1)
                if parentJoint:
                    parentLimb = jntMng.GetLimb(parentJoint)
                    limbParents[childLimb] = parentLimb
        return limbParents
