
import pymel.core as pm

class Limb_Manager():
    def __init__(self, nameMng):

        self.nameMng = nameMng

        self.bhvTypes = [   'FK Chain',

                            'FK Branch',
                            'FK IK Chain',
                            'FK IK Branch',
                            'IK',
                            'LookAt',

                            'Constraint']

        self.limbTypes = [  'Chain', 

                            'Branch', 
                            'Linear Chain', 
                            'Linear Branch']

        self.limbSides = ['M', 'L', 'R', 'None']
        

    def NewRig(self, rigRoot):
        self.rigRoot = rigRoot

        self._nextLimbID = 1
        self._limbs = {} # limbID : limbNode
        pm.addAttr(rigRoot, ln='limbs', dt='string')

        # TESTING:
        self.Add()
        self.Add()
        self.Add()
        
#============= ACCESSORS + MUTATORS ============================

    def GetLimb(self, limbID):
        return self._limbs[limbID]
    
    def GetLimbSide(self, limbID): # Name Manager Only
        return self.limbSides[self._limbs[limbID]]

    def Add(self):
        # MISSING: CONNECT TO ROOT RIG NODE
        limbID = self._nextLimbID
        self._nextLimbID += 1
        
        pfrsName = 'Limb_%03d' % limbID
        limbTypes = ':'.join(self.limbTypes)
        bhvTypes = ':'.join(self.bhvTypes)
        limbSides = ':'.join(self.limbSides)

        limb = pm.createNode('network', name='Limb')
        pm.addAttr(limb, ln='ID', at='long', dv=limbID)
        pm.addAttr(limb, ln='pfrsName', dt='string')
        pm.setAttr(limb+'.pfrsName', pfrsName)
        pm.addAttr(limb, ln='typeIndex', at='enum', enumName=limbTypes, dv=1)
        pm.addAttr(limb, ln='sideIndex', at='enum', enumName=limbSides, dv=1)
        pm.addAttr(limb, ln='parentLimbID', at='long', dv=-1)
        pm.addAttr(limb, ln='parentJntIndex', at='enum', enumName='Empty')
        pm.addAttr(limb, ln='parentCtrID', at='long')
        pm.addAttr(limb, ln='bhvIndex', at='enum', enumName=bhvTypes)
        pm.addAttr(limb, ln='rigRoot', dt='string')
        pm.connectAttr(self.rigRoot.limbs, limb.rigRoot)

        self._limbs[limbID] = limb
        return limb

    def Remove(self, limbID): # Should be called after joints deleted
        pm.select(d=1)
        pm.delete(self._limbs[limbID])
        del(self._limbs[limbID])

#============= PARENTS / TREE MANIPULATION ============================

    def GetRootLimbIDs(self):
        rootLimbIDs = []
        for limbID, limb in self._limbs.items():
            if (limb.getAttr('parentLimbID') == -1):
                rootLimbIDs.append(limbID)
        return rootLimbIDs

    def GetLimbCreationOrder(self, rootLimbID):
        '''Returns an ordered list of limb IDs from root to bottom most child'''
        limbParents = {}
        for limbID, limb in self._limbs.items():
            limbParents[limbID] = limb.getAttr('parentLimbID')
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

