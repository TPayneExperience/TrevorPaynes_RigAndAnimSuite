
import inspect
import os
import sys
import webbrowser

import pymel.core as pm

import Data.General_Data as genData
reload(genData)

import Initializers
reload(Initializers)
import SceneData
reload(SceneData)
import Popups
reload(Popups)

import Utilities.Logger as log
reload(log)
import SceneData.RigRoot as rrt
reload(rrt)
import Data.Rig_Data as rigData
reload(rigData)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import Utilities.General_Utilities as genUtil
reload(genUtil)
import Popups.EditRigRoot as edRt
reload(edRt)
import Popups.UserSettings as usr
reload(usr)
import Popups.UsefulScripts as usfScr
reload(usfScr)
import Popups.Share as shr
reload(shr)
import Popups.Welcome as wlc
reload(wlc)
import Popups.Updates as upd
reload(upd)

import payneFreeRigSuite as pfrs
reload(pfrs)

import Debug.PFRS_Debug_UI as debug_ui
reload(debug_ui)

class PayneFreeRigSuite_UI:
    def __init__(self):
        self.pfrs = pfrs.PayneFreeRigSuite()
        
        self.operationNames = []
        self.operations = [] 
        self.currentOp = None
        self._rigRoot = None
        self._allRigRoots = []

        self._Setup()
        self.PopulateCategories()
        debug_ui.PFRS_Debug_UI(self)
        self.LoadRig()
        self.InitWelcomePopup()
        self.InitUpdatesPopup()


#=========== SETUP ====================================

    def _Setup(self):
        log.funcFileDebug()
        name = genData.LICENSE
        name += ' - Payne Free Rig Suite'
        name += ' - %s' %  genData.__version__
        name += ' - by Trevor Payne'
        with pm.window(mb=True,mbv=True, t=name, w=500, h=500) as self.win:
            with pm.rowLayout(nc=2):
                with pm.columnLayout(co=('left', 0)):
                    self.cat_op = pm.optionMenu(l='Category', 
                                                cc=self.SetCategory)
                with pm.columnLayout(co=('left', 0)):
                    self.op_op = pm.optionMenu(l='Operation', 
                                                cc=self.SetOperation)
            with pm.frameLayout(bv=0, lv=0) as self.frame:
                pm.text(l='Loading...', en=0)
                
        pm.window(self.win, e=1, cc=self.closeEvent)
        self._LoadWindowPos()
        self._Setup_MenuBar()
        pm.showWindow()
    
#=========== SETUP MENUBAR ====================================

    def _Setup_MenuBar(self):
        with self.win:
            with pm.menu('File'):
                pm.menuItem(l='New / Update Rig Root', c=self.NewLoadRig)
                pm.menuItem(l='Edit Rig...', c=self.EditRig_Dialog)
                pm.menuItem(l='User Settings', c=self.UserSettings_Dialog)
                pm.menuItem(divider=1)
                pm.menuItem(l='Export Animation Rig', c=self.ExportAnimationRig)
                pm.menuItem(divider=1)
                pm.menuItem(l='Close', c=self._CloseWindow)
                
            with pm.menu('Help'):
                pm.menuItem(l='Documentation', c=self.OpenDocumentation)
                with pm.subMenuItem(l='Tutorials'):
                    pm.menuItem(l='QUICK STARTS', d=1)
                    pm.menuItem(l='Basics', en=0)
                    pm.menuItem(l='Rigging', en=0)
                    pm.menuItem(l='Skinning', en=0)
                    pm.menuItem(l='Animation', en=0)

                    # pm.menuItem(l='RIGGING', d=1)
                    # pm.menuItem(l='New / Edit Rig Setup', en=0)
                    # pm.menuItem(l='Limb Setup', en=0)
                    # pm.menuItem(l='Behaviors', en=0)
                    # pm.menuItem(l='Appearance', en=0)
                    # pm.menuItem(l='Duplicate Limbs', en=0)
                    # pm.menuItem(l='Mirror Limbs', en=0)

                    # pm.menuItem(l='SKINNING', d=1)
                    # pm.menuItem(l='Mesh Setup', en=0)
                    # pm.menuItem(l='Paint Weights', en=0)
                    # pm.menuItem(l='Quick Weights', en=0)

                    # pm.menuItem(l='ANIMATING', d=1)
                    # pm.menuItem(l='Poses', en=0)
                    
                pm.menuItem(d=1)
                pm.menuItem(l='Useful Scripts for hotkeys', c=self._UsefulScripts)
                pm.menuItem(d=1)
                pm.menuItem(l='Submit Feedback...', c=self.SubmitFeedback)
                pm.menuItem(l="Share (You're My Hero!)", c=self._Share)
                pm.menuItem(l='LOGGING', d=1)
                config = self._GetConfig()
                pm.menuItem(l='Debug (Requires Restart!)', cb=config['debug'], c=self._SetDebug)
                pm.menuItem(l='Open Log', c=self.pfrs.OpenLog)

            # ADD BACK LATER
            # with pm.menu('Store'):
            #     pm.menuItem(l='Free Version', c=self.OpenWebsite)
            #     pm.menuItem(l='Personal Version', en=0)
            #     pm.menuItem(l='Professional Version', en=0)
            
