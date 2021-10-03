
import os

import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import LimbSetup as ls
reload(ls)
import Utilities.UI_Utilities as uiUtil
reload(uiUtil)
import Utilities.Anim_Utilities as animUtil
reload(animUtil)
import Utilities.General_Utilities as genUtil
reload(genUtil)
import Utilities.Logger as log
reload(log)

import SceneData.RigRoot as rrt
reload(rrt)
import Popups.LoadTemplates as ldTmp
reload(ldTmp)
import Data.Rig_Data as rigData
reload(rigData)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)

class LimbSetup_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Limb Setup'
    uiOrderIndex = 100
    operation = ls.LimbSetup()
    def __init__(self):
        self._limbFunc = None
        self._rigRoot = None
        self._selectedSceneJoints = []
        self._limbJoints = {}
        self._limbIDs = {} # limbID : limb
        self._selectedLimbs = []
        self._autobuild_mis = []

    def Setup_UI(self, rigRoot, allRigRoots, pfrsUI):  # Return nothing, parent should cleanup
        self.operation.InitAutobuilders()
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self._pfrsUI = pfrsUI
        self._limbFunc = None
        self._selectedSceneJoints = []
        self._limbJoints = {}
        self._selectedLimbs = []
        self._autobuild_mis = []
        self._Setup()
        self.Refresh(0)
    
    def Teardown_UI(self):
        if not self._rigRoot or not pm.objExists(self._rigRoot):
            return
        for limb in pm.listConnections(self._rigRoot.limbs):
            bhvFile = limb.bhvFile.get()
            bhv = self.operation.bhvMng.bhvs[bhvFile]
            bhv.InitLimb(limb)
    
