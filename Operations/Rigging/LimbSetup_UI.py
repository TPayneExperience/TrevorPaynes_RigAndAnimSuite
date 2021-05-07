
import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import LimbSetup as ls
reload(ls)
import Common.UI_Utilities as uiUtil
reload(uiUtil)
import Common.General_Utilities as genUtil
reload(genUtil)
import Common.Logger as log
reload(log)

import SceneData.RigRoot as rrt
reload(rrt)
import Data.Rig_Data as rigData
reload(rigData)

class LimbSetup_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Limb Setup'
    orderIndex = 100
    operation = ls.LimbSetup()
    def __init__(self):
        self._limbFunc = None
        self._rigRoot = None
        self._selectedSceneJoints = []
        self._limbJoints = {}
        self._limbIDs = {} # limbID : limb
        self._selectedLimbs = []

    def Setup_UI(self, rigRoot, allRigRoots):  # Return nothing, parent should cleanup
        self._Setup()
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self.PopulateLimbHier()
        
        self.PopulateSceneHier()
        pm.treeView(self.joint_tv, e=1, removeAll=1)
    
    def Teardown_UI(self, rigRoot, allRigRoots):
        pass
    
#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout(l='---', bv=1) as self.sceneHier_fl:
                self.scene_tv = pm.treeView(adr=0, arp=0, sc=self.IsSceneJointSelectable, 
                                                scc=self.SelectedSceneJoints,
                                                elc=self.IgnoreRename)
                with pm.popupMenu():
                    pm.menuItem(l='Refresh', c=self.Refresh)
                    self.buildHier_mi = pm.menuItem(l='Joint Tool',
                                            c=pm.Callback(self.operation.JointTool)) 
                    msg1 = 'Autobuild by JOINT HIERARCHY'
                    msg2 = 'Autobuild by JOINT NAMES: [limb]_[L/M/R]_[joint]'
                    self.buildHier_mi = pm.menuItem(l=msg1, en=0, 
                                                    c=self.AutoBuildByHierarchy)
                    self.buildNames_mi = pm.menuItem(l=msg2, en=0, 
                                                    c=self.AutoBuildByName)
        with pm.verticalLayout():
            with pm.frameLayout('Limbs', bv=1):
                tt = 'Double click to RENAME.'
                tt += '\nTo set a limb as a MIRROR,'
                tt += '\nname BOTH LIMBS with the SAME NAME.'
                self.limb_tv = pm.treeView(adr=0, arp=0, ann=tt, nb=1, fb=1, enk=1)
                pm.treeView(self.limb_tv, e=1, scc=self.SelectedLimb,   
                                                elc=self.RenameLimb)
                with pm.popupMenu():
                    self.add_mi = pm.menuItem(l='Add Joint Limb', 
                                            en=0, c=self.AddJointLimb)
                    self.duplicate_mi = pm.menuItem(l='Duplicate Limbs', 
                                            en=0, c=self.DuplicateLimbs)
                    with pm.subMenuItem(l='Mirror Limbs', en=0) as self.mirror_mi:
                        pm.menuItem(l='X Axis', 
                                    c=pm.Callback(self.MirrorLimbs, 'X'))
                        pm.menuItem(l='Y Axis', 
                                    c=pm.Callback(self.MirrorLimbs, 'Y'))
                        pm.menuItem(l='Z Axis', 
                                    c=pm.Callback(self.MirrorLimbs, 'Z'))
                    self.flipSides_mi = pm.menuItem(l='Flip Sides', 
                                            en=0, c=self.FlipSides)
                    pm.menuItem(divider=1)
                    self.remove_mi = pm.menuItem(l='Remove Limbs', 
                                            en=0, c=self.RemoveLimbs)
            with pm.frameLayout(l='---', bv=1, en=0) as self.jntHier_fl:
                tt = 'BRANCH limbs may reorder joints'
                tt += '\nDouble LMB Click to RENAME'
                self.joint_tv = pm.treeView(ams=0, arp=0, ann=tt)
                pm.treeView(self.joint_tv, e=1, dad=self.ReorderJoints,
                                                elc=self.RenameJoint)