#============= DEPRICATED ============================

    # def NewRig(self, limbSetupGrp):

    #     self._nextLimbID = 1
    #     self._limbs = {} # limbID : limbNode
        # cmds.select(d=1)
        # name = '%s_Limbs_Grp' % self.nameMng.GetPrefix()
        # self._limbGrp = cmds.group(name=name, em=1)
        # cmds.parent(self._limbGrp, limbSetupGrp)

        # self._limbName = {} # ID : Name
        # self._limbParent = {} # limbID : parentID 
        # self._limbType = {} # ID : string,  ['Chain', 'Branch', 'Linear_Chain']
        # self._limbSide = {} # ID : side, ['M', 'L', 'R']
        # self._limbMirror = {} # limbID_01 : limbID_02 (was mirrorLimbID)
        # self._limbMirrorRoots = []

    # NAMES
    # def GetSceneName(self, limbID):
    #     return self._limbs[limbID]

    # def GetPFRSName(self, limbID):
    #     return cmds.getAttr(self._limbs[limbID] + '.pfrsName')
    
    # def SetPFRSName(self, limbID, newPFRSName):
    #     oldSceneName = self._limbs[limbID]
    #     side = self.GetSide(limbID)
    #     cmds.setAttr(oldSceneName + '.pfrsName', newPFRSName, type='string')
    #     newSceneName = self._GenerateSceneName(newPFRSName, side)
    #     cmds.rename(oldSceneName, newSceneName)
    #     self._limbs[limbID] = newSceneName

    # # TYPE: chain, branch...
    # def GetTypeIndex(self, limbID):
    #     return cmds.getAttr(self._limbs[limbID] + '.type')

    # def SetTypeIndex(self, limbID, typeIndex):
    #     return cmds.setAttr(self._limbs[limbID] + '.type', typeIndex)

    # # SIDES
    # def GetSideIndex(self, limbID):
    #     return cmds.getAttr(self._limbs[limbID] + '.side')
    
    # def SetSideIndex(self, limbID, sideIndex):
    #     cmds.setAttr(self._limbs[limbID] + '.side', sideIndex)
    
    # def GetSide(self, limbID):
    #     return self.limbSides[cmds.getAttr(self._limbs[limbID] + '.side')]

    # # PARENT LIMB ID
    # def GetParentLimbID(self, limbID):
    #     return cmds.getAttr(self._limbs[limbID] + '.parentLimbID')
    
    # def SetParentLimbID(self, limbID, parentLimbID):
    #     cmds.setAttr(self._limbs[limbID] + '.parentLimbID', parentLimbID)

    # # PARENT JOINT ID
    # def GetParentJointID(self, limbID):
    #     return cmds.getAttr(self._limbs[limbID] + '.parentJointID')
    
    # def SetParentJointID(self, limbID, parentJointID):
    #     cmds.setAttr(self._limbs[limbID] + '.parentJointID', parentJointID)

    # # FUTURE STUFFSS--------------------
    # # PARENT BHV GRP ID
    # def GetParentBhvGrpID(self, limbID):
    #     return cmds.getAttr(self._limbs[limbID] + '.parentBhvGrpID')
    
    # def SetParentBhvGrpID(self, limbID, parentBhvGrpID):
    #     cmds.setAttr(self._limbs[limbID] + '.parentBhvGrpID', parentBhvGrpID)

    # # BEHAVIOR
    # def GetBhvIndex(self, limbID):
    #     return cmds.getAttr(self._limbs[limbID] + '.behavior')

    # def SetBhvIndex(self, limbID, bhvIndex):
    #     return cmds.setAttr(self._limbs[limbID] + '.behavior', bhvIndex)


# #============= FUNCTIONALITY ============================

    # def _GenerateSceneName(self, pfrsName, side):
    #     return '%s_%s_%s_Limb' % (self.nameMng.GetPrefix(), pfrsName, side)
    
    # def Add(self):
    #     limbID = self._nextLimbID
    #     self._nextLimbID += 1
    #     pfrsName = 'Limb_%03d' % limbID
    #     sceneName = self._GenerateSceneName(pfrsName, self.limbSides[0])
    #     limbTypes = ':'.join(self.limbTypes)
    #     limbBhvs = ':'.join(self._limbBhvs)
    #     limbSides = ':'.join(self.limbSides)
        
    #     cmds.select(d=1)
    #     self._limbs[limbID] = sceneName
    #     cmds.group(name=sceneName, em=1)
    #     cmds.addAttr(sceneName, ln='limbID', at='short', dv=limbID)
    #     cmds.addAttr(sceneName, ln='pfrsName', dt='string')
    #     cmds.setAttr(sceneName +'.pfrsName', pfrsName, type='string')
    #     cmds.addAttr(sceneName, ln='type', at='enum', en=limbTypes)
    #     cmds.addAttr(sceneName, ln='behavior', at='enum', en=limbBhvs)
    #     cmds.addAttr(sceneName, ln='side', at='enum', en=limbSides)
    #     cmds.addAttr(sceneName, ln='parentLimbID', at='short', dv=-1)
    #     cmds.addAttr(sceneName, ln='parentJointID', at='short', dv=-1)
    #     cmds.addAttr(sceneName, ln='parentBhvGrpID', at='short', dv=-1)
    #     # cmds.addAttr(sceneName, ln='mirrorID', at='short', dv=-1)
    #     cmds.parent(sceneName, self._limbGrp)

    #     return limbID

    # def Remove(self, limbID): # Should be called after joints deleted
    #     sceneName = self._limbs[limbID]
    #     cmds.select(d=1)
    #     cmds.delete(sceneName)
    #     del(self._limbs[limbID])
    
    # Missing mirror + Duplicate

#============= ACCESSORS + MUTATORS ============================

    # def GetLimbIDs(self):
    #     return list(self._limbName.keys())

    # # NAMES
    # def GetName(self, ID):
    #     return self._limbName[ID]

    # def SetLimbName(self, limbID, newName):
    #     self._limbName[limbID] = newName
    #     mirrorID = self._limbMirror[limbID]
    #     if (mirrorID != -1):
    #         self._limbName[mirrorID] = newName
    
    # # MIRROR
    # def GetMirror(self, ID):
    #     return self._limbMirror[ID]
    
    # def SetLimbMirrorRoot(self, ID):
    #     mirrorID = self.GetMirror(ID)
    #     self._limbMirrorRoots.append(ID)
    #     self._limbMirrorRoots.append(mirrorID)
    
    # def GetLimbMirrorRoots(self):
    #     return self._limbMirrorRoots

    # # TYPES
    # def GetType(self, ID):
    #     return self._limbType[ID]
    
    # def SetType(self, ID, limbType):
    #     self._limbType[ID] = limbType
    #     mirrorID = self._limbMirror[ID]
    #     if (mirrorID != -1):
    #         self._limbType[mirrorID] = limbType

    # def GetTypes(self):
    #     return self.limbTypes
    
    # # SIDES
    # def GetSide(self, ID):
    #     return self._limbSide[ID]
    
    # def SetSide(self, limbID, side):
    #     self._limbSide[limbID] = side

    # def GetSides(self):
    #     return self.limbSidesOptions
    