#=========== COMBOBOX SWITCHING ====================================

    def InitOptionMenues(self):
        log.funcFileDebug()
        category = self._rigRoot.category.get()
        operationName = self._rigRoot.operation.get()
        index = self.pfrs.categories.index(category) + 1
        pm.optionMenu(self.cat_op, e=1, sl=index)
        self.PopulateOperations(category)
        self.UpdateOperationOptionMenu(operationName)
    
    def InitWelcomePopup(self):
        config = self._GetConfig()
        if not config['welcomePopupSeen']:
            wlc.Welcome()

    def InitUpdatesPopup(self):
        config = self._GetConfig()
        if config['lastVersionViewed'] != config['version']:
            upd.Updates()

    def UpdateOperationOptionMenu(self, operationName):
        if operationName in self.operationNames:
            index = self.operationNames.index(operationName) + 2
            pm.optionMenu(self.op_op, e=1, sl=index)
            self.SetOperation(operationName)
        else:
            pm.optionMenu(self.op_op, e=1, sl=1)
            self.SetOperation('asdf')

    def SetCategory(self, category):
        log.funcFileInfo()
        self.PopulateOperations(category)
        self._rigRoot.category.set(category)
        operationName = self._rigRoot.operation.get()
        self.SetOperation(operationName)
        self.UpdateOperationOptionMenu(operationName)
    
    def SetOperation(self, operationName):
        log.funcFileInfo()
        if self.currentOp:
            self.currentOp.Teardown_UI(self._rigRoot, 
                                        self._allRigRoots)
        pm.deleteUI(self.frame)
        if operationName not in self.operationNames:
            with pm.frameLayout(p=self.win, lv=0) as self.frame:
                msg = "You're Breathtaking! Select an operation :)"
                pm.text(l=msg)
                return
        index = self.operationNames.index(operationName)
        op = self.operations[index]

        self._rigRoot.operation.set(operationName)
        self.currentOp = self.operations[index]
        self._allRigRoots = self.pfrs.GetRigRoots()
        # Setup Rig
        self.currentOp.operation.Setup(self._allRigRoots)
        with pm.frameLayout(p=self.win, lv=0) as self.frame:
            with pm.horizontalLayout():
                self.currentOp.Setup_UI(self._rigRoot, 
                                        self._allRigRoots)

    def PopulateCategories(self):
        log.funcFileDebug()
        for category in self.pfrs.categories:
            pm.menuItem(l=category, p=self.cat_op)
    
    def PopulateOperations(self, category):
        log.funcFileDebug()
        self.operationNames = []
        self.operations = []
        pm.optionMenu(self.op_op, e=1, dai=1)
        pm.menuItem(l=' ', p=self.op_op) # Empty
        rigMode = self._rigRoot.rigMode.get()
        opPriorities = {}
        for operation in list(self.pfrs.catOps[category].values()):
            opPriorities[operation.uiOrderIndex] = operation
        for index in sorted(list(opPriorities.keys())):
            operation = opPriorities[index]
            if rigMode not in operation.operation.validRigStates:
                continue
            operationName = operation.uiName
            pm.menuItem(l=operationName, p=self.op_op)
            self.operationNames.append(operationName)
            self.operations.append(operation)

