
import pymel.core as pm

import Data.Joint_Manager as jm
reload(jm)
import Data.Limb_Manager as lm
reload(lm)
import Data.BHV_Limb_Manager as bhv
reload(bhv)
import Data.BHV_Group_Manager as grp
reload(grp)
import Data.APP_Control_Manager as ctr
reload(ctr)

import Data.SaveLoad_Skeleton as saveLoadSkel
reload(saveLoadSkel)

import JointSetup.JointSetup_UI as js_ui
reload(js_ui)
import LimbSetup.LimbSetup_UI as ls_ui
reload(ls_ui)
import Behavior.Behavior_UI as bhv_ui
reload(bhv_ui)
import Appearance.Appearance_UI as app_ui
reload(app_ui)
import Test.Test_UI as test_ui
reload(test_ui)

import Popups.MirrorLimbs_UI as mir_ui
reload(mir_ui)
import Popups.DuplicateLimbs_UI as dup_ui
reload(dup_ui)

import Popups.SaveTemplate_UI as save_ui
reload(save_ui)
import Popups.LoadTemplate_UI as load_ui
reload(load_ui)


class Rigging_UI:
    def __init__(self, nameMng, fileMng, jsonMng, parent):
        self.nameMng = nameMng
        self.fileMng = fileMng
        self.jsonMng = jsonMng
        self.parent = parent
        self.logger = parent.logger

        # NEED A BETTER PLACE FOR THIS
        
        self.limbMng = lm.Limb_Manager(nameMng)
        self.grpMng = grp.BHV_Group_Manager(self.limbMng,
                                            self.nameMng)
        self.ctrMng = ctr.APP_Control_Manager(  self.grpMng,
                                                self.nameMng)
        self.jntMng = jm.Joint_Manager( self.limbMng, 
                                        self.grpMng,
                                        self.ctrMng,
                                        nameMng,
                                        self)
        self.bhvMng = bhv.BHV_Limb_Manager( self.limbMng, 
                                            self.jntMng, 
                                            self.grpMng,
                                            self.ctrMng)
        self.saveLoadSkel = saveLoadSkel.SaveLoad_Skeleton( self.limbMng, 
                                                    self.jntMng)

        self.saveDialog = save_ui.SaveTemplate_UI(  self.limbMng, 
                                                    self.nameMng)
        self.loadDialog = load_ui.LoadTemplate_UI()
        self.dupDialog = dup_ui.DuplicateLimbs_UI(self.limbMng)
        self.mirDialog = mir_ui.MirrorLimbs_UI(self.limbMng)

        self.lastTab = 1
        self.rigRoot = None

        self._Setup()
    
    def NewRig(self, rigRoot):
        # pm.addAttr(rigRoot, ln='lastRiggingTabIndex', at='short')
        self.rigRoot = rigRoot
        self.limbMng.NewRig(rigRoot)
        self.jntMng.NewRig(rigRoot)
        self.grpMng.NewRig(rigRoot)
        self.ctrMng.NewRig(rigRoot)

