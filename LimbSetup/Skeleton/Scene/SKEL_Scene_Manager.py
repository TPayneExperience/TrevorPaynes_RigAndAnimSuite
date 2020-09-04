
import pymel.core as pm

import SKEL_Scene_Limb_Manager as slm
reload(slm)

class SKEL_Scene_Manager():
    def __init__(self, limbManager, jointManager, nameManager, parent=None):
        self.limbMng = limbManager
        self.jntMng = jointManager
        self.nameMng = nameManager
        self.parent = parent

        self.limbsWithJoints = [] # limbID : bool for has Joints
        self.limbParents = {} # limbID : parentLimbID
        self.scriptJobs = []
        self.selectedLimbs = set()

        self.sceneLimbMng = slm.SKEL_Scene_Limb_Manager(limbManager, jointManager, nameManager)

    
    def NewRig(self, rigRoot):
        pm.select(d=1)
        self.sceneLimbMng.NewRig()

        self.rootCtrGrp = pm.group(name='TEMP', em=True)
        pm.parent(self.rootCtrGrp, rigRoot)
        pm.select(d=True)
        self.selectionScriptJob = pm.scriptJob(e=['SelectionChanged', self.SelectionChanged])
        

# ======= SETUP / TEARDOWN OF EDITABLE / FINAL ========================

    def Setup_Editable(self):
        limbIDs = []
        for limbID in self.limbMng.GetRootLimbIDs():
            limbIDs += self.limbMng.GetLimbCreationOrder(limbID)

        for limbID in limbIDs: # JOINTS
            self.Setup_LimbWithJoints(limbID)

        for limbID in self.limbsWithJoints: # JOINT INTERNAL PARENTS
            self.Setup_Internal_JointParents(limbID)

        for limbID in self.limbsWithJoints: # JOINT EXTERNAL PARENTS
            self.Setup_External_JointParents(limbID)
        
        for limbID in self.limbsWithJoints: # JOINT CONTROLS
            self.Setup_JointControls(limbID)
        
        for limbID in self.limbsWithJoints: # LIMB CONTROLS
            self.Setup_LimbControl(limbID)

    def Teardown_Editable(self):
        for limbID in self.limbsWithJoints:  # LIMB CONTROLS
            self.Teardown_LimbControl(limbID)
       
        for limbID in self.limbsWithJoints: # JOINT CONTROLS
            self.Teardown_JointControls(limbID)

        for limbID in self.limbsWithJoints: # JOINT EXTERNAL PARENTS
            self.Teardown_External_JointParents(limbID)
        
        for limbID in self.limbsWithJoints: # JOINT INTERNAL PARENTS
            self.Teardown_Internal_JointParents(limbID)
        
        for limbID in self.limbsWithJoints[:]: # JOINTS
            self.Teardown_LimbWithJoints(limbID)


