
from maya import cmds

import Scene_Limb_Manager as slm

reload(slm)

class Scene_Manager():
    def __init__(self, limbManager, jointManager, nameManager):
        self.limbMng = limbManager
        self.jntMng = jointManager
        self.nameMng = nameManager
        self.limbsWithJoints = [] # limbID : bool for has Joints
        
        self.sceneLimbMng = slm.Scene_Limb_Manager(limbManager, jointManager, nameManager)

        self.lastDisplaySize = 1

        cmds.select(d=1)
        self.rootJntGrp = cmds.group(name='Joint_GRP',em=1)
        self.rootCtrGrp = cmds.group(name='Control_GRP', em=1)
        self.skelLayer = cmds.createDisplayLayer(n='Skel Joints', e=1)
        cmds.setAttr(self.skelLayer + '.displayType', 2)
        

#======= SETUP / TEARDOWN OF EDITABLE / FINAL ========================

    def Setup_Editable(self):
        limbIDs = self.limbMng.GetLimbIDs()
        for limbID in limbIDs: # JOINTS
            self.Setup_Joints(limbID)

        for limbID in self.limbsWithJoints: # JOINT INTERNAL PARENTS
            self.Setup_Internal_JointParents(limbID)

        for limbID in self.limbsWithJoints: # JOINT EXTERNAL PARENTS
            self.Setup_External_JointParents(limbID)
        
        for limbID in self.limbsWithJoints: # JOINT CONTROLS
            self.Setup_JointControls(limbID)
        
        for limbID in self.limbsWithJoints: # LIMB CONTROLS
            self.Setup_LimbControl(limbID)
        
        # MISSING: LISTENERS

    def Teardown_Editable(self):
        limbIDs = list(self.sceneLimbMng.limbJoints.keys())
       
        for limbID in self.limbsWithJoints:  # LIMB CONTROLS
            self.Teardown_LimbControl(limbID)
       
        for limbID in self.limbsWithJoints: # JOINT CONTROLS
            self.Teardown_JointControls(limbID)

        for limbID in self.limbsWithJoints: # JOINT EXTERNAL PARENTS
            self.Teardown_External_JointParents(limbID)
        
        for limbID in self.limbsWithJoints: # JOINT INTERNAL PARENTS
            self.Teardown_Internal_JointParents(limbID)
        
        for limbID in self.limbsWithJoints[:]: # JOINTS
            self.Teardown_Joints(limbID)
        # MISSING: LISTENERS

    def Setup_Final(self):
        limbIDs = self.limbMng.GetLimbIDs()
        for limbID in limbIDs: # JOINTS
            self.Setup_Joints(limbID)

        for limbID in self.limbsWithJoints: # JOINT INTERNAL PARENTS
            self.Setup_Internal_JointParents(limbID)

        for limbID in self.limbsWithJoints: # JOINT EXTERNAL PARENTS
            self.Setup_External_JointParents(limbID)
        
    def Teardown_Final(self):
        limbIDs = self.limbMng.GetLimbIDs()
        for limbID in self.limbsWithJoints: # JOINT EXTERNAL PARENTS
            self.Teardown_External_JointParents(limbID)
        
        for limbID in self.limbsWithJoints: # JOINT INTERNAL PARENTS
            self.Teardown_Internal_JointParents(limbID)
        
        for limbID in self.limbsWithJoints[:]: # JOINTS
            self.Teardown_Joints(limbID)


