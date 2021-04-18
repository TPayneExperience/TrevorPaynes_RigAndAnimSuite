
import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import Test as tst
reload (tst)
# import Behavior as bhv
# reload(bhv)
# import Common.UI_Utilities as uiUtil
# reload(uiUtil)
# import Common.General_Utilities as genUtil
# reload(genUtil)
# import Common.Logger as log
# reload(log)

# import SceneData.RigRoot as rrt
# reload(rrt)

class Test_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Test'
    orderIndex = 500
    operation = tst.Test()
    # def __init__(self):
#         self._limbFunc = None
        # self._rigRoot = None
#         self._selectedSceneJoints = []
#         self._limbJoints = {}
#         self._limbIDs = {} # limbID : limb
#         self._selectedLimbs = []

    def Setup_UI(self): # Return nothing, parent should cleanup
        with pm.verticalLayout():
            pm.text("You're Breathtaking")

        # self._Setup()
#         self._rigRoot = rrt.RigRoot.GetAll()[0]
#         self.PopulateLimbHier()
        
#         self.PopulateSceneHier()
#         pm.treeView(self.joint_tv, e=1, removeAll=1)
#         # self.PopulateLimbHier()
    
#=========== SETUP UI ====================================

    # def _Setup(self):
    #     with pm.verticalLayout():
    #         with pm.frameLayout('Limbs', bv=1):
    #             msg = '- MMB + Drag + Drop to reparent'
    #             msg += '\n- Red Dots indicate Empty Limbs'
    #             msg += '\n- Double Click to rename Empty Limbs'
    #             self.limbs_tv = pm.treeView(nb=1, ann=msg, enk=1)
    #             pm.treeView(self.limbs_tv, e=1)# , scc=self.SelectionChanged,
    #                                             # sc=self.ValidateSelection,
    #                                             # elc=self.RenameLimb,
    #                                             # dad=self.ReparentLimb)
    #             with pm.popupMenu() as self.rmb_ui:
    #                 pm.menuItem(l='Add Empty Limb')#, c=self.AddEmptyRigLimb)
    #                 self.remove_mi = pm.menuItem(l='Remove Empty Limb', 
    #                                             en=0)#, c=self.RemoveEmptyLimb)
    #                 pm.menuItem(d=1)
    #                 pm.menuItem(l='Load Skeleton Hierarchy')#, 
    #                                             # c=self.LoadSkelHier)
    #                 pm.menuItem(l='PRESETS', d=1)
    #                 self.savePreset_mi = pm.menuItem(l='Save Preset', 
    #                                             en=0)#, c=self.SavePreset)
    #                 pm.menuItem(l='Edit Presets')#, c=self.EditPresets)
    #                 pm.menuItem(l='APPLY PRESET', d=1)

    #         with pm.frameLayout('Controls', bv=1):
    #             self.widget = pm.treeView(arp=0, adr=0, ams=0)#, elc=self.IgnoreRename)
    #             pm.treeView(self.widget, e=1)#, scc=self.SelectionChanged)
    #     with pm.verticalLayout():
    #         with pm.frameLayout('Limb Properties', bv=1, en=0) as self.limbLayout:
    #             with pm.columnLayout(adj=1) as self.bhvLimbProp_cl:
    #                 with pm.columnLayout(co=('left', -100)) as self.appLimbLockHide_cl:
    #                     self.enableLimb_cg = pm.attrControlGrp(l='Enable Limb',
    #                                                     a='perspShape.shakeEnabled')
    #                 self.bhvType_om = pm.optionMenu(l='Bhv Type')#, 
    #                                                 # cc=pm.Callback(self.SetBhvType))
    #                 self.grpParent_at = pm.attrEnumOptionMenu(  l='Parent Joint', 
    #                                                             at='perspShape.filmFit')

    #         with pm.frameLayout('Behavior Properties', bv=1, en=0) as self.targetLayout:
    #             with pm.columnLayout(adj=1) as self.targetProp_cl:
    #                 self.targetLimb_om = pm.optionMenu( l='Target Limb')#, 
    #                                                     # cc=self.SetBhvParentLimb)

    #         with pm.frameLayout('Group Properties', bv=1, en=0) as self.groupLayout:
    #             with pm.columnLayout(adj=1) as self.bhvGroupProp_cl:
    #                 with pm.columnLayout(co=('left', -100)) as self.appLimbLockHide_cl:
    #                     self.enableGroup_cg = pm.attrControlGrp(l='Enable Control',
    #                                                     a='perspShape.shakeEnabled')
    #                 self.weight_sg = pm.attrFieldSliderGrp( l='Cst Weight', 
    #                                                         min=0.0,
    #                                                         max=1.0,
    #                                                         adj=3,
    #                                                         pre=3,
    #                                                         cw=((1, 60), (2, 55), (3, 55)),
    #                                                         at='persp.translateX')#,
    #                                                         # cc=self.LogCstWeight)
                    
    
