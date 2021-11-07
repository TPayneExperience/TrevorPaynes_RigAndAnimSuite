
import os
import webbrowser

import pymel.core as pm

import Data.General_Data as genData

import Utilities.Logger as log
import Utilities.General_Utilities as genUtil
import Popups.EditRigRoot as edRt
import Popups.RemoveRig as rmrig
import Popups.UserSettings as usr
import Popups.UsefulScripts as usfScr
import Popups.Export_UI as xprt
import Popups.SuggestedExternalTools as sget
import Popups.Share as shr
import Popups.Welcome as wlc
import Popups.Updates as upd

import payneFreeRigSuite_backend as pfrs

import Debug.PFRS_Debug_UI as debug_ui

class PayneFreeRigSuite_UI:
    def __init__(self):
        self.pfrs = pfrs.PayneFreeRigSuite()
        if not genUtil.IsLicenseValid():
            return
        
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
        path = os.path.dirname(__file__)
        path = os.path.join(path, 
                            'Data',
                            'Version.json')
        version = genUtil.Json.Load(path)
        name = ('Payne Free Rig Suite'
                ' - v%02d' % version['featureVersion'] +
                '.%03d' % version['buildVersion'] +
                ' - by %s' % genData.__author__ +
                ' - %s' % genData.LICENSES[genData.LICENSE_INDEX])
        with pm.window(mb=True,mbv=True, t=name, w=500, h=500) as self.win:
            with pm.rowLayout(nc=2):
                with pm.columnLayout(co=('left', 10)):
                    self.cat_op = pm.optionMenu(l='Category', 
                                                cc=self.SetCategory)
                with pm.columnLayout(co=('left', 10)):
                    self.op_op = pm.optionMenu(l='Operation', 
                                                cc=self.SetOperation)
            with pm.frameLayout(bv=0, lv=0) as self.frame:
                msg = ( 'Hey talented person!'
                        '\nOpen a scene with a rig, or a new scene, then update the tool!'
                        '\n\nMenubar > RigRoot > New / Update Rig Root'
                        '\n\nStay awesome and keep the dream alive!')
                pm.text(l=msg, en=0)
                
        pm.window(self.win, e=1, cc=self.closeEvent)
        self._LoadWindowPos()
        self._Setup_MenuBar()
        pm.showWindow()
    