#======= SETUP + TEARDOWN WRAPPERS ===================================
    
    # JOINTS
    def Setup_Joints(self, limbID):
        hasJoints = self.jntMng.DoesLimbHaveJoints(limbID)
        if hasJoints:
            self.limbsWithJoints.append(limbID)
            jnts = self.sceneLimbMng.Setup_Joints(limbID, self.rootJntGrp)
            cmds.editDisplayLayerMembers(self.skelLayer, jnts)
        return hasJoints

    def Teardown_Joints(self, limbID):
        if limbID in self.limbsWithJoints:
            self.sceneLimbMng.Teardown_Joints(limbID)
            self.limbsWithJoints.remove(limbID)

    # JOINT INTERNAL PARENTS
    def Setup_Internal_JointParents(self, limbID):
        self.sceneLimbMng.Setup_Internal_JointParents(limbID)

    def Teardown_Internal_JointParents(self, limbID):
        self.sceneLimbMng.Teardown_Internal_JointParents(limbID, self.rootJntGrp)

    # JOINT EXTERNAL PARENTS
    def Setup_External_JointParents(self, limbID):
        parentID = self.limbMng.GetParentID(limbID)
        if parentID in self.limbsWithJoints:
            self.sceneLimbMng.Setup_External_JointParents(limbID)

    def Teardown_External_JointParents(self, limbID):
        parentID = self.limbMng.GetParentID(limbID)
        if parentID in self.limbsWithJoints:
            self.sceneLimbMng.Teardown_External_JointParents(limbID, self.rootJntGrp)

    # JOINT CONTROLS
    def Setup_JointControls(self, limbID):
        self.sceneLimbMng.Setup_JointControls(limbID)
        
    def Teardown_JointControls(self, limbID):
        self.sceneLimbMng.Teardown_JointControls(limbID)
    
    # LIMB CONTROLS
    def Setup_LimbControl(self, limbID):
        self.sceneLimbMng.Setup_LimbControl(limbID, self.rootCtrGrp)
        
    def Teardown_LimbControl(self, limbID):
        self.sceneLimbMng.Teardown_LimbControl(limbID, self.rootCtrGrp)
    

#======= LIMB ===================================

    def Add_Editable_Limb(self, limbID):
        '''REQUIRES JOINTS ON LIMB'''
        if (self.Setup_Joints(limbID)):
            self.Setup_Internal_JointParents(limbID)
            self.Setup_External_JointParents(limbID)
            self.Setup_JointControls(limbID)
            self.Setup_LimbControl(limbID)
            self._SetDisplaySize()

    def Remove_Editable_Limb(self, limbID): # when limb removed or joint count 0
        if limbID in self.limbsWithJoints:
            self.Teardown_LimbControl(limbID)
            self.sceneLimbMng.Teardown_JointControls(limbID)
            self.Teardown_External_JointParents(limbID)
            self.Teardown_Internal_JointParents(limbID)
            self.Teardown_Joints(limbID)

    def Rebuild_Editable_Limb(self, limbID):
        self.Remove_Editable_Limb(limbID)
        self.Add_Editable_Limb(limbID)
        for childID, parentID in self.limbMng.GetLimbParentDict().items():
            if parentID == limbID:
                self.Reparent_Editable_Limb(childID, parentID)

    def Reparent_Editable_Limb(self, limbID, oldParentID):
        if self.jntMng.DoesLimbHaveJoints(limbID):
            if (oldParentID in self.limbsWithJoints):
                self.sceneLimbMng.Teardown_External_JointParents(limbID)
            newParentID = self.limbMng.GetParentID(limbID)
            if (newParentID in self.limbsWithJoints):
                self.sceneLimbMng.Setup_External_JointParents(limbID)


#======= DISPLAY SIZE : JOINT + CONTROL ===================================

    def SetDisplaySize(self, size):
        self.lastDisplaySize = size
        self._SetDisplaySize()

    def _SetDisplaySize(self):
        size = self.lastDisplaySize
        for joint in list(self.sceneLimbMng.sceneJoints.values()):
            cmds.joint(joint, e=1, rad=size)
        for ctr in list(self.sceneLimbMng.limbCtrs.values()):
            cmds.xform(ctr, s=[size, size, size])
        for ctr in list(self.sceneLimbMng.jointCtrs.values()):
            cmds.xform(ctr, s=[1, 1, 1])

#======= SELECTION + SAVING ===================================

    def SelectJointControls(self, jointIDs):
        ctrs = [self.sceneLimbMng.jointCtrs[ID] for ID in jointIDs]
        cmds.select(ctrs)
    
    def SelectLimbControl(self, limbID):
        cmds.select(self.sceneLimbMng.limbCtrs[limbID])
    
    def DeselectAll(self):
        cmds.select(d=1)

#======= MISC  ===================================

    def MoveToVertsCenter(self):
        sel = cmds.ls(sl=1)
        ctr = sel[0]
        bb = cmds.exactWorldBoundingBox(sel[1:])
        pos = ((bb[0] + bb[3]) / 2, (bb[1] + bb[4]) / 2, (bb[2] + bb[5]) / 2)
        cmds.xform(ctr, t=pos, ws=1)

