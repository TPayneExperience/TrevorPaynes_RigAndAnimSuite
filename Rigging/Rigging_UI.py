
import pymel.core as pm

import Data.SaveLoad_Skeleton as saveLoadSkel
reload(saveLoadSkel)

import JointSetup.JointSetup_UI as js_ui
reload(js_ui)
import LimbSetup.LimbSetup_UI as ls_ui
reload(ls_ui)
import Behavior.RIG_Behaviors_UI as bhv_ui
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
    def __init__(self, parent):
        self.parent = parent
        self.nameMng = parent.nameMng
        self.fileMng = parent.fileMng
        self.jsonMng = parent.jsonMng
        self.pfrs = parent.pfrs
        self.logger = parent.logger

        # NEED A BETTER PLACE FOR THIS
        
        self.limbMng = parent.limbMng
        self.ctrMng = parent.ctrMng
        self.grpMng = parent.grpMng
        self.jntMng = parent.jntMng
        self.rigBHV = parent.rigBHV
        self.rigMng = parent.rigMng

        # self.saveLoadSkel = saveLoadSkel.SaveLoad_Skeleton(self)

        # self.saveDialog = save_ui.SaveTemplate_UI(self)
        # self.loadDialog = load_ui.LoadTemplate_UI()
        # self.dupDialog = dup_ui.DuplicateLimbs_UI(self)
        # self.mirDialog = mir_ui.MirrorLimbs_UI(self)

        self.lastTab = 1

        self._Setup()

#=========== SETUP ====================================

    def _Setup(self):
        with pm.tabLayout(cc=self.TabChanged) as self.tab:
            with pm.horizontalLayout() as self.jntSetupTab:
                self.jntSetup_ui = js_ui.JointSetup_UI(self)
            with pm.horizontalLayout() as self.limbSetupTab:
                self.limbSetup_ui = ls_ui.LimbSetup_UI(self)
            with pm.horizontalLayout() as self.bhvTab:
                self.bhv_ui = bhv_ui.RIG_Behaviors_UI(self)
            with pm.horizontalLayout() as self.appTab:
                self.app_ui = app_ui.Appearance_UI(self)
            with pm.horizontalLayout() as self.testTab:
                self.test_ui = test_ui.Test_UI(self)
        pm.tabLayout(  self.tab, 
                    e=1, 
                    tabLabel=(  (self.jntSetupTab,'Joint Setup'), 
                                (self.limbSetupTab, 'Limb Setup'), 
                                (self.bhvTab, 'Behaviors'), 
                                (self.appTab, 'Appearance'), 
                                (self.testTab, 'Test')))
    
#=========== TAB SWITCHING ====================================

    def Setup_Editable(self):
        self.logger.info('Rigging SETUP')
        self.Setup_SubTab()
        self.UpdateControlVis()
    
    def Setup_SubTab(self):
        self.logger.debug('\tRigging_UI > Setup_SubTab')
        newIndex = pm.tabLayout(self.tab, q=1, selectTabIndex=1)-1
        self.pfrs.root.riggingTab.set(newIndex)
        if (newIndex == 0):
            self.jntSetup_ui.Setup_Editable()
        elif (newIndex == 1):
            self.limbSetup_ui.Setup_Editable()
        elif (newIndex == 2):
            self.bhv_ui.Setup_Editable()
        elif (newIndex == 3):
            self.app_ui.Setup_Editable() 
        elif (newIndex == 4):
            self.test_ui.Setup_Editable() 
        

    def Teardown_Editable(self):
        self.Teardown_SubTab()
        # self.UpdateNonInfJoints()
        self.logger.info('Rigging TEARDOWN\n')
        self.logger.info('--------------------------------\n')
    
    def Teardown_SubTab(self):
        self.logger.debug('\tRigging_UI > Teardown_SubTab')
        lastIndex = self.pfrs.root.riggingTab.get()
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

    def UpdateControlVis(self):
        self.logger.debug('\tRigging_UI > UpdateControlVis')
        index = self.pfrs.root.riggingTab.get()
        if index in [0, 1]:
            self.ctrMng.SetLayerState(False, True)
        elif index == 2:
            self.ctrMng.SetLayerState(True, True)
        elif index in [3, 4]:
            self.ctrMng.SetLayerState(True, False)
        
    def TabChanged(self):
        self.Teardown_SubTab()
        # self.UpdateNonInfJoints()
        self.Setup_SubTab()
        self.UpdateControlVis()


#=========== FUNCTIONALITY ====================================

    # def AddLimb(self, limb): # Limb Setup > Add
    #     self.rigBHV.AddLimb(limb)
    #     self.rigBHV.Setup_LimbGroupVisibility(limb)
        # self.parent.AddLimb(limb)

    # def RemoveLimb(self, limb): # Limb Setup > Remove
    #     self.parent.RemoveLimb(limb)
    
    # def UpdateLimb(self, limb): # Limb Setup Tab > Teardown
    #     bhvs = self.rigBHV.GetBhvOptions(limb)
    #     bhvIndex = self.rigBHV.GetBhvIndex(bhvs[0])
        # self.rigBHV.SetBhvType(limb, bhvIndex)
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
    #                 tParentID = sourceToTargetIDs[sChild.limbParentID.get()]
    #                 tChild.limbParentID.set(tParentID)
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