#======= SETUP + TEARDOWN WRAPPERS ===================================
    
    # JOINTS
    def Setup_LimbWithJoints(self, limbID):
        hasJnts = self.jntMng.GetLimbJointIDs(limbID)
        if hasJnts:
            self.limbsWithJoints.append(limbID)
            self.sceneLimbMng.Setup_LimbsWithJoints(limbID)
        return hasJnts

    def Teardown_LimbWithJoints(self, limbID):
        if limbID in self.limbsWithJoints:
            self.limbsWithJoints.remove(limbID)
            self.sceneLimbMng.Teardown_LimbsWithJoints(limbID)

    # JOINT INTERNAL PARENTS
    def Setup_Internal_JointParents(self, limbID):
        self.sceneLimbMng.Setup_Internal_JointParents(limbID)

    def Teardown_Internal_JointParents(self, limbID):
        self.sceneLimbMng.Teardown_Internal_JointParents(limbID)

    # JOINT EXTERNAL PARENTS
    def Setup_External_JointParents(self, limbID):
        parentID = self.limbMng.GetLimb(limbID).parentLimbID.get()
        self.limbParents[limbID] = parentID
        if parentID in self.limbsWithJoints:
            self.sceneLimbMng.Setup_External_JointParents(limbID)

    def Teardown_External_JointParents(self, limbID):
        parentID = self.limbParents[limbID]
        del(self.limbParents[limbID])
        if parentID in self.limbsWithJoints:
            self.sceneLimbMng.Teardown_External_JointParents(limbID)

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
        if (self.Setup_LimbWithJoints(limbID)):
            self.Setup_JointControls(limbID)
            self.Setup_LimbControl(limbID)
            self.Setup_Internal_JointParents(limbID)
            self.Setup_External_JointParents(limbID)
            self.Setup_Children_External_JointParents(limbID)

    def Remove_Editable_Limb(self, limbID): # when limb removed or joint count 0
        if limbID in self.limbsWithJoints:
            self.Teardown_Children_External_JointParents(limbID)
            self.Teardown_Internal_JointParents(limbID)
            self.Teardown_External_JointParents(limbID)
            self.Teardown_LimbControl(limbID)
            self.Teardown_JointControls(limbID)
            self.Teardown_LimbWithJoints(limbID)

    def Reparent_Editable_Limb(self, limbID, oldParentID):
        if self.jntMng.GetLimbJointIDs(limbID):
            if (oldParentID in self.limbsWithJoints):
                self.Teardown_External_JointParents(limbID)
            limb = self.limbMng.GetLimb(limbID)
            if (limb.parentLimbID.get() in self.limbsWithJoints):
                self.Setup_External_JointParents(limbID)

    def Setup_Children_External_JointParents(self, limbID):
        for childID in self.limbMng.GetImmediateChildren(limbID):
            self.Setup_External_JointParents(childID)

    def Teardown_Children_External_JointParents(self, limbID):
        for childID in self.limbMng.GetImmediateChildren(limbID):
            self.Teardown_External_JointParents(childID)


#======= SELECTION ===================================

    def SelectJointControls(self, jointIDs):
        ctrs = [self.sceneLimbMng.jointCtrs[ID] for ID in jointIDs]
        pm.select(ctrs)
    
    def SelectLimbControl(self, limbID):
        pm.select(self.sceneLimbMng.limbCtrs[limbID])
    
    def DeselectAll(self):
        pm.select(d=True)

#======= SCRIPT JOBS ===================================

    def SelectionChanged(self):
        self.KillScriptJobs()
        attrs = [   'tx', 'ty', 'tz', 
                    'rx', 'ry', 'rz', 
                    'sx', 'sy', 'sz']
        jntCtrs = list(self.sceneLimbMng.jointCtrs.values())
        limbCtrs = list(self.sceneLimbMng.limbCtrs.values())
        ctrs = []
        for sel in pm.ls(sl=True):
            if sel in jntCtrs or sel in limbCtrs:
                ctrs.append(sel)
                self.selectedLimbs.add(pm.getAttr(sel + '.limbID'))
                for attr in attrs:
                    job = pm.scriptJob(ac=[sel + '.' + attr, self.SaveChanges])
                    self.scriptJobs.append(job)

    def KillScriptJobs(self):
        for job in self.scriptJobs:
            pm.scriptJob(kill=job, force=True)
        self.scriptJobs = []
        self.selectedLimbs.clear()

    def KillSelectionJob(self):
        pm.scriptJob(kill=self.selectionScriptJob, force=True)

    def SaveChanges(self):
        limbNames = []
        for limbID in list(self.selectedLimbs):
            limbNames.append(self.limbMng.GetName(limbID))
            for jointID in self.jntMng.GetLimbJointIDs(limbID):
                jointData = self.jntMng.GetJoint(jointID)
                sceneJoint = self.sceneLimbMng.sceneJoints[jointID]
                jointData.position = pm.xform(sceneJoint, q=True, t=True, ws=True)
                jointData.rotation = pm.xform(sceneJoint, q=True, ro=True, ws=True)
        msg = 'Updating joint data for limbs: ' + str(limbNames)
        print(msg)

