
import pymel.core as pm

import LS_Scene_Hierarchy_UI as sceneHier_UI
reload(sceneHier_UI)
import LS_Limb_Hierarchy_UI as limbHier_UI
reload(limbHier_UI)
import LS_Joint_Hierarchy_UI as jointHier_UI
reload(jointHier_UI)

class LimbSetup_UI:
    def __init__(self, limbMng, jntMng, nameMng, parent):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.nameMng = nameMng
        self.parent = parent

        self.scriptJob = None

        self._Setup()

    def Populate(self): # CALLED BY MAIN WINDOW
        self.sceneHier_ui.Populate()
        self.limbHier_ui.Populate()
        self.jntHier_ui.Depopulate()
        self.UpdateSceneFrame()
        self.UpdateJointFrame()
    
    def PopulateJoints(self):
        self.sceneHier_ui.Populate()
        self.jntHier_ui.Populate()
        self.UpdateSceneFrame()
    
#=========== SETUP ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout(l='---', bv=1) as self.sceneHier_fl:
                self.sceneHier_ui = sceneHier_UI.LS_Scene_Hierarchy_UI( self.limbMng,
                                                                        self.jntMng,
                                                                        self)
        with pm.verticalLayout():
            with pm.frameLayout('Limbs', bv=1):
                self.limbHier_ui = limbHier_UI.LS_Limb_Hierarchy_UI(    self.limbMng,
                                                                        self.jntMng,
                                                                        self.nameMng,
                                                                        self)
            with pm.frameLayout(l='---', bv=1) as self.jntHier_fl:
                self.jntHier_ui = jointHier_UI.LS_Joint_Hierarchy_UI(   self.limbMng,
                                                                        self.jntMng,
                                                                        self.nameMng,
                                                                        self)
           
#=========== TAB FUNCTIONALITY ====================================
    
    def Setup_Editable(self):
        self.limbMng.RebuildLimbDict()
        for limb in self.limbMng.GetAllLimbs():
            for joint in self.jntMng.GetLimbJoints(limb):
                pm.disconnectAttr(joint.tempLimb)
                pm.connectAttr(limb.tempJoints, joint.tempLimb)
        self.Populate()
        if not self.scriptJob:
            self.scriptJob = pm.scriptJob( e=("SelectionChanged",self.sceneHier_ui.SelectSceneHierJoints), pro=True)
            print ('STARTING selection detection script...')

    def Teardown_Editable(self):
        self.KillScripts()
        for limb in self.limbMng.GetAllLimbs():
            joints = self.jntMng.GetLimbTempJoints(limb)
            for joint in joints:
                self.jntMng.AddPerm(limb, joint)
            limbType = limb.limbType.get()
            if not joints:
                limb.limbType.set(0)
                self.parent.UpdateLimb(limb)
            elif (len(joints) == 1) and limbType != 1:
                limb.limbType.set(1)
                self.parent.UpdateLimb(limb)
            elif self.jntMng.AreJointsChained(joints) and limbType != 2:
                limb.limbType.set(2)
                self.parent.UpdateLimb(limb)
            elif self.jntMng.AreJointsSiblings(joints) and limbType != 3:
                limb.limbType.set(3)
                self.parent.UpdateLimb(limb)
    
    def KillScripts(self):
        if self.scriptJob:
            pm.scriptJob( kill=self.scriptJob, f=True)
            self.scriptJob = None
            print ('KILLING selection detection script...\n')

#=========== LIMB FUNCTIONALITY ====================================
    
    def AddLimb(self, ignore): # Limb Hier UI > RMB > Add
        joints = self.GetSelectedSceneJoints()
        if not (len(joints) < 2) and \
            not self.jntMng.AreJointsChained(joints) and \
            not self.jntMng.AreJointsSiblings(joints):
            self.SceneJointsIncorrectDialog()
        else:
            limb = self.limbMng.Add()
            self.jntHier_ui.SetLimb(limb.ID.get())
            self.jntHier_ui.Add()
            self.Populate()
            self.UpdateSceneFrame()
            self.parent.AddLimb(limb)
    
    def AddLimbByJoints(self, joints): # Scene hier UI > RMB > Autobuild
        limb = None
        if (len(joints) < 2):
            limb = self.limbMng.Add()
            if joints:
                self.jntMng.AddTemp(limb, joints[0])
        # CHAIN LIMB
        if not limb and self.jntMng.AreJointsChained(joints):
            limb = self.limbMng.Add()
            for joint in self.jntMng.GetJointChain(joints):
                self.jntMng.AddTemp(limb, joint)

        # BRANCH LIMB
        if not limb and self.jntMng.AreJointsSiblings(joints):
            limb = self.limbMng.Add()
            for joint in joints:
                self.jntMng.AddTemp(limb, joint)
        return limb

    def RemoveLimb(self, limb):
        self.UpdateJointFrame()
        self.parent.RemoveLimb(limb)

    def RenameLimbs(self, limbs):
        self.Populate()

    def FlipSides(self):
        self.Populate()

    def LimbSelected(self, limbID):
        limb = self.limbMng.GetLimb(limbID)
        joints = self.jntMng.GetLimbTempJoints(limb)
        pm.select(joints)
        self.jntHier_ui.SetLimb(limbID)
        self.UpdateJointFrame(limbID)

    def GetSelectedSceneJoints(self):
        return self.sceneHier_ui.GetSelectedJoints()

#=========== MISC FUNCTIONALITY ====================================
    
    def SceneJointsIncorrectDialog(self):
        msg = 'Limbs may only have the following joint arrangements:\n'
        msg += '\n- 0 or 1 joint selected'
        msg += '\n- 2+ joints that are all the immediate children '
        msg += 'of the same parent [BRANCH]'
        msg += '\n- 2+ joints that are parented to one another [CHAIN]'
        msg += '\n--------------------------'
        msg += '\n- Limbs cannot contain joints from OTHER limbs'
        pm.confirmDialog(   t='Joint Selection Mismatch', icn='warning', 
                            m=msg, button=['Cool Beans'])

    def UpdateSceneFrame(self):
        sceneCount = len(pm.ls(type='joint'))
        limbJntCount = self.jntMng.GetJointCount()
        txt = 'Scene Joints (%d of %d used)' % (limbJntCount, sceneCount)
        pm.frameLayout(self.sceneHier_fl, e=1, l=txt)

    def UpdateJointFrame(self, limbID = -1):
        txt = '---'
        isValid = (limbID != -1)
        if isValid:
            limb = self.limbMng.GetLimb(limbID)
            name = limb.pfrsName.get()
            limbType = self.limbMng.limbTypes[limb.limbType.get()]
            txt = "%s's Joints (Type: %s)" % (name, limbType)
        pm.frameLayout(self.jntHier_fl, e=1, en=isValid, l=txt)