#=========== MENUBAR FUNCTIONS ====================================

    def UserSettings_Dialog(self, ignore):
        log.funcFileInfo()
        usr.UserSettings()

    def SubmitFeedback(self, ignore):
        log.funcFileInfo()
        self.pfrs.SubmitFeedback()

    def ExportAnimationRig(self, ignore):
        log.funcFileInfo()
        if self._rigRoot.rigMode.get() != 0:
            return pm.confirmDialog(
                t='Rig Already Exported',
                m='Rig Root has already be exported to anim rig',
                button=['Ok']) 
        name = '%s_AnimRig' % self._rigRoot.pfrsName.get()
        setupFile = pm.sceneName()
        filePath = os.path.join(os.path.dirname(setupFile), name)
        result = pm.fileDialog2(ff='Maya ASCII (*.ma);;Maya Binary (*.mb)', 
                                dir=filePath, 
                                cap='Save Exported Animation Rig')
        if not result:
            return
        self.pfrs.ExportAnimationRig(self._rigRoot, result[0])

    def OpenDocumentation(self, ignore):
        log.funcFileInfo()
        webbrowser.open(genData.DOC_URL)

    def OpenWebsite(self, ignore):
        log.funcFileInfo()
        # self.logger.debug('\tPFRS_UI > OpenWebsite')
        webbrowser.open('https://youtu.be/yBLdQ1a4-JI?t=9')

    def closeEvent(self):
        log.funcFileInfo()
        self._SaveWindowPos()
        
        # Get Config Data

    def NewLoadRig(self, ignore):
        log.funcFileInfo()
        self._rigRoot = None
        self.LoadRig()
        if not self._rigRoot:
            self._rigRoot = self.pfrs.AddRigRoot()
            self._allRigRoots = [self._rigRoot]
            self.InitOptionMenues()
        # Read scene
        # If not, create new rig
        # if exists, just refresh ui

    def LoadRig(self):
        rigRoots = self.pfrs.GetRigRoots()
        if rigRoots:
            self._rigRoot = rigRoots[0]
            self._allRigRoots = rigRoots
            self.InitOptionMenues()

    def EditRig_Dialog(self, ignore):
        log.funcFileInfo()
        edRt.EditRigRoot(self._rigRoot, self)
        self.pfrs.UpdateRootName(self._rigRoot)

    def UpdateRigRoot(self):
        self.pfrs.UpdateRootName(self._rigRoot)
        self.SetOperation(self._rigRoot.operation.get())

    def _UsefulScripts(self, ignore):
        log.funcFileInfo()
        usfScr.UsefulScripts()

    def _Share(self, ignore):
        log.funcFileInfo()
        shr.Share()

    def _SetDebug(self, isOn):
        self.pfrs.SetDebug(isOn)
        self._CloseWindow(1)
    
    def _CloseWindow(self, ignore):
        cmd = 'import pymel.core as pm;'
        cmd += 'pm.deleteUI("' + self.win + '", window=1)'
        pm.evalDeferred(cmd)

#=========== MISC ====================================

    def _SaveWindowPos(self):
        folder = os.path.dirname(__file__)
        folder = os.path.join(folder, 'Data')
        filePath = os.path.join(folder, 'Config.json')
        config = genUtil.Json.Load(filePath)

        config['windowPos'] = pm.window(self.win, q=1, tlc=1)
        genUtil.Json.Save(filePath, config)

    def _LoadWindowPos(self):
        # Load Config File
        config = self._GetConfig()
        pm.window(self.win, e=1, tlc=config['windowPos'])

    def _GetConfig(self):
        folder = os.path.dirname(__file__)
        folder = os.path.join(folder, 'Data')
        filePath = os.path.join(folder, 'Config.json')
        return genUtil.Json.Load(filePath)
