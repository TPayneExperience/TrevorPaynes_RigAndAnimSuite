
import pymel.core as pm

import Common.Utilities as util
reload(util)

class Test_UI:
    def __init__(self, parent):
        self.parent = parent
        self.rigMng = parent.rigMng
        self.logger = parent.logger

        self._Setup()

    def _Setup(self):
        pm.text(l="You're breathtaking!")


#=========== TAB FUNCTIONALITY ====================================
    
    def Setup_Editable(self):
        self.logger.info('Rigging > Test Setup_Editable\n')
        self.rigMng.Setup_Rig()

    def Teardown_Editable(self):
        self.logger.info('Rigging > Test Teardown_Editable\n')
        self.rigMng.Teardown_Rig()