#=========== SETUP ====================================

    def _Setup(self):
        with pm.tabLayout(cc=self.TabChanged) as self.tab:
            with pm.horizontalLayout() as self.jntSetupTab:
                self.jntSetup_ui = js_ui.JointSetup_UI( self.jntMng,
                                                        self)
            with pm.horizontalLayout() as self.limbSetupTab:
                self.limbSetup_ui = ls_ui.LimbSetup_UI( self.limbMng, 
                                                        self.jntMng,
                                                        self.grpMng,
                                                        self.ctrMng, 
                                                        self.nameMng,
                                                        self)
            with pm.horizontalLayout() as self.bhvTab:
                self.bhv_ui = bhv_ui.Behavior_UI(   self.limbMng,
                                                    self.jntMng,
                                                    self.bhvMng,
                                                    self.grpMng,
                                                    self.ctrMng,
                                                    self)
            with pm.horizontalLayout() as self.appTab:
                self.app_ui = app_ui.Appearance_UI( self.limbMng,
                                                    self.bhvMng,
                                                    self.grpMng,
                                                    self.ctrMng,
                                                    self.nameMng,
                                                    self)
            with pm.horizontalLayout() as self.testTab:
                self.test_ui = test_ui.Test_UI( self.limbMng,
                                                self.jntMng,
                                                self.bhvMng,
                                                self.grpMng,
                                                self.ctrMng,
                                                self)
        pm.tabLayout(  self.tab, 
                    e=1, 
                    tabLabel=(  (self.jntSetupTab,'Joint Setup'), 
                                (self.limbSetupTab, 'Limb Setup'), 
                                (self.bhvTab, 'Behaviors'), 
                                (self.appTab, 'Appearance'), 
                                (self.testTab, 'Test')))
    