#     def PopulateSceneHier(self):
#         log.funcFileDebug()
#         self.selectableJoints = []
#         pm.treeView(self.scene_tv, e=1, removeAll=1)
#         self.allJoints = {} # longName : joint
#         limbJoints = []
#         for joint in pm.ls(type='joint'):
#             self.allJoints[joint.longName()] = joint
#             if joint.hasAttr('limb'):
#                 if pm.listConnections(joint.limb):
#                     limbJoints.append(joint)
#         for longName in sorted(list(self.allJoints.keys())):
#             joint = self.allJoints[longName]
#             parent = pm.listRelatives(joint, parent=1)
#             if parent and (parent[0].longName() in self.allJoints):
#                 pm.treeView(self.scene_tv, e=1, ai=(longName, parent[0].longName()))
#             else:
#                 pm.treeView(self.scene_tv, e=1, ai=(longName, ''))
#             pm.treeView(self.scene_tv, e=1, enl=(longName, joint not in limbJoints))
#             if joint not in limbJoints:
#                 self.selectableJoints.append(longName)
#             pm.treeView(self.scene_tv, e=1, dl=(longName, joint.shortName()))
#         hasJoints = bool(self.allJoints)
#         pm.menuItem(self.buildHier_mi, e=1, en=hasJoints)
#         pm.menuItem(self.buildNames_mi, e=1, en=hasJoints)

#         totalJoints = pm.ls(type='joint')
#         usedCount = 0
#         for joint in totalJoints:
#             if joint.hasAttr('limb'):
#                 if pm.listConnections(joint.limb):
#                     usedCount += 1
#         txt = 'Scene Joints (%d of %d used)' % (usedCount, len(totalJoints))
#         pm.frameLayout(self.sceneHier_fl, e=1, l=txt)

#     def PopulateLimbHier(self):
#         log.funcFileDebug()
#         self._limbIDs = uiUtil.PopulateLimbHier(self.limb_tv, 
#                                                 self._rigRoot)
    
#     def PopulateJointHier(self, limb):
#         log.funcFileDebug()
#         pm.treeView(self.joint_tv, e=1, removeAll=1)
#         pm.frameLayout(self.jntHier_fl, e=1, en=0, l='---')
#         if limb:
#             txt = "%s's Joints" % limb.pfrsName.get()
#             txt += ' (%s)' % limb.limbType.get()
#             pm.frameLayout(self.jntHier_fl, e=1, en=1, l=txt)
#             self._limbJoints = uiUtil.PopluateJointHier(self.joint_tv, 
#                                                         limb)
        
# #=========== SCENE HIER ====================================

#     def Refresh(self, ignore):
#         self.PopulateSceneHier()
#         self.PopulateLimbHier()
#         self.PopulateJointHier(None)

#     def AutoBuildByHierarchy(self, ignore):
#         log.funcFileInfo()
#         ls.LimbSetup.AutoBuildByHierarchy()
#         self.PopulateSceneHier()
#         self.PopulateLimbHier()
#         self.PopulateJointHier(None)

#     def AutoBuildByName(self, ignore):
#         log.funcFileInfo()
#         ls.LimbSetup.AutoBuildByName()
#         self.PopulateSceneHier()
#         self.PopulateLimbHier()
#         self.PopulateJointHier(None)

#     def IgnoreRename(self, idStr, newName):
#         log.funcFileInfo()
#         return ''

#     def IsSceneJointSelectable(self, name, state):
#         log.funcFileDebug()
#         return name in self.selectableJoints
    
#     def SelectedSceneJoints(self):
#         log.funcFileInfo()
#         joints = self.GetSelectedSceneJoints()
#         for joint in joints:
#             log.debug('\t\t' + str(joint))
#         if joints:
#             pm.select(joints)
#             self._selectedSceneJoints = joints
#             self.EvaluateSceneJoints()
#         else:
#             pm.select(d=1)

#     def GetSelectedSceneJoints(self):
#         log.funcFileDebug()
#         names = pm.treeView(self.scene_tv, q=1, selectItem=1)
#         if not names:
#             return []
#         return [self.allJoints[name] for name in names]
    
#     def EvaluateSceneJoints(self):
#         log.funcFileDebug()
#         pm.menuItem(self.add_mi, e=1, en=0)
#         self._limbFunc = None
#         if not self._selectedSceneJoints:
#             return 
#         if not ls.LimbSetup._AreJointsDisconnected(self._selectedSceneJoints):
#             return
#         self._limbFunc = ls.LimbSetup._GetLimbFuncForJoints(self._selectedSceneJoints)
#         b = bool(self._limbFunc)
#         pm.menuItem(self.add_mi, e=1, en=b)

# #=========== LIMB HIER ====================================

