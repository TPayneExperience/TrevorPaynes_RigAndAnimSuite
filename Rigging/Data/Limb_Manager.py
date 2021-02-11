
import pymel.core as pm

class Limb_Manager:
    def __init__(self, parent):

        self.nameMng = parent.nameMng
        self.logger = parent.logger

        self.limbTypes = (  'Empty_Rigging',
        
                            'One_Joint',
                            'ThreePlus_JointChain', 
                            'Branch',
                            'Two_JointChain')
                            # 'Empty_Animation') # only Anim mode can add/remove
        self.limbSides = ('M', 'L', 'R', '-')
        self.hideAttrs = False

    def NewRig(self, rigRoot):
        self.logger.debug('\tLimbMng > NewRig')
        self.rigRoot = rigRoot
        self._limbs = {} # limbID : limbNode
        pm.addAttr(rigRoot, ln='nextLimbID', at='short', dv=1)
        pm.addAttr(rigRoot, ln='limbs', dt='string')
        self.limbGroup = pm.group(name='LIMBS', em=1, p=rigRoot)

    def SetRig(self, rigRoot):
        self.logger.debug('\tLimbMng > SetRig')
        # MISSING: for multiple rigs in scene, remap limb IDs, only for anim though
        self.rigRoot = rigRoot
        self._limbs = {} # limbID : limbNode
        for limb in pm.listConnections(self.rigRoot.limbs):
            self._limbs[limb.ID.get()] = limb
        
#============= ACCESSORS + MUTATORS ============================

    def GetLimb(self, limbID):
        self.logger.debug('\tLimbMng > GetLimb')
        return self._limbs[limbID]
    
    def GetLimbSide(self, limb): # Name Manager + button labels
        self.logger.debug('\tLimbMng > GetLimbSide')
        return self.limbSides[limb.side.get()]
    
    def GetLimbParent(self, limb):
        self.logger.debug('\tLimbMng > GetLimbParent')
        parent = pm.listConnections(limb.parentLimb)
        if parent:
            return parent[0]
        return None

    # def GetLimbMirror(self, limb):
    #     return pm.listConnections(limb.mirrorLimb)

    def GetLimbPrefix(self, limb):
        self.logger.debug('\tLimbMng > GetLimbPrefix')
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        return rigRoot.prefix.get()

    def GetAllLimbs(self): # used for bhv limb selection comboboxes
        self.logger.debug('\tLimbMng > GetAllLimbs')
        return list(self._limbs.values())

