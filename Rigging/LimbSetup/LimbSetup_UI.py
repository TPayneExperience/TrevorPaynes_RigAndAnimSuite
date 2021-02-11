
import pymel.core as pm

import LS_Scene_Hierarchy_UI as sceneHier_UI
reload(sceneHier_UI)
import LS_Limb_Hierarchy_UI as limbHier_UI
reload(limbHier_UI)
import LS_Joint_Hierarchy_UI as jointHier_UI
reload(jointHier_UI)

class LimbSetup_UI:
    def __init__(self, parent):
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
        self.grpMng = parent.grpMng
        self.ctrMng = parent.ctrMng
        self.nameMng = parent.nameMng
        self.bhvMng = parent.bhvMng
        self.parent = parent
        self.logger = parent.logger

        self.scriptJob = None
        self.jointsToCreateLimb = []
        self.jointsToAddToLimb = []
        self.limb = None 

        self._Setup()

    def Populate(self): # CALLED BY MAIN WINDOW
        self.logger.debug('\tLimbSetup_UI > Populate')
        self.sceneHier_ui.Populate()
        self.limbHier_ui.Populate()
        self.jntHier_ui.Depopulate()
        self.UpdateSceneFrame()
        self.UpdateJointFrame()
    
    def PopulateJoints(self):
        self.logger.debug('\tLimbSetup_UI > PopulateJoints')
        self.sceneHier_ui.Populate()
        self.jntHier_ui.Populate()
        self.UpdateSceneFrame()
    
#=========== SETUP ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout(l='---', bv=1) as self.sceneHier_fl:
                self.sceneHier_ui = sceneHier_UI.LS_Scene_Hierarchy_UI(self)
        with pm.verticalLayout():
            with pm.frameLayout('Limbs', bv=1):
                self.limbHier_ui = limbHier_UI.LS_Limb_Hierarchy_UI(self)
            with pm.frameLayout(l='---', bv=1) as self.jntHier_fl:
                self.jntHier_ui = jointHier_UI.LS_Joint_Hierarchy_UI(self)
           
#=========== TAB FUNCTIONALITY ====================================
    
    def Setup_Editable(self):
        self.logger.info('Rigging > Limb Setup SETUP')
        self.limbMng.RebuildLimbDict()
        self.Populate()
        if not self.scriptJob:
            self.scriptJob = pm.scriptJob( e=("SelectionChanged",
                    self.sceneHier_ui.SelectSceneHierJoints), pro=True)
            print ('STARTING LimbSetup selection detection script...')

    def Teardown_Editable(self):
        self.logger.info('Rigging > Limb Setup TEARDOWN\n')
        self.KillScripts()
        self.bhvMng.RebuildLimbs()
    
    def KillScripts(self):
        if self.scriptJob:
            pm.scriptJob( kill=self.scriptJob, f=True)
            self.scriptJob = None
            print ('KILLING LimbSetup selection detection script...\n')

#=========== LIMB FUNCTIONALITY ====================================
    
    def AddJointLimb(self): # Limb Hier UI > RMB > Add
        self.logger.info('\tLimbSetup_UI > AddJointLimb')
        limb = self.bhvMng.AddJointLimb(self.jointsToCreateLimb)
        self.ClearJointsToAdd()
        pm.select(d=1)
        self.jntHier_ui.SetLimb(limb)
        self.PopulateJoints()
        self.limbHier_ui.Populate()
    
    def RemoveJointLimb(self):
        self.logger.debug('\tLimbSetup_UI > RemoveJointLimb')
        self.UpdateJointFrame()
        self.Populate()
        self.UpdateSceneFrame()
        # self.UpdateJointFrame()
        # self.parent.RemoveLimb(limb)

    def RenameLimb(self, limb):
        self.logger.debug('\tLimbSetup_UI > RenameLimb')
        groups = pm.listConnections(limb.bhvIKPVGroup)
        groups += pm.listConnections(limb.bhvLookAtGroup)
        groups += pm.listConnections(limb.bhvEmptyGroup)
        # groups += pm.listConnections(limb.bhvFKIKSwitchGroup)
        for group in groups:
            self.grpMng.UpdateGroupName(group)
        for joint in pm.listConnections(limb.joints):
            self.RenameJoint(joint)
        self.Populate()

    def RenameJoint(self, joint):
        self.jntMng.UpdateJointName(joint)
        group = pm.listConnections(joint.group)[0]
        self.grpMng.UpdateGroupName(group)

    def FlipSides(self):
        self.logger.debug('\tLimbSetup_UI > FlipSides')
        self.Populate()

    def LimbSelected(self, limb):
        self.logger.debug('\tLimbSetup_UI > RenameLimb')
        self.limb = limb
        self.jntHier_ui.SetLimb(limb)
        self.UpdateJointFrame(limb)
        if limb:
            joints = self.jntMng.GetLimbJoints(limb)
            self.SelectSceneJoints(joints)

    def GetSelectedSceneJoints(self):
        self.logger.debug('\tLimbSetup_UI > GetSelectedSceneJoints')
        return self.sceneHier_ui.GetSelectedJoints()

