
import inspect
import os
import sys
import webbrowser

import pymel.core as pm

import Data.General_Data as genData
reload(genData)

import payneFreeRigSuite as pfrs
reload(pfrs)

import Initializers
reload(Initializers)
import SceneData
reload(SceneData)

import Common.Logger as log
reload(log)
import SceneData.RigRoot as rrt
reload(rrt)
import Data.Rig_Data as rigData
reload(rigData)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)

# import Import_Utilities as impUtil
# reload(impUtil)
# import Factories as Factories
# reload(Factories)

# import Common.Utilities as util
# reload(util)

# import Rigging.Rigging_UI as rig_ui
# reload(rig_ui)
# import Skinning.Skinning_UI as skin_ui
# reload(skin_ui)
# import Animation.Animation_UI as anim_ui
# reload(anim_ui)
# import Rigging.Popups.POPUP_EditRoot as root_popup
# reload(root_popup)

import PFRS_Debug_UI as debug_ui
reload(debug_ui)

class PayneFreeRigSuite_UI:
    def __init__(self):
        self.pfrs = pfrs.PayneFreeRigSuite()

        # self.fileMng = self.pfrs.fileMng
        # self.nameMng = self.pfrs.nameMng

        # SKINNING
        # self.skinMng = self.pfrs.skinMng

        # self.catOps = {} # {categoryName : {fileName : classObj}}
        self.operationNames = []
        self.operations = [] 
        self.currentOp = None

        self._Setup()
        self.PopulateCategories()
        debug_ui.PFRS_Debug_UI(self)
        self.InitOptionMenues()

        # self.PopulateOperations()
        # self.InitTab()
        # self.Setup_Editable()


#=========== SETUP ====================================

    def _Setup(self):
        log.funcFileDebug()
        name = genData.LICENSE
        name += ' - Payne Free Rig Suite'
        name += ' - v%s' %  genData.__version__
        name += ' - by Trevor Payne'
        with pm.window(mb=True,mbv=True, t=name, w=500, h=500) as self.win:
            with pm.rowLayout(nc=2):
                with pm.columnLayout(co=('left', 0)):
                    self.cat_op = pm.optionMenu(l='Category', 
                                                cc=self.SetCategory)
                with pm.columnLayout(co=('left', 0)):
                    self.op_op = pm.optionMenu(l='Operation', 
                                                cc=self.SetOperation)
                # with pm.columnLayout(co=('left', 0)):
                #     pm.button(l='TESTING', c=self.TESTING)
            # self.layout = pm.horizontalLayout(p=self.win)
            # pm.text('asdf')
            self.frame = pm.frameLayout(bv=0, lv=0)
                
        pm.window(self.win, e=1, cc=self.closeEvent)
        self._Setup_MenuBar()
        pm.showWindow()
    
    def _Setup_MenuBar(self):
        with self.win:
            with pm.menu('File'):
                pm.menuItem(l='New Rig...', c=self.NewRig_Dialog)
                pm.menuItem(l='Edit Rig...', c=self.EditRig_Dialog)
                pm.menuItem(divider=1)
                pm.menuItem(l='Export Animation Rig', c=self.ExportAnimationRig)
                pm.menuItem(divider=1)
                pm.menuItem(l='Quit', en=0)
                
            with pm.menu('Help'):
                pm.menuItem(l='Documentation', c=self.OpenDocumentation)
                with pm.subMenuItem(l='Tutorials'):
                    pm.menuItem(l='QUICK START', d=1)
                    pm.menuItem(l='For Artists', en=0)
                    pm.menuItem(l='Rigging', en=0)
                    pm.menuItem(l='Skinning', en=0)
                    pm.menuItem(l='Animating', en=0)

                    pm.menuItem(l='RIGGING', d=1)
                    pm.menuItem(l='New / Edit Rig Setup', en=0)
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
            