#=========== TAB SWITCHING ====================================

    def Setup_Editable(self):
        self.logger.info('Rigging > SETUP')
        self.Setup_SubTab()
        self.UpdateControlStates()
    
    def Setup_SubTab(self):
        index = pm.tabLayout(self.tab, q=1, selectTabIndex=1)-1
        self.rigRoot.riggingTab.set(index)
        if (index == 0):
            self.jntSetup_ui.Setup_Editable()
        elif (index == 1):
            self.limbSetup_ui.Setup_Editable()
        elif (index == 2):
            self.bhv_ui.Setup_Editable()
        elif (index == 3):
            self.app_ui.Setup_Editable() 
        elif (index == 4):
            self.test_ui.Setup_Editable() 

    def Teardown_Editable(self):
        self.Teardown_SubTab()
        self.UpdateNonInfJoints()
        self.logger.info('Rigging > TEARDOWN\n')
        self.logger.info('--------------------------------\n')
    
    def Teardown_SubTab(self):
        lastIndex = self.rigRoot.riggingTab.get()
        if (lastIndex == 0): 
            self.jntSetup_ui.Teardown_Editable()
        elif (lastIndex == 1): 
            self.limbSetup_ui.Teardown_Editable()
        elif (lastIndex == 2):
            self.bhv_ui.Teardown_Editable()
        elif (lastIndex == 3):
            self.app_ui.Teardown_Editable() 
        elif (lastIndex == 4):
            self.test_ui.Teardown_Editable() 

    def UpdateNonInfJoints(self):
        lastIndex = self.rigRoot.riggingTab.get()
        nextIndex = pm.tabLayout(self.tab, q=1, selectTabIndex=1)-1
        if lastIndex in [0, 1] and nextIndex in [2, 3, 4]:
            for limb in self.limbMng.GetAllLimbs():
                if limb.bhvType.get() not in self.bhvMng.rfkTypeIndexes:
                    if limb.limbType.get() == 2: # 3+ chain
                        self.jntMng.Setup_NonInfJoint(limb)
            self.SetupEditable_Limbs()
        elif lastIndex in [2, 3, 4] and nextIndex in [0, 1]:
            self.TeardownEditable_Limbs()
            for limb in self.limbMng.GetAllLimbs():
                if limb.bhvType.get() not in self.bhvMng.rfkTypeIndexes:
                    if limb.limbType.get() == 2: # 3+ chain
                        self.jntMng.Teardown_NonInfJoint(limb)
        
    def UpdateControlStates(self):
        index = self.rigRoot.riggingTab.get()
        if index in [0, 1]:
            self.ctrMng.SetLayerState(False, True)
        elif index == 2:
            self.ctrMng.SetLayerState(True, True)
        elif index in [3, 4]:
            self.ctrMng.SetLayerState(True, False)
        
    def TabChanged(self):
        self.Teardown_SubTab()
        self.UpdateNonInfJoints()
        self.Setup_SubTab()
        self.UpdateControlStates()

    def SetupEditable_Limbs(self):
        '''When switchin from tabs 0/1 to 2/3/4'''
        allLimbs = self.limbMng.GetAllLimbs()
        for limb in allLimbs:
            joints = self.jntMng.GetLimbJoints(limb, False)
            for joint in joints:
                self.jntMng.UpdateJointName(joint)
                # self.jntMng.Setup_Editable(joint)

            # If limb type changed, reset bhvType to default FK
            # limbType = limb.limbType.get()
            # if not joints:
            #     limb.limbType.set(0)
            #     limb.bhvType.set(7) # Empty
            # elif (len(joints) == 1):
            #     if limbType != 1:
            #         limb.limbType.set(1)
            #         limb.bhvType.set(6) # FK Branch
            #     # group = pm.listConnections(joints[0].group)[0]
            # elif self.jntMng.AreJointsChained(joints):
            #     if (len(joints) == 2):
            #         if (limbType != 4):
            #             limb.limbType.set(4)
            #             limb.bhvType.set(0) # FK Chain
            #     elif limbType != 2:
            #         limb.limbType.set(2)
            #         limb.bhvType.set(0) # FK Chain
            #     # for joint in joints:
            #     #     group = pm.listConnections(joint.group)[0]
            # elif self.jntMng.AreJointsSiblings(joints):
            #     if limbType != 3:
            #         limb.limbType.set(3)
            #         limb.bhvType.set(6) # FK Branch
                # for joint in joints:
                #     group = pm.listConnections(joint.group)[0]

            # Enable Group Vis (created in bhv tab by bhv switching)
            bhvType = limb.bhvType.get()
            if bhvType in self.bhvMng.fkTypeIndexes:
                for joint in self.jntMng.GetLimbJoints(limb, False):
                    group = pm.listConnections(joint.group)[0]
                    group.v.set(1)
            elif bhvType in self.bhvMng.distanceIndexes:
                group = pm.listConnections(limb.bhvDistanceGroup)[0]
                group.v.set(1)
                if (bhvType == 4): # LookAt
                    self.grpMng.SetupEditable_DistanceGroup(group, joints[0])
                    self.grpMng.UpdateGroupDistance(group)
                elif bhvType in [1,2]: # IKPV
                    self.grpMng.SetupEditable_IKPVGroup(group, joints)
                    self.grpMng.UpdateGroupDistance(group)
            elif (bhvType == 7): # EMPTY
                group = pm.listConnections(limb.bhvEmptyGroup)[0]
                group.v.set(1)
                # groups = pm.listConnections(limb.bhvEmptyGroup)
                # if groups:
                #     group = groups[0]
                #     group.v.set(1)
                # else:
                #     group = self.grpMng.AddEmptyGroup(limb)
                #     self.ctrMng.Add(group, self.ctrMng.ctrTypes[0])
                #     self.grpMng.UpdateGroupName(limb, group)
            if (bhvType in self.bhvMng.fkikTypeIndexes): # FKIK
                group = pm.listConnections(limb.bhvFKIKSwitchGroup)[0]
                group.v.set(1)
                self.grpMng.UpdateFKIKSwitchJoint(group, joints)

    def TeardownEditable_Limbs(self):
        '''When switchin from tabs 3/4/5 to 1/2'''
        # Set Joint temp Connections, unparent limb groups
        for limb in self.limbMng.GetAllLimbs():
            jointGroups = []
            for joint in self.jntMng.GetLimbJoints(limb, False):
                # self.jntMng.Teardown_Editable(joint)
                jointGroups += pm.listConnections(joint.group)
            limbGroups = pm.listConnections(limb.bhvDistanceGroup)
            if limb.bhvType.get() in self.bhvMng.distanceIndexes:
                self.grpMng.TeardownEditable_DistanceGroup(limbGroups[0])
            limbGroups += pm.listConnections(limb.bhvEmptyGroup)
            limbGroups += pm.listConnections(limb.bhvFKIKSwitchGroup)
            for group in limbGroups:
                pm.parent(group, self.grpMng.bhvGroup)
            for group in limbGroups + jointGroups:
                group.v.set(0)


