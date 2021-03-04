
import webbrowser

import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

import Rigging.Rigging_UI as rig_ui
reload(rig_ui)
import Skinning.Skinning_UI as skin_ui
reload(skin_ui)
import RigSetup.RigSetup_UI as rs_ui
reload(rs_ui)

import PFRS_Debug as debug
reload(debug)

import payneFreeRigSuite as pfrs
reload(pfrs)

class PayneFreeRigSuite_UI:
    def __init__(self):
        self.pfrs = pfrs.PayneFreeRigSuite()

        self.fileMng = self.pfrs.fileMng
        self.jsonMng = self.pfrs.jsonMng

        self.nameMng = self.pfrs.nameMng
        self.limbMng = self.pfrs.limbMng
        self.ctrMng = self.pfrs.ctrMng
        self.jntMng = self.pfrs.jntMng
        self.grpMng = self.pfrs.grpMng
        self.rigBHV = self.pfrs.rigBHV
        self.bldMng = self.pfrs.bldMng

        # SKINNING
        self.meshMng = self.pfrs.meshMng
        self.skinMng = self.pfrs.skinMng

        self.logger = self.pfrs.logger

        # UI
        # self.rigSetupUI = rs_ui.RigSetup_UI(self.nameMng,
        #                                     self.fileMng,
        #                                     self)
        self._Setup()
        
        debug.PFRS_Debug(self)


#=========== SETUP ====================================

    def _Setup(self):
        name = rigData.LICENSE
        name += ' - Payne Free %s Suite' % rigData.SUITE
        name += ' - v%s' %  rigData.__version__
        name += ' - by Trevor Payne'
        with pm.window(mb=True,mbv=True, t=name, w=500, h=500) as self.win:
            with pm.tabLayout(e=0, cc=self.TabChanged) as self.tab:
                with pm.horizontalLayout() as self.rigging_l:
                    self.rig_ui = rig_ui.Rigging_UI(self)
                with pm.horizontalLayout(en=0) as self.skinning_l:
                    self.skin_ui = skin_ui.Skinning_UI(self)
                with pm.horizontalLayout(en=0) as self.animation_l:
                    with pm.tabLayout() as self.animTab:
                        with pm.horizontalLayout():
                            pm.button('test', label='Three')
        pm.tabLayout(self.tab, e=1, 
                    tabLabel=(  (self.rigging_l,'Rigging'), 
                                (self.skinning_l,'Skinning'), 
                                (self.animation_l,'Animation')))
        pm.window(self.win, e=1, cc=self.closeEvent)
        self._Setup_MenuBar()
        pm.showWindow()
    
#=========== SETUP MENUBAR ====================================

    def _Setup_MenuBar(self):
        with self.win:
            with pm.menu('File'):
                pm.menuItem(l='New Rig...', en=0, c=self.NewRig_Dialog)
                pm.menuItem(l='Edit Rig...', en=0, c=self.EditRig_Dialog)
                pm.menuItem(divider=1)
                pm.menuItem(l='Quit', en=0)
                
            with pm.menu('Rigging'):
                with pm.subMenuItem(l='Mirror'):
                    pm.menuItem(l='X', en=0)#c=lambda x: self.limbs_ui.Mirror_Dialog('X'))
                    pm.menuItem(l='Y', en=0)
                    pm.menuItem(l='Z', en=0)
                pm.menuItem(l='Duplicate', en=0) # , c=self.limbs_ui.Duplicate_Dialog)
                pm.menuItem(divider=1)
                pm.menuItem(l='Load Template...', en=0)
                pm.menuItem(l='Save Template...', en=0)
                pm.menuItem(divider=1)
                pm.menuItem(l='Clean Up Unused Controls', en=0) # Deletes Unused Ctrs + Groups

            with pm.menu('Skinning', en=0):
                pm.menuItem(l='disabled')

            with pm.menu('Animation', en=0):
                pm.menuItem(l='disabled')

            with pm.menu('Help'):
                with pm.subMenuItem(l='Tutorials'):
                    pm.menuItem(l='QUICK START', d=1)
                    pm.menuItem(l='For Artists', en=0)
                    pm.menuItem(l='Rigging', en=0)
                    pm.menuItem(l='Skinning', en=0)
                    pm.menuItem(l='Animating', en=0)

                    pm.menuItem(l='RIGGING', d=1)
                    pm.menuItem(l='New / Edit Rig Setup', en=0)
                    pm.menuItem(l='Joint Setup', en=0)
                    pm.menuItem(l='Limb Setup', en=0)
                    pm.menuItem(l='Behaviors', en=0)
                    pm.menuItem(l='Appearance', en=0)
                    pm.menuItem(l='Duplicate Limbs', en=0)
                    pm.menuItem(l='Mirror Limbs', en=0)

                    pm.menuItem(l='SKINNING', d=1)
                    pm.menuItem(l='Mesh Setup', en=0)
                    pm.menuItem(l='Paint Weights', en=0)
                    pm.menuItem(l='Quick Weights', en=0)

                    pm.menuItem(l='ANIMATING', d=1)
                    pm.menuItem(l='Poses', en=0)
                    
                pm.menuItem(divider=1)
                pm.menuItem(l='Submit Feedback...', en=0)
                pm.menuItem(l='Share...', en=0)
                pm.menuItem(l='Open Log', c=self.pfrs.OpenLog)

            with pm.menu('Store'):
                pm.menuItem(l='Free Version', c=self.OpenWebsite)
                pm.menuItem(l='Personal Version', en=0)
                pm.menuItem(l='Professional Version', en=0)

