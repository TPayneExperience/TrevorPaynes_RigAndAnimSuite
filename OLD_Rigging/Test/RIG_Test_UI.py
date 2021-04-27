
import pymel.core as pm

import Common.Utilities as util
reload(util)

class RIG_Test_UI:
    def __init__(self, parent):
        self.parent = parent
        self.bldMng = parent.pfrs.bldMng
        self.logger = parent.pfrs.logger

        self._Setup()

    def _Setup(self):
        pm.text(l="You're breathtaking!")


#=========== TAB FUNCTIONALITY ====================================
    
    def Setup_Editable(self):
        self.logger.info('Rigging > Test Setup_Editable\n')
        self.bldMng.Setup_Rig()

    def Teardown_Editable(self):
        self.logger.info('Rigging > Test Teardown_Editable\n')
        self.bldMng.Teardown_Rig()