# ======= MISC  ===================================

    def MoveToVertsCenter(self):
        sel = pm.ls(sl=True)
        ctr = sel[0]
        bb = pm.exactWorldBoundingBox(sel[1:])
        pos = ((bb[0] + bb[3]) / 2, (bb[1] + bb[4]) / 2, (bb[2] + bb[5]) / 2)
        pm.xform(ctr, t=pos, ws=True)

    
# ======= DEPRICATED  ===================================

#     def __init__(self, limbManager, jointManager, nameManager, parent=None):
#         self.limbMng = limbManager
#         self.jntMng = jointManager
#         self.nameMng = nameManager
#         self.parent = parent

#         self.limbsWithJoints = [] # limbID : bool for has Joints
#         self.limbParents = {} # limbID : parentLimbID
#         self.scriptJobs = []
#         self.selectedLimbs = set()
#         self.lastDisplaySize = 1

#         self.sceneLimbMng = slm.SKEL_Scene_Limb_Manager(limbManager, jointManager, nameManager)

#         # self.NewRig()
    

# # ======= SETUP / TEARDOWN OF EDITABLE / FINAL ========================

#     def Setup_Editable(self):
#         limbIDs = self.limbMng.GetLimbIDs()
#         for limbID in limbIDs: # JOINTS
#             self.Setup_Joints(limbID)

#         for limbID in self.limbsWithJoints: # JOINT INTERNAL PARENTS
#             self.Setup_Internal_JointParents(limbID)

#         for limbID in self.limbsWithJoints: # JOINT EXTERNAL PARENTS
#             self.Setup_External_JointParents(limbID)
        
#         for limbID in self.limbsWithJoints: # JOINT CONTROLS
#             self.Setup_JointControls(limbID)
        
#         for limbID in self.limbsWithJoints: # LIMB CONTROLS
#             self.Setup_LimbControl(limbID)
        
#         # self.UpdateDisplaySize()
#         # MISSING: LISTENERS

#     def Teardown_Editable(self):
#         for limbID in self.limbsWithJoints:  # LIMB CONTROLS
#             self.Teardown_LimbControl(limbID)
       
#         for limbID in self.limbsWithJoints: # JOINT CONTROLS
#             self.Teardown_JointControls(limbID)

#         for limbID in self.limbsWithJoints: # JOINT EXTERNAL PARENTS
#             self.Teardown_External_JointParents(limbID)
        
#         for limbID in self.limbsWithJoints: # JOINT INTERNAL PARENTS
#             self.Teardown_Internal_JointParents(limbID)
        
#         for limbID in self.limbsWithJoints[:]: # JOINTS
#             self.Teardown_Joints(limbID)
#         # MISSING: LISTENERS

#     def Setup_Final(self):
#         limbIDs = self.limbMng.GetLimbIDs()
#         for limbID in limbIDs: # JOINTS
#             self.Setup_Joints(limbID)

#         for limbID in self.limbsWithJoints: # JOINT INTERNAL PARENTS
#             self.Setup_Internal_JointParents(limbID)

#         for limbID in self.limbsWithJoints: # JOINT EXTERNAL PARENTS
#             self.Setup_External_JointParents(limbID)
        
#     def Teardown_Final(self):
#         limbIDs = self.limbMng.GetLimbIDs()
#         for limbID in self.limbsWithJoints: # JOINT EXTERNAL PARENTS
#             self.Teardown_External_JointParents(limbID)
        
#         for limbID in self.limbsWithJoints: # JOINT INTERNAL PARENTS
#             self.Teardown_Internal_JointParents(limbID)
        
#         for limbID in self.limbsWithJoints[:]: # JOINTS
#             self.Teardown_Joints(limbID)


# #======= SETUP + TEARDOWN WRAPPERS ===================================
    
#     # JOINTS
#     def Setup_Joints(self, limbID):
#         hasJoints = self.jntMng.DoesLimbHaveJoints(limbID)
#         if hasJoints:
#             self.limbsWithJoints.append(limbID)
#             jnts = self.sceneLimbMng.Setup_Joints(limbID, self.rootJntGrp)
#             cmds.editDisplayLayerMembers(self.skelLayer, jnts)
#         return hasJoints