#=========== SETUP MENUBAR ====================================

    def _Setup_MenuBar(self):
        with self.win:
            with pm.menu('File'):
                pm.menuItem(l='User Settings', c=self.UserSettings_Dialog)
                pm.menuItem(divider=1)
                pm.menuItem(l='Close', c=self._CloseWindow)

            with pm.menu('Rig Root'):
                pm.menuItem(l='New / Update Rig Root', c=self.NewLoadRig)
                pm.menuItem(l='Edit Rig...', c=self.EditRig_Dialog)
                pm.menuItem(divider=1)
                pm.menuItem(l='Save Animation Rig', c=self.SaveAnimationRig)
                pm.menuItem(l='Export Rig FBX(s)', c=self.ExportFBX)
                pm.menuItem(divider=1)
                pm.menuItem(l='Remove Rig Root', c=self.RemoveRigRoot)
                
            # with pm.menu('Physics'):
            #     pm.menuItem(l='Reset Physics Limbs', c=self.ResetPhysics)
            #     self.enablePhys_mi = pm.menuItem(l='Turn ON Physics Limbs', 
            #                                         c=self.EnablePhysics)
            #     self.disablePhys_mi = pm.menuItem(l='Turn OFF Physics Limbs', 
            #                                         c=self.DisablePhysics)
                
            with pm.menu('Help'):
                pm.menuItem(l='Documentation', c=self.OpenDocumentation)
                with pm.subMenuItem(l='Tutorials'):
                    pm.menuItem(l='QUICK STARTS', d=1)
                    pm.menuItem(l='Artist', c=self.OpenQuickstartArtist)
                    pm.menuItem(l='Rigging', c=self.OpenQuickstartRigger)
                    pm.menuItem(l='Animator', c=self.OpenQuickstartAnimator)

                pm.menuItem(d=1)
                pm.menuItem(l='Useful Scripts for hotkeys', c=self._UsefulScripts)
                pm.menuItem(l='Suggested External Tools', c=self._SuggestedExternalTools)
                pm.menuItem(d=1)
                pm.menuItem(l='Submit Feedback...', c=self.SubmitFeedback)
                pm.menuItem(l="Share (You're My Hero!)", c=self._Share)
                pm.menuItem(l='LOGGING', d=1)
                config = self._GetConfig()
                pm.menuItem(l='Debug (Requires Restart!)', cb=config['debug'], c=self._SetDebug)
                pm.menuItem(l='Open Log', c=self.pfrs.OpenLog)

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
            self.currentOp.Teardown_UI()
            self.currentOp = None
        pm.deleteUI(self.frame)
        if operationName not in self.operationNames:
            with pm.frameLayout(p=self.win, lv=0) as self.frame:
                msg = "You're Breathtaking! Select an operation :)"
                pm.text(l=msg)
                return
        index = self.operationNames.index(operationName)

        self._rigRoot.operation.set(operationName)
        self.currentOp = self.operations[index]
        self._allRigRoots = self.pfrs.GetRigRoots()
        # Setup Rig
        self.currentOp.operation.Setup(self._allRigRoots)
        with pm.frameLayout(p=self.win, lv=0) as self.frame:
            with pm.horizontalLayout():
                self.currentOp.Setup_UI(self._rigRoot, 
                                        self._allRigRoots,
                                        self)

    def PopulateCategories(self):
        log.funcFileDebug()
        for category in self.pfrs.categories:
            pm.menuItem(l=category, p=self.cat_op)
    
    def PopulateOperations(self, category):
        log.funcFileDebug()
        self.operationNames = []
        self.operations = []
        self.operations_mi = []
        pm.optionMenu(self.op_op, e=1, dai=1)
        pm.menuItem(l=' ', p=self.op_op) # Empty
        rigMode = self._rigRoot.rigMode.get()
        opPriorities = {}
        for operation in list(self.pfrs.catOps[category].values()):
            opPriorities[operation.uiOrderIndex] = operation
        for index in sorted(opPriorities.keys()):
            operation = opPriorities[index]
            if rigMode not in operation.operation.validRigStates:
                continue
            operationName = operation.uiName
            mi = pm.menuItem(l=operationName, p=self.op_op)
            self.operations_mi.append(mi)
            self.operationNames.append(operationName)
            self.operations.append(operation)
        self.EnableOperations()

    def EnableOperations(self):
        for index, operation in enumerate(self.operations):
            isEnabled = True
            menuItem = self.operations_mi[index]
            msg = ''
            if operation.operation.areLimbsRequired:
                if not pm.listConnections(self._rigRoot.limbs):
                    isEnabled = False
            if operation.operation.areMeshesRequired:
                if not pm.listConnections(self._rigRoot.meshes):
                    isEnabled = False
            if operation.uiName in genData.PERSONAL_OPERATIONS:
                msg = ' (Personal)'
                isEnabled = False
            if operation.uiName in genData.PROFESSIONAL_OPERATIONS:
                msg = ' (Pro)'
                isEnabled = False
            pm.menuItem(menuItem, e=1, en=isEnabled)
            if msg:
                l = pm.menuItem(menuItem, q=1, l=1) + msg
                pm.menuItem(menuItem, e=1, l=l)

#=========== MENUBAR FILE ====================================

    def UserSettings_Dialog(self, _):
        log.funcFileInfo()
        if not genUtil.GetRigRoots():
            msg = 'User Settings requires a rig root in scene'
            pm.confirmDialog(   t='No Rig Root in Scene',
                                icon='critical', 
                                m=msg,
                                button=['Ok']) 
            return
        usr.UserSettings()

