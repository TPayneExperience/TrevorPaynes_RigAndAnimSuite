
import pymel.core as pm

import Skeleton.Skeleton_UI as skel_ui
reload(skel_ui)

# import Popups.MirrorLimbs_UI as mir_ui
# reload(mir_ui)
# import Popups.DuplicateLimbs_UI as dup_ui
# reload(dup_ui)

# import Popups.SaveTemplate_UI as save_ui
# reload(save_ui)
# import Popups.LoadTemplate_UI as load_ui
# reload(load_ui)


class LimbSetup_UI():
    def __init__(self, limbSetup):
        self.limbSetup = limbSetup

        self.mirror_axis = '' # 'X', 'Y', 'Z'

        self._Setup()
    
    # def Populate(self):
    #     self.skel_ui.Populate()

    def NewRig(self, rigRoot):
        self.skel_ui.NewRig(rigRoot)

#=========== SETUP ====================================

    def _Setup(self):
        with pm.tabLayout() as self.tab:
            with pm.horizontalLayout() as self.skelTab:
                self.skel_ui = skel_ui.Skeleton_UI(self.limbSetup.skel)
            with pm.horizontalLayout() as self.bhvTab:
                pm.button('test', label='One')
            with pm.horizontalLayout() as self.appTab:
                pm.button('test', label='Two')
        pm.tabLayout(  self.tab, 
                    edit=1, 
                    tabLabel=(  (self.skelTab,'Skeleton'), 
                                (self.bhvTab,'Behaviors'), 
                                (self.appTab,'Appearance')))
        # vl = QtWidgets.QVBoxLayout(self)
        # self.limbs_tw = QtWidgets.QTabWidget()
        # self.limbs_tw.addTab(self.skel_ui, 'Skeleton')
        # index = self.limbs_tw.addTab(QtWidgets.QTabWidget(self.limbs_tw), 'Behaviors')
        # self.limbs_tw.setTabEnabled(index, False)
        # index = self.limbs_tw.addTab(QtWidgets.QTabWidget(self.limbs_tw), 'Appearance')
        # self.limbs_tw.setTabEnabled(index, False)
        # vl.addWidget(self.limbs_tw)
    
    
# #=========== MIRROR ====================================

#     def Mirror_X(self):
#         self.mirror_axis = 'X'
#         self._Mirror_Dialog()

#     def Mirror_Y(self):
#         self.mirror_axis = 'Y'
#         self._Mirror_Dialog()

#     def Mirror_Z(self):
#         self.mirror_axis = 'Z'
#         self._Mirror_Dialog()

#     def _Mirror_Dialog(self):
#         mirUI = mir_ui.MirrorLimbs_UI(self.limbSetup.limbMng, self)
#         mirUI.exec_()
    
#     def _Mirror_Limbs(self, limbIDs):
#         '''Only call by dialog'''
#         for limbID in limbIDs:
#             sourceLimbIDs = self.limbSetup.limbMng.GetLimbCreationOrder(limbID)
#             sourceToTargetLimbIDs = {}
#             for i in range(len(sourceLimbIDs)):
#                 sourceLimbID = sourceLimbIDs[i]
#                 targetLimbID = self.limbSetup.limbMng.Mirror(sourceLimbID)
#                 self.limbSetup.jntMng.Mirror(sourceLimbID, targetLimbID, self.mirror_axis)
#                 sourceToTargetLimbIDs[sourceLimbID] = targetLimbID
#                 sourceParentID = self.limbSetup.limbMng.GetParentID(sourceLimbID)
#                 if sourceParentID in sourceToTargetLimbIDs:
#                     self.limbSetup.limbMng.SetParent(targetLimbID, sourceToTargetLimbIDs[sourceParentID])
#                     self.limbSetup.jntMng.SetParentLimb(targetLimbID, sourceToTargetLimbIDs[sourceParentID])
#                 else:
#                     self.limbSetup.limbMng.SetParent(targetLimbID, sourceParentID)
#                     self.limbSetup.jntMng.SetParentLimb(targetLimbID, sourceParentID)
#                 self.skel_ui.AddLimb(targetLimbID)
#                 self.skel_ui.RenameLimb(sourceLimbID)
#             self.limbSetup.limbMng.SetLimbMirrorRoot(limbID)
#             self.skel_ui.limbProp_gb.SetLimb(limbID)
#             self.skel_ui.limbProp_gb.Populate()
    
# #=========== DUPLICATE ====================================

#     def Duplicate_Dialog(self):
#         dupUI = dup_ui.DuplicateLimbs_UI(self.limbSetup.limbMng, self)
#         dupUI.exec_()
    