#     def Teardown_Joints(self, limbID):
#         if limbID in self.limbsWithJoints:
#             self.sceneLimbMng.Teardown_Joints(limbID)
#             self.limbsWithJoints.remove(limbID)

#     # JOINT INTERNAL PARENTS
#     def Setup_Internal_JointParents(self, limbID):
#         self.sceneLimbMng.Setup_Internal_JointParents(limbID)

#     def Teardown_Internal_JointParents(self, limbID):
#         self.sceneLimbMng.Teardown_Internal_JointParents(limbID, self.rootJntGrp)

#     # JOINT EXTERNAL PARENTS
#     def Setup_External_JointParents(self, limbID):
#         parentID = self.limbMng.GetParentID(limbID)
#         self.limbParents[limbID] = parentID
#         if parentID in self.limbsWithJoints:
#             self.sceneLimbMng.Setup_External_JointParents(limbID)

#     def Teardown_External_JointParents(self, limbID):
#         parentID = self.limbParents[limbID]
#         del(self.limbParents[limbID])
#         if parentID in self.limbsWithJoints:
#             self.sceneLimbMng.Teardown_External_JointParents(limbID, self.rootJntGrp)

#     # JOINT CONTROLS
#     def Setup_JointControls(self, limbID):
#         self.sceneLimbMng.Setup_JointControls(limbID)
        
#     def Teardown_JointControls(self, limbID):
#         self.sceneLimbMng.Teardown_JointControls(limbID)
    
#     # LIMB CONTROLS
#     def Setup_LimbControl(self, limbID):
#         self.sceneLimbMng.Setup_LimbControl(limbID, self.rootCtrGrp)
        
#     def Teardown_LimbControl(self, limbID):
#         self.sceneLimbMng.Teardown_LimbControl(limbID, self.rootCtrGrp)
    

# #======= LIMB ===================================

#     def Add_Editable_Limb(self, limbID):
#         '''REQUIRES JOINTS ON LIMB'''
#         if (self.Setup_Joints(limbID)):
#             self.Setup_Internal_JointParents(limbID)
#             self.Setup_External_JointParents(limbID)
#             self.Setup_JointControls(limbID)
#             self.Setup_LimbControl(limbID)
#             self.Setup_Children_External_JointParents(limbID)
#             # self.UpdateDisplaySize()

#     def Remove_Editable_Limb(self, limbID): # when limb removed or joint count 0
#         if limbID in self.limbsWithJoints:
#             self.Teardown_Children_External_JointParents(limbID)
#             self.Teardown_LimbControl(limbID)
#             self.Teardown_JointControls(limbID)
#             self.Teardown_External_JointParents(limbID)
#             self.Teardown_Internal_JointParents(limbID)
#             self.Teardown_Joints(limbID)

#     def Rebuild_Editable_Limb(self, limbID):
#         self.Remove_Editable_Limb(limbID)
#         self.Add_Editable_Limb(limbID)

#     def Reparent_Editable_Limb(self, limbID, oldParentID):
#         if self.jntMng.DoesLimbHaveJoints(limbID):
#             if (oldParentID in self.limbsWithJoints):
#                 self.Teardown_External_JointParents(limbID)
#             newParentID = self.limbMng.GetParentID(limbID)
#             if (newParentID in self.limbsWithJoints):
#                 self.Setup_External_JointParents(limbID)

#     def Setup_Children_External_JointParents(self, limbID):
#         for childID in self.limbMng.GetImmediateChildren(limbID):
#             self.Setup_External_JointParents(childID)

#     def Teardown_Children_External_JointParents(self, limbID):
#         for childID in self.limbMng.GetImmediateChildren(limbID):
#             self.Teardown_External_JointParents(childID)


# #======= DISPLAY SIZE : JOINT + CONTROL ===================================