#     def SelectedLimb(self):
#         log.funcFileInfo()
#         names = pm.treeView(self.limb_tv, q=1, selectItem=1)
#         pm.menuItem(self.remove_mi, e=1, en=0)
#         pm.menuItem(self.flipSides_mi, e=1, en=0)
#         self._selectedLimbs = None
#         self.PopulateJointHier(None)
#         if not names:
#             return
#         for name in names:
#             log.debug('\t\t' + name)
#         self._selectedLimbs = [self._limbIDs[name] for name in names]
#         if len(self._selectedLimbs) == 1:
#             limb = self._selectedLimbs[0]
#             self.PopulateJointHier(limb)
#             if pm.listConnections(limb.mirrorLimb):
#                 pm.menuItem(self.flipSides_mi, e=1, en=1)
#         pm.menuItem(self.remove_mi, e=1, en=1)

#     def AddJointLimb(self, ignore):
#         log.funcFileInfo()
#         self._limbFunc(self._rigRoot, self._selectedSceneJoints)
#         self.PopulateLimbHier()
#         self.PopulateSceneHier()

#     def RemoveLimbs(self, ignore):
#         log.funcFileInfo()
#         if (pm.confirmDialog(   t='Remove Limbs', 
#                                 icon='warning', 
#                                 m='Remove limbs?', 
#                                 b=['Yes','No'], 
#                                 db='Yes', 
#                                 cb='No', 
#                                 ds='No') == 'No'):
#             return
#         ls.LimbSetup.RemoveLimbs(self._selectedLimbs)
#         self.PopulateLimbHier()
#         self.PopulateSceneHier()
#         self.SelectedLimb()
    
#     def RenameLimb(self, limbIDStr, newName):
#         log.funcFileInfo()
#         limb = self._limbIDs[limbIDStr]
#         oldName = limb.pfrsName.get()
#         msg = '\t"%s" to "%s"' % (oldName, newName)
#         log.info(msg)
#         if not genUtil.Name.IsValidCharacterLength(newName):
#             msg = 'Limb Name Must be 2 or more characters'
#             log.error(msg)
#             return ''
#         if not genUtil.Name.DoesNotStartWithNumber(newName):
#             msg = 'Cannot start with number OR _'
#             log.error(msg)
#             return ''
#         if not genUtil.Name.AreAllValidCharacters(newName):
#             msg = 'May only contain A-Z, a-z, 0-9, _'
#             log.error(msg)
#             return ''
#         rigRoot = pm.listConnections(limb.rigRoot)[0]
#         if ls.LimbSetup._LimbNamesCount(rigRoot, newName) >= 2:
#             msg = 'Rig may only contain 2 limbs of the same name'
#             log.error(msg)
#             return ''
#         ls.LimbSetup._RenameLimb(limb, newName)
#         self.PopulateLimbHier()
#         self.PopulateJointHier(None)
#         self.PopulateSceneHier()
#         return ''

#     def FlipSides(self, ignore):
#         log.funcFileInfo()
#         names = pm.treeView(self.limb_tv, q=1, selectItem=1)
#         limb = self._limbIDs[names[0]]
#         ls.LimbSetup.FlipSides(limb)
#         self.PopulateLimbHier()
#         self.PopulateJointHier(None)

# #=========== JOINT HIER ====================================

#     def ReorderJoints(self, limbIDsStr, oldParents, i2, newParentIDStr, i3, i4, i5):
#         log.funcFileInfo()
#         limb = self._selectedLimbs[0]
#         if 'Branch' not in limb.limbType.get():
#             self.PopulateJointHier(limb)
#             return
#         for ID, joint in self._limbJoints.items():
#             index = pm.treeView(self.joint_tv, q=1, idx=ID)
#             group = pm.listConnections(joint.group)[0]
#             group.groupIndex.set(int(index))
#         self.PopulateJointHier(limb)

#     def RenameJoint(self, jointIDStr, newName):
#         log.funcFileInfo()
#         joint = self._limbJoints[jointIDStr]
#         oldName = joint.pfrsName.get()
#         msg = '\t"%s" to "%s"' % (oldName, newName)
#         log.info(msg)
#         if not genUtil.Name.IsValidCharacterLength(newName):
#             msg = 'Joint Name Must be 2 or more characters'
#             log.error(msg)
#             return ''
#         if not genUtil.Name.DoesNotStartWithNumber(newName):
#             msg = 'Cannot start with number OR _'
#             log.error(msg)
#             return ''
#         if not genUtil.Name.AreAllValidCharacters(newName):
#             msg = 'May only contain A-Z, a-z, 0-9, _'
#             log.error(msg)
#             return ''
#         limb = self._selectedLimbs[0]
#         joints = pm.listConnections(limb.joints)
#         jointNames = [j.pfrsName.get() for j in joints]
#         if newName in jointNames:
#             msg = 'Every limb joint name must be UNIQUE'
#             log.error(msg)
#             return ''
#         rigRoot = pm.listConnections(limb.rigRoot)[0]
#         ls.LimbSetup._RenameJoint(rigRoot, limb, joint, newName)
#         self.PopulateJointHier(limb)
#         self.PopulateSceneHier()
#         return ''