#=========== FUNCTIONALITY ====================================

    def AddLimb(self, limb): # Limb Setup > Add
        self.bhvMng.AddLimb(limb)
        self.parent.AddLimb(limb)

    def RemoveLimb(self, limb): # Limb Setup > Remove
        self.parent.RemoveLimb(limb)
    
    def AutoBuildHier(self):
        self.bhv_ui.limbHier_ui.LoadSkelHier(1)

    # def UpdateLimb(self, limb): # Limb Setup Tab > Teardown
    #     bhvs = self.bhvMng.GetBhvOptions(limb)
    #     bhvIndex = self.bhvMng.GetBhvIndex(bhvs[0])
        # self.bhvMng.SetBhvType(limb, bhvIndex)
        # self.parent.UpdateLimb(limb)

#=========== DIALOGS ====================================

    # def Save_Dialog(self, ignore):
    #     limbIDs, templateName = self.saveDialog.SaveTemplate_Dialog()
    #     if limbIDs:
    #         data = self.saveLoadSkel.GetData(limbIDs)
    #         filePath = self.fileMng.GetTemplatePath(templateName)
    #         self.jsonMng.Save(filePath, data)

    
    # def Load_Dialog(self, ignore):
    #     templateFiles = self.fileMng.GetTemplateFiles()
    #     filePaths = self.loadDialog.LoadTemplate_Dialog(templateFiles)
    #     if filePaths:
    #         for filePath in filePaths:
    #             data = self.jsonMng.Load(filePath)
    #             self.saveLoadSkel.LoadData(data)
    #         # self.skel_ui.Populate()

    # def Duplicate_Dialog(self, ignore):
    #     sourceParentIDs = self.dupDialog.Duplicate_Dialog()
    #     if sourceParentIDs:
    #         sourceToTargetIDs = self._Duplicate_Limbs(sourceParentIDs)
    #         for sourceID, targetID in sourceToTargetIDs.items():
    #             self.jntMng.DuplicateLimb(sourceID, targetID)
            # self.skel_ui.Populate()

    # def _Duplicate_Limbs(self, sourceParentIDs):
    #         sourceToTargetIDs = {}
    #         for sourceID in sourceParentIDs:
    #             targetID = self.limbMng.DuplicateLimb(sourceID)
    #             sourceToTargetIDs[sourceID] = targetID

    #         for sParentID in sourceParentIDs:
    #             for sChildID in self.limbMng.GetLimbCreationOrder(sParentID)[1:]:
    #                 tChildID = self.limbMng.DuplicateLimb(sChildID)
    #                 sChild = self.limbMng.GetLimb(sChildID)
    #                 tChild = self.limbMng.GetLimb(tChildID)
    #                 tParentID = sourceToTargetIDs[sChild.parentLimbID.get()]
    #                 tChild.parentLimbID.set(tParentID)
    #                 sourceToTargetIDs[sChildID] = tChildID
    #         return sourceToTargetIDs

    # def Mirror_Dialog(self, axis):
    #     sourceParentIDs = self.mirDialog.Mirror_Dialog()
    #     if sourceParentIDs:
    #         sourceToTargetIDs = self._Duplicate_Limbs(sourceParentIDs)
    #         for sourceID, targetID in sourceToTargetIDs.items():
    #             self.limbMng.SetMirrorLimb(sourceID, targetID)
    #             self.jntMng.DuplicateLimb(sourceID, targetID)
    #             self.jntMng.SetMirrorLimb(sourceID, targetID, axis)
    #         self.skel_ui.Populate()

    # def UpdateNaming(self):
    #     self.skel_ui.RebuildAll()
