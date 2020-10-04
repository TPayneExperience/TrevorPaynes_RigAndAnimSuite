
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
        # MISSING: for multiple rigs in scene, remap limb IDs, only for anim though
        self.rigRoot = rigRoot
        self._limbs = {} # limbID : limbNode
        for limb in pm.listConnections(self.rigRoot.limbs):
            self._limbs[limb.ID.get()] = limb
        
#============= ACCESSORS + MUTATORS ============================

    def GetLimb(self, limbID):
        return self._limbs[limbID]
    
    def GetLimbSide(self, limb): # Name Manager + button labels
        return self.limbSides[limb.sideIndex.get()]
    
    def GetLimbParent(self, limb):
        parent = pm.listConnections(limb.parentLimb)
        if parent:
            return parent[0]
        return None

    def GetLimbMirror(self, limb):
        return pm.listConnections(limb.mirrorLimb)

    def GetAllLimbs(self): # used for bhv limb selection comboboxes
        return list(self._limbs.values())

#============= FUNCTIONS ============================

    def Add(self):
        '''
        ID's are used for the TreeView UI items ONLY,
        most all data tracked through storage and connections.
        '''
        limbID = self.rigRoot.nextLimbID.get()
        self.rigRoot.nextLimbID.set(limbID + 1)
        
        pfrsName = 'Limb_%03d' % limbID
        limbTypes = ':'.join(self.limbTypes)
        limbSides = ':'.join(self.limbSides)

        limb = pm.createNode('network', name='Limb')
        pm.addAttr(limb, ln='ID', at='long', dv=limbID)
        pm.addAttr(limb, ln='pfrsName', dt='string')
        limb.pfrsName.set(pfrsName)
        pm.addAttr(limb, ln='limbType', at='enum', enumName=limbTypes)
        pm.addAttr(limb, ln='sideIndex', at='enum', enumName=limbSides)
        pm.addAttr(limb, ln='mirrorLimb', at='long')
        pm.addAttr(limb, ln='parentLimb', dt='string')
        pm.addAttr(limb, ln='parentGrp', at='enum', en='None')
        pm.addAttr(limb, ln='childrenLimbs', dt='string')
        pm.addAttr(limb, ln='defaultParentLimb', dt='string')
        pm.addAttr(limb, ln='defaultChildrenLimbs', dt='string')
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

    def Reparent(self, childID, parentID):
        child = self.GetLimb(childID)
        pm.disconnectAttr(child.parentLimb)
        if (parentID != -1):
            parent = self.GetLimb(parentID)
            pm.connectAttr(parent.childrenLimbs, child.parentLimb)

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


#============= PARENTS / TREE MANIPULATION ============================

    def RebuildLimbDict(self):
        self._limbs = {}
        for limb in pm.ls(type='network'):
            if pm.hasAttr(limb, 'pfrsName'):
                limbID = limb.ID.get()
                if limbID in self._limbs:
                    nextID = self.rigRoot.nextLimbID.get()
                    maxID = max(list(self._limbs.keys())) + 1
                    limbID = max(nextID, maxID)
                    self.rigRoot.nextLimbID.set(limbID + 1)
                    limb.ID.set(limbID)
                self._limbs[limbID] = limb

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

    def GetRootLimbs(self):
        rootLimbs = []
        for limb in list(self._limbs.values()):
            if not pm.listConnections(limb.parentLimb):
                rootLimbs.append(limb)
        return rootLimbs

    def GetLimbCreationOrder(self, rootLimb):
        '''Returns an ordered list of limb IDs FROM ROOT TO bottom most CHILD'''
        orderedLimbs = [rootLimb]
        parents = [rootLimb]
        while(parents):
            children = []
            for parent in parents:
                children += pm.listConnections(parent.childrenLimbs)
            parents = children[:]
            orderedLimbs += children[:]
        return orderedLimbs
    

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
