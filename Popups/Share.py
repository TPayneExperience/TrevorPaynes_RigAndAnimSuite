
import pymel.core as pm

import Utilities.Logger as log
reload(log)
import Data.General_Data as genData
reload(genData)
import Plugins.pyperclip as pyCopy
reload(pyCopy)

class Share:
    def __init__(self):
        pm.layoutDialog(ui=self._Setup, title='Useful Scripts for Hotkeys')

#=========== SETUP ====================================

    def _Setup(self):
        form = pm.setParent(q=1)
        self.txt = pm.textField(tx=genData.STORE_URL, ed=0)
        with pm.horizontalLayout() as self._hl:
            self.close_btn = pm.button('Close', 
                    c=lambda x: pm.layoutDialog(dis='close'))
            self.copy_btn = pm.button('Copy + Close', c=self.CopyClose)

        pm.formLayout(form, e=1, width=250, height=60,
                        attachForm=[(self.txt, 'top', 5), 
                                    (self.txt, 'left', 5), 
                                    (self.txt, 'right', 5),  
                                    (self._hl, 'right', 5),
                                    (self._hl, 'left', 5), 
                                    (self._hl, 'bottom', 5)],
                        attachControl=[(self.txt, 'bottom', 5, 
                                            self._hl)])
        
#=========== MISC ====================================

    def CopyClose(self, ignore):
        pyCopy.copy(genData.STORE_URL)
        pm.layoutDialog(dis='close')
        

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
