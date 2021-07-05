
import os

import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import Animations as anm
reload(anm)
import Utilities.UI_Utilities as uiUtil
reload(uiUtil)
import Utilities.General_Utilities as genUtil
reload(genUtil)
import Utilities.Logger as log
reload(log)
import Data.Rig_Data as rigData
reload(rigData)
# import SceneData.Control as ctr
# reload(ctr)

# import SceneData.RigRoot as rrt
# reload(rrt)

class Animation_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Animations'
    uiOrderIndex = 310
    operation = anm.Animations()
    def __init__(self):
        self._rigRoot = None
        self.rigRoots = {} # ID : rigRoot
        self._allRigRoots = []
        self._limbIDs = []
        self.animData = None

    def Setup_UI(self, rigRoot, allRigRoots): 
        self._Setup()
        self._rigRoot = rigRoot
        self._allRigRoots = allRigRoots
        self.PopulateRigRootHier()
        
    def Teardown_UI(self, rigRoot, allRigRoots):
        pass

#=========== SETUP UI ====================================

    def _Setup(self):
        with pm.verticalLayout():
            # Rig Roots
            with pm.frameLayout('Rig Roots', bv=1) as self.rigRoot_fl:
                self.rigRoot_tv = pm.treeView(adr=0, arp=0, ams=0)
                pm.treeView(self.rigRoot_tv, e=1, scc=self.SelectedRigRoot,
                                            elc=self.IgnoreRename)
                with pm.popupMenu() as self.rmb_ui:
                    self.setAnim_mi = pm.menuItem(l='Set Animation Folder', en=0,
                                                c=self.SetAnimationFolder)
                    pm.menuItem(d=1)
                    self.export_mi = pm.menuItem(l='Export Control Animation', en=0, 
                                                c=self.ExportControlAnimation)
                    self.remove_mi = pm.menuItem(l='Remove Control Animation', en=0, 
                                                c=self.RemoveControlAnimation)
            # Animations
            with pm.frameLayout('Animations', bv=1) as self.anim_fl:
                self.animations_tv = pm.treeView(arp=0, adr=0, ams=0,
                                            elc=self.IgnoreRename)
                pm.treeView(self.animations_tv, e=1, scc=self.SelectedAnimation)
                with pm.popupMenu() as self.rmb_ui:
                    self.delete_mi = pm.menuItem(l='Delete Animation', en=0, 
                                                c=self.DeleteAnimation)
        with pm.verticalLayout():
            # Limbs
            with pm.frameLayout('Animated Limbs', bv=1) as self.limbs_fl:
                self.limb_tv = pm.treeView(adr=0, arp=0, nb=1, enk=1,
                                            elc=self.IgnoreRename,
                                            scc=self.SelectedLimb)
            # Properties
            with pm.frameLayout('Animation Properties', bv=1, en=0) as self.prop_fl:
                with pm.columnLayout(adj=1):
                    self.constraints_cb = pm.checkBoxGrp( ncb=3, l='  ',
                                                la3=['Position', 'Rotation', 'Scale'],
                                                va3=(1,1,1), cw4=(10,70,70,70),
                                                cc=self.ChangedConstraints)
                    self.startFrame_ff = pm.floatFieldGrp(nf=1, l='Start Frame')
                    self.frameCount_t = pm.text('Frame Count')
                    self.apply_b = pm.button(l='Apply Animation', c=self.ApplyAnimation)

#=========== RIG ROOT HIER ====================================
   
    def PopulateRigRootHier(self):
        log.funcFileDebug()
        for rigRoot in genUtil.GetRigRoots():
            index = str(rigRoot.ID.get())
            name = rigRoot.pfrsName.get()
            pm.treeView(self.rigRoot_tv, e=1, addItem=(index, ''))
            pm.treeView(self.rigRoot_tv, e=1, displayLabel=(index, name))
            self.rigRoots[index] = rigRoot

    def SelectedRigRoot(self):
        log.funcFileInfo()
        self._rigRoot = None
        self.PopulateAnimationHier()
        pm.menuItem(self.export_mi, e=1, en=0)
        pm.menuItem(self.setAnim_mi, e=1, en=0)
        pm.menuItem(self.remove_mi, e=1, en=0)
        rigRootIDStrs = pm.treeView(self.rigRoot_tv, q=1, selectItem=1)
        if not rigRootIDStrs:
            return
        self._rigRoot = self.rigRoots[rigRootIDStrs[0]]
        pm.menuItem(self.export_mi, e=1, en=1)
        pm.menuItem(self.setAnim_mi, e=1, en=1)
        pm.menuItem(self.remove_mi, e=1, en=1)
        self.PopulateAnimationHier()

    def IgnoreRename(self, idStr, newName):
        log.funcFileInfo()
        return ''

    def ExportControlAnimation(self, ignore):
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
        self.operation.ExportControlAnimation(self._rigRoot, animName)
        pm.frameLayout(self.rigRoot_fl, e=1, en=0)
        pm.frameLayout(self.anim_fl, e=1, en=0)
        pm.frameLayout(self.limbs_fl, e=1, en=0)
        pm.frameLayout(self.prop_fl, e=1, en=0)

    def RemoveControlAnimation(self, ignore):
        log.funcFileInfo()
        result = pm.confirmDialog(
                        t='Delete Animation', 
                        icon='warning', 
                        m='Remove control animation?', 
                        b=['Ok', 'Cancel'], 
                        db='Ok', 
                        cb='Cancel', 
                        ds='Cancel')
        if result == 'Cancel':
            return
        self.operation.RemoveControlAnimation(self._rigRoot)

    def SetAnimationFolder(self, ignore):
        log.funcFileInfo()
        folder = self._rigRoot.animationFolderPath.get()
        result = pm.fileDialog2(fm=3, dir=folder, 
                                cap='Set Animation Folder')
        if not result:
            return
        self.operation.SetAnimationFolder(self._rigRoot, result[0])
        self.PopulateAnimationHier()