#=========== SCENE HIER ====================================

    def PopulateSceneHier(self):
        log.funcFileDebug()
        self.selectableJoints = []
        pm.treeView(self.scene_tv, e=1, removeAll=1)
        self.allJoints = {} # longName : joint
        limbJoints = []
        for joint in pm.ls(type='joint'):
            self.allJoints[joint.longName()] = joint
            if joint.hasAttr('limb'):
                if pm.listConnections(joint.limb):
                    limbJoints.append(joint)
        for longName in sorted(list(self.allJoints.keys())):
            joint = self.allJoints[longName]
            parent = pm.listRelatives(joint, parent=1)
            if parent and (parent[0].longName() in self.allJoints):
                pm.treeView(self.scene_tv, e=1, ai=(longName, parent[0].longName()))
            else:
                pm.treeView(self.scene_tv, e=1, ai=(longName, ''))
            pm.treeView(self.scene_tv, e=1, enl=(longName, joint not in limbJoints))
            if joint not in limbJoints:
                self.selectableJoints.append(longName)
            pm.treeView(self.scene_tv, e=1, dl=(longName, joint.shortName()))
        hasJoints = bool(self.allJoints)
        pm.menuItem(self.buildHier_mi, e=1, en=hasJoints)
        pm.menuItem(self.buildNames_mi, e=1, en=hasJoints)

        totalJoints = pm.ls(type='joint')
        usedCount = 0
        for joint in totalJoints:
            if joint.hasAttr('limb'):
                if pm.listConnections(joint.limb):
                    usedCount += 1
        txt = 'Scene Joints (%d of %d used)' % (usedCount, len(totalJoints))
        pm.frameLayout(self.sceneHier_fl, e=1, l=txt)

    def Refresh(self, ignore):
        self.PopulateSceneHier()
        self.PopulateLimbHier()
        self.PopulateJointHier(None)

    def AutoBuildByHierarchy(self, ignore):
        log.funcFileInfo()
        self.operation.AutoBuildByHierarchy(self._rigRoot)
        self.PopulateSceneHier()
        self.PopulateLimbHier()
        self.PopulateJointHier(None)

    def AutoBuildByName(self, ignore):
        log.funcFileInfo()
        self.operation.AutoBuildByName(self._rigRoot)
        self.PopulateSceneHier()
        self.PopulateLimbHier()
        self.PopulateJointHier(None)

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

    def IsSceneJointSelectable(self, name, state):
        log.funcFileDebug()
        return name in self.selectableJoints
    
    def SelectedSceneJoints(self):
        log.funcFileInfo()
        joints = self.GetSelectedSceneJoints()
        for joint in joints:
            log.debug('\t\t' + str(joint))
        if joints:
            pm.select(joints)
            self._selectedSceneJoints = joints
            self.EvaluateSceneJoints()
        else:
            pm.select(d=1)

    def GetSelectedSceneJoints(self):
        log.funcFileDebug()
        limbIDStrs = pm.treeView(self.scene_tv, q=1, selectItem=1)
        if not limbIDStrs:
            return []
        return [self.allJoints[limbID] for limbID in limbIDStrs]
    
    def EvaluateSceneJoints(self):
        log.funcFileDebug()
        pm.menuItem(self.add_mi, e=1, en=0)
        self._limbFunc = None
        if not self._selectedSceneJoints:
            return 
        if not self.operation._AreJointsDisconnected(self._selectedSceneJoints):
            return
        self._limbFunc = self.operation._GetLimbFuncForJoints(self._selectedSceneJoints)
        b = bool(self._limbFunc)
        pm.menuItem(self.add_mi, e=1, en=b)

#=========== LIMB HIER ====================================

    def PopulateLimbHier(self, selectLimb=None):
        log.funcFileDebug()
        self._limbIDs = uiUtil.PopulateLimbHier(self.limb_tv, 
                                                self._rigRoot,
                                                self._allRigRoots)
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
        pm.menuItem(self.remove_mi, e=1, en=0)
        pm.menuItem(self.flipSides_mi, e=1, en=0)
        pm.menuItem(self.duplicate_mi, e=1, en=0)
        pm.menuItem(self.mirror_mi, e=1, en=0)
        self._selectedLimbs = None
        self.PopulateJointHier(None)
        if not limbIDStrs:
            return
        pm.menuItem(self.mirror_mi, e=1, en=1)
        pm.menuItem(self.duplicate_mi, e=1, en=1)
        self._selectedLimbs = [self._limbIDs[ID] for ID in limbIDStrs]
        for limb in self._selectedLimbs:
            log.debug('\t\t' + limb.pfrsName.get())
            if pm.listConnections(limb.mirrorLimb):
                pm.menuItem(self.mirror_mi, e=1, en=0)
        if len(self._selectedLimbs) == 1:
            limb = self._selectedLimbs[0]
            self.PopulateJointHier(limb)
            if pm.listConnections(limb.mirrorLimb):
                pm.menuItem(self.flipSides_mi, e=1, en=1)
            pm.select(pm.listConnections(limb.joints))
        pm.menuItem(self.remove_mi, e=1, en=1)

    def AddJointLimb(self, ignore):
        log.funcFileInfo()
        limb = self._limbFunc(self._rigRoot, self._selectedSceneJoints)
        self.operation._InitBehavior(self._rigRoot, limb)
        self.PopulateLimbHier(limb)
        self.PopulateJointHier(limb)
        self.PopulateSceneHier()

    def DuplicateLimbs(self, ignore):
        log.funcFileInfo()
        self.operation.DuplicateLimbs(self._selectedLimbs)
        self.PopulateLimbHier()
        self.PopulateSceneHier()
        self.PopulateJointHier(None)

    def MirrorLimbs(self, axis):
        log.funcFileInfo()
        self.operation.MirrorLimbs(self._selectedLimbs, axis)
        self.PopulateLimbHier()
        self.PopulateSceneHier()
        self.PopulateJointHier(None)

    def RemoveLimbs(self, ignore):
        log.funcFileInfo()
        if (pm.confirmDialog(   t='Remove Limbs', 
                                icon='warning', 
                                m='Remove limbs?', 
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
            self._limbJoints = uiUtil.PopluateJointHier(self.joint_tv, 
                                                        limb)
            if not selectedJoint:
                return
            group = pm.listConnections(selectedJoint.group)[0]
            index = str(group.groupIndex.get())
            pm.treeView(self.joint_tv, e=1, si=(index, 1))
        
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
        if not genUtil.Name.IsValidCharacterLength(newName):
            msg = 'Joint Name Must be 2 or more characters'
            log.error(msg)
            return ''
        if not genUtil.Name.DoesNotStartWithNumber(newName):
            msg = 'Cannot start with number OR _'
            log.error(msg)
            return ''
        if not genUtil.Name.AreAllValidCharacters(newName):
            msg = 'May only contain A-Z, a-z, 0-9, _'
            log.error(msg)
            return ''
        limb = self._selectedLimbs[0]
        joints = pm.listConnections(limb.joints)
        jointNames = [j.pfrsName.get() for j in joints]
        if newName in jointNames:
            msg = 'Every limb joint name must be UNIQUE'
            log.error(msg)
            return ''
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        self.operation._RenameJoint(rigRoot, limb, joint, newName)
        self.PopulateJointHier(limb, joint)
        self.PopulateSceneHier()
        return ''