#============= PARENTS / TREE MANIPULATION ============================

    # def GetParentID(self, limbID):
    #     return self._limbParent[limbID]
    
    # def GetAllParents(self, limbID):
    #     parents = []
    #     parentID = self.GetParentID(limbID)
    #     while(parentID != -1):
    #         parents.append(parentID)
    #         parentID = self.GetParentID(parentID)
    #     return parents

    # def GetRootLimbs(self):
    #     rootLimbIDs = []
    #     for childID, parentID in self.GetLimbParentDict().items():
    #         if (parentID == -1):
    #             rootLimbIDs.append(childID)
    #     return rootLimbIDs

    # def GetImmediateChildren(self, limbID):
    #     childIDs = []
    #     for childID, parentID in self.GetLimbParentDict().items():
    #         if (parentID == limbID):
    #             childIDs.append(childID)
    #     return childIDs

    # def GetLimbParentDict(self):
    #     return dict(self._limbParent)
    
    # def GetLimbCreationOrder(self, rootLimbID):
    #     '''Returns a list of children from bottommost to root'''
    #     limbParents = self.GetLimbParentDict()
    #     limbIDs = [rootLimbID]
    #     complete = False
    #     while(limbParents and not complete):
    #         complete = True
    #         for childID, parentID in limbParents.items():
    #             if (parentID in limbIDs):
    #                 complete = False
    #                 limbIDs.append(childID)
    #                 del(limbParents[childID])
    #                 break
    #     return limbIDs
    
    # def GetAllLimbsCreationOrder(self):
    #     limbIDs = []
    #     for childID, parentID in self._limbParent.items():
    #         if (parentID == -1):
    #             limbIDs += self.GetLimbCreationOrder(childID)
    #     return limbIDs

    # def SetParent(self, childID, parentID):
    #     if(self._IsValidParent(childID, parentID)):
    #         self._limbParent[childID] = parentID

    # def _IsValidParent(self, childID, parentID):
    #     while(parentID != -1):
    #         if (childID == parentID):
    #             return False
    #         parentID = self._limbParent[parentID]
    #     return True

#============= ADD + REMOVE LIMBS ============================

    # def Add(self):
    #     ID = self._nextLimbID
        
    #     self._limbName[ID] = 'Limb_%03d' % (ID)
    #     self._limbType[ID] = self.limbTypes[0]
    #     self._limbSide[ID] = self.limbSidesOptions[0]
    #     self._limbParent[ID] = -1
    #     self._limbMirror[ID] = -1

    #     self._nextLimbID += 1
    #     return ID

    # def _Remove(self, ID):
    #     mirrorID = self.GetMirror(ID)
    #     if mirrorID != -1:
    #         self._limbSide[mirrorID] = self.limbSidesOptions[0]
    #         self._limbMirror[mirrorID] = -1
    #         if mirrorID in self.GetLimbMirrorRoots():
    #             self._limbMirrorRoots.remove(ID)
    #             self._limbMirrorRoots.remove(mirrorID)
    #     del(self._limbName[ID])
    #     del(self._limbType[ID])
    #     del(self._limbSide[ID])
    #     del(self._limbParent[ID])
    #     del(self._limbMirror[ID])

    # def Remove(self, ID): # Remove Children first, then parent
    #     childIDs = []
    #     for child, parent in self._limbParent.items():
    #         if parent == ID:
    #             childIDs.append(child)
    #     for childID in childIDs:
    #         self.Remove(childID)
    #     self._Remove(ID)

    # def Mirror(self, ID_01):
    #     ID_02 = self.Duplicate(ID_01)
    #     self._limbSide[ID_01] = self.limbSidesOptions[1]
    #     self._limbSide[ID_02] = self.limbSidesOptions[2]
    #     self._limbMirror[ID_01] = ID_02
    #     self._limbMirror[ID_02] = ID_01
    #     self._limbName[ID_02] = self._limbName[ID_01] 
    #     return ID_02

    # def Duplicate(self, ID_01):
    #     ID_02 = self.Add()
    #     self._limbType[ID_02] = self._limbType[ID_01]
    #     self._limbName[ID_02] = self._limbName[ID_01] + '_2'
    #     self.SetParent(ID_02, self._limbParent[ID_01])
    #     return ID_02