#=========== MENUBAR RIG ROOT ====================================

    def SaveAnimationRig(self, _):
        log.funcFileInfo()
        if not self.IsRigRootValid():
            return
        if self._rigRoot.rigMode.get() != 0:
            msg = 'Rig Root must be in "Setup Rig" mode'
            msg += '\nin order to export anim rig'
            return pm.confirmDialog(
                t='Cannot Export Rig',
                m=msg,
                icon='critical',
                button=['Ok']) 
        name = '%s_AnimRig' % self._rigRoot.pfrsName.get()
        setupFile = pm.sceneName()
        filePath = os.path.join(os.path.dirname(setupFile), name)
        result = pm.fileDialog2(ff='Maya ASCII (*.ma);;Maya Binary (*.mb)', 
                                dir=filePath, 
                                cap='Save Exported Animation Rig')
        if not result:
            return
        filePath = result[0]
        self.pfrs.SaveAnimationRig(self._rigRoot, filePath)

    def ExportFBX(self, _):
        log.funcFileInfo()
        for rigRoot in self._allRigRoots:
            if rigRoot.rigMode.get() == 0:
                msg = 'Setup rig "%s" cannot be exported.' % rigRoot
                msg += '\nOnly Anim rigs may be present to export.'
                pm.confirmDialog(
                    t='Warning: Setup rig found',
                    icon='warning',
                    m=msg,
                    button=['Ok']) 
                return
        xprt.Export_UI()

    def RemoveRigRoot(self, _):
        log.funcFileInfo()
        rmrig.RemoveRigRoot(self._rigRoot, self.pfrs)
        if pm.objExists(str(self._rigRoot)):
            return
        self._rigRoot = None
        pm.frameLayout(self.frame, e=1, en=0)

    def NewLoadRig(self, _):
        log.funcFileInfo()
        self._rigRoot = None
        self.LoadRig()
        if not self._rigRoot:
            self._rigRoot = self.pfrs.AddRigRoot()
            self._allRigRoots = [self._rigRoot]
            self.InitOptionMenues()

    def LoadRig(self):
        rigRoots = self.pfrs.GetRigRoots()
        if rigRoots:
            self._rigRoot = rigRoots[0]
            self._allRigRoots = rigRoots
            self.InitOptionMenues()

    def EditRig_Dialog(self, _):
        log.funcFileInfo()
        if self.IsRigRootValid():
            edRt.EditRigRoot(self._rigRoot, self)
            self.pfrs.UpdateRootName(self._rigRoot)

    def UpdateRigRoot(self):
        self.pfrs.UpdateRootName(self._rigRoot)
        self.SetOperation(self._rigRoot.operation.get())

    def IsRigRootValid(self):
        if not self._rigRoot or not pm.objExists(self._rigRoot):
            pm.confirmDialog(
                            t='No Valid Rig Root', 
                            icon='critical', 
                            m='No valid rig root is set', 
                            b=['Ok'], 
                            db='Ok')
            return False
        return True

# #=========== MENUBAR PHYSICS ====================================

#     def ResetPhysics(self, _):
#         log.funcFileInfo()
#         self.pfrs.ResetPhysics()

#     def EnablePhysics(self, _):
#         log.funcFileInfo()
#         self.pfrs.EnablePhysics()
#         pm.menuItem(self.disablePhys_mi, e=1, en=1)
#         pm.menuItem(self.enablePhys_mi, e=1, en=0)

#     def DisablePhysics(self, _):
#         log.funcFileInfo()
#         self.pfrs.DisablePhysics()
#         pm.menuItem(self.disablePhys_mi, e=1, en=0)
#         pm.menuItem(self.enablePhys_mi, e=1, en=1)


#=========== MENUBAR HELP ====================================

    def SubmitFeedback(self, _):
        log.funcFileInfo()
        self.pfrs.SubmitFeedback()

    def OpenDocumentation(self, _):
        log.funcFileInfo()
        webbrowser.open(genData.DOC_URL)

    def OpenWebsite(self, _):
        log.funcFileInfo()
        webbrowser.open(genData.STORE_URL)

    def OpenQuickstartArtist(self, _):
        log.funcFileInfo()
        webbrowser.open(genData.QUICKSTART_ARTIST_VIDEO)

    def OpenQuickstartRigger(self, _):
        log.funcFileInfo()
        webbrowser.open(genData.QUICKSTART_RIGGER_VIDEO)

    def OpenQuickstartAnimator(self, _):
        log.funcFileInfo()
        webbrowser.open(genData.QUICKSTART_ANIMATOR_VIDEO)

#=========== MISC ====================================

    def closeEvent(self):
        log.funcFileInfo()
        self._SaveWindowPos()
        if self.currentOp:
            self.currentOp.Teardown_UI()

    def _UsefulScripts(self, _):
        log.funcFileInfo()
        usfScr.UsefulScripts()

    def _SuggestedExternalTools(self, _):
        log.funcFileInfo()
        sget.SuggestedExternalTools()

    def _Share(self, _):
        log.funcFileInfo()
        shr.Share()

    def _SetDebug(self, isOn):
        self.pfrs.SetDebug(isOn)
        self._CloseWindow(1)
    
    def _CloseWindow(self, _):
        cmd = 'import pymel.core as pm;'
        cmd += 'pm.deleteUI("' + self.win + '", window=1)'
        pm.evalDeferred(cmd)

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
