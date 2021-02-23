
import pymel.core as pm

import Common.Utilities as util
reload(util)

class PW_Joint_Hierarchy_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
        self.logger = parent.logger

        self.limb = None
        self.joints = {} # ID : joint

        self._Setup()
    
    
    def Populate(self):
        self.Depopulate()
        self.joints = {}
        if not self.limb:
            return
        if self.limb.limbType.get() == 1: # Skip one joint limbs
            return 
        for joint in util.GetSortedLimbJoints(self.limb):
            jointID = joint.ID.get()
            self.joints[jointID] = joint
            name = joint.pfrsName.get()
            pm.treeView(self.widget, e=1, ai=(jointID, ''))
            pm.treeView(self.widget, e=1, dl=(jointID, name))
    
    def Depopulate(self):
        pm.treeView(self.widget, e=1, removeAll=1)

#=========== SETUP ====================================

    def _Setup(self):
        self.widget = pm.treeView(arp=0, adr=0, ams=0, 
                                        scc=self.SelectionChanged)

#=========== FUNCTIONALITY ====================================

    def SelectionChanged(self):
        jntStrs = pm.treeView(self.widget, q=1, selectItem=1)
        if not jntStrs:
            self.logger.info('\tJointHier > DESELECTED joint')
            return
        joint = self.joints[int(jntStrs[0])]
        msg = '\tJointHier > SELECTED joint "%s"'% joint.pfrsName.get()
        self.logger.info(msg)
        self.parent.JointSelected(joint)

    def SetLimb(self, limb):
        self.limb = limb
        self.Populate()

