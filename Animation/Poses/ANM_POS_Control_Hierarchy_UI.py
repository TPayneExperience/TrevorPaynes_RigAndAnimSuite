
import pymel.core as pm

import Common.Utilities as util
reload(util)
import Data.Rig_Data as rigData
reload(rigData)

class ANM_POS_Control_Hierarchy_UI:
    def __init__(self, parent):
        self.parent = parent
        self.grpMng = parent.pfrs.grpMng
        self.logger = parent.pfrs.logger

        self.limb = None
        self.controls = {} # ID : control

        self._Setup()

    def SetLimb(self, limb):
        self.logger.debug('\tPos_ControlHier > SetLimb')
        self.limb = limb
        self.Populate()
    
    def Populate(self):
        self.logger.debug('\tPos_ControlHier > Populate')
        pm.treeView(self.widget, e=1, removeAll=1)
        self.controls = {}
        if not self.limb:
            return
        for control in util.GetUsedControls(self.limb, True):
            controlID = control.ID.get()
            self.controls[controlID] = control
            name = control.shortName()
            pm.treeView(self.widget, e=1, addItem=(controlID, ''))
            pm.treeView(self.widget, e=1, displayLabel=(controlID, name))


#=========== SETUP ====================================

    def _Setup(self):
        self.widget = pm.treeView(  arp=0, adr=0, ams=0, elc=self.IgnoreRename,
                                    scc=self.SelectionChanged)

#=========== FUNCTIONALITY ====================================

    def IgnoreRename(self, idStr, newName):
        self.logger.debug('\tPos_CtrHier > IgnoreRename')
        return ''

    def SelectionChanged(self):
        self.logger.debug('\tPos_ControlHier > SelectionChanged')
        ctrStr = pm.treeView(self.widget, q=1, selectItem=1)
        if ctrStr:
            ctr = self.controls[int(ctrStr[0])]
            msg = '\tPos_CtrHier > SELECTED control "%s"'% str(ctr)
            self.logger.info(msg)
            pm.select(ctr)
        else:
            self.logger.info('\tPos_CtrHier > DESELECTED control')














