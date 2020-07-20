
from maya import cmds

import Scene_Limb_Manager as slm

reload(slm)

class Scene_Manager():
    def __init__(self, limbManager, jointManager, nameManager):
        self.limbMng = limbManager
        self.jntMng = jointManager
        self.nameMng = nameManager
        self.limbsWithJoints = [] # limbID : bool for has Joints
        self.limbParents = {} # limbID : parentLimbID
        self.scriptJobs = []
        self.sceneLimbMng = slm.Scene_Limb_Manager(limbManager, jointManager, nameManager)

        self.lastDisplaySize = 1
        self._SetupScene()
    
    def _SetupScene(self):
        cmds.select(d=1)
        self.rootJntGrp = cmds.group(name='Joint_GRP',em=1)
        self.rootCtrGrp = cmds.group(name='Control_GRP', em=1)
        self.skelLayer = cmds.createDisplayLayer(n='Skel Joints', e=1)
        cmds.setAttr(self.skelLayer + '.displayType', 2)
        cmds.select(d=1)
        self.selectionScriptJob = cmds.scriptJob(e=['SelectionChanged', self.SelectionChanged])
        

# ======= SETUP / TEARDOWN OF EDITABLE / FINAL ========================

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
        self.limbParents[limbID] = parentID
        if parentID in self.limbsWithJoints:
            self.sceneLimbMng.Setup_External_JointParents(limbID)

    def Teardown_External_JointParents(self, limbID):
        parentID = self.limbParents[limbID]
        del(self.limbParents[limbID])
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
            self.Setup_Children_External_JointParents(limbID)
            self._SetDisplaySize()

    def Remove_Editable_Limb(self, limbID): # when limb removed or joint count 0
        if limbID in self.limbsWithJoints:
            self.Teardown_Children_External_JointParents(limbID)
            self.Teardown_LimbControl(limbID)
            self.Teardown_JointControls(limbID)
            self.Teardown_External_JointParents(limbID)
            self.Teardown_Internal_JointParents(limbID)
            self.Teardown_Joints(limbID)

    def Rebuild_Editable_Limb(self, limbID):
        self.Remove_Editable_Limb(limbID)
        self.Add_Editable_Limb(limbID)

    def Reparent_Editable_Limb(self, limbID, oldParentID):
        if self.jntMng.DoesLimbHaveJoints(limbID):
            if (oldParentID in self.limbsWithJoints):
                self.Teardown_External_JointParents(limbID)
            newParentID = self.limbMng.GetParentID(limbID)
            if (newParentID in self.limbsWithJoints):
                self.Setup_External_JointParents(limbID)

    def Setup_Children_External_JointParents(self, limbID):
        for childID in self.limbMng.GetImmediateChildren(limbID):
            self.Setup_External_JointParents(childID)

    def Teardown_Children_External_JointParents(self, limbID):
        for childID in self.limbMng.GetImmediateChildren(limbID):
            self.Teardown_External_JointParents(childID)


#======= DISPLAY SIZE : JOINT + CONTROL ===================================

    def SetDisplaySize(self, size):
        self.lastDisplaySize = size
        self._SetDisplaySize()

    def _SetDisplaySize(self):
        size = self.lastDisplaySize
        for joint in list(self.sceneLimbMng.sceneJoints.values()):
            cmds.joint(joint, e=1, rad=size)
        for ctr in list(self.sceneLimbMng.limbCtrs.values()):
            #cmds.xform(ctr, s=[size, size, size])
            cmds.circle(ctr, e=1, r=size*5)
        for ctr in list(self.sceneLimbMng.jointCtrs.values()):
            cmds.xform(ctr, s=[size, size, size])

#======= SELECTION ===================================

    def SelectJointControls(self, jointIDs):
        ctrs = [self.sceneLimbMng.jointCtrs[ID] for ID in jointIDs]
        cmds.select(ctrs)
    
    def SelectLimbControl(self, limbID):
        cmds.select(self.sceneLimbMng.limbCtrs[limbID])
    
    def DeselectAll(self):
        cmds.select(d=1)

#======= SCRIPT JOBS ===================================

    def SelectionChanged(self):
        print('selection changed')
        self.KillScriptJobs()
        attrs = [   'tx', 'ty', 'tz', 
                    'rx', 'ry', 'rz', 
                    'sx', 'sy', 'sz']
        for sel in cmds.ls(sl=1):
            for attr in attrs:
                job = cmds.scriptJob(ac=[sel + '.' + attr, self.SaveChanges])
                self.scriptJobs.append(job)

    def KillScriptJobs(self):
        print('killing attr changes script jobs')
        for job in self.scriptJobs:
            cmds.scriptJob(kill=job, force=True)
        self.scriptJobs = []

    def KillSelectionJob(self):
        print('killing selection script job')
        cmds.scriptJob(kill=self.selectionScriptJob, force=True)

    def SaveChanges(self):
        print('saving changes...')
        limbIDs = set()
        for sel in cmds.ls(sl=1):
            try:
                ID = cmds.getAttr(sel + '.limbID')
                limbIDs.add(ID)
            except:
                print('Save is Skipping: ' + sel)
        for limbID in list(limbIDs):
            for jointID in self.jntMng.GetLimbJointIDs(limbID):
                jointData = self.jntMng.GetJoint(jointID)
                sceneJoint = self.sceneLimbMng.sceneJoints[jointID]
                jointData.position = cmds.xform(sceneJoint, q=1, t=1, ws=1)
                jointData.rotation = cmds.xform(sceneJoint, q=1, ro=1, ws=1)
                print('saving: ' + jointData.name)
                print('pos: ' + str(jointData.position))
                print('rot: ' + str(jointData.rotation))

# ======= MISC  ===================================

    def MoveToVertsCenter(self):
        sel = cmds.ls(sl=1)
        ctr = sel[0]
        bb = cmds.exactWorldBoundingBox(sel[1:])
        pos = ((bb[0] + bb[3]) / 2, (bb[1] + bb[4]) / 2, (bb[2] + bb[5]) / 2)
        cmds.xform(ctr, t=pos, ws=1)

