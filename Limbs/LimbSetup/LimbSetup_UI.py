
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

        self._Setup()

    def Populate(self): # CALLED BY MAIN WINDOW
        self.sceneHier_ui.Populate()
        self.limbHier_ui.Populate()
        self.jntHier_ui.Depopulate()
    
    def PopulateJoints(self):
        self.sceneHier_ui.Populate()
        self.jntHier_ui.Populate()
    
#=========== SETUP ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout(l='XXX', bv=1) as self.sceneHier_fl:
                self.sceneHier_ui = sceneHier_UI.LS_Scene_Hierarchy_UI(self.jntMng,
                                                                        self)
        with pm.verticalLayout():
            with pm.frameLayout('Limbs', bv=1):
                self.limbHier_ui = limbHier_UI.LS_Limb_Hierarchy_UI(    self.limbMng,
                                                                        self.jntMng,
                                                                        self.nameMng,
                                                                        self)
            with pm.frameLayout(l='XXX', bv=1) as self.jntHier_fl:
                self.jntHier_ui = jointHier_UI.LS_Joint_Hierarchy_UI(   self.limbMng,
                                                                        self.jntMng,
                                                                        self.nameMng,
                                                                        self)
           
#=========== LIMB FUNCTIONALITY ====================================
    
    def AddLimb(self, ignore): # called by limb heir > RMB > Add
        joints = self.GetSelectedSceneJoints()
        limb = self.AddLimbByJoints(joints)
        if limb:
            self.Populate()
            self.UpdateSceneFrame()
            self.parent.AddLimb(limb)
        else:
            self.SceneJointsIncorrectDialog()
    
    def AddLimbByJoints(self, joints): # called by Scene hier > RMB > Autobuild
        limb = None
        if (len(joints) < 2):
            limb = self.limbMng.Add()
            if joints:
                self.jntMng.Add(limb, joints[0])
                limb.limbType.set(1)
        # CHAIN LIMB
        if not limb and self.jntMng.AreJointsChained(joints):
            limb = self.limbMng.Add()
            limb.limbType.set(2) # Chain
            for joint in self.jntMng.GetJointChain(joints):
                self.jntMng.Add(limb, joint)

        # BRANCH LIMB
        if not limb and self.jntMng.AreJointsSiblings(joints):
            limb = self.limbMng.Add()
            limb.limbType.set(3) # Branch
            for joint in joints:
                self.jntMng.Add(limb, joint)
        return limb

    def RemoveLimb(self):
        self.Populate()
        self.UpdateSceneFrame()

    def RenameLimbs(self, limbs):
        self.Populate()

    def FlipSides(self):
        self.Populate()

    def LimbSelected(self, limbID):
        limb = self.limbMng.GetLimb(limbID)
        joints = self.jntMng.GetLimbJoints(limb)
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

    def UpdateJointFrame(self, limbID):
        txt = ''
        if (limbID != -1):
            limb = self.limbMng.GetLimb(limbID)
            name = limb.pfrsName.get()
            limbType = self.limbMng.limbTypes[limb.limbType.get()]
            txt = "%s's Joints (Type: %s)" % (name, limbType)
        pm.frameLayout(self.jntHier_fl, e=1, l=txt)



