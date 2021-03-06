
import pymel.core as pm

import RIG_LS_Scene_Hierarchy_UI as sceneHier_UI
reload(sceneHier_UI)
import RIG_LS_Limb_Hierarchy_UI as limbHier_UI
reload(limbHier_UI)
import RIG_LS_Joint_Hierarchy_UI as jointHier_UI
reload(jointHier_UI)

import Common.Utilities as util
reload(util)

class RIG_LimbSetup_UI:
    def __init__(self, parent):
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
        self.grpMng = parent.grpMng
        self.ctrMng = parent.ctrMng
        self.nameMng = parent.nameMng
        self.rigBHV = parent.rigBHV
        self.logger = parent.logger
        self.rigLS = parent.pfrs.rigLS
        self.pfrs = parent.pfrs

        # self.scriptJob = None
        # self.jointsToCreateLimb = []
        self.limb = None 

        self._Setup()

    def Populate(self): # CALLED BY MAIN WINDOW
        self.logger.debug('\tRIG_LimbSetup_UI > Populate')
        self.SetJointsToAdd(None)
        self.sceneHier_ui.Populate()
        self.limbHier_ui.Populate()
        self.jntHier_ui.SetLimb(None)
        self.UpdateSceneFrame()
    
    def PopulateJoints(self):
        self.logger.debug('\tRIG_LimbSetup_UI > PopulateJoints')
        self.SetJointsToAdd(None)
        self.sceneHier_ui.Populate()
        self.jntHier_ui.Populate()
        self.UpdateSceneFrame()
    
#=========== SETUP ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout(l='---', bv=1) as self.sceneHier_fl:
                self.sceneHier_ui = sceneHier_UI.RIG_LS_Scene_Hierarchy_UI(self)
        with pm.verticalLayout():
            self.limbHier_ui = limbHier_UI.RIG_LS_Limb_Hierarchy_UI(self)
            self.jntHier_ui = jointHier_UI.RIG_LS_Joint_Hierarchy_UI(self)
           
#=========== TAB FUNCTIONALITY ====================================
    
    def Setup_Editable(self):
        self.logger.info('Rigging > Limb Setup SETUP')
        self.Populate()
        
    def Teardown_Editable(self):
        self.logger.info('Rigging > Limb Setup TEARDOWN\n')
        # self.rigBHV.RebuildLimbs()
    
#=========== LIMB FUNCTIONALITY ====================================
    
    def AddJointLimb(self): # Limb Hier UI > RMB > Add
        self.logger.info('\tRIG_LimbSetup_UI > AddJointLimb')
        joints = self.GetSelectedSceneJoints()
        self.rigLS.AddJointLimb(joints)
        self.Populate()
        # pm.select(d=1)
        # self.jntHier_ui.SetLimb(limb)
        # self.PopulateJoints()
        # self.limbHier_ui.Populate()
    
    def RemoveJointLimb(self):
        self.logger.debug('\tRIG_LimbSetup_UI > RemoveJointLimb')
        self.Populate()
        self.UpdateSceneFrame()

    def FlipSides(self):
        self.logger.debug('\tRIG_LimbSetup_UI > FlipSides')
        self.Populate()

    def LimbSelected(self, limb):
        self.logger.debug('\tRIG_LimbSetup_UI > LimbSelected')
        self.limb = limb
        self.jntHier_ui.SetLimb(limb)
        if limb:
            joints = util.GetSortedLimbJoints(limb)
            self.SelectSceneJoints(joints)

    def GetSelectedSceneJoints(self):
        self.logger.debug('\tRIG_LimbSetup_UI > GetSelectedSceneJoints')
        return self.sceneHier_ui.GetSelectedJoints()

#=========== MISC FUNCTIONALITY ====================================
    
    def SetJointsToAdd(self, joints):
        self.logger.debug('\tRIG_LimbSetup_UI > SetJointsToAdd')
        self.jntHier_ui.SetAddEnabled(0)
        self.limbHier_ui.SetAddEnabled(0)
        if not joints:
            return
        self.logger.debug('\tJOINTS TO ADD:')
        for joint in joints:
            self.logger.debug('\t\t%s' % joint)
        # Set Limb Hier RMB > Add Limb
        if self.rigLS.AreJointsSiblings(joints):
            self.limbHier_ui.SetAddEnabled(1)
        elif self.rigLS.AreJointsChained(joints):
            for joint in self.rigLS.GetCompleteJointChain(joints):
                if pm.listConnections(joint.limb):
                    return
        self.limbHier_ui.SetAddEnabled(1)

        # Set Joint Hier RMB > Add Joints
        if not self.limb:
            return
        limbJoints = util.GetSortedLimbJoints(self.limb)
        allJoints = joints + limbJoints
        if len(limbJoints) == 0 or self.rigLS.AreJointsSiblings(allJoints):
            self.jntHier_ui.SetAddEnabled(1)
        elif self.rigLS.AreJointsChained(allJoints):
            self.jntHier_ui.SetAddEnabled(1)
    
    def UpdateSceneFrame(self):
        self.logger.debug('\tRIG_LimbSetup_UI > UpdateSceneFrame')
        sceneCount = len(pm.ls(type='joint'))
        limbJntCount = 0
        for limb in pm.listConnections(self.pfrs.root.jointLimbs):
            limbJntCount += len(pm.listConnections(limb.joints))
        txt = 'Scene Joints (%d of %d used)' % (limbJntCount, sceneCount)
        pm.frameLayout(self.sceneHier_fl, e=1, l=txt)

    def SelectSceneJoints(self, joints):
        self.logger.debug('\tRIG_LimbSetup_UI > SelectSceneJoints')
        self.sceneHier_ui.acceptSelection = False
        pm.select(joints)
        self.sceneHier_ui.acceptSelection = True
        # jointsToAdd = [j for j in joints if j in self.sceneHier_ui.selectableJoints]
        # self.SetJointsToAdd(jointsToAdd)

