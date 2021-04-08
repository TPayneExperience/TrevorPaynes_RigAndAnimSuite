
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
import SceneObjects
reload(SceneObjects)

import Common.Logger as log
reload(log)
import SceneObjects.RigRoot as root
reload(root)

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

# import PFRS_Debug_UI as debug_ui
# reload(debug_ui)

class PayneFreeRigSuite_UI:
    def __init__(self):
        self.pfrs = pfrs.PayneFreeRigSuite()
        # self.logger = self.pfrs.logger

        # self.fileMng = self.pfrs.fileMng
        # self.nameMng = self.pfrs.nameMng

        # SKINNING
        # self.skinMng = self.pfrs.skinMng

        # self.catOps = {} # {categoryName : {fileName : classObj}}
        self.operationNames = []
        self.operations = [] 
        self.currentOp = None

        self._Setup()
        # self.pfrs.InitOperations()
        # self.pfrs.InitScene()
        self.PopulateCategories()
        self.InitOptionMenues()
        # self.PopulateOperations()
        # debug_ui.PFRS_Debug_UI(self)
        # self.InitTab()
        # self.Setup_Editable()


#=========== SETUP ====================================

    def _Setup(self):
        log.logFuncFile()
        name = genData.LICENSE
        name += ' - Payne Free Rig Suite'
        name += ' - v%s' %  genData.__version__
        name += ' - by Trevor Payne'
        with pm.window(mb=True,mbv=True, t=name, w=500, h=500) as self.win:
            with pm.rowLayout(nc=4):
                with pm.columnLayout(co=('left', 0)):
                    self.cat_op = pm.optionMenu(l='Category', 
                                                cc=self.SetCategory)
                with pm.columnLayout(co=('left', 0)):
                    self.op_op = pm.optionMenu(l='Operation', 
                                                cc=self.SetOperation)
                with pm.columnLayout(co=('left', 0)):
                    pm.button(l='TESTING', c=self.TESTING)
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

    @log.class_decorator
    def TESTING(self, ignore):
        import SceneObjects.Limb
        reload(SceneObjects.Limb)
        import SceneObjects.RigRoot
        reload(SceneObjects.RigRoot)
        rigRoot = SceneObjects.RigRoot.RigRoot.GetAll()[0]
        SceneObjects.Limb.Limb.AddEmpty(rigRoot)
        # from SceneObjects.RigRoot import RigRoot
        # RigRoot.Add()
        
    @log.class_decorator
    def InitOptionMenues(self):
        rigRoot = root.RigRoot.GetAll()[0]
        category = rigRoot.mainTab.get()
        operationName = rigRoot.subTab.get()
        index = self.pfrs.categories.index(category) + 1
        pm.optionMenu(self.cat_op, e=1, sl=index)
        self.PopulateOperations(category)
        self.SetOperation(operationName)

    @log.class_decorator
    def SetCategory(self, category):
        print (category)
    
    @log.class_decorator
    def SetOperation(self, operationName):
        index = self.operationNames.index(operationName)
        self.currentOp = self.operations[index]()
        pm.deleteUI(self.frame)
        with pm.frameLayout(p=self.win, lv=0) as self.frame:
            with pm.horizontalLayout():
                self.currentOp.Setup_UI()

    @log.class_decorator
    def PopulateCategories(self):
        for category in self.pfrs.categories:
            pm.menuItem(l=category, p=self.cat_op)
    
    @log.class_decorator
    def PopulateOperations(self, category):
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

    @log.class_decorator
    def ExportAnimationRig(self, ignore):
        pass
        # self.logger.debug('\tPFRS_UI > ExportAnimationRig')
        # self.Teardown_Editable()
        # self.pfrs.ExportAnimationRig()
        # self.Setup_Editable()

    @log.class_decorator
    def OpenDocumentation(self, ignore):
        # self.logger.debug('\tPFRS_UI > OpenDocumentation')
        url = 'https://docs.google.com/document/d/1KxdOnofyA2Bxz'
        url += 'QHInxrmWjFJK_Q1hCwvnAP0-0SgMRE/edit?usp=sharing'
        webbrowser.open(url)

    @log.class_decorator
    def OpenWebsite(self, ignore):
        # self.logger.debug('\tPFRS_UI > OpenWebsite')
        webbrowser.open('https://youtu.be/yBLdQ1a4-JI?t=9')

    @log.class_decorator
    def closeEvent(self):
        # self.logger.debug('\tPFRS_UI > closeEvent')
        self.pfrs.close()

    @log.class_decorator
    def NewRig_Dialog(self, ignore):
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

    @log.class_decorator
    def EditRig_Dialog(self, ignore):
        # self.logger.debug('\tPFRS_UI > EditRig_Dialog')
        pass
        # self.rootPopup = root_popup.POPUP_EditRoot(self)
        # self.rootPopup.EditRoot_Dialog()

