
import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import Poses as pss
reload(pss)
import Utilities.UI_Utilities as uiUtil
reload(uiUtil)
import Utilities.Logger as log
reload(log)

class Poses_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Poses'
    uiOrderIndex = 210
    operation = pss.Poses()
    def __init__(self):
        self._limbIDs = []
        self.poses_ui = []
        self._copiedPoses = {} # pfrsName : Pose
        self._rigRoot = None
        self._allRigRoots = []
        self._selectedLimbs = []

    def Setup_UI(self, rigRoot, allRigRoots): 
        self._Setup()
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._limbIDs = []
        self.poses_ui = []
        self._copiedPoses = {} # pfrsName : Pose
        self._selectedLimbs = []
        self.PopulateLimbHier()
        self.operation.InitPoses(rigRoot)
        self.operation.SelectedLimbs([])
        
    def Teardown_UI(self):
        pass

#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limbs', bv=1):
                self.limb_tv = pm.treeView(adr=0, arp=0, nb=1, enk=1)
                with pm.popupMenu() as self.rmb_ui:
                    self.reset_mi = pm.menuItem(l='Reset Limb Controls', en=0, 
                                                c=self.ResetLimbControls)
                    self.showAll_mi = pm.menuItem(l='Show All Poses', cb=1, 
                                                c=self.ShowAllPoses)
                    pm.menuItem(l='POSE TOOLS', d=1)
                    self.save_mi = pm.menuItem(l='Save Pose', en=0, c=self.SavePose)
                    self.copy_mi = pm.menuItem(l='Copy Pose', en=0, c=self.CopyPose)
                    self.paste_mi = pm.menuItem(l='Paste Pose', en=0, c=self.PastePose)
                    self.mirror_mi = pm.menuItem(l='Mirror Pose', en=0, c=self.MirrorPose)
                    self.flip_mi = pm.menuItem(l='Flip With Mirror', en=0, c=self.FlipPose)
                    pm.menuItem(l='POSE LIBRARY', d=1)
                    pm.menuItem(l='Open Poses Folder', c=self.OpenPosesFolder)
                    pm.menuItem(l='Set Poses Folder', c=self.SetPosesFolder)
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
        self._limbIDs = uiUtil.PopulateLimbHier(self.limb_tv, 
                                                self._rigRoot,
                                                self._allRigRoots)

    def SelectedLimb(self):
        log.funcFileInfo()
        # Disable everything, if non selected
        pm.menuItem(self.save_mi, e=1, en=0)
        pm.menuItem(self.reset_mi, e=1, en=0)
        pm.menuItem(self.copy_mi, e=1, en=0)
        pm.menuItem(self.paste_mi, e=1, en=0)
        pm.menuItem(self.mirror_mi, e=1, en=0)
        pm.menuItem(self.flip_mi, e=1, en=0)
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        self.PopulateControlHier(None)
        if not limbIDStrs:
            self._selectedLimbs = []
            pm.select(d=1)
            return

        # Only allow single common root
        self._selectedLimbs = [self._limbIDs[limbStr] for limbStr in limbIDStrs]
        self.operation.SelectedLimbs(self._selectedLimbs)
        rigRoot = pm.listConnections(self._selectedLimbs[0].rigRoot)[0]
        for limb in self._selectedLimbs[1:]:
            if rigRoot != pm.listConnections(limb.rigRoot)[0]:
                return

        self._rigRoot = rigRoot
        # Enable RMB
        pm.menuItem(self.save_mi, e=1, en=1)
        pm.menuItem(self.reset_mi, e=1, en=1)
        # Copy pose: all limb pfrsNames must be unique
        # Paste pose: if limb pfrsName in copied list
        # Mirror / Flip: if limb has mirror
        pm.menuItem(self.copy_mi, e=1, en=1)
        pfrsNames = []
        for limb in self._selectedLimbs:
            name = limb.pfrsName.get()
            if name not in pfrsNames:
                pfrsNames.append(name)
            else:
                pm.menuItem(self.copy_mi, e=1, en=0)
            if name in self._copiedPoses:
                pm.menuItem(self.paste_mi, e=1, en=1)
            if pm.listConnections(limb.mirrorLimb):
                pm.menuItem(self.mirror_mi, e=1, en=1)
                pm.menuItem(self.flip_mi, e=1, en=1)
        # Select Controls
        controls = []
        for limb in self._selectedLimbs:
            log.debug('\t%s' % limb.pfrsName.get())
            for group in pm.listConnections(limb.usedGroups):
                controls += pm.listConnections(group.control)
        pm.select(controls)
        # Populate
        if len(self._selectedLimbs) == 1:
            self.PopulateControlHier(self._selectedLimbs[0])
        self.PopulatePoseLibrary()

    def ResetLimbControls(self, ignore):
        log.funcFileDebug()
        for limb in self._selectedLimbs:
            self.operation.ResetLimbControls(limb)
        self.operation.SelectedLimbs(self._selectedLimbs)
        self.PopulatePoseLibrary()

    def ShowAllPoses(self, ignore):
        log.funcFileDebug()
        self.PopulatePoseLibrary()

    def OpenPosesFolder(self, ignore):
        log.funcFileInfo()
        self.operation.OpenPosesFolder(self._rigRoot)

    def SetPosesFolder(self, ignore):
        log.funcFileInfo()
        folder = self._rigRoot.posesFolderPath.get()
        result = pm.fileDialog2(fm=3, dir=folder, 
                                cap='Set Pose Library Folder')
        if result:
            self.operation.SetPosesFolder(self._rigRoot, result[0])

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

    def SavePose(self, ignore):
        log.funcFileDebug()
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
        self.operation.SavePose(poseName, self._rigRoot, 
                                    self._selectedLimbs)
        self.PopulatePoseLibrary()

    def CopyPose(self, ignore):
        log.funcFileDebug()
        self._copiedPoses = {}
        for limb in self._selectedLimbs:
            name = limb.pfrsName.get()
            self._copiedPoses[name] = self.operation.CopyPose(limb)

    def PastePose(self, ignore):
        log.funcFileDebug()
        for limb in self._selectedLimbs:
            name = limb.pfrsName.get()
            if name not in self._copiedPoses:
                continue
            pose = self._copiedPoses[name]
            self.operation.PastePose(pose, limb)

    def MirrorPose(self, ignore):
        log.funcFileDebug()
        for limb in self._selectedLimbs:
            if pm.listConnections(limb.mirrorLimb):
                self.operation.MirrorPose(limb)

    def FlipPose(self, ignore):
        log.funcFileDebug()
        for limb in self._selectedLimbs:
            if pm.listConnections(limb.mirrorLimb):
                self.operation.FlipPose(limb)

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
        showAll = pm.menuItem(self.showAll_mi, q=1, cb=1)
        if showAll:
            self.poseNames = self.operation.GetPoseNamesUnion(
                                        self._selectedLimbs)
        else:
            self.poseNames = self.operation.GetPoseNamesIntersection(
                                        self._selectedLimbs)
        for i in range(len(self.poseNames)):
            poseName = self.poseNames[i]
            ui = pm.floatSliderGrp(l=poseName, f=1, cw3=(100, 40, 50),
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

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
