
import sys
from importlib import reload


from Common.Qt import QtWidgets, QtCore

import Hierarchies.BHV_Limb_Hierarchy_UI as limbHier_UI
reload(limbHier_UI)
import Hierarchies.BHV_Behavior_Hierarchy_UI as ctrHier_UI
reload(ctrHier_UI)

import Properties.BHV_Limb_Properties_UI as limbProp_UI
reload(limbProp_UI)
import Properties.BHV_Behavior_Properties_UI as bhvProp_UI
reload(bhvProp_UI)


class Behavior_UI(QtWidgets.QWidget):
    # def __init__(self, behavior, parent=None):
    def __init__(self, parent=None):
        super(Behavior_UI, self).__init__(parent)
        # self.bhv = behavior

        self._Setup()
    
    def _Setup(self):
        hl = QtWidgets.QHBoxLayout(self)
        hl.addLayout(self._Setup_LimbBehaviorHierarchy())
        hl.addLayout(self._Setup_Properties())

    def _Setup_LimbBehaviorHierarchy(self):
        v_layout = QtWidgets.QVBoxLayout()

        gb1 = QtWidgets.QGroupBox('Limb Hierarchy')
        vl = QtWidgets.QVBoxLayout(gb1)
        # self.limbHier_tw = limbHier_UI.BHV_Limb_Hierarchy_UI(self.skel.limbHier, self)
        self.limbHier_tw = limbHier_UI.BHV_Limb_Hierarchy_UI(self)
        vl.addWidget(self.limbHier_tw)
        v_layout.addWidget(gb1)

        gb2 = QtWidgets.QGroupBox('Adjustable Behavior Settings')
        vl = QtWidgets.QVBoxLayout(gb2)
        # self.bhvHier_lw = ctrHier_UI.BHV_Behavior_Hierarchy_UI(self.skel.jntHier, self)
        self.bhvHier_lw = ctrHier_UI.BHV_Behavior_Hierarchy_UI(self)
        vl.addWidget(self.bhvHier_lw)
        v_layout.addWidget(gb2)

        return v_layout
    
    def _Setup_Properties(self):
        vl = QtWidgets.QVBoxLayout()
        self.bhvProp_w = bhvProp_UI.BHV_Behavior_Properties_UI(self)
        self.limbProp_w = limbProp_UI.BHV_Limb_Properties_UI(self)

        vl.addWidget(self.bhvProp_w)
        vl.addWidget(self.limbProp_w)
        # gb = QtWidgets.QGroupBox('Properties')
        # vl = QtWidgets.QVBoxLayout(gb)

        # self.limbProp_gb = limbProp_UI.BHV_Limb_Properties_UI(self.skel.limbProp, self)
        # vl.addWidget(self.limbProp_gb)
        # self.bhvProp_gb = bhvProp_UI.BHV_Behavior_Properties_UI(self.skel.jntProp)
        # self.bhvProp_gb = bhvProp_UI.BHV_Behavior_Properties_UI()
        # vl.addStretch()
        
        # v_layout.addWidget(gb)
        # v_layout.addWidget(self._Setup_Properties_Tools())

        return vl
    
    # def SetStatusMsg(self, msg):
    #     print (msg)
    
if __name__ == '__main__':
    app = QtWidgets.QApplication(sys.argv)
    
    ex = Behavior_UI()
    ex.show()
    sys.exit(app.exec_())