#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout(l='---', bv=1) as self.sceneHier_fl:
                msg = 'Middle Mouse Button (MMB) + DRAG to reparent'
                self.scene_tv = pm.treeView(scc=self.SelectedSceneJoints,
                                            dad=self.ReparentJoint,
                                            elc=self.IgnoreRename,
                                            ann=msg)
                with pm.popupMenu():
                    pm.menuItem(l='Refresh', c=self.Refresh)
                    self.buildHier_mi = pm.menuItem(l='Joint Tool',
                                            c=pm.Callback(self.operation.JointTool))
                    self.add_mi = pm.menuItem(l='Add Joint Limb', 
                                            en=0, c=self.AddJointLimb)
                    self.rebuildSkins_mi = pm.menuItem(l='Rebuild Skins', 
                                            c=self.RebuildSkins)
                    pm.menuItem(l='AUTOBUILD LIMBS', d=1)
                    order = {}
                    for name, bld in self.operation._autobuilders.items():
                        order[bld.uiOrderIndex] = name
                    for uiOrderIndex in sorted(list(order.keys())):
                        name = order[uiOrderIndex]
                        bld = self.operation._autobuilders[name]
                        item = pm.menuItem(l=name, c=pm.Callback(self._Build, bld))
                        self._autobuild_mis.append(item)
        with pm.verticalLayout():
            with pm.frameLayout('Limbs', bv=1) as self.limbHier_fl:
                tt = 'Double click to RENAME.'
                tt += '\nTo set a limb as a MIRROR,'
                tt += '\nname BOTH LIMBS with the SAME NAME.'
                self.limb_tv = uiUtil.SetupLimbHier(self._limbIDs)
                pm.treeView(self.limb_tv, e=1, ams=1, ann=tt,
                                                scc=self.SelectedLimb,   
                                                elc=self.RenameLimb)
                with pm.popupMenu():
                    # Edit Limb Joints
                    pm.menuItem(l='EDIT LIMB JOINTS', d=1)
                    msg = 'Transfer Rotations To Joint Orient'
                    self.xferToJntOri_mi = pm.menuItem(l=msg, 
                                            en=0,
                                            c=self.TransferRotationsToJointOrient)
                    self.aimUp_mi = pm.menuItem(l='Apply Joint Aim + Up User Settings', 
                                            en=0, c=self.ApplyJointAimUp)
                    self.zeroRot_mi = pm.menuItem(l='Set Joint Rotation to Zero', 
                                            en=0,
                                            c=self.SetJointRotationToZero)
                    self.resetScale_mi = pm.menuItem(l='Reset Joint Scale', 
                                            en=0,
                                            c=self.RemoveJointScale)
                    self.updateBody_mi = pm.menuItem(l='Update Mirror Body Joints', 
                                            en=0,
                                            c=self.UpdateMirrorBodyJoints)
                    self.updateFace_mi = pm.menuItem(l='Update Mirror Face Joints', 
                                            en=0,
                                            c=self.UpdateMirrorFaceJoints)
                    with pm.subMenuItem(l='Joint Rotation Order', en=0) as self.jro_mi:
                        for i in range(6):
                            rotOrder = rigData.JOINT_ROT_ORDER[i]
                            pm.menuItem(l=rotOrder, c=pm.Callback(self.JointRotOrder, i))

                    # Templates
                    pm.menuItem(l='TEMPLATES', d=1)
                    self.loadTemp_mi = pm.menuItem(l='Load Template', 
                                            c=self.LoadTemplate)
                    self.saveTemp_mi = pm.menuItem(l='Save Template', 
                                            en=0, c=self.SaveTemplate)
                           
                    # More Limbs
                    pm.menuItem(l='MORE LIMBS!', d=1)
                    self.duplicate_mi = pm.menuItem(l='Duplicate Limbs', 
                                            en=0, c=self.DuplicateLimbs)
                    with pm.subMenuItem(l='Mirror Body Limbs', en=0) as self.mirrorBody_mi:
                        pm.menuItem(l='X Axis', 
                                    c=pm.Callback(self.MirrorBodyLimbs, 'X'))
                        pm.menuItem(l='Y Axis', 
                                    c=pm.Callback(self.MirrorBodyLimbs, 'Y'))
                        pm.menuItem(l='Z Axis', 
                                    c=pm.Callback(self.MirrorBodyLimbs, 'Z'))
                    with pm.subMenuItem(l='Mirror Face Limbs', en=0) as self.mirrorFace_mi:
                        pm.menuItem(l='X Axis', 
                                    c=pm.Callback(self.MirrorFaceLimbs, 'X'))
                        pm.menuItem(l='Y Axis', 
                                    c=pm.Callback(self.MirrorFaceLimbs, 'Y'))
                        pm.menuItem(l='Z Axis', 
                                    c=pm.Callback(self.MirrorFaceLimbs, 'Z'))

                    # Less Limbs
                    pm.menuItem(l='LESS LIMBS', d=1)
                    self.removeLimbs_mi = pm.menuItem(l='Remove Limbs', 
                                            en=0, c=self.RemoveLimbs)
                    self.removeLimbsAndJoints_mi = pm.menuItem(l='Remove Limbs + Joints', 
                                            en=0, c=self.RemoveLimbsAndJoints)
                                     
                    # Edit Limbs
                    pm.menuItem(l='EDIT LIMBS', d=1)
                    self.flipSides_mi = pm.menuItem(l='Flip Sides', 
                                            en=0, c=self.FlipSides)
                    with pm.subMenuItem(l='Set Limb Location...', en=0) as self.limbLoc_mi:
                        pm.menuItem(l='As Body', c=pm.Callback(self.SetLimbLocation, 0))
                        pm.menuItem(l='As Face', c=pm.Callback(self.SetLimbLocation, 1))
                        pm.menuItem(l='As Fingers', c=pm.Callback(self.SetLimbLocation, 2))
                        pm.menuItem(l='As Toes', c=pm.Callback(self.SetLimbLocation, 3))
                        pm.menuItem(l='As Misc', c=pm.Callback(self.SetLimbLocation, 4))
                        
                    # Joint Anims
                    pm.menuItem(l='JOINT ANIMATIONS', d=1)
                    self.exportAnim_mi = pm.menuItem(l='Export Animation', 
                                            en=0,
                                            c=self.ExportAnimation)
                    self.removeAnim_mi = pm.menuItem(l='Remove Animation', 
                                            en=0,
                                            c=self.RemoveAnimation)
                    
            with pm.frameLayout(l='---', bv=1, en=0) as self.jntHier_fl:
                tt = 'BRANCH limbs may reorder joints'
                tt += '\nDouble Click to RENAME'
                self.joint_tv = pm.treeView(ams=0, arp=0, ann=tt)
                pm.treeView(self.joint_tv, e=1, dad=self.ReorderJoints,
                                                elc=self.RenameJoint,
                                                scc=self.SelectedJointHierJoint)

