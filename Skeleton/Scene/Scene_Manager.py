
from maya import cmds

import Scene_Limb_Chain as chainLimb

reload(chainLimb)

class Scene_Manager():
    def __init__(self, limbManager, jointManager, nameManager):
        self.limbMng = limbManager
        self.jntMng = jointManager
        self.nameMng = nameManager
        self.sceneJoints = {} # ID : sceneJoint 
        self.jointCtrs = {} # jointID : jointCtr
        self.limbCtrs = {} # limbID : limbCtr
        self.limbCsts = {} # limb : jointConstraintList
        self.limbBuildTypes = {
            'Chain': chainLimb.Scene_Limb_Chain(limbManager,
                                                jointManager,
                                                nameManager)}
        cmds.select(d=1)
        self.rootJointGrp = cmds.group(em=1)
        self.rootCtrGrp = cmds.group(em=1)
        
    def SetSkeletonUI(self, UI):
        self._skel_ui = UI

    def Setup_Editable(self):
        for limbID in self.limbMng.GetLimbIDs():
            self.Add_Editable_Limb(limbID)
        # MISSING: LISTENERS

    def Teardown_Editable(self):
        for limbID in self.limbMng.GetLimbIDs():
            self.Remove_Editable_Limb(limbID)
        # MISSING: LISTENERS

    def Setup_Final(self):
        pass

    def Teardown_Final(self):
        pass

#======= LIMB ===================================

    def Add_Editable_Limb(self, limbID):
        self.Setup_Joints(limbID)
        limbType = self.limbMng.GetType(limbID)
        limbBuilder = self.limbBuildTypes[limbType]
        limbBuilder.Setup_JointParents(limbID, self.sceneJoints)
        limbBuilder.Setup_JointControls(limbID, 
                                        self.sceneJoints,
                                        self.jointCtrs,
                                        self.limbCsts)
        self.Setup_LimbControl(limbID)

    def Remove_Editable_Limb(self, limbID):
        self.Teardown_LimbControl(limbID)
        self.Teardown_JointControls(limbID)
        self.Teardown_JointParents(limbID)
        self.Teardown_Joints(limbID)

    def Rebuild_Editable_Limb(self, limbID):
        self.Remove_Editable_Limb(limbID)
        self.Add_Editable_Limb(limbID)

    def Add_Final_Limb(self, limbID):
        self.Setup_Joints(limbID)
        limbType = self.limbMng.GetType(limbID)
        limbBuilder = self.limbBuildTypes[limbType]
        limbBuilder.Setup_JointParents(limbID, self.sceneJoints)
        # BEHAVIORS SETS UP REAL CONTROLS

    def Remove_Final_Limb(self, limbID):
        self.Teardown_JointParents(limbID)
        self.Teardown_Joints(limbID)


#======= SETUP JOINTS, LIMBS, CTRS ===================================

    def Setup_Joints(self, limbID):
        limbName = self.limbMng.GetName(limbID)
        limbSide = self.limbMng.GetSide(limbID)
        jointIDs = self.jntMng.GetLimbJointIDs(limbID)
        for ID in jointIDs:
            cmds.select(d=1)
            jointData = self.jntMng.GetJoint(ID)
            name = self.nameMng.GetName(limbName,
                                        jointData.name,
                                        limbSide,
                                        'JNT')
            jnt = cmds.joint(   self.rootJointGrp,
                                name=name, 
                                position=jointData.position, 
                                orientation=jointData.rotation, 
                                rotationOrder=jointData.rotationOrder)
            self.sceneJoints[ID] = jnt
    
    def Teardown_Joints(self, limbID):
        jointIDs = self.jntMng.GetLimbJointIDs(limbID)
        joints = [self.sceneJoints[ID] for ID in jointIDs]
        cmds.select(d=1)
        cmds.delete(joints)
        for ID in jointIDs:
            del(self.sceneJoints[ID])

    
    def Setup_LimbControl(self, limbID):
        jointIDs = self.jntMng.GetLimbJointIDs(limbID)
        if (jointIDs): # IF NOT EMPTY LIMB
            limbName = self.limbMng.GetName(limbID)
            limbSide = self.limbMng.GetSide(limbID)
            name = self.nameMng.GetName(limbName,
                                        'ROOT',
                                        limbSide,
                                        'LCTR')
            ctr = cmds.circle(name=name, r=5)[0]
            jointData = self.jntMng.GetJoint(jointIDs[0])
            cmds.xform(ctr, t=jointData.position, ro=jointData.rotation)
            for ID in jointIDs:
                cmds.parent(self.jointCtrs[ID], ctr)
            cmds.parent(ctr, self.rootCtrGrp)
            self.limbCtrs[limbID] = ctr

    def Teardown_LimbControl(self, limbID):
        cmds.select(d=1)
        cmds.delete(self.limbCtrs[limbID])
        del(self.limbCtrs[limbID])

    def Teardown_JointParents(self, limbID):
        jointIDs = self.jntMng.GetLimbJointIDs(limbID)
        for ID in jointIDs:
            cmds.parent(sceneJoints[ID], self.rootJointGrp)

    def Teardown_JointControls(self, limbID):
        jointIDs = self.jntMng.GetLimbJointIDs(limbID)
        ctrs = [self.jointCtrs[ID] for ID in jointIDs]
        cmds.select(d=1)
        cmds.delete(ctrs)
        for ID in jointIDs:
            del(self.jointCtrs[ID])


#======= SELECTION + SAVING ===================================

    # def SelectionChanged(self):
    #     sel = cmds.ls(sl=1)
    
    # def SaveControlPlacement(self):
    #     pass
    
    # def SaveJoint(self, jointID):
    #     pass
