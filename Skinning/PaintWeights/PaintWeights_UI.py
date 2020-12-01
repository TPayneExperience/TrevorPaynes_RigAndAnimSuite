
import os
import shutil

import pymel.core as pm
from maya import mel

import PW_Limb_Hierarchy_UI as limb_UI
reload(limb_UI)
import PW_Joint_Hierarchy_UI as joint_ui
reload(joint_ui)
import Skinning.Data.PFRS_Weights as brush
reload(brush)

class PaintWeights_UI:
    def __init__(self, limbMng, jntMng, meshMng, parent):
        self.limbMng = limbMng
        self.jntMng = jntMng
        self.parent = parent
        self.meshMng = meshMng

        self._SetupPFRSPaint()
        self._Setup()

    def NewRig(self, rigRoot):
        self.rigRoot = rigRoot

    def _SetupPFRSPaint(self):
        if not pm.artUserPaintCtx('pfrsPaintCtx', ex=1):
            pm.artUserPaintCtx('pfrsPaintCtx', cf=0, dl=1, whichTool='userPaint') 
            # pm.setToolTo('pfrsPaintCtx')
            # pm.makePaintable('mesh', 'mask')
            # pm.makePaintable('mesh', 'weight')
        # pm.runtime.ArtPaintAttrTool()
        if pm.currentCtx() != 'pfrsPaintCtx':
            pm.setToolTo('pfrsPaintCtx')
        sourcePath = os.path.dirname(__file__)
        source = os.path.join(sourcePath, 'pfrsPaint')
        source = source.replace('\\', '/')
        mel.eval('source "%s";' %source)
        mel.eval('pfrsPaint("pfrsPaintCtx");')

#=========== SETUP ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Limb Hierarchy', bv=1):
                self.limbHier_ui = limb_UI.PW_Limb_Hierarchy_UI(self.limbMng,
                                                                self.jntMng,
                                                                self)
            with pm.frameLayout('Limb Joints', bv=1):
                self.jntHier_ui = joint_ui.PW_Joint_Hierarchy_UI( self.limbMng,
                                                                    self.jntMng,
                                                                    self)
        
        with pm.verticalLayout():
            with pm.frameLayout('Tools', bv=1):
                pm.button('test', label='TEST')
                # tt = 'RMB to modify meshes, Double LMB to rename'
                # self.skinnedMeshes_tv = pm.treeView(adr=0, arp=0, ann=tt)
                # pm.treeView(self.skinnedMeshes_tv, e=1,
                #                                 scc=self.SkinnedSelectionChanged,
                #                                 elc=lambda x,y: '')
                # with pm.popupMenu():
                #     self.add_mi = pm.menuItem(l='Add Meshes', en=0, 
                #                                             c=self.AddMeshes)
                #     self.replace_mi = pm.menuItem(l='Replace Meshes', en=0, 
                #                                             c=self.ReplaceMeshes)
                #     self.remove_mi = pm.menuItem(l='Remove Meshes', en=0, 
                #                                             c=self.RemoveMeshes)


#=========== TABS ====================================

    def Setup_Editable(self):
        print ('paint weights, setup')
        self.Populate()

    def Teardown_Editable(self):
        print ('paint weights, teardown')
    
    def Populate(self):
        self.limbHier_ui.Populate()

    def LimbSelected(self, limbID):
        if limbID == -1:
            self.jntHier_ui.Depopulate()
        else:
            self.jntHier_ui.SetLimb(limbID)