#============= FUNCTIONS ============================

    def Add(self):
        '''
        ID's are used for the TreeView UI items ONLY,
        most all data tracked through storage and connections.
        '''
        self.logger.debug('\tLimbMng > Add')
        limbID = self.rigRoot.nextLimbID.get()
        self.rigRoot.nextLimbID.set(limbID + 1)
        
        pfrsName = 'Limb%03d' % limbID
        limbTypes = ':'.join(self.limbTypes)
        limbSides = ':'.join(self.limbSides)
        # ctrTypes = ':'.join(self.ctrTypes)

        # limb = pm.createNode('network', name=pfrsName)
        limb = pm.group(name=pfrsName, em=1, p=self.limbGroup)
        for attr in ['tx', 'ty', 'tz', 'rx', 'ry', 'rz', 'sx', 'sy', 'sz', 'v']:
            pm.setAttr(limb + '.' + attr, l=1, k=0, cb=0)
        pm.addAttr(limb, ln='ID', at='long', dv=limbID, h=self.hideAttrs)
        pm.addAttr(limb, ln='pfrsName', dt='string', h=self.hideAttrs)
        limb.pfrsName.set(pfrsName)
        pm.addAttr(limb, ln='limbType', at='enum', enumName=limbTypes,
                                        h=self.hideAttrs)
        pm.addAttr(limb, ln='side', at='enum', enumName=limbSides,
                                        h=self.hideAttrs)
        pm.addAttr(limb, ln='mirrorLimb', at='long', h=self.hideAttrs)
        pm.addAttr(limb, ln='parentLimb', dt='string', h=self.hideAttrs)
        pm.addAttr(limb, ln='parentJoint', at='enum', en='None', 
                                        h=self.hideAttrs)
        pm.addAttr(limb, ln='childrenLimbs', dt='string', h=self.hideAttrs)
        pm.addAttr(limb, ln='defaultParentLimb', dt='string', 
                                        h=self.hideAttrs)
        pm.addAttr(limb, ln='defaultChildrenLimbs', dt='string', 
                                        h=self.hideAttrs)
        # pm.addAttr(limb, ln='parentJntIndex', at='enum', enumName='None')
        # pm.addAttr(limb, ln='parentCtrID', at='long')
        # pm.addAttr(limb, ln='infJoints', dt='string', h=self.hideAttrs)
        # pm.addAttr(limb, ln='nonInfJoint', dt='string', h=self.hideAttrs) # Only for 3+ chain
        # pm.addAttr(limb, ln='tempJoints', dt='string', h=self.hideAttrs) # limb setup
        pm.addAttr(limb, ln='joints', dt='string', h=self.hideAttrs)
        pm.addAttr(limb, ln='rigRoot', dt='string', h=self.hideAttrs)

        pm.addAttr(limb, ln='rebuildLimbType', at='bool', h=self.hideAttrs)
        pm.addAttr(limb, ln='rebuildBhvType', at='bool', h=self.hideAttrs)
        pm.addAttr(limb, ln='rebuildLimbGroup', at='bool', h=self.hideAttrs)
        pm.addAttr(limb, ln='rebuildBhvDep', at='bool', h=self.hideAttrs)
        pm.addAttr(limb, ln='rebuildAppDep', at='bool', h=self.hideAttrs)
        # pm.addAttr(limb, ln='rebuildSkinInf', at='bool', h=self.hideAttrs)
        # limb.rebuildLimbType.set(1)
        # limb.rebuildBhvType.set(1)
        # limb.rebuildLimbGroup.set(1)
        # limb.rebuildBhvDep.set(1)
        # limb.rebuildAppDep.set(1)
        # limb.rebuildSkinInf.set(1)

        pm.connectAttr(self.rigRoot.limbs, limb.rigRoot)
        self.UpdateLimbName(limb)
        self._limbs[limbID] = limb
        self.rigRoot.rebuildSkinInf.set(1)
        return limb

    def Remove(self, limb): # Should be called after joints deleted
        self.logger.debug('\tLimbMng > Remove')
        if pm.listConnections(limb.mirrorLimb):
            self._BreakMirror(limb)
        del(self._limbs[limb.ID.get()])
        pm.select(d=1)
        pm.delete(limb)
        self.rigRoot.rebuildSkinInf.set(1)

    def Reparent(self, child, parent):
        self.logger.debug('\tLimbMng > Reparent')
        msg = '\t\tReparenting "%s"' % child.pfrsName.get()
        msg += ' to "%s"' % parent.pfrsName.get()
        self.logger.debug(msg)
        pm.disconnectAttr(child.parentLimb)
        if parent:
            pm.connectAttr(parent.childrenLimbs, child.parentLimb)

    def Rename(self, sourceLimb, newName): # list should repopulate after call
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

    # def UpdateLimbType(self, limb):
    #     joints = pm.listConnections(limb.joints)
    #     if (len(joints) == 0):
    #         limb.limbType.set(0)
    #     elif (len(joints) == 1):
    #         limb.limbType.set(1)

    def FlipSides(self, limb1):
        self.logger.debug('\tLimbMng > FlipSides')
        limb2 = pm.listConnections(limb1.mirrorLimb)[0]
        side1 = limb1.side.get()
        side2 = limb2.side.get()
        limb1.side.set(side2)
        limb2.side.set(side1)


#============= PARENTS / TREE MANIPULATION ============================

    def RebuildLimbDict(self):
        self.logger.debug('\tLimbMng > RebuildLimbDict')
        self._limbs = {}
        for limb in pm.listRelatives(self.limbGroup, c=1):
            limbID = limb.ID.get()
            if limbID in self._limbs:
                nextID = self.rigRoot.nextLimbID.get()
                maxID = max(list(self._limbs.keys())) + 1
                limbID = max(nextID, maxID)
                self.rigRoot.nextLimbID.set(limbID + 1)
                limb.ID.set(limbID)
            self._limbs[limbID] = limb

    def GetRootLimbs(self):
        self.logger.debug('\tLimbMng > GetRootLimbs')
        rootLimbs = []
        for limb in list(self._limbs.values()):
            if not pm.listConnections(limb.parentLimb):
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
                children += sorted(pm.listConnections(parent.childrenLimbs))
            parents = children[:]
            orderedLimbs += children[:]
        return orderedLimbs
    
    def UpdateLimbName(self, limb):
        self.logger.debug('\tLimbMng > UpdateLimbName')
        pfrsName = limb.pfrsName.get()
        limbName = self.nameMng.GetName(pfrsName,
                                    'Limb',
                                    self.GetLimbSide(limb), 
                                    'NODE')
        limb.rename(limbName)

    # def DuplicateLimb(self, source):
    #     targetID = self.rigRoot.nextLimbID.get()
    #     self.rigRoot.nextLimbID.set(targetID + 1)
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

    # def SetMirrorLimb(self, source, target):
    #     source.mirrorLimbID.set(targetID)
    #     target.mirrorLimbID.set(sourceID)
    #     target.pfrsName.set(source.pfrsName.get())
    #     source.side.set(1)
    #     target.side.set(2)
    #     return targetID