#=========== SCENE HIER ====================================

    def PopulateSceneHier(self):
        log.funcFileDebug()
        pm.treeView(self.scene_tv, e=1, removeAll=1)
        self.allJoints = {} # longName : joint
        limbJoints = []
        # Get Limb Joints
        for joint in pm.ls(type='joint'):
            self.allJoints[joint.longName()] = joint
            if joint.hasAttr('limb'):
                if pm.listConnections(joint.limb):
                    limbJoints.append(joint)
        # Populate Items
        for longName in sorted(list(self.allJoints.keys())):
            joint = self.allJoints[longName]
            parent = pm.listRelatives(joint, parent=1)
            if parent and (parent[0].longName() in self.allJoints):
                pm.treeView(self.scene_tv, e=1, ai=(longName, parent[0].longName()))
            else:
                pm.treeView(self.scene_tv, e=1, ai=(longName, ''))
            pm.treeView(self.scene_tv, e=1, enl=(longName, joint not in limbJoints))
            pm.treeView(self.scene_tv, e=1, dl=(longName, joint.shortName()))

        # Update frame
        totalJoints = pm.ls(type='joint')
        usedCount = 0
        for joint in totalJoints:
            if joint.hasAttr('limb'):
                if pm.listConnections(joint.limb):
                    usedCount += 1
        txt = 'Scene Joints (%d of %d used)' % (usedCount, len(totalJoints))
        pm.frameLayout(self.sceneHier_fl, e=1, l=txt)

        # Enable Autobuilds
        hasJoints = (usedCount != len(totalJoints))
        for item in self._autobuild_mis:
            pm.menuItem(item, e=1, en=hasJoints)
            
    def Refresh(self, ignore):
        self.operation.InitSceneJoints(self._rigRoot)
        self.PopulateSceneHier()
        self.PopulateLimbHier()
        self.PopulateJointHier(None)

    def _Build(self, autobuilder):
        log.funcFileInfo()
        self.operation.InitSceneJoints(self._rigRoot)
        self.operation.Autobuild(self._rigRoot, autobuilder)
        self.PopulateSceneHier()
        self.PopulateLimbHier()
        self.PopulateJointHier(None)
        self._pfrsUI.EnableOperations()

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

    def SelectedSceneJoints(self):
        log.funcFileInfo()
        self._selectedSceneJoints = self.GetSelectedSceneJoints()

        # Get all limb joints
        limbJoints = set()
        for selJoint in self._selectedSceneJoints:
            log.info('\t\t' + str(selJoint))
            if not selJoint.hasAttr('limb'):
                continue
            limbs = pm.listConnections(selJoint.limb)
            if not limbs:
                continue
            limb = limbs[0]
            for joint in pm.listConnections(limb.joints):
                limbJoints.add(joint)

        # Add ornaments for limb joints
        for name in list(self.allJoints.keys()):
            pm.treeView(self.scene_tv, e=1, ornament=(name, 0, 0, 3))
        for limbJoint in list(limbJoints):
            ln = limbJoint.longName()
            pm.treeView(self.scene_tv, e=1, ornament=(ln, 1, 0, 3), 
                                            orc=(ln, 0, 1, 0))

        # Select + store selected joints
        if self._selectedSceneJoints:
            pm.select(self._selectedSceneJoints)
            self.EvaluateSceneJoints()
        else:
            pm.select(d=1)

    def GetSelectedSceneJoints(self):
        log.funcFileDebug()
        jointIDStrs = pm.treeView(self.scene_tv, q=1, selectItem=1)
        if not jointIDStrs:
            return []
        return [self.allJoints[jointID] for jointID in jointIDStrs]
    
    def EvaluateSceneJoints(self):
        log.funcFileDebug()
        pm.menuItem(self.add_mi, e=1, en=0)
        self._limbFunc = None
        if not self._selectedSceneJoints:
            return 
        if not rigUtil.Joint._AreJointsDisconnected(self._selectedSceneJoints):
            return
        self._limbFunc = self.operation.GetLimbFuncForJoints(self._selectedSceneJoints)
        b = bool(self._limbFunc)
        pm.menuItem(self.add_mi, e=1, en=b)

    def ReparentJoint(self, jointIDsStr, oldParents, i2, newParentIDStr, i3, i4, i5):
        if oldParents[0] == newParentIDStr:
            return
        child = self.allJoints[jointIDsStr[0]]
        if newParentIDStr:
            parent = self.allJoints[newParentIDStr]
            msg = '\tSceneHier > REPARENTING '
            msg += '"%s" to "%s"' % (child, parent)
            log.info(msg)
        else:
            parent = None
            log.info('\tLimbHier > REPARENTING "%s" to world' % child)
        self.operation.ReparentJoint(self._rigRoot, child, parent)
        self.Refresh(0)
    
    def RebuildSkins(self, ignore):
        log.funcFileInfo()
        self.operation.RebuildSkins(self._rigRoot)