#=========== ANIMATION HIER ====================================

    def PopulateAnimationHier(self):
        log.funcFileDebug()
        self.animData = None
        self.PopulateLimbHier()
        self.PopulateProperties()
        pm.menuItem(self.delete_mi, e=1, en=0)
        pm.treeView(self.animations_tv, e=1, removeAll=1)
        if not self._rigRoot:
            return
        self.anims = self.operation.GetRigRootAnimations(self._rigRoot)
        for anim in list(self.anims.keys()):
            pm.treeView(self.animations_tv, e=1, ai=(anim, ''))
            
    def SelectedAnimation(self):
        log.funcFileInfo()
        self.animData = None
        self.PopulateLimbHier()
        self.PopulateProperties()
        self.UpdateApplyButton()
        pm.menuItem(self.delete_mi, e=1, en=0)
        animStrs = pm.treeView(self.animations_tv, q=1, selectItem=1)
        if not animStrs:
            return
        pm.menuItem(self.delete_mi, e=1, en=1)
        animFile = self.anims[animStrs[0]]
        self.animData = genUtil.Json.Load(animFile)
        self.animData['filePath'] = animFile
        self.PopulateLimbHier()
        self.PopulateProperties()
        self.UpdateApplyButton()

    def DeleteAnimation(self, ignore):
        log.funcFileInfo()
        animStrs = pm.treeView(self.animations_tv, q=1, selectItem=1)
        msg = 'Delete animation "%s"?' % animStrs[0]
        result = pm.confirmDialog(
                        t='Delete Animation', 
                        icon='warning', 
                        m=msg, 
                        b=['Ok', 'Cancel'], 
                        db='Ok', 
                        cb='Cancel', 
                        ds='Cancel')
        if result == 'Cancel':
            return
        animFile = self.anims[animStrs[0]]
        self.operation.DeleteAnimation(animFile)
        self.PopulateAnimationHier()

#=========== LIMB HIER ====================================

    def PopulateLimbHier(self):
        log.funcFileDebug()
        pm.treeView(self.limb_tv, e=1, removeAll=1)
        if not self.animData:
            return
        self._limbIDs = uiUtil.PopulateLimbHier(self.limb_tv, 
                                                self._rigRoot,
                                                self._allRigRoots)
        for rigLimbID, limb in self._limbIDs.items():
            pm.treeView(self.limb_tv, e=1, si=(rigLimbID, 1))
            limbID = '%s_%d' % (limb.pfrsName.get(), limb.side.get())
            if limbID not in self.animData['limbs']:
                pm.treeView(self.limb_tv, e=1, enl=(limbID, 0))

    def SelectedLimb(self):
        log.funcFileInfo()
        self.UpdateApplyButton()

#=========== PROPERTIES ====================================

    def PopulateProperties(self):
        log.funcFileDebug()
        pm.frameLayout(self.prop_fl, e=1, en=0)
        if not self.animData:
            return
        pm.frameLayout(self.prop_fl, e=1, en=1)

        # Frame Count
        txt = 'Frame Count: ' + str(self.animData['frameCount'])
        pm.text(self.frameCount_t, e=1, l=txt)

        # Start Frame
        startFrame = self.animData['startFrame']
        pm.floatFieldGrp(self.startFrame_ff, e=1, v1=startFrame)
    
    def ApplyAnimation(self, ignore):
        log.funcFileInfo()
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        limbs = [self._limbIDs[ID] for ID in limbIDStrs]
        newStart = pm.floatFieldGrp(self.startFrame_ff, q=1, v1=1)
        vals = pm.checkBoxGrp(self.constraints_cb, q=1, va3=1)
        self.operation.ApplyAnimation(  limbs, self.animData, newStart,
                                        vals[0], vals[1], vals[2])

    def ChangedConstraints(self, ignore):
        log.funcFileInfo()
        self.UpdateApplyButton()

    def UpdateApplyButton(self):
        pm.button(self.apply_b, e=1, en=0)
        vals = pm.checkBoxGrp(self.constraints_cb, q=1, va3=1)
        limbIDStrs = pm.treeView(self.limb_tv, q=1, selectItem=1)
        if any(vals) and limbIDStrs:
            pm.button(self.apply_b, e=1, en=1)
            