#     def _Duplicate_Limbs(self, limbIDs):
#         '''Only call by dialog'''
#         for limbID in limbIDs:
#             sourceLimbIDs = self.limbSetup.limbMng.GetLimbCreationOrder(limbID)
#             sourceToTargetLimbIDs = {}
#             for i in range(len(sourceLimbIDs)):
#                 sourceLimbID = sourceLimbIDs[i]
#                 targetLimbID = self.limbSetup.limbMng.Duplicate(sourceLimbID)
#                 self.limbSetup.jntMng.Duplicate(sourceLimbID, targetLimbID)
#                 sourceToTargetLimbIDs[sourceLimbID] = targetLimbID
#                 sourceParentID = self.limbSetup.limbMng.GetParentID(sourceLimbID)
#                 if sourceParentID in sourceToTargetLimbIDs:
#                     self.limbSetup.limbMng.SetParent(targetLimbID, sourceToTargetLimbIDs[sourceParentID])
#                     self.limbSetup.jntMng.SetParentLimb(targetLimbID, sourceToTargetLimbIDs[sourceParentID])
#                 else:
#                     self.limbSetup.limbMng.SetParent(targetLimbID, sourceParentID)
#                     self.limbSetup.jntMng.SetParentLimb(targetLimbID, sourceParentID)
#                 self.skel_ui.AddLimb(targetLimbID)
#                 # MISSING LOGIC TO ADD TO SCENE BASED ON TAB
#                 # Missing Behavior + appearace logic too
    

# #=========== SAVE ====================================

#     def Save_Dialog(self):
#         saveUI = save_ui.SaveTemplate_UI(   self.limbSetup.limbMng, 
#                                             self.limbSetup.nameMng,
#                                             self)
#         saveUI.exec_()

#     def _Save_Template(self, limbIDs, templateName):
#         data = self.limbSetup.saveLoadSkel.GetData(limbIDs)
#         filePath = self.limbSetup.fileMng.GetTemplatePath(templateName)
#         self.limbSetup.jsonMng.Save(filePath, data)


# #=========== LOAD ====================================

#     def Load_Dialog(self):
#         templateFiles = self.limbSetup.fileMng.GetTemplateFiles()
#         loadUI = load_ui.LoadTemplate_UI(templateFiles, self)
#         loadUI.exec_()


#     def _Load_Template(self, filePaths):
#         for filePath in filePaths:
#             data = self.limbSetup.jsonMng.Load(filePath)
#             self.limbSetup.saveLoadSkel.LoadData(data)
#         self.skel_ui.Populate()


# #=========== MISC ====================================

#     def UpdateNaming(self):
#         self.skel_ui.UpdateNaming()


#=========== DEPRICATED ====================================


# # from Common.Qt import QtWidgets, QtCore


# import Skeleton.Skeleton_UI as skel_ui
# reload(skel_ui)

# import Popups.MirrorLimbs_UI as mir_ui
# reload(mir_ui)
# import Popups.DuplicateLimbs_UI as dup_ui
# reload(dup_ui)

# import Popups.SaveTemplate_UI as save_ui
# reload(save_ui)
# import Popups.LoadTemplate_UI as load_ui
# reload(load_ui)


# class LimbSetup_UI(QtWidgets.QTabWidget):
#     def __init__(self, limbSetup, mainWindow, parent=None):
#         super(LimbSetup_UI, self).__init__(parent)

#         self.parent = parent
#         self.limbSetup = limbSetup
#         self.mainWindow = mainWindow

#         self.mirror_axis = '' # 'X', 'Y', 'Z'

#         self._Setup()
    
#     def Populate(self):
#         self.skel_ui.Populate()

# #=========== SETUP ====================================

#     def _Setup(self):
#         vl = QtWidgets.QVBoxLayout(self)
#         self.limbs_tw = QtWidgets.QTabWidget()
#         self.skel_ui = skel_ui.Skeleton_UI( self.limbSetup.skel, 
#                                             self.mainWindow, 
#                                             self.limbs_tw)
#         self.limbs_tw.addTab(self.skel_ui, 'Skeleton')
#         index = self.limbs_tw.addTab(QtWidgets.QTabWidget(self.limbs_tw), 'Behaviors')
#         self.limbs_tw.setTabEnabled(index, False)
#         index = self.limbs_tw.addTab(QtWidgets.QTabWidget(self.limbs_tw), 'Appearance')
#         self.limbs_tw.setTabEnabled(index, False)
#         vl.addWidget(self.limbs_tw)
    
    
# #=========== MIRROR ====================================

#     def Mirror_X(self):
#         self.mirror_axis = 'X'
#         self._Mirror_Dialog()

#     def Mirror_Y(self):
#         self.mirror_axis = 'Y'
#         self._Mirror_Dialog()

#     def Mirror_Z(self):
#         self.mirror_axis = 'Z'
#         self._Mirror_Dialog()

