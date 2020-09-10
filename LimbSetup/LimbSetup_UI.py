
import pymel.core as pm

import Skeleton.Skeleton_UI as skel_ui
reload(skel_ui)
import Behavior.Behavior_UI as bhv_ui
reload(bhv_ui)

import Popups.MirrorLimbs_UI as mir_ui
reload(mir_ui)
import Popups.DuplicateLimbs_UI as dup_ui
reload(dup_ui)

import Popups.SaveTemplate_UI as save_ui
reload(save_ui)
import Popups.LoadTemplate_UI as load_ui
reload(load_ui)


class LimbSetup_UI():
    def __init__(self, limbSetup):
        self.limbSetup = limbSetup
        self.limbMng = limbSetup.limbMng
        self.jntMng = limbSetup.jntMng
        self.nameMng = limbSetup.nameMng
        self.fileMng = limbSetup.fileMng
        self.jsonMng = limbSetup.jsonMng
        self.saveLoadSkel = limbSetup.saveLoadSkel

        self.saveDialog = save_ui.SaveTemplate_UI(  self.limbMng, 
                                                    self.nameMng)
        self.loadDialog = load_ui.LoadTemplate_UI()
        self.dupDialog = dup_ui.DuplicateLimbs_UI(self.limbMng)
        self.mirDialog = mir_ui.MirrorLimbs_UI(self.limbMng)

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
                self.bhv_ui = bhv_ui.Behavior_UI(self.limbSetup.bhv)
            with pm.horizontalLayout() as self.appTab:
                pm.button(label='Two')
        pm.tabLayout(  self.tab, 
                    edit=1, 
                    tabLabel=(  (self.skelTab,'Skeleton'), 
                                (self.bhvTab,'Behaviors'), 
                                (self.appTab,'Appearance')))
    
#=========== DIALOGS ====================================

    def Save_Dialog(self, ignore):
        limbIDs, templateName = self.saveDialog.SaveTemplate_Dialog()
        if limbIDs:
            data = self.saveLoadSkel.GetData(limbIDs)
            filePath = self.fileMng.GetTemplatePath(templateName)
            self.jsonMng.Save(filePath, data)

    
    def Load_Dialog(self, ignore):
        templateFiles = self.fileMng.GetTemplateFiles()
        filePaths = self.loadDialog.LoadTemplate_Dialog(templateFiles)
        if filePaths:
            for filePath in filePaths:
                data = self.jsonMng.Load(filePath)
                self.saveLoadSkel.LoadData(data)
            self.skel_ui.Populate()

    def Duplicate_Dialog(self, ignore):
        sourceParentIDs = self.dupDialog.Duplicate_Dialog()
        if sourceParentIDs:
            sourceToTargetIDs = self._Duplicate_Limbs(sourceParentIDs)
            for sourceID, targetID in sourceToTargetIDs.items():
                self.jntMng.DuplicateLimb(sourceID, targetID)
            self.skel_ui.Populate()

    def _Duplicate_Limbs(self, sourceParentIDs):
            sourceToTargetIDs = {}
            for sourceID in sourceParentIDs:
                targetID = self.limbMng.DuplicateLimb(sourceID)
                sourceToTargetIDs[sourceID] = targetID

            for sParentID in sourceParentIDs:
                for sChildID in self.limbMng.GetLimbCreationOrder(sParentID)[1:]:
                    tChildID = self.limbMng.DuplicateLimb(sChildID)
                    sChild = self.limbMng.GetLimb(sChildID)
                    tChild = self.limbMng.GetLimb(tChildID)
                    tParentID = sourceToTargetIDs[sChild.parentLimbID.get()]
                    tChild.parentLimbID.set(tParentID)
                    sourceToTargetIDs[sChildID] = tChildID
            return sourceToTargetIDs

    def Mirror_Dialog(self, axis):
        sourceParentIDs = self.mirDialog.Mirror_Dialog()
        if sourceParentIDs:
            sourceToTargetIDs = self._Duplicate_Limbs(sourceParentIDs)
            for sourceID, targetID in sourceToTargetIDs.items():
                self.limbMng.SetMirrorLimb(sourceID, targetID)
                self.jntMng.DuplicateLimb(sourceID, targetID)
                self.jntMng.SetMirrorLimb(sourceID, targetID, axis)
            self.skel_ui.Populate()

    def UpdateNaming(self):
        self.skel_ui.RebuildAll()

    




#=========== DEPRICATED ====================================
#=========== DEPRICATED ====================================
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


