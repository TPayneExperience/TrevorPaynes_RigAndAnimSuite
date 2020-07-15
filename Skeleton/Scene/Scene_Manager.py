
from maya import cmds

import Scene_Limb_Chain as cl

reload(cl)

class Scene_Manager():
    def __init__(self, limbManager, jointManager, nameManager):
        self.limbMng = limbManager
        self.jntMng = jointManager
        self.nameMng = nameManager
        self.sceneJoints = {} # ID : sceneJoint 
        self.jointCtrs = {} # jointID : jointCtr
        self.limbCtrs = {} # limbID : limbCtr
        self.limbCsts = {} # limbID : jointConstraintList
        self.limbJoints = {} #limbID : jointIdList, track old joints for removal
        self.limbBuildTypes = { 'Chain': cl.Scene_Limb_Chain(self) }
        cmds.select(d=1)
        self.rootJointGrp = cmds.group(name='Joint_GRP',em=1)
        self.rootCtrGrp = cmds.group(name='Control_GRP', em=1)
        self.skelLayer = None
        
        
    def SetSkeletonUI(self, UI):
        self._skel_ui = UI

#======= SETUP / TEARDOWN OF EDITABLE / FINAL ========================

    def Setup_Editable(self):
        if not self.skelLayer: # DISPLAY LAYER
            self.skelLayer = cmds.createDisplayLayer(n='Skel Joints', e=1)
            cmds.setAttr(self.skelLayer + '.displayType', 2)
        
        limbIDs = self.limbMng.GetLimbIDs() # JOINTS
        for limbID in limbIDs:
            self.Setup_Joints(limbID)
        
        for limbID in limbIDs: # JOINT PARENTS
            limbType = self.limbMng.GetType(limbID)
            limbBuilder = self.limbBuildTypes[limbType]
            limbBuilder.Setup_Internal_JointParents(limbID, self.sceneJoints)
            limbBuilder.Setup_External_JointParents(limbID, 
                                                    self.sceneJoints, 
                                                    self.rootJointGrp)
        
        for limbID in limbIDs: # JOINT CONTROLS
            limbType = self.limbMng.GetType(limbID)
            limbBuilder = self.limbBuildTypes[limbType]
            limbBuilder.Setup_JointControls(limbID, 
                                            self.sceneJoints,
                                            self.jointCtrs)
        
        for limbID in limbIDs: # LIMB CONTROLS
            self.Setup_LimbControl(limbID)
        # MISSING: LISTENERS

    def Teardown_Editable(self):
        limbIDs = list(self.limbJoints.keys())
       
        for limbID in limbIDs:  # LIMB CONTROLS
            self.Teardown_LimbControl(limbID)
       
        for limbID in limbIDs:  # JOINT CONTROLS
            self.Teardown_JointControls(limbID)
       
        for limbID in limbIDs:  # JOINT PARENTS
            self.Teardown_JointParents(limbID)
       
        for limbID in limbIDs: # JOINTS
            self.Teardown_Joints(limbID)
        # MISSING: LISTENERS

    def Setup_Final(self):
        for limbID in self.limbMng.GetLimbIDs():
            self.Add_Final_Limb(limbID)

    def Teardown_Final(self):
        for limbID in self.limbMng.GetLimbIDs():
            self.Remove_Final_Limb(limbID)

#======= LIMB ===================================

    def Add_Editable_Limb(self, limbID):
        self.Setup_Joints(limbID)
        limbType = self.limbMng.GetType(limbID)
        limbBuilder = self.limbBuildTypes[limbType]
        limbBuilder.Setup_Internal_JointParents(limbID, self.sceneJoints)
        limbBuilder.Setup_External_JointParents(limbID, 
                                                self.sceneJoints, 
                                                self.rootJointGrp)
        limbBuilder.Setup_JointControls(limbID, 
                                        self.sceneJoints,
                                        self.jointCtrs)
        self.Setup_LimbControl(limbID)

    def Remove_Editable_Limb(self, limbID):
        if limbID in self.limbJoints:
            self.Teardown_LimbControl(limbID)
            self.Teardown_JointControls(limbID)
            self.Teardown_JointParents(limbID)
            self.Teardown_Joints(limbID)

    def Rebuild_Editable_Limb(self, limbID):
        self.Remove_Editable_Limb(limbID)
        self.Add_Editable_Limb(limbID)
        for childID, parentID in self.limbMng.GetLimbParentDict().items():
            if parentID == limbID:
                self.Reparent_Editable_Limb(childID)

    def Reparent_Editable_Limb(self, limbID):
        limbType = self.limbMng.GetType(limbID)
        limbBuilder = self.limbBuildTypes[limbType]
        limbBuilder.Setup_External_JointParents(limbID, 
                                                self.sceneJoints, 
                                                self.rootJointGrp)

    def Add_Final_Limb(self, limbID):
        self.Setup_Joints(limbID)
        limbType = self.limbMng.GetType(limbID)
        limbBuilder = self.limbBuildTypes[limbType]
        limbBuilder.Setup_Internal_JointParents(limbID, self.sceneJoints)
        limbBuilder.Setup_External_JointParents(limbID, 
                                                self.sceneJoints, 
                                                self.rootJointGrp)
        # BEHAVIORS SETS UP REAL CONTROLS

    def Remove_Final_Limb(self, limbID):
        self.Teardown_JointParents(limbID)
        self.Teardown_Joints(limbID)


