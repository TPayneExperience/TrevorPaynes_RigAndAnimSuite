
import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)
import Rigging.Popups.POPUP_EditPresets as editPst
reload(editPst)


class ANM_POS_Limb_Hierarchy_UI:
    def __init__(self, parent):
        self.parent = parent
        self.pfrs = parent.pfrs
        self.anmPOS = parent.pfrs.anmPOS
        self.logger = parent.pfrs.logger
        self.rootMng = self.pfrs.rootMng
        self.limbMng = parent.pfrs.limbMng

        self._limbs = {} # rootID_limbID : limb
        self._validLimbs = []

        self._Setup()

    def Populate(self): 
        self.logger.debug('\tPos_LimbHier > Populate')
        # SAME AS APP LIMB HIER
        pm.treeView(self.widget, e=1, removeAll=1)
        curRoot = self.pfrs.root
        self._limbs = {}
        self._validLimbs = []
        rootLimbs = []
        for root in self.rootMng.GetSceneRoots():
            rootLimbs += self.limbMng.GetRootLimbs(root)
        for rootLimb in rootLimbs[::-1]:
            for limb in self.limbMng.GetLimbCreationOrder(rootLimb):
                root = pm.listConnections(limb.rigRoot)[0]
                rootID = root.ID.get()
                prefix = root.prefix.get()
                limbID = '%d_%d' % (rootID, limb.ID.get())
                self._limbs[limbID] = limb
                name = '%s_%s' % (prefix, limb.pfrsName.get())
                parent = pm.listConnections(limb.limbParent)
                parentID = ''
                if parent:
                    parent = parent[0]
                    parentRoot = pm.listConnections(parent.rigRoot)[0]
                    parentRootID = parentRoot.ID.get()
                    parentID = '%d_%d' % (parentRootID, parent.ID.get())
                if root.rigMode.get() == 0: # Setup Rig
                    enable = limb.enableLimb.get()
                elif root.rigMode.get() == 2: # Animate Rig
                    enable = (root == curRoot)
                pm.treeView(self.widget, e=1, ai=(limbID, parentID))
                pm.treeView(self.widget, e=1, enl=(limbID, enable))
                pm.treeView(self.widget, e=1, dl=(limbID, name))
                side = rigData.LIMB_SIDES[limb.side.get()]
                if (side == 'L'):
                    pm.treeView(self.widget, e=1, bti=(limbID, 1, side),
                            lbc=(limbID, 0.1, 0.1, 0.3))
                elif (side == 'R'):
                    pm.treeView(self.widget, e=1, bti=(limbID, 1, side),
                            lbc=(limbID, 0.3, 0.1, 0.1))
                else:
                    pm.treeView(self.widget, e=1, bvf=(limbID, 1, 0))

#=========== SETUP ====================================

    def _Setup(self):
        self.widget = pm.treeView(adr=0, arp=0, nb=1)
        pm.treeView(self.widget, e=1, scc=self.SelectionChanged,
                                        elc=self.IgnoreRename)
        with pm.popupMenu() as self.rmb_ui:
            self.save_mi = pm.menuItem(l='Save Pose', en=0, c=self.SavePose)
            self.reset_mi = pm.menuItem(l='Reset Limb Controls', en=0, 
                                        c=self.ResetLimbControls)
            pm.menuItem(d=1)
            pm.menuItem(l='Open Poses Library Folder', c=self.OpenPosesFolder)
            pm.menuItem(l='Set Poses Library Folder', c=self.SetPosesFolder)


#=========== FUNCTIONS ====================================

    def OpenPosesFolder(self, ignore):
        self.logger.info('\tPos_LimbHier > OpenPosesFolder')
        self.anmPOS.OpenPosesFolder()

    def ResetLimbControls(self, ignore):
        self.logger.info('\tPos_LimbHier > ResetLimbControls')
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        limbs = [self._limbs[limbStr] for limbStr in limbIDStrs]
        self.anmPOS.ResetLimbControls(limbs)
        self.parent.ResetLimbs(limbs)

    def SavePose(self, ignore):
        self.logger.info('\tPos_LimbHier > SavePose')
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        limbs = [self._limbs[limbStr] for limbStr in limbIDStrs]
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
        self.anmPOS.SavePose(poseName, limbs)
        self.parent.UpdateLimbPoses()

    def SetPosesFolder(self, ignore):
        self.logger.info('\tPos_LimbHier > SetPosesFolder')
        folder = self.pfrs.root.posesFolderPath.get()
        result = pm.fileDialog2(fm=3, dir=folder, 
                                cap='Set Pose Library Folder')
        if result:
            self.pfrs.root.posesFolderPath.set(result[0])

    def SelectionChanged(self):
        self.logger.info('\tPos_LimbHier > SelectionChanged')
        pm.menuItem(self.save_mi, e=1, en=0)
        pm.menuItem(self.reset_mi, e=1, en=0)
        limbIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if not limbIDStrs:
            self.logger.info('\t\tDeselected Limbs')
            self.parent.LimbsSelected(None)
            return
        limbs = [self._limbs[limbStr] for limbStr in limbIDStrs]
        parent = pm.listConnections(limbs[0].rigRoot)[0]
        for limb in limbs[1:]:
            if parent != pm.listConnections(limbs[0].rigRoot)[0]:
                self.parent.LimbsSelected(None)
                return
        pm.menuItem(self.save_mi, e=1, en=1)
        pm.menuItem(self.reset_mi, e=1, en=1)
        msg = '\t\tSELECTED limbs:'
        for limb in limbs:
            msg += '\n\t\t\t' + limb.pfrsName.get()
        self.logger.info(msg)
        self.parent.LimbsSelected(limbs)

    def IgnoreRename(self, idStr, newName):
        self.logger.debug('\tApp_CtrHier > IgnoreRename')
        return ''














































