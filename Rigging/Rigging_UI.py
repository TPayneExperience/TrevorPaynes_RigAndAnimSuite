
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

        # NEED A BETTER PLACE FOR THIS
        
        self.limbMng = lm.Limb_Manager(nameMng)
        self.jntMng = jm.Joint_Manager(self.limbMng, nameMng)
        self.grpMng = grp.BHV_Group_Manager(self.limbMng,
                                            self.jntMng,
                                            self.nameMng)
        self.ctrMng = ctr.APP_Control_Manager(  self.grpMng,
                                                self.nameMng)
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

        self._Setup()
    
    def NewRig(self, rigRoot):
        pm.addAttr(rigRoot, ln='lastLimbsTabIndex', at='short')
        self.rigRoot = rigRoot
        self.limbMng.NewRig(rigRoot)
        self.jntMng.NewRig(rigRoot)
        self.grpMng.NewRig(rigRoot)
        self.ctrMng.NewRig(rigRoot)

#=========== SETUP ====================================

    def _Setup(self):
        with pm.tabLayout(cc=self.TabChanged) as self.tab:
            with pm.horizontalLayout() as self.jntSetupTab:
                self.jntSetup_ui = js_ui.JointSetup_UI()
            with pm.horizontalLayout() as self.limbSetupTab:
                self.limbSetup_ui = ls_ui.LimbSetup_UI( self.limbMng, 
                                                        self.jntMng, 
                                                        self.nameMng,
                                                        self)
            with pm.horizontalLayout() as self.bhvTab:
                self.bhv_ui = bhv_ui.Behavior_UI(   self.limbMng,
                                                    self.jntMng,
                                                    self.bhvMng,
                                                    self.grpMng,
                                                    self.ctrMng)
            with pm.horizontalLayout() as self.appTab:
                self.app_ui = app_ui.Appearance_UI( self.limbMng,
                                                    self.grpMng,
                                                    self.ctrMng,
                                                    self.nameMng,
                                                    self)
            with pm.horizontalLayout() as self.testTab:
                self.test_ui = test_ui.Test_UI( self.limbMng,
                                                self.jntMng,
                                                self.grpMng,
                                                self.ctrMng)
        pm.tabLayout(  self.tab, 
                    edit=1, 
                    tabLabel=(  (self.jntSetupTab,'Joint Setup'), 
                                (self.limbSetupTab, 'Limb Setup'), 
                                (self.bhvTab, 'Behaviors'), 
                                (self.appTab, 'Appearance'), 
                                (self.testTab, 'Test')))
    
#=========== TAB SWITCHING ====================================

    def Setup_Editable(self):
        index = self.rigRoot.limbsTab.get()
        if (index == 1):
            self.limbSetup_ui.Setup_Editable()
        if (index == 2):
            self.bhv_ui.Setup_Editable()
        if (index == 3):
            self.app_ui.Setup_Editable() 
        if (index == 4):
            self.test_ui.Setup_Editable() 
        
    def Teardown_Editable(self):
        index = self.rigRoot.limbsTab.get()
        if (index == 1): 
            self.limbSetup_ui.Teardown_Editable()
        if (index == 2):
            self.bhv_ui.Teardown_Editable()
        if (index == 3):
            self.app_ui.Teardown_Editable() 
        if (index == 4):
            self.test_ui.Teardown_Editable() 
        
    def TabChanged(self):
        self.Teardown_Editable()
        nextIndex = pm.tabLayout(self.tab, q=1, selectTabIndex=1)
        self.rigRoot.limbsTab.set(nextIndex-1)
        self.Setup_Editable()

#=========== FUNCTIONALITY ====================================

    def AddLimb(self, limb): # Limb Setup > Add
        self.bhvMng.AddLimb(limb)
        self.parent.AddLimb(limb)

    def RemoveLimb(self, limb): # Limb Setup > Remove
        self.parent.RemoveLimb(limb)
    
    def UpdateLimb(self, limb): # Limb Setup Tab > Teardown
        bhvs = self.bhvMng.GetBhvOptions(limb)
        bhvIndex = self.bhvMng.GetBhvIndex(bhvs[0])
        self.bhvMng.SetBhvType(limb, bhvIndex)
        self.parent.UpdateLimb(limb)

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