#     def SetDisplaySize(self, size):
#         if (size != self.sceneLimbMng.displaySize):
#             self.sceneLimbMng.displaySize = size
#             # print('\n\nScene Joints: ' + str(self.sceneLimbMng.sceneJoints))
#             # print('Limb Ctr: ' + str(self.sceneLimbMng.limbCtrs))
#             # print('Jnt Ctr: ' + str(self.sceneLimbMng.jointCtrs))
#             for joint in list(self.sceneLimbMng.sceneJoints.values()):
#                 cmds.joint(joint, e=True, rad=size)
#             for ctr in list(self.sceneLimbMng.limbCtrs.values()):
#                 cmds.circle(ctr, e=True, r=size*5)
#             for ctr in list(self.sceneLimbMng.jointCtrs.values()):
#                 cmds.xform(ctr, s=[size, size, size])

# #======= SELECTION ===================================

#     def SelectJointControls(self, jointIDs):
#         ctrs = [self.sceneLimbMng.jointCtrs[ID] for ID in jointIDs]
#         cmds.select(ctrs)
    
#     def SelectLimbControl(self, limbID):
#         cmds.select(self.sceneLimbMng.limbCtrs[limbID])
    
#     def DeselectAll(self):
#         cmds.select(d=True)

# #======= SCRIPT JOBS ===================================

#     def SelectionChanged(self):
#         self.KillScriptJobs()
#         attrs = [   'tx', 'ty', 'tz', 
#                     'rx', 'ry', 'rz', 
#                     'sx', 'sy', 'sz']
#         jntCtrs = list(self.sceneLimbMng.jointCtrs.values())
#         limbCtrs = list(self.sceneLimbMng.limbCtrs.values())
#         ctrs = []
#         for sel in cmds.ls(sl=True):
#             if sel in jntCtrs or sel in limbCtrs:
#                 ctrs.append(sel)
#                 self.selectedLimbs.add(cmds.getAttr(sel + '.limbID'))
#                 for attr in attrs:
#                     job = cmds.scriptJob(ac=[sel + '.' + attr, self.SaveChanges])
#                     self.scriptJobs.append(job)

#     def KillScriptJobs(self):
#         for job in self.scriptJobs:
#             cmds.scriptJob(kill=job, force=True)
#         self.scriptJobs = []
#         self.selectedLimbs.clear()

#     def KillSelectionJob(self):
#         cmds.scriptJob(kill=self.selectionScriptJob, force=True)

#     def SaveChanges(self):
#         limbNames = []
#         for limbID in list(self.selectedLimbs):
#             limbNames.append(self.limbMng.GetName(limbID))
#             for jointID in self.jntMng.GetLimbJointIDs(limbID):
#                 jointData = self.jntMng.GetJoint(jointID)
#                 sceneJoint = self.sceneLimbMng.sceneJoints[jointID]
#                 jointData.position = cmds.xform(sceneJoint, q=True, t=True, ws=True)
#                 jointData.rotation = cmds.xform(sceneJoint, q=True, ro=True, ws=True)
#         msg = 'Updating joint data for limbs: ' + str(limbNames)
#         print(msg)

# # ======= MISC  ===================================

#     def MoveToVertsCenter(self):
#         sel = cmds.ls(sl=True)
#         ctr = sel[0]
#         bb = cmds.exactWorldBoundingBox(sel[1:])
#         pos = ((bb[0] + bb[3]) / 2, (bb[1] + bb[4]) / 2, (bb[2] + bb[5]) / 2)
#         cmds.xform(ctr, t=pos, ws=True)

#     def NewRig(self, rootGrp):
#         cmds.select(d=True)
#         self.lastDisplaySize = 1
#         self.sceneLimbMng.NewRig()

#         self.rootJntGrp = cmds.group(name='Joint_GRP',em=True)
#         self.rootCtrGrp = cmds.group(name='Control_GRP', em=True)
#         cmds.parent(self.rootJntGrp, rootGrp)
#         cmds.parent(self.rootCtrGrp, rootGrp)
#         self.skelLayer = cmds.createDisplayLayer(n='Skel Joints', e=True)
#         cmds.setAttr(self.skelLayer + '.displayType', 2)
#         cmds.select(d=True)
#         self.selectionScriptJob = cmds.scriptJob(e=['SelectionChanged', self.SelectionChanged])
        
    