#     def _Mirror_Dialog(self):
#         mirUI = mir_ui.MirrorLimbs_UI(self.limbSetup.limbMng, self)
#         mirUI.exec_()
    
#     def _Mirror_Limbs(self, limbIDs):
#         '''Only call by dialog'''
#         for limbID in limbIDs:
#             sourceLimbIDs = self.limbSetup.limbMng.GetLimbCreationOrder(limbID)
#             sourceToTargetLimbIDs = {}
#             for i in range(len(sourceLimbIDs)):
#                 sourceLimbID = sourceLimbIDs[i]
#                 targetLimbID = self.limbSetup.limbMng.Mirror(sourceLimbID)
#                 self.limbSetup.jntMng.Mirror(sourceLimbID, targetLimbID, self.mirror_axis)
#                 sourceToTargetLimbIDs[sourceLimbID] = targetLimbID
#                 sourceParentID = self.limbSetup.limbMng.GetParentID(sourceLimbID)
#                 if sourceParentID in sourceToTargetLimbIDs:
#                     self.limbSetup.limbMng.SetParent(targetLimbID, sourceToTargetLimbIDs[sourceParentID])
#                     self.limbSetup.jntMng.SetParentLimb(targetLimbID, sourceToTargetLimbIDs[sourceParentID])
#                 else:
#                     self.limbSetup.limbMng.SetParent(targetLimbID, sourceParentID)
#                     self.limbSetup.jntMng.SetParentLimb(targetLimbID, sourceParentID)
#                 self.skel_ui.AddLimb(targetLimbID)
#                 self.skel_ui.RenameLimb(sourceLimbID)
#             self.limbSetup.limbMng.SetLimbMirrorRoot(limbID)
#             self.skel_ui.limbProp_gb.SetLimb(limbID)
#             self.skel_ui.limbProp_gb.Populate()
    
# #=========== DUPLICATE ====================================

#     def Duplicate_Dialog(self):
#         dupUI = dup_ui.DuplicateLimbs_UI(self.limbSetup.limbMng, self)
#         dupUI.exec_()
    
#     def _Duplicate_Limbs(self, limbIDs):
#         '''Only call by dialog'''
#         for limbID in limbIDs:
#             sourceLimbIDs = self.limbSetup.limbMng.GetLimbCreationOrder(limbID)
#             sourceToTargetLimbIDs = {}
#             for i in range(len(sourceLimbIDs)):
#                 sourceLimbID = sourceLimbIDs[i]
#                 targetLimbID = self.limbSetup.limbMng.Duplicate(sourceLimbID)
#                 self.limbSetup.jntMng.Duplicate(sourceLimbID, targetLimbID)
#                 sourceToTargetLimbIDs[sourceLimbID] = targetLimbID
#                 sourceParentID = self.limbSetup.limbMng.GetParentID(sourceLimbID)
#                 if sourceParentID in sourceToTargetLimbIDs:
#                     self.limbSetup.limbMng.SetParent(targetLimbID, sourceToTargetLimbIDs[sourceParentID])
#                     self.limbSetup.jntMng.SetParentLimb(targetLimbID, sourceToTargetLimbIDs[sourceParentID])
#                 else:
#                     self.limbSetup.limbMng.SetParent(targetLimbID, sourceParentID)
#                     self.limbSetup.jntMng.SetParentLimb(targetLimbID, sourceParentID)
#                 self.skel_ui.AddLimb(targetLimbID)
#                 # MISSING LOGIC TO ADD TO SCENE BASED ON TAB
#                 # Missing Behavior + appearace logic too
    

# #=========== SAVE ====================================

#     def Save_Dialog(self):
#         saveUI = save_ui.SaveTemplate_UI(   self.limbSetup.limbMng, 
#                                             self.limbSetup.nameMng,
#                                             self)
#         saveUI.exec_()

#     def _Save_Template(self, limbIDs, templateName):
#         data = self.limbSetup.saveLoadSkel.GetData(limbIDs)
#         filePath = self.limbSetup.fileMng.GetTemplatePath(templateName)
#         self.limbSetup.jsonMng.Save(filePath, data)


# #=========== LOAD ====================================

#     def Load_Dialog(self):
#         templateFiles = self.limbSetup.fileMng.GetTemplateFiles()
#         loadUI = load_ui.LoadTemplate_UI(templateFiles, self)
#         loadUI.exec_()


#     def _Load_Template(self, filePaths):
#         for filePath in filePaths:
#             data = self.limbSetup.jsonMng.Load(filePath)
#             self.limbSetup.saveLoadSkel.LoadData(data)
#         self.skel_ui.Populate()


# #=========== MISC ====================================

#     def NewRig(self, rootGrp):
#         self.skel_ui.NewRig(rootGrp)

#     def UpdateNaming(self):
#         self.skel_ui.UpdateNaming()


