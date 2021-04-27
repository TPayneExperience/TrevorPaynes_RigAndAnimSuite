
import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import Poses as pss
reload(pss)
import Common.UI_Utilities as uiUtil
reload(uiUtil)
# import Common.General_Utilities as genUtil
# reload(genUtil)
import Common.Logger as log
reload(log)
# import Data.Rig_Data as rigData
# reload(rigData)
# import SceneData.Control as ctr
# reload(ctr)

# import SceneData.RigRoot as rrt
# reload(rrt)
# import SceneData.Behavior_Manager as bhvMng
# reload(bhvMng)

class Poses_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Poses'
    orderIndex = 210
    operation = pss.Poses()
    def __init__(self):
        self._limbIDs = []
        self.poses_ui = []
#         self._bhvNames = []
#         self._currentBhv = None # for verifying group selection
#         self._selectedGroup = None
#         self._rigRoot = None

    def Setup_UI(self, rigRoot, allRigRoots): 
        self._Setup()
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self.PopulateLimbHier()
        self.operation.InitPoses(rigRoot)
        
#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limbs', bv=1):
                self.limb_tv = pm.treeView(adr=0, arp=0, nb=1, enk=1)
                with pm.popupMenu() as self.rmb_ui:
                    self.save_mi = pm.menuItem(l='Save Pose', en=0, c=self.SavePose)
                    self.reset_mi = pm.menuItem(l='Reset Limb Controls', en=0, 
                                                c=self.ResetLimbControls)
                    pm.menuItem(d=1)
                    pm.menuItem(l='Open Poses Library Folder', c=self.OpenPosesFolder)
                    pm.menuItem(l='Set Poses Library Folder', c=self.SetPosesFolder)
                pm.treeView(self.limb_tv, e=1, scc=self.SelectedLimb,
                                                elc=self.IgnoreRename)
            with pm.frameLayout('Controls', bv=1):
                self.control_tv = pm.treeView(arp=0, adr=0, ams=0,
                                            elc=self.IgnoreRename)
                pm.treeView(self.control_tv, e=1, scc=self.SelectedControl)
        with pm.verticalLayout():
            with pm.frameLayout('Limb Poses', bv=1) as self.limbPoses_fl:
                with pm.columnLayout(adj=1) as self.poses_cl:
                    pass

#=========== LIMB HIER ====================================
   
    def PopulateLimbHier(self):
        log.funcFileDebug()
        # self.PopulateControlHier(None)
        # self.PopulateLimbProperties(None)
        # pm.frameLayout(self.ctrShapes_fl, e=1, en=0)
        self._limbIDs = uiUtil.PopulateLimbHier(self.limb_tv, 
                                                self._rigRoot,
                                                self._allRigRoots)

    def SelectedLimb(self):
        log.funcFileInfo()
        pm.menuItem(self.save_mi, e=1, en=0)
        pm.menuItem(self.reset_mi, e=1, en=0)
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        self.PopulateControlHier(None)
        if not limbIDStrs:
            self._selectedLimbs = []
            pm.select(d=1)
            return
        self._selectedLimbs = [self._limbIDs[limbStr] for limbStr in limbIDStrs]
        rigRoot = pm.listConnections(self._selectedLimbs[0].rigRoot)[0]
        for limb in self._selectedLimbs[1:]:
            if rigRoot != pm.listConnections(limb.rigRoot)[0]:
                # self.parent.LimbsSelected(None)
                return
        pm.menuItem(self.save_mi, e=1, en=1)
        pm.menuItem(self.reset_mi, e=1, en=1)
        controls = []
        for limb in self._selectedLimbs:
            log.debug('\t%s' % limb.pfrsName.get())
            for group in pm.listConnections(limb.usedGroups):
                controls += pm.listConnections(group.control)
        pm.select(controls)
        if len(self._selectedLimbs) == 1:
            self.PopulateControlHier(self._selectedLimbs[0])
        self.PopulatePoseLibrary()

    def ResetLimbControls(self, ignore):
        log.funcFileDebug()
        for limb in self._selectedLimbs:
            self.operation.ResetLimbControls(limb)
        self.PopulatePoseLibrary()

    def OpenPosesFolder(self, ignore):
        log.funcFileInfo()
        self.operation.OpenPosesLibraryFolder(self._rigRoot)

    def SetPosesFolder(self, ignore):
        log.funcFileInfo()
        folder = self._rigRoot.posesFolderPath.get()
        result = pm.fileDialog2(fm=3, dir=folder, 
                                cap='Set Pose Library Folder')
        if result:
            self.operation.SetPosesLibraryFolder(self._rigRoot, result[0])

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

    def SavePose(self, ignore):
        log.funcFileDebug()
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        limbs = [self._limbIDs[limbStr] for limbStr in limbIDStrs]
        result = pm.promptDialog(
                title='Save Pose',
                message='New Pose Name:',
                button=['OK', 'Cancel'],
                defaultButton='OK',
                cancelButton='Cancel',
                dismissString='Cancel')
        if result != 'OK':
            return
        poseName = pm.promptDialog(q=1, tx=1)
        self.operation.SavePose(poseName, self._rigRoot, limbs)
        self.PopulatePoseLibrary()

