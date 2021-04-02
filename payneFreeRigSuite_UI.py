
import inspect
import os
import sys
import webbrowser

import pymel.core as pm

import Data.General_Data as genData
reload(genData)

import payneFreeRigSuite as pfrs
reload(pfrs)

import Common.Abstract_Operation as absOp
reload(absOp)
# import Import_Utilities as impUtil
# reload(impUtil)
import Factories as Factories
reload(Factories)

import Common.Utilities as util
reload(util)

import Plugins.factories as piFac
reload(piFac)

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
        self.logger = self.pfrs.logger

        # self.fileMng = self.pfrs.fileMng
        # self.nameMng = self.pfrs.nameMng

        # SKINNING
        # self.skinMng = self.pfrs.skinMng

        self.catOps = {} # {categoryName : {fileName : classObj}}
        self.operations = {} # {operationName : operationInstance}
        self.cat_ui = [] # for deleting
        self.currentOp = None

        self._Setup()
        self.InitOperations()
        self.PopulateCategories()
        self.PopulateOperations('Rigging')
        # self.PopulateOperations()
        # debug_ui.PFRS_Debug_UI(self)
        # self.InitTab()
        # self.Setup_Editable()


#=========== SETUP ====================================

    def _Setup(self):
        name = genData.LICENSE
        name += ' - Payne Free Rig Suite'
        name += ' - v%s' %  genData.__version__
        name += ' - by Trevor Payne'
        with pm.window(mb=True,mbv=True, t=name, w=500, h=500) as self.win:
            with pm.horizontalLayout():
                with pm.columnLayout(co=('left', 0)):
                    self.cat_op = pm.optionMenu(l='Category', 
                                                cc=self.SetCategory)
                with pm.columnLayout(co=('left', 0)):
                    self.op_op = pm.optionMenu(l='Operation', 
                                                cc=self.SetOperation)
            with pm.horizontalLayout() as self.layout:
                pass
                
        pm.window(self.win, e=1, cc=self.closeEvent)
        self._Setup_MenuBar()
        pm.showWindow()
    
#=========== SETUP MENUBAR ====================================

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

    def SetCategory(self, category):
        self.logger.debug('\tPFRS_UI > SetCategory')
        print (category)
    
    def SetOperation(self, operationName):
        self.logger.debug('\tPFRS_UI > SetOperation')
        pm.deleteUI(self.layout)
        self.layout = pm.horizontalLayout(p=self.win)
        self.currentOp = self.operations[operationName]
        self.currentOp.Setup_UI(self.layout)


    def InitOperations(self):
        self.logger.debug('\tPFRS_UI > InitOperations')
        self.catOps = {}
        rootPath = os.path.dirname(__file__)
        rootPath = os.path.join(rootPath, 'Factories')
        rootPath = os.path.join(rootPath, 'Operations')
        moduleRoot = 'Factories.Operations'
        for category in genData.OPERATION_FOLDERS:
            self.catOps[category] = {}
            moduleCat = '%s.%s' % (moduleRoot, category)
            categoryPath = os.path.join(rootPath, category)
            for operation in os.listdir(categoryPath):
                moduleOp = '%s.%s' % (moduleCat, operation)
                opPath = os.path.join(categoryPath, operation)
                if os.path.isfile(opPath):
                    continue
                op = util.GetOperation( moduleOp, 
                                        opPath, 
                                        absOp.Abstract_Operation)
                self.catOps[category][op.operationName] = op()

    def PopulateCategories(self):
        self.logger.debug('\tPFRS_UI > PopulateCategories')
        for category in genData.OPERATION_FOLDERS:
            if category in self.catOps:
                pm.menuItem(l=category, p=self.cat_op)
    
    def PopulateOperations(self, category):
        self.logger.debug('\tPFRS_UI > PopulateOperations')
        self.operations = {}
        if self.cat_ui:
            pm.deleteUI(self.cat_ui)
            self.cat_ui = []
        opPriorities = {}
        for operation in list(self.catOps[category].values()):
            opPriorities[operation.orderIndex] = operation
        for index in sorted(list(opPriorities.keys())):
            operation = opPriorities[index]
            operationName = operation.operationName
            item = pm.menuItem(l=operationName, p=self.op_op)
            self.cat_ui.append(item)
            self.operations[operationName] = operation

#=========== FUNCTIONALITY ====================================

    def ExportAnimationRig(self, ignore):
        self.logger.debug('\tPFRS_UI > ExportAnimationRig')
        # self.Teardown_Editable()
        # self.pfrs.ExportAnimationRig()
        # self.Setup_Editable()

    def OpenDocumentation(self, ignore):
        self.logger.debug('\tPFRS_UI > OpenDocumentation')
        url = 'https://docs.google.com/document/d/1KxdOnofyA2Bxz'
        url += 'QHInxrmWjFJK_Q1hCwvnAP0-0SgMRE/edit?usp=sharing'
        webbrowser.open(url)

    def OpenWebsite(self, ignore):
        self.logger.debug('\tPFRS_UI > OpenWebsite')
        webbrowser.open('https://youtu.be/yBLdQ1a4-JI?t=9')

    def closeEvent(self):
        self.logger.debug('\tPFRS_UI > closeEvent')
        self.pfrs.EndLogger()

    def NewRig_Dialog(self, ignore):
        self.logger.debug('\tPFRS_UI > NewRig_Dialog')
        # roots = self.pfrs.rootMng.GetSceneRoots()
        # if roots:
        #     pm.confirmDialog(
        #         t='Rig Already Exists',
        #         m='Rig Root already exists in scene.',
        #         button=['Ok'])
        # else:
        #     self.pfrs.InitScene()

    def EditRig_Dialog(self, ignore):
        self.logger.debug('\tPFRS_UI > EditRig_Dialog')
        # self.rootPopup = root_popup.POPUP_EditRoot(self)
        # self.rootPopup.EditRoot_Dialog()

