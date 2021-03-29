
import pymel.core as pm

import Poses.ANM_Poses_UI as poses_UI
reload(poses_UI)

class Animation_UI:
    def __init__(self, parent):
        self.pfrs = parent.pfrs
        self.logger = parent.logger
        # self.parent = parent
        # self.nameMng = parent.nameMng
        # self.fileMng = parent.fileMng
        # self.jsonMng = parent.jsonMng

        # # NEED A BETTER PLACE FOR THIS
        
        # self.limbMng = parent.limbMng
        # self.ctrMng = parent.ctrMng
        # self.grpMng = parent.grpMng
        # self.jntMng = parent.jntMng
        # self.rigBHV = parent.rigBHV
        # self.bldMng = parent.bldMng

        # self.saveLoadSkel = saveLoadSkel.SaveLoad_Skeleton(self)

        # self.saveDialog = save_ui.SaveTemplate_UI(self)
        # self.loadDialog = load_ui.LoadTemplate_UI()
        # self.dupDialog = dup_ui.DuplicateLimbs_UI(self)
        # self.mirDialog = mir_ui.MirrorLimbs_UI(self)

        self.lastTab = 1


        self._Setup()

#=========== SETUP ====================================

    def _Setup(self):
        with pm.tabLayout() as self.tab:
            with pm.horizontalLayout() as self.posesTab:
                self.poses_ui = poses_UI.ANM_Poses_UI(self)
        pm.tabLayout(   self.tab, 
                        e=1, 
                        tabLabel=(  (self.posesTab,'Poses')))
    
#=========== TAB SWITCHING ====================================

    def InitTab(self):
        self.logger.info('\tANM_UI > InitTab')
        index = self.pfrs.root.animationTab.get()
        pm.tabLayout(self.tab, e=1, sti=index+1)
        pm.tabLayout(self.tab, e=1, cc=self.TabChanged)

    def Setup_Editable(self):
        self.logger.info('Animation SETUP')
        self.Setup_SubTab()
    
    def Setup_SubTab(self):
        self.logger.debug('\tAnimation_UI > Setup_SubTab')
        newIndex = pm.tabLayout(self.tab, q=1, selectTabIndex=1)-1
        self.pfrs.root.animationTab.set(newIndex)
        if (newIndex == 0):
            self.poses_ui.Setup_Editable()
        

    def Teardown_Editable(self):
        self.logger.info('Animation TEARDOWN\n')
        self.logger.info('--------------------------------\n')
    
    def Teardown_SubTab(self):
        self.logger.debug('\tAnimation_UI > Teardown_SubTab')
        lastIndex = self.pfrs.root.animationTab.get()
        if (lastIndex == 0): 
            self.poses_ui.Teardown_Editable()

    def TabChanged(self):
        self.Teardown_SubTab()
        self.Setup_SubTab()