#======= SETUP JOINTS, LIMBS, CTRS ===================================

    def Setup_Joints(self, limbID):
        jointIDs = self.jntMng.GetLimbJointIDs(limbID)
        tempSceneJoints = []
        for ID in jointIDs:
            cmds.select(d=1)
            jointData = self.jntMng.GetJoint(ID)
            name = self.GetJointName(limbID, ID)
            jnt = cmds.joint(   name=name, 
                                position=jointData.position, 
                                orientation=jointData.rotation, 
                                rotationOrder=jointData.rotationOrder)
            self.sceneJoints[ID] = jnt
            tempSceneJoints.append(jnt)
        self.limbJoints[limbID] = jointIDs[:]
        cmds.editDisplayLayerMembers(self.skelLayer, tempSceneJoints)
    
    def Teardown_Joints(self, limbID):
        jointIDs = self.limbJoints[limbID]
        joints = [self.sceneJoints[ID] for ID in jointIDs]
        cmds.select(d=1)
        if joints:
            cmds.delete(joints)
        for ID in jointIDs:
            del(self.sceneJoints[ID])
        del(self.limbJoints[limbID])

    def Setup_LimbControl(self, limbID):
        jointIDs = self.limbJoints[limbID]
        if (jointIDs): # IF NOT EMPTY LIMB
            name = self.GetLimbCtrName(limbID)
            ctr = cmds.circle(name=name, r=5)[0]
            jointData = self.jntMng.GetJoint(jointIDs[0])
            cmds.xform(ctr, t=jointData.position, ro=[90,0,0])
            for ID in jointIDs:
                cmds.parent(self.jointCtrs[ID], ctr)
            cmds.parent(ctr, self.rootCtrGrp)
            self.limbCtrs[limbID] = ctr
        else:
            self.limbCtrs[limbID] = None

    def Teardown_LimbControl(self, limbID):
        jointIDs = self.limbJoints[limbID]
        for ID in jointIDs:
            cmds.parent(self.jointCtrs[ID], self.rootCtrGrp)
        cmds.select(d=1)
        if self.limbCtrs[limbID]:
            cmds.delete(self.limbCtrs[limbID])
        del(self.limbCtrs[limbID])

    def Teardown_JointParents(self, limbID):
        jointIDs = self.limbJoints[limbID]
        for ID in jointIDs:
            joint = self.sceneJoints[ID]
            if cmds.listRelatives(joint, p=1, type='joint'):
                cmds.parent(joint, w=1)
        for ID in jointIDs:
            joint = self.sceneJoints[ID]
            children = cmds.listRelatives(joint, c=1, type='joint')
            if children:
                for child in children:
                    cmds.parent(child, w=1)

    def Teardown_JointControls(self, limbID):
        jointIDs = self.limbJoints[limbID]
        ctrs = [self.jointCtrs[ID] for ID in jointIDs]
        cmds.select(d=1)
        if ctrs:
            cmds.delete(ctrs)
        for ID in jointIDs:
            del(self.jointCtrs[ID])


#======= SELECTION + SAVING ===================================

    def SelectJointControls(self, jointIDs):
        ctrs = [self.jointCtrs[ID] for ID in jointIDs]
        cmds.select(ctrs)
    
    def SelectLimbControl(self, limbID):
        cmds.select(self.limbCtrs[limbID])
    # def SelectionChanged(self):
    #     sel = cmds.ls(sl=1)
    
    # def SaveControlPlacement(self):
    #     pass
    
    # def SaveJoint(self, jointID):
    #     pass

#======= MISC  ===================================

    def MoveToVertsCenter(self):
        sel = cmds.ls(sl=1)
        ctr = sel[0]
        bb = cmds.exactWorldBoundingBox(sel[1:])
        pos = ((bb[0] + bb[3]) / 2, (bb[1] + bb[4]) / 2, (bb[2] + bb[5]) / 2)
        cmds.xform(ctr, t=pos, ws=1)

#======= NAMING  ===================================

    def GetJointName(self, limbID, jointID):
        jointData = self.jntMng.GetJoint(jointID)
        name = self.nameMng.GetName('TEMP',
                                    self.limbMng.GetName(limbID),
                                    jointData.name,
                                    self.limbMng.GetSide(limbID),
                                    'JNT')
        return name

    def GetJointCtrName(self, limbID, jointID):
        jointData = self.jntMng.GetJoint(jointID)
        name = self.nameMng.GetName('TEMP',
                                    self.limbMng.GetName(limbID),
                                    jointData.name,
                                    self.limbMng.GetSide(limbID),
                                    'JCTR')
        return name
    
    def GetLimbCtrName(self, limbID):
        name = self.nameMng.GetName('TEMP',
                                    self.limbMng.GetName(limbID),
                                    'ROOT',
                                    self.limbMng.GetSide(limbID),
                                    'LCTR')
        return name

    def RenameLimb(self, limbID):
        oldLimbCtrName = self.limbCtrs[limbID]
        newLimbCtrName = self.GetLimbCtrName(limbID)
        cmds.rename(oldLimbCtrName, newLimbCtrName)
        self.limbCtrs[limbID] = newLimbCtrName

        for jointID in self.jntMng.GetLimbJointIDs(limbID):
            self.RenameJoint(limbID, jointID)

    def RenameJoint(self, limbID, jointID):
        oldJntName = self.sceneJoints[jointID]
        newJntName = self.GetJointName(limbID, jointID)
        cmds.rename(oldJntName, newJntName)
        self.sceneJoints[jointID] = newJntName

        oldCtrName = self.jointCtrs[jointID]
        newCtrName = self.GetJointCtrName(limbID, jointID)
        cmds.rename(oldCtrName, newCtrName)
        self.jointCtrs[jointID] = newCtrName