#=========== LIMB HIER ====================================

    def PopulateLimbHier(self, selectLimb=None):
        log.funcFileDebug()
        self._limbIDs.clear()
        self._limbIDs.update(uiUtil.PopulateLimbHierNormal(self.limb_tv, 
                                                    self._rigRoot,
                                                    self._allRigRoots))
        for limbID, limb in self._limbIDs.items():
            if limb.limbType.get() == 0:
                pm.treeView(self.limb_tv, e=1, enl=(limbID, 0))
        if not selectLimb:
            return
        for limbID, limb in self._limbIDs.items():
            if limb == selectLimb:
                pm.treeView(self.limb_tv, e=1, si=(limbID, 1))
    
    def SelectedLimb(self):
        log.funcFileInfo()
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        pm.menuItem(self.removeLimbs_mi, e=1, en=0)
        pm.menuItem(self.removeLimbsAndJoints_mi, e=1, en=0)
        pm.menuItem(self.flipSides_mi, e=1, en=0)
        pm.menuItem(self.duplicate_mi, e=1, en=0)
        pm.menuItem(self.mirrorBody_mi, e=1, en=0)
        pm.menuItem(self.mirrorFace_mi, e=1, en=0)
        pm.menuItem(self.jro_mi, e=1, en=0)
        pm.menuItem(self.saveTemp_mi, e=1, en=0)
        pm.menuItem(self.aimUp_mi, e=1, en=0)
        pm.menuItem(self.xferToJntOri_mi, e=1, en=0)
        pm.menuItem(self.updateBody_mi, e=1, en=0)
        pm.menuItem(self.updateFace_mi, e=1, en=0)
        pm.menuItem(self.limbLoc_mi, e=1, en=0)
        pm.menuItem(self.exportAnim_mi, e=1, en=0)
        pm.menuItem(self.removeAnim_mi, e=1, en=0)
        pm.menuItem(self.zeroRot_mi, e=1, en=0)
        pm.menuItem(self.resetScale_mi, e=1, en=0)
        self._selectedLimbs = None
        self.PopulateJointHier(None)
        if not limbIDStrs:
            return
        pm.menuItem(self.mirrorBody_mi, e=1, en=1)
        pm.menuItem(self.mirrorFace_mi, e=1, en=1)
        pm.menuItem(self.duplicate_mi, e=1, en=1)
        pm.menuItem(self.saveTemp_mi, e=1, en=1)
        pm.menuItem(self.jro_mi, e=1, en=1)
        pm.menuItem(self.aimUp_mi, e=1, en=1)
        pm.menuItem(self.xferToJntOri_mi, e=1, en=1)
        pm.menuItem(self.limbLoc_mi, e=1, en=1)
        pm.menuItem(self.zeroRot_mi, e=1, en=1)
        pm.menuItem(self.resetScale_mi, e=1, en=1)
        self._selectedLimbs = [self._limbIDs[ID] for ID in limbIDStrs]
        for limb in self._selectedLimbs:
            log.debug('\t\t' + limb.pfrsName.get())
            if pm.listConnections(limb.mirrorLimb):
                pm.menuItem(self.mirrorBody_mi, e=1, en=0)
                pm.menuItem(self.mirrorFace_mi, e=1, en=0)
                pm.menuItem(self.updateBody_mi, e=1, en=1)
                pm.menuItem(self.updateFace_mi, e=1, en=1)
        for limb in pm.listConnections(self._rigRoot.limbs):
            for joint in pm.listConnections(limb.joints):
                if pm.keyframe(joint, q=1, kc=1):
                    pm.menuItem(self.exportAnim_mi, e=1, en=1)
                    pm.menuItem(self.removeAnim_mi, e=1, en=1)
                    break
        if len(self._selectedLimbs) == 1:
            limb = self._selectedLimbs[0]
            self.PopulateJointHier(limb)
            if pm.listConnections(limb.mirrorLimb):
                pm.menuItem(self.flipSides_mi, e=1, en=1)
        allJoints = []
        for limb in self._selectedLimbs:
            allJoints += pm.listConnections(limb.joints)
        pm.select(allJoints)
        pm.menuItem(self.removeLimbs_mi, e=1, en=1)
        pm.menuItem(self.removeLimbsAndJoints_mi, e=1, en=1)

    def AddJointLimb(self, ignore):
        log.funcFileInfo()
        result = pm.promptDialog(
                title='Add Joint Limb',
                message='Limb Name:',
                button=['OK', 'Cancel'],
                defaultButton='OK',
                cancelButton='Cancel',
                dismissString='Cancel')
        if result != 'OK':
            return
        limbName = pm.promptDialog(q=1, tx=1)
        limb = self._limbFunc(self._rigRoot, self._selectedSceneJoints)
        self.operation._InitBehavior(self._rigRoot, limb)
        self.operation.RenameLimb(limb, limbName)
        self.operation.SetupDefaultLimbParent(limb)
        self.PopulateLimbHier(limb)
        self.PopulateJointHier(limb)
        self.PopulateSceneHier()
        self._pfrsUI.EnableOperations()

    def DuplicateLimbs(self, ignore):
        log.funcFileInfo()
        self.operation.DuplicateLimbs(self._selectedLimbs)
        self.PopulateLimbHier()
        self.PopulateSceneHier()
        self.PopulateJointHier(None)

    def MirrorBodyLimbs(self, axis):
        log.funcFileInfo()
        self.operation.MirrorBodyLimbs(self._selectedLimbs, axis)
        self.PopulateLimbHier()
        self.PopulateSceneHier()
        self.PopulateJointHier(None)

    def MirrorFaceLimbs(self, axis):
        log.funcFileInfo()
        self.operation.MirrorFaceLimbs(self._selectedLimbs, axis)
        self.PopulateLimbHier()
        self.PopulateSceneHier()
        self.PopulateJointHier(None)

    def UpdateMirrorBodyJoints(self, ignore):
        log.funcFileInfo()
        for limb in self._selectedLimbs:
            self.operation.UpdateMirrorBodyJoints(limb)

    def UpdateMirrorFaceJoints(self, ignore):
        log.funcFileInfo()
        for limb in self._selectedLimbs:
            self.operation.UpdateMirrorFaceJoints(limb)

    def JointRotOrder(self, index):
        log.funcFileInfo()
        for limb in self._selectedLimbs:
            for joint in pm.listConnections(limb.joints):
                joint.rotateOrder.set(index)

    def SaveTemplate(self, ignore):
        log.funcFileInfo()
        if not str(pm.sceneName()):
            msg = 'Please SAVE current scene before '
            msg += '\nsaving a template'
            pm.confirmDialog(   t='Save Current Scene', 
                                m=msg, 
                                icon='warning', 
                                b='Ok')
            return
        result = pm.promptDialog(
                title='Save Template',
                message='New Template Name:',
                button=['OK', 'Cancel'],
                defaultButton='OK',
                cancelButton='Cancel',
                dismissString='Cancel')
        if result != 'OK':
            return
        templateName = pm.promptDialog(q=1, tx=1) + '.ma'
        templateFolder = self._GetTemplateFolder()

        filePath = os.path.join(templateFolder, templateName)
        self.operation.SaveTemplate(self._rigRoot, 
                                    self._selectedLimbs, 
                                    filePath)
        
        self._allRigRoots = genUtil.GetRigRoots()
        self._rigRoot = self._allRigRoots[0]
        self.Refresh(0)

    def LoadTemplate(self, ignore):
        log.funcFileInfo()
        
        templateFolder = self._GetTemplateFolder()
        ldTmp.LoadTemplates(self._rigRoot, templateFolder)
        self.PopulateSceneHier()
        self.PopulateLimbHier()
        self.PopulateJointHier(None)

    def _GetTemplateFolder(self):
        rootFolder = os.path.dirname(__file__)
        rootFolder = os.path.dirname(rootFolder)
        rootFolder = os.path.dirname(rootFolder)
        folder = os.path.join(rootFolder, 'Data')
        filePath = os.path.join(folder, 'Config.json')
        config = genUtil.Json.Load(filePath)
        templateFolder = config['templateFolderPath']
        if not templateFolder:
            templateFolder = os.path.join(rootFolder, 'Templates')
            templateFolder = os.path.join(templateFolder, 'Limbs')
        return templateFolder

    def RemoveLimbs(self, ignore):
        log.funcFileInfo()
        msg = 'Remove %d limb(s)?' % len(self._selectedLimbs)
        if (pm.confirmDialog(   t='Remove Limbs', 
                                icon='warning', 
                                m=msg, 
                                b=['Yes','No'], 
                                db='Yes', 
                                cb='No', 
                                ds='No') == 'No'):
            return
        for limb in self._selectedLimbs:
            self.operation.RemoveLimb(limb)
        self.PopulateLimbHier()
        self.PopulateJointHier(None)
        self.PopulateSceneHier()
        self.SelectedLimb()
        self._pfrsUI.EnableOperations()
    
    def RemoveLimbsAndJoints(self, ignore):
        log.funcFileInfo()
        msg = 'Remove %d limb(s) + Delete Joints?' % len(self._selectedLimbs)
        if (pm.confirmDialog(   t='Remove Limbs + Delete Joints', 
                                icon='warning', 
                                m=msg, 
                                b=['Yes','No'], 
                                db='Yes', 
                                cb='No', 
                                ds='No') == 'No'):
            return
        for limb in self._selectedLimbs:
            self.operation.RemoveLimbAndJoints(limb)
        self.PopulateLimbHier()
        self.PopulateJointHier(None)
        self.PopulateSceneHier()
        self.SelectedLimb()
        self._pfrsUI.EnableOperations()

    def RenameLimb(self, limbIDStr, newName):
        log.funcFileInfo()
        limb = self._limbIDs[limbIDStr]
        rootName = self._rigRoot.pfrsName.get()
        oldName = limb.pfrsName.get()
        comboOldName = '%s_%s' % (rootName, oldName)
        if comboOldName == newName:
            return '' 
        msg = '\t"%s" to "%s"' % (oldName, newName)
        log.info(msg)
        if self.operation.RenameLimb(limb, newName):
            self.PopulateLimbHier(limb)
            self.PopulateJointHier(limb)
            self.PopulateSceneHier()
        return ''

    def FlipSides(self, ignore):
        log.funcFileInfo()
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        limb = self._limbIDs[limbIDStrs[0]]
        self.operation.FlipSides(limb)
        self.PopulateLimbHier(limb)
        self.PopulateJointHier(limb)

    def ApplyJointAimUp(self, ignore):
        log.funcFileInfo()
        self.operation.ApplyAimUpToLimbJoints(self._selectedLimbs)
    
    def TransferRotationsToJointOrient(self, ignore):
        for limb in self._selectedLimbs:
            for joint in pm.listConnections(limb.joints):
                self.operation.TransferRotationsToJointOrient(joint)

    def SetLimbLocation(self, value):
        for limb in self._selectedLimbs:
            self.operation.SetLimbLocation(limb, value)

    def ExportAnimation(self, ignore):
        log.funcFileInfo()
        if not str(pm.sceneName()):
            msg = 'Please SAVE current scene before '
            msg += '\nsaving a template'
            pm.confirmDialog(   t='Save Current Scene', 
                                m=msg, 
                                icon='warning', 
                                b='Ok')
            return
        result = pm.promptDialog(
                title='Name New Animation',
                message='Animation Name: ',
                button=['Save', 'Cancel'],
                defaultButton='Save',
                cancelButton='Cancel',
                dismissString='Cancel')
        if result != 'Save':
            return
        animName = pm.promptDialog(q=1, tx=1)
        curFile = pm.sceneName()
        animUtil.UpdateAnimFolder(self._rigRoot, curFile)
        animFolderPath = self._rigRoot.animationFolderPath.get()
        animFilePath = os.path.join(animFolderPath, animName)
        animFilePath = '%s.ma' % animFilePath
        if os.path.exists(animFilePath):
            result = pm.confirmDialog(
                        t='Animation file already exists!', 
                        icon='warning', 
                        m='Override existing file?', 
                        b=['Ok', 'Cancel'])
            if result and result == 'Ok':
                self.operation.ExportAnimation(self._rigRoot, animName)
                pm.frameLayout(self.sceneHier_fl, e=1, en=0)
                pm.frameLayout(self.limbHier_fl, e=1, en=0)
                pm.frameLayout(self.jntHier_fl, e=1, en=0)

    def RemoveAnimation(self, ignore):
        log.funcFileInfo()
        result = pm.confirmDialog(
                title='Remove Joint Animation',
                message='Are you sure?',
                button=['Yes, super sure', 'No'],
                defaultButton='Yes, super sure',
                cancelButton='No',
                dismissString='No')
        if result != 'Yes, super sure':
            return
        self.operation.RemoveAnimation(self._rigRoot)
        pm.menuItem(self.exportAnim_mi, e=1, en=0)
        pm.menuItem(self.removeAnim_mi, e=1, en=0)

    def SetJointRotationToZero(self, ignore):
        log.funcFileInfo()
        for limb in self._selectedLimbs:
            self.operation.SetJointRotationToZero(limb)
        for limb in self._selectedLimbs:
            self.operation.ResetControlTransforms(limb)
            bhv = self.operation.bhvMng.bhvs[limb.bhvFile.get()]
            bhv.InitLimb(limb)

    def RemoveJointScale(self, ignore):
        log.funcFileInfo()
        self.operation.RemoveJointScale(self._selectedLimbs)