#=========== TAB SWITCHING ====================================

    def Setup_Editable(self):
        self.logger.debug('\tPFRS_UI > SETUP_Editable')
        index = self.pfrs.root.mainTab.get()
        if (index == 0):
            self.rig_ui.Setup_Editable()
        elif (index == 1):
            self.skin_ui.Setup_Editable()
        
    def Teardown_Editable(self, nextIndex):
        self.logger.debug('\tPFRS_UI > TEARDOWN_Editable')
        lastIndex = self.pfrs.root.mainTab.get()
        if (lastIndex == 0): 
            self.rig_ui.Teardown_Editable()
        elif (lastIndex == 1): 
            index = self.pfrs.root.skinningTab.get()
            self.skin_ui.Teardown_Editable(index)
            # self.skin_ui.skinMng.Teardown_Skins()
        
    def TabChanged(self):
        nextIndex = pm.tabLayout(self.tab, q=1, selectTabIndex=1)-1
        self.Teardown_Editable(nextIndex)
        self.pfrs.root.mainTab.set(nextIndex)
        self.Setup_Editable()
    
#=========== FUNCTIONALITY ====================================

    def OpenWebsite(self, ignore):
        webbrowser.open('https://youtu.be/yBLdQ1a4-JI?t=9')

    # def UpdateNaming(self):
    #     self.pfrs.UpdatePrefix()
    #     self.limbs_ui.UpdateNaming()

    def closeEvent(self):
        self.rig_ui.jntSetup_ui.KillScripts()
        # self.rig_ui.limbSetupTab.KillScripts()
        self.pfrs.EndLogger()

    def UpdateEnableUI(self):
        pm.tabLayout(self.tab, e=1, en=bool(self.pfrs.root))

    def NewRig_Dialog(self, ignore):
        pass
        # self.rigSetupUI.NewRig_Dialog()
        # self.UpdateEnableUI()

    def EditRig_Dialog(self, ignore):
        pass
        # self.rigSetupUI.EditRig_Dialog()
        # tempPrefix = self.pfrs.nameMng.GetPrefix()
        # tempMeshPath = self.pfrs.fileMng.GetMeshPath()
        # tempOutputPath = self.pfrs.fileMng.GetOutputFile()
        # tempShowPrefix = self.pfrs.nameMng.GetShowPrefix()
        # tempOrder = self.pfrs.nameMng.GetNamingOrder()

        # rigUI = rs_ui.RigSetup_UI(  self.pfrs.nameMng,
        #                             self.pfrs.fileMng,
        #                             self)
        # rigUI.SetData(  self.pfrs.nameMng.GetPrefix(),
        #                 self.pfrs.fileMng.GetMeshPath(),
        #                 self.pfrs.fileMng.GetOutputFile(),
        #                 self.pfrs.nameMng.GetShowPrefix(),
        #                 self.pfrs.nameMng.GetNamingOrder())

        # if (rigUI.exec_()):
        #     prefix = (tempPrefix != self.pfrs.nameMng.GetPrefix())
        #     meshPath = (tempMeshPath != self.pfrs.fileMng.GetMeshPath())
        #     outputPath = (tempOutputPath != self.pfrs.fileMng.GetOutputFile())
        #     showPrefix = (tempShowPrefix != self.pfrs.nameMng.GetShowPrefix())
        #     order = (tempOrder != self.pfrs.nameMng.GetNamingOrder())
        #     if (prefix):
        #         self.pfrs.rigSceneMng.UpdatePrefix()
        #     if (prefix or showPrefix or order):
        #         self.limbs_tw.UpdateNaming()
        #     if meshPath:
        #         self.pfrs.rigSceneMng.UpdateMeshes()
        #     if outputPath:
        #         self.pfrs.saveLoadRig.Save()

    def LoadRig_Dialog(self):
        pass
        # filePath, ignore = QtWidgets.QFileDialog.getOpenFileName(
        #                                         self, 
        #                                         'Load Rig File',
        #                                         __file__,
        #                                         '*.json')
        # if (os.path.isfile(filePath)):
        #     self.pfrs.saveLoadRig.Load(filePath)
        #     self.limbs_tw.Populate()
    
    def SaveAs_Dialog(self):
        pass
        # filePath, ignore = QtWidgets.QFileDialog.getSaveFileName(self, 
        #                                                 'Save Rig File',
        #                                                 os.path.dirname(__file__),
        #                                                 '*.json')
        # if (filePath):
        #     self.pfrs.fileMng.SetOutputFile(filePath)
        #     self.pfrs.saveLoadRig.Save()