#=========== COMBOBOX SWITCHING ====================================

    # def TESTING(self, ignore):
    #     log.funcFileDebug()
    #     import SceneData.Limb
    #     reload(SceneData.Limb)
    #     import SceneData.RigRoot
    #     reload(SceneData.RigRoot)
    #     rigRoot = SceneData.RigRoot.RigRoot.GetAll()[0]
    #     SceneData.Limb.Limb.AddEmpty(rigRoot)
        # from SceneData.RigRoot import RigRoot
        # RigRoot.Add()
        
    def InitOptionMenues(self):
        log.funcFileDebug()
        rigRoot = rrt.RigRoot.GetAll()[0]
        category = rigRoot.mainTab.get()
        operationName = rigRoot.subTab.get()
        index = self.pfrs.categories.index(category) + 1
        pm.optionMenu(self.cat_op, e=1, sl=index)
        self.PopulateOperations(category)
        index = self.operationNames.index(operationName) + 1
        pm.optionMenu(self.op_op, e=1, sl=index)
        self.SetOperation(operationName)

    def SetCategory(self, category):
        log.funcFileInfo()
        self.PopulateOperations(category)
    
    def SetOperation(self, operationName):
        log.funcFileInfo()
        pm.deleteUI(self.frame)
        index = self.operationNames.index(operationName)
        self.currentOp = self.operations[index]

        self.currentOp.operation.Setup()
        with pm.frameLayout(p=self.win, lv=0) as self.frame:
            with pm.horizontalLayout():
                self.currentOp.Setup_UI()

    def PopulateCategories(self):
        log.funcFileDebug()
        for category in self.pfrs.categories:
            pm.menuItem(l=category, p=self.cat_op)
    
    def PopulateOperations(self, category):
        log.funcFileDebug()
        self.operationNames = []
        self.operations = []
        pm.optionMenu(self.op_op, e=1, dai=1)
        opPriorities = {}
        for operation in list(self.pfrs.catOps[category].values()):
            opPriorities[operation.orderIndex] = operation
        for index in sorted(list(opPriorities.keys())):
            operation = opPriorities[index]
            operationName = operation.uiName
            pm.menuItem(l=operationName, p=self.op_op)
            self.operationNames.append(operationName)
            self.operations.append(operation)

#=========== MENUBAR FUNCTIONS ====================================

    def ExportAnimationRig(self, ignore):
        log.funcFileInfo()
        pass
        # self.logger.debug('\tPFRS_UI > ExportAnimationRig')
        # self.Teardown_Editable()
        # self.pfrs.ExportAnimationRig()
        # self.Setup_Editable()

    def OpenDocumentation(self, ignore):
        log.funcFileInfo()
        # self.logger.debug('\tPFRS_UI > OpenDocumentation')
        url = 'https://docs.google.com/document/d/1KxdOnofyA2Bxz'
        url += 'QHInxrmWjFJK_Q1hCwvnAP0-0SgMRE/edit?usp=sharing'
        webbrowser.open(url)

    def OpenWebsite(self, ignore):
        log.funcFileInfo()
        # self.logger.debug('\tPFRS_UI > OpenWebsite')
        webbrowser.open('https://youtu.be/yBLdQ1a4-JI?t=9')

    def closeEvent(self):
        log.funcFileInfo()

    def NewRig_Dialog(self, ignore):
        log.funcFileInfo()
        pass
        # self.logger.debug('\tPFRS_UI > NewRig_Dialog')
        # roots = self.pfrs.rootMng.GetSceneRoots()
        # if roots:
        #     pm.confirmDialog(
        #         t='Rig Already Exists',
        #         m='Rig Root already exists in scene.',
        #         button=['Ok'])
        # else:
        #     self.pfrs.InitScene()

    def EditRig_Dialog(self, ignore):
        log.funcFileInfo()
        # self.logger.debug('\tPFRS_UI > EditRig_Dialog')
        pass
        # self.rootPopup = root_popup.POPUP_EditRoot(self)
        # self.rootPopup.EditRoot_Dialog()

