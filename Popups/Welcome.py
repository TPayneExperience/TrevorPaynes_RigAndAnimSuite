
import imp
import os

import pymel.core as pm

import Utilities.General_Utilities as genUtil
#imp.reload(genUtil)

class Welcome:
    text = '''Hello and Welcome!
Thank you for checking out the Payne Free Rig Suite!

Stay Amazing!
    - Trevor Payne

---- USEFUL RESOURCES ----

TUTORIALS
    - Menubar > Help > Tutorials
SCRIPTS FOR HOTKEY LOVERS
    - Menubar > Help > Useful Scripts
'''
    def __init__(self):
        pm.layoutDialog(ui=self._Setup, title='Welcome, talented developer!')

    def _Setup(self):
        form = pm.setParent(q=1)
        self._sl = pm.scrollField(ed=0, ww=0, text=self.text)
        self.close_btn = pm.button('Close', c=self._Close)

        pm.formLayout(form, e=1, width=600, height=500,
                        attachForm=[(self._sl, 'top', 5), 
                                    (self._sl, 'left', 5), 
                                    (self._sl, 'right', 5),  
                                    (self.close_btn, 'left', 5),
                                    (self.close_btn, 'right', 5), 
                                    (self.close_btn, 'bottom', 5)],
                        attachControl=[(self._sl, 'bottom', 5, 
                                            self.close_btn)])
    
    def _Close(self, ignore):
        folder = os.path.dirname(__file__)
        folder = os.path.dirname(folder)
        folder = os.path.join(folder, 'Data')
        filePath = os.path.join(folder, 'Config.json')
        config = genUtil.Json.Load(filePath)
        config['welcomePopupSeen'] = True
        genUtil.Json.Save(filePath, config)
        pm.layoutDialog(dis='close')
        

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
