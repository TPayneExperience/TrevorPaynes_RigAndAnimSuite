
import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import LimbSetup as ls
reload(ls)
import Common.UI_Utilities as uiUtil
reload(uiUtil)
import Common.Logger as log
reload(log)

import SceneObjects.RigRoot as rrt
reload(rrt)

class LimbSetup_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Limb Setup'
    orderIndex = 100
    operation = ls.LimbSetup
    def __init__(self):
        self._limbFunc = None

    def Setup_UI(self): # Return nothing, parent should cleanup
        self._Setup()
        self.PopulateLimbHier()
        self.PopulateSceneHier()
        pm.treeView(self.joint_tv, e=1, removeAll=1)
        # self.PopulateLimbHier()
    
#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout(l='---', bv=1) as self.sceneHier_fl:
                self.scene_tv = pm.treeView(adr=0, arp=0, sc=self.IsSceneJointSelectable, 
                                                scc=self.SelectedSceneJoints) #,
                                                #elc=self.IgnoreRename)
                with pm.popupMenu():
                    self.buildHier_mi = pm.menuItem(l='Joint Tool',
                                            c=pm.Callback(ls.LimbSetup.JointTool)) 
                    msg1 = 'Autobuild by JOINT HIERARCHY'
                    msg2 = 'Autobuild by JOINT NAMES: [limb]_[L/M/R]_[joint]'
                    self.buildHier_mi = pm.menuItem(l=msg1, en=0)#, 
                                                    #c=self.AutoBuildByHierarchy)
                    self.buildNames_mi = pm.menuItem(l=msg2, en=0)#, 
                                                    #c=self.AutoBuildByName)
        with pm.verticalLayout():
            with pm.frameLayout('Limbs', bv=1):
                tt = 'Double click to RENAME.'
                tt += '\nTo set a limb as a MIRROR,'
                tt += '\nname BOTH LIMBS with the SAME NAME.'
                self.limb_tv = pm.treeView(ams=0, adr=0, arp=0, ann=tt, nb=1, fb=1)
                pm.treeView(self.limb_tv, e=1)#,   elc=self.RenameLimb,
                                                # scc=self.SelectionChanged,
                                                # enk=1)
                with pm.popupMenu():
                    self.add_mi = pm.menuItem(l='Add Joint Limb', en=0, c=self.AddJointLimb)
                    self.flipSides_mi = pm.menuItem(l='Flip Sides', en=0)# , en=0, c=self.FlipSides)
                    pm.menuItem(divider=1)
                    self.remove_mi = pm.menuItem(l='Remove Limb', en=0)# , c=self.Remove)
                    pm.menuItem(divider=1)
                    self.removeAll_mi = pm.menuItem(l='Remove ALL Limbs', en=0)# , c=self.RemoveAll)

            with pm.frameLayout(l='---', bv=1) as self.jntHier_fl:
                self.joint_tv = pm.treeView(arp=0)# , scc=self.JointHierSelectionChanged)
                pm.treeView(self.joint_tv, e=1)# , editLabelCommand=self.Rename)

    @log.class_decorator
    def PopulateSceneHier(self):
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

    @log.class_decorator
    def PopulateLimbHier(self):
        # pm.treeView(self.limb_tv, e=1, removeAll=1)
        rigRoot = rrt.RigRoot.GetAll()[0]
        uiUtil.PopulateLimbHier(self.limb_tv, rigRoot)
    
    @log.class_decorator
    def PopulateJointHier(self, limb):
        # pm.treeView(self.joint_tv, e=1, removeAll=1)
        uiUtil.PopluateJointHier(self.joint_tv, limb)
        
#=========== SCENE HIER ====================================

    @log.class_decorator
    def IsSceneJointSelectable(self, name, state):
        return name in self.selectableJoints
    
    @log.class_decorator
    def SelectedSceneJoints(self):
        joints = self.GetSelectedSceneJoints()
        for joint in joints:
            log.Logger.Get().debug('\t\t' + str(joint))
        if joints:
            pm.select(joints)
            self.EvaluateSceneJoints(joints)
        else:
            pm.select(d=1)

    @log.class_decorator
    def GetSelectedSceneJoints(self):
        names = pm.treeView(self.scene_tv, q=1, selectItem=1)
        if not names:
            return []
        return [self.allJoints[name] for name in names]
    
    @log.class_decorator
    def EvaluateSceneJoints(self, joints):
        pm.menuItem(self.add_mi, e=1, en=0)
        self._limbFunc = None
        if not joints:
            return
        if ls.LimbSetup._AreJointsChained(joints):
            joints = ls.LimbSetup._GetCompleteJointChain(joints)
        for joint in joints:
            if joint.hasAttr('limb') and pm.listConnections(joint.limb):
                return
        self._limbFunc = ls.LimbSetup._GetLimbFuncForJoints(joints)
        pm.menuItem(self.add_mi, e=1, en=bool(self._limbFunc))

#=========== LIMB HIER ====================================

    @log.class_decorator
    def AddJointLimb(self, ignore):
        self._limbFunc

#=========== JOINT HIER ====================================






