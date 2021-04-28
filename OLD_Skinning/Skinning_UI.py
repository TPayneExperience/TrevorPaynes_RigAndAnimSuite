
# import pymel.core as pm

# import MeshSetup.MeshSetup_UI as mesh_ui
# reload(mesh_ui)
# # import Managers.Mesh_Manager as meshMng
# # reload(meshMng)
# # import Managers.Skin_Manager as skinMng
# # reload(skinMng)
# import PaintWeights.PaintWeights_UI as paint_ui
# reload(paint_ui)


# class Skinning_UI:
#     def __init__(self, parent):
#         self.parent = parent
#         self.limbMng = parent.pfrs.limbMng
#         self.jntMng = parent.pfrs.jntMng
#         self.rigBHV = parent.pfrs.rigBHV
#         self.nameMng = parent.pfrs.nameMng
#         self.logger = parent.pfrs.logger
#         self.pfrs = parent.pfrs
#         self.meshMng = parent.pfrs.meshMng
#         self.skinMng = parent.pfrs.skinMng


#         # self.meshMng = meshMng.Mesh_Manager()
#         # self.skinMng = skinMng.Skin_Mananger(self)

#         self._Setup()

# #=========== SETUP ====================================

#     def _Setup(self):
#         with pm.tabLayout() as self.tab:
#             with pm.horizontalLayout() as self.meshSetupTab:
#                 self.meshSetup_ui = mesh_ui.MeshSetup_UI(self)
#             with pm.horizontalLayout() as self.quickWeightsTab:
#                 pm.button('test', label='2')
#             with pm.horizontalLayout() as self.paintWeightsTab:
#                 self.paint_ui = paint_ui.PaintWeights_UI(self)
#             with pm.horizontalLayout() as self.testTab:
#                 pm.button('test', label='TEST')
#             # with pm.horizontalLayout() as self.appTab:
#             #     self.app_ui = app_ui.RIG_Appearance_UI( self.limbMng,
#             #                                         self.rigBHV,
#             #                                         self.grpMng,
#             #                                         self.ctrMng,
#             #                                         self.nameMng,
#             #                                         self)
#             # with pm.horizontalLayout() as self.testTab:
#             #     self.RIG_Test_UI = RIG_Test_UI.RIG_Test_UI( self.limbMng,
#             #                                     self.jntMng,
#             #                                     self.rigBHV,
#             #                                     self.grpMng,
#             #                                     self.ctrMng)
#         pm.tabLayout(  self.tab, 
#                     edit=1, 
#                     tabLabel=(  (self.meshSetupTab,'Mesh Setup'), 
#                                 (self.quickWeightsTab, 'Quick Weights'), 
#                                 (self.paintWeightsTab, 'Paint Weights'), 
#                                 (self.testTab, 'Test')))
    
# #=========== TAB SWITCHING ====================================

#     def InitTab(self):
#         self.logger.info('\tSKIN_UI > InitTab')
#         index = self.pfrs.root.skinningTab.get()
#         pm.tabLayout(self.tab, e=1, sti=index+1)
#         pm.tabLayout(self.tab, e=1, cc=self.TabChanged)

#     def Setup_Editable(self):
#         self.logger.info('Rigging > Skinning SETUP')
#         index = self.pfrs.root.skinningTab.get()
#         if (index == 0):
#             self.meshSetup_ui.Setup_Editable()
#         # elif (index == 1):
#         #     self.RIG_LimbSetup_UI.Setup_Editable()
#         elif (index == 2):
#             self.paint_ui.Setup_Editable()
#         # elif (index == 3):
#         #     self.app_ui.Setup_Editable() 
#         # elif (index == 4):
#         #     self.RIG_Test_UI.Setup_Editable() 

#         # # SET CONTROLS OFF / LOCKED / ON
#         # if index in [0, 1]:
#         #     self.ctrMng.SetLayerState(False, True)
#         # elif index == 2:
#         #     self.ctrMng.SetLayerState(True, True)
#         # elif index in [3, 4]:
#         #     self.ctrMng.SetLayerState(True, False)
        
#     def Teardown_Editable(self):
#         lastIndex = self.pfrs.root.skinningTab.get()
#         if (lastIndex == 0): 
#             self.meshSetup_ui.Teardown_Editable()
#         # elif (lastIndex == 1): 
#         #     self.RIG_LimbSetup_UI.Teardown_Editable()
#         elif (lastIndex == 2):
#             self.paint_ui.Teardown_Editable()
#         # elif (lastIndex == 3):
#         #     self.app_ui.Teardown_Editable() 
#         # elif (lastIndex == 4):
#         #     self.RIG_Test_UI.Teardown_Editable() 


#         # FIX LATER: SHOULD NOT REQUIRE 'nextIndex'
#         # # Skin Weights for all but Mesh Setup
#         # if lastIndex == 0 and nextIndex in [1, 2, 3]:
#         #     self.skinMng.Setup_Skins()
#         # elif lastIndex in [1, 2, 3] and nextIndex == 0:
#         #     self.skinMng.Teardown_Skins()
        
#         # # Paint Display for Quick/Paint weights
#         # if lastIndex in [0, 3] and nextIndex in [1, 2]:
#         #     # self.skinMng.Setup_PaintDisplay()
#         #     self.skinMng.Setup_JointAnim()
#         # elif lastIndex in [1, 2] and nextIndex in [0, 3]:
#         #     # self.skinMng.Teardown_PaintDisplay()
#         #     self.skinMng.Teardown_JointAnim()
#         self.logger.info('Rigging > Skinning TEARDOWN\n')
#         self.logger.info('--------------------------------\n')
        
        
#     def TabChanged(self):
#         nextIndex = pm.tabLayout(self.tab, q=1, selectTabIndex=1)-1
#         self.Teardown_Editable()
#         self.pfrs.root.skinningTab.set(nextIndex)
#         self.Setup_Editable()