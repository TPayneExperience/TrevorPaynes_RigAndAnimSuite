
import pymel.core as pm

import LS_Scene_Hierarchy_UI as sceneHier_UI
reload(sceneHier_UI)
import LS_Limb_Hierarchy_UI as limbHier_UI
reload(limbHier_UI)
import LS_Joint_Hierarchy_UI as jointHier_UI
reload(jointHier_UI)

class LimbSetup_UI:
    def __init__(self, limbMng, jntMng, grpMng, ctrMng, nameMng, parent):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.grpMng = grpMng
        self.ctrMng = ctrMng
        self.nameMng = nameMng
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
                self.sceneHier_ui = sceneHier_UI.LS_Scene_Hierarchy_UI( self.limbMng,
                                                                        self.jntMng,
                                                                        self)
        with pm.verticalLayout():
            with pm.frameLayout('Limbs', bv=1):
                self.limbHier_ui = limbHier_UI.LS_Limb_Hierarchy_UI(self.limbMng,
                                                                    self.jntMng,
                                                                    self.grpMng,
                                                                    self.ctrMng,
                                                                    self.nameMng,
                                                                    self)
            with pm.frameLayout(l='---', bv=1) as self.jntHier_fl:
                self.jntHier_ui = jointHier_UI.LS_Joint_Hierarchy_UI(   self.limbMng,
                                                                        self.jntMng,
                                                                        self.grpMng,
                                                                        self.nameMng,
                                                                        self)
           
#=========== TAB FUNCTIONALITY ====================================
    
    def Setup_Editable(self):
        self.logger.info('Rigging > Limb Setup SETUP')
        self.limbMng.RebuildLimbDict()
        # for limb in self.limbMng.GetAllLimbs():
            # for joint in self.jntMng.GetLimbJoints(limb):
                # pm.disconnectAttr(joint.tempLimb)
                # pm.connectAttr(limb.tempJoints, joint.tempLimb)
        self.Populate()
        if not self.scriptJob:
            self.scriptJob = pm.scriptJob( e=("SelectionChanged",self.sceneHier_ui.SelectSceneHierJoints), pro=True)
            print ('STARTING LimbSetup selection detection script...')

    def Teardown_Editable(self):
        self.logger.info('Rigging > Limb Setup TEARDOWN\n')
        self.KillScripts()
        self.parent.parent.RebuildLimbs()
    
    def KillScripts(self):
        if self.scriptJob:
            pm.scriptJob( kill=self.scriptJob, f=True)
            self.scriptJob = None
            print ('KILLING LimbSetup selection detection script...\n')

#=========== LIMB FUNCTIONALITY ====================================
    
    def AddLimb(self, ignore): # Limb Hier UI > RMB > Add
        self.logger.info('\tLimbHier > ADD Limb')
        limb = self.AddLimbByJoints(self.jointsToCreateLimb)
        self.parent.AddLimb(limb) # BHV Limb Mng add
        self.ClearJointsToAdd()
        pm.select(d=1)
        self.jntHier_ui.SetLimb(limb)
        self.PopulateJoints()
        self.limbHier_ui.Populate()
    
    def AddLimbByJoints(self, joints): # Scene hier UI > RMB > Autobuild
        self.logger.debug('\tLimbSetup_UI > AddLimbByJoints')
        limb = None
        if (len(joints) < 2):
            limb = self.limbMng.Add()
            if joints:
                self.jntMng.Add(limb, joints[0])
                # self._AddJoint(limb, joints[0])
        # CHAIN LIMB
        if not limb and self.jntMng.AreJointsChained(joints):
            limb = self.limbMng.Add()
            # Reverse = prevent groups from adding to joint display layer
            for joint in self.jntMng.GetJointChain(joints)[::-1]:
                self.jntMng.Add(limb, joint)
            self.jntMng.ReindexJoints(limb)

        # BRANCH LIMB
        if not limb and self.jntMng.AreJointsSiblings(joints):
            limb = self.limbMng.Add()
            for joint in joints:
                self.jntMng.Add(limb, joint)
            self.jntMng.ReindexJoints(limb)
        return limb

    # def _AddJoint(self, limb, joint):
    #     if self.jntMng.Teardown_Editable(limb, joint):
    #         group = self.grpMng.AddJointGroup(limb, joint)
    #         self.ctrMng.Add(group, 'Circle_Wire') # Fix later

    def RemoveLimb(self, limb):
        self.logger.debug('\tLimbSetup_UI > RemoveLimb')
        self.UpdateJointFrame()
        self.parent.RemoveLimb(limb)

    def RenameLimbs(self, limb):
        self.logger.debug('\tLimbSetup_UI > RenameLimbs')
        groups = pm.listConnections(limb.bhvDistanceGroup)
        groups += pm.listConnections(limb.bhvEmptyGroup)
        groups += pm.listConnections(limb.bhvFKIKSwitchGroup)
        for group in groups:
            self.grpMng.UpdateGroupName(group)
        # for joint in pm.listConnections(limb.infJoints):
        for joint in pm.listConnections(limb.joints):
            self.jntMng.UpdateJointName(joint)
            group = pm.listConnections(joint.group)[0]
            self.grpMng.UpdateGroupName(group)
        self.Populate()

    def FlipSides(self):
        self.logger.debug('\tLimbSetup_UI > FlipSides')
        self.Populate()

    def LimbSelected(self, limb):
        self.logger.debug('\tLimbSetup_UI > RenameLimbs')
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
        for joint in joints:
            self.logger.debug('\t\t%s' % joint)
        self.ClearJointsToAdd()
        if joints:
            # Set Limb Hier RMB > Add Limb
            if len(joints) == 1 or self.jntMng.AreJointsSiblings(joints):
                self.jointsToCreateLimb = joints
            elif self.jntMng.AreJointsChained(joints):
                jointChain = self.jntMng.GetJointChain(joints)
                for joint in jointChain:
                    if self.jntMng.HasLimb(joint):
                        self.limbHier_ui.SetAddEnabled(0)
                else:
                    self.jointsToCreateLimb = jointChain
            else:
                self.limbHier_ui.SetAddEnabled(0)
                return

            # Set Joint Hier RMB > Add Joints
            if self.limb:
                # limbJoints = self.jntMng.GetLimbTempJoints(self.limb)
                limbJoints = self.jntMng.GetLimbJoints(self.limb)
                allJoints = joints + limbJoints
                if len(limbJoints) == 0 or self.jntMng.AreJointsSiblings(allJoints):
                    self.jointsToAddToLimb = joints
                    self.jntHier_ui.SetAddEnabled(1)
                elif self.jntMng.AreJointsChained(allJoints):
                    jointChain = self.jntMng.GetJointChain(allJoints)
                    for joint in jointChain:
                        # if self.jntMng.HasTempLimb(joint) and \
                        #     (self.jntMng.GetTempLimb(joint) != self.limb):
                        #     return 
                        if self.jntMng.HasLimb(joint) and \
                            (self.jntMng.GetLimb(joint) != self.limb):
                            return 
                    # t = [j for j in jointChain if not self.jntMng.HasTempLimb(j)]
                    t = [j for j in jointChain if not self.jntMng.HasLimb(j)]
                    self.jointsToAddToLimb = t
                    self.jntHier_ui.SetAddEnabled(1)
    
    def ClearJointsToAdd(self):
        self.logger.debug('\tLimbSetup_UI > ClearJointsToAdd')
        self.jointsToAddToLimb = []
        self.jointsToCreateLimb = []
        self.jntHier_ui.SetAddEnabled(0)
        self.limbHier_ui.SetAddEnabled(1)

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