#=========== CONTROL HIER ====================================

    def PopulateControlHier(self, limb):
        log.funcFileDebug()
        pm.treeView(self.control_tv, e=1, removeAll=1)
        if not limb:
            return
        self._limbGroups = uiUtil.PopulateControlHier(self.control_tv, 
                                                    limb)
    
    def SelectedControl(self):
        log.funcFileDebug()
        groupStrs = pm.treeView(self.control_tv, q=1, selectItem=1)
        if groupStrs:
            group = self._limbGroups[groupStrs[0]]
            control = pm.listConnections(group.control)[0]
            log.info('\t%s' % control.shortName())
            pm.select(control)


#=========== POSE LIBRARY ====================================

    def PopulatePoseLibrary(self):
        log.funcFileDebug()
        if self.poses_ui:
            pm.evalDeferred('import pymel.core as pm')
            for ui in self.poses_ui:
                pm.evalDeferred('pm.deleteUI("' + ui + '")')
        self.poses_ui = []
        if not self._selectedLimbs:
            return
        self.poseNames = self.operation.GetPoseNames(self._selectedLimbs)
        for i in range(len(self.poseNames)):
            poseName = self.poseNames[i]
            ui = pm.floatSliderGrp(l=poseName, f=1, cw3=(50, 40, 100),
                            max=1, p=self.poses_cl, pre=3,
                            dc=pm.Callback(self._SetPoseWeight, i))
            self.poses_ui.append(ui)
            with pm.popupMenu():
                pm.menuItem(l='Delete Pose', c=pm.Callback(
                                        self.DeletePose, poseName))

    def _SetPoseWeight(self, index):
        poseName = self.poseNames[index]
        weight = pm.floatSliderGrp(self.poses_ui[index], q=1, v=1)
        self.operation.SetPoseWeight(poseName, self._selectedLimbs, 
                                                            weight)

    def DeletePose(self, poseName):
        log.funcFileDebug()
        result = pm.confirmDialog(   t='Delete Pose', 
                                icon='warning', 
                                m='Delete pose for which limbs?', 
                                b=['Cancel', 'All', 'Selected'], 
                                db='Cancel', 
                                cb='Cancel', 
                                ds='Cancel')
        if result == 'Cancel':
            return
        elif result == 'All':
            self.operation.DeleteAllLimbPose(poseName, 
                                                    self._rigRoot)
        elif result == 'Selected':
            self.operation.DeleteSelectedLimbPose(poseName, 
                                                self._rigRoot, 
                                                self._selectedLimbs)
        self.PopulatePoseLibrary()