#=========== MISC FUNCTIONALITY ====================================
    
    def SetJointsToAdd(self, joints):
        self.logger.debug('\tLimbSetup_UI > SetJointsToAdd')
        self.ClearJointsToAdd()
        self.limbHier_ui
        self.limbHier_ui.SetAddEnabled(bool(joints))
        if not joints:
            return
        self.logger.debug('\tJOINTS TO ADD:')
        for joint in joints:
            self.logger.debug('\t\t%s' % joint)
        # Set Limb Hier RMB > Add Limb
        if self.jntMng.AreJointsSiblings(joints):
            self.jointsToCreateLimb = joints
        elif self.jntMng.AreJointsChained(joints):
            jointChain = self.jntMng.GetCompleteJointChain(joints)
            haveLimbs = [self.jntMng.HasLimb(j) for j in jointChain]
            if any(haveLimbs):
                self.limbHier_ui.SetAddEnabled(0)
            else:
                self.jointsToCreateLimb = jointChain
        else:
            self.limbHier_ui.SetAddEnabled(0)
            return

        # Set Joint Hier RMB > Add Joints
        if not self.limb:
            return
        # limbJoints = self.jntMng.GetLimbTempJoints(self.limb)
        limbJoints = self.jntMng.GetLimbJoints(self.limb)
        allJoints = joints + limbJoints
        if len(limbJoints) == 0 or self.jntMng.AreJointsSiblings(allJoints):
            self.jointsToAddToLimb = joints
            self.jntHier_ui.SetAddEnabled(1)
        elif self.jntMng.AreJointsChained(allJoints):
            temp = []
            for joint in self.jntMng.GetCompleteJointChain(allJoints):
                if joint.hasAttr('limb'):
                    jointLimb = pm.listConnections(joint.limb)
                    if jointLimb[0] != self.limb:
                        return 
                else:
                    temp.append(joint)
            self.jointsToAddToLimb = temp
            self.jntHier_ui.SetAddEnabled(1)
    
    def ClearJointsToAdd(self):
        self.logger.debug('\tLimbSetup_UI > ClearJointsToAdd')
        self.jointsToAddToLimb = []
        self.jointsToCreateLimb = []
        self.jntHier_ui.SetAddEnabled(0)

    def UpdateSceneFrame(self):
        self.logger.debug('\tLimbSetup_UI > UpdateSceneFrame')
        sceneCount = len(pm.ls(type='joint'))
        limbJntCount = self.jntMng.GetJointCount()
        txt = 'Scene Joints (%d of %d used)' % (limbJntCount, sceneCount)
        pm.frameLayout(self.sceneHier_fl, e=1, l=txt)

    def UpdateJointFrame(self, limb = None):
        self.logger.debug('\tLimbSetup_UI > UpdateJointFrame')
        pm.frameLayout(self.jntHier_fl, e=1, en=0, l='---')
        if limb:
            txt = "%s's Joints" % limb.pfrsName.get()
            pm.frameLayout(self.jntHier_fl, e=1, en=1, l=txt)

    def SelectSceneJoints(self, joints):
        self.logger.debug('\tLimbSetup_UI > SelectSceneJoints')
        self.sceneHier_ui.acceptSelection = False
        pm.select(joints)
        self.sceneHier_ui.acceptSelection = True
        # jointsToAdd = [j for j in joints if j in self.sceneHier_ui.selectableJoints]
        # self.SetJointsToAdd(jointsToAdd)