#=========== JOINT HIER ====================================

    def PopulateJointHier(self, limb, selectedJoint=None):
        log.funcFileDebug()
        pm.treeView(self.joint_tv, e=1, removeAll=1)
        pm.frameLayout(self.jntHier_fl, e=1, en=0, l='---')
        if limb:
            index = limb.limbType.get()
            limbTypeStr = rigData.LIMB_TYPES[index]
            txt = "%s's Joints" % limb.pfrsName.get()
            txt += ' (%s)' % limbTypeStr
            pm.frameLayout(self.jntHier_fl, e=1, en=1, l=txt)
            self._limbJoints = uiUtil.PopulateJointHier(self.joint_tv, 
                                                        limb)
            if not selectedJoint:
                return
            group = pm.listConnections(selectedJoint.group)[0]
            index = str(group.groupIndex.get())
            pm.treeView(self.joint_tv, e=1, si=(index, 1))
        
    def SelectedJointHierJoint(self):
        log.funcFileInfo()
        jointIDs = pm.treeView(self.joint_tv, q=1, selectItem=1)
        if not jointIDs:
            return
        jointID = jointIDs[0]
        joint = self._limbJoints[jointID]
        pm.select(joint)
    
    def ReorderJoints(self, limbIDsStr, oldParents, i2, newParentIDStr, i3, i4, i5):
        log.funcFileInfo()
        limb = self._selectedLimbs[0]
        if 'Branch' not in limb.limbType.get():
            self.PopulateJointHier(limb)
            return
        for ID, joint in self._limbJoints.items():
            index = pm.treeView(self.joint_tv, q=1, idx=ID)
            group = pm.listConnections(joint.group)[0]
            group.groupIndex.set(int(index))
        self.PopulateJointHier(limb)

    def RenameJoint(self, jointIDStr, newName):
        log.funcFileInfo()
        joint = self._limbJoints[jointIDStr]
        oldName = joint.pfrsName.get()
        if newName == oldName:
            return ''
        msg = '\t"%s" to "%s"' % (oldName, newName)
        log.info(msg)
        if self.operation.RenameJoint(joint, newName):
            self.PopulateJointHier(self._selectedLimbs[0], joint)
            self.PopulateSceneHier()
        # if not genUtil.Name.IsValidCharacterLength(newName):
        #     msg = 'Joint Name Must be 2 or more characters'
        #     log.error(msg)
        #     return ''
        # if not genUtil.Name.DoesNotStartWithNumber(newName):
        #     msg = 'Cannot start with number OR _'
        #     log.error(msg)
        #     return ''
        # if not genUtil.Name.AreAllValidCharacters(newName):
        #     msg = 'May only contain A-Z, a-z, 0-9, _'
        #     log.error(msg)
        #     return ''
        # limb = self._selectedLimbs[0]
        # joints = pm.listConnections(limb.joints)
        # jointNames = [j.pfrsName.get() for j in joints]
        # if newName in jointNames:
        #     msg = 'Every limb joint name must be UNIQUE'
        #     log.error(msg)
        #     return ''
        # rigRoot = pm.listConnections(limb.rigRoot)[0]
        # self.operation._RenameJoint(rigRoot, limb, joint, newName)
        # self.PopulateJointHier(limb, joint)
        # self.PopulateSceneHier()
        return ''




# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
