
import pymel.core as pm

import Abstracts.Abstract_OperationUI as absOpUI
reload(absOpUI)
import Test as tst
reload (tst)

class Test_UI(absOpUI.Abstract_OperationUI):
    uiName = 'Test'
    orderIndex = 500
    operation = tst.Test()
    def Setup_UI(self, rigRoot, allRigRoots):  # Return nothing, parent should cleanup
        with pm.verticalLayout():
            pm.text("You're Breathtaking")



