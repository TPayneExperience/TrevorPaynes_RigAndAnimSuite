
import imp
import os

import pymel.core as pm

import Utilities.General_Utilities as genUtil
#imp.reload(genUtil)

class Updates:
    def __init__(self):
        self._GetUpdates()
        pm.layoutDialog(ui=self._Setup, title='TOOL UPDATES')

    def _Setup(self):
        form = pm.setParent(q=1)
        text = 'PAYNE FREE RIG SUITE TOOL UPDATES'
        for fileName in sorted(list(self._texts.keys()))[::-1]:
            text += '\n\n------------- %s ------------\n\n' % fileName
            text += self._texts[fileName]
        self.updateText_sf = pm.scrollField(ed=0, ww=0, text=text)
        self.close_btn = pm.button('Close', c=self._Close)

        pm.formLayout(form, e=1, width=600, height=500,
                        attachForm=[(self.updateText_sf, 'top', 5), 
                                    (self.updateText_sf, 'left', 5), 
                                    (self.updateText_sf, 'right', 5),  
                                    (self.close_btn, 'left', 5),
                                    (self.close_btn, 'right', 5), 
                                    (self.close_btn, 'bottom', 5)],
                        attachControl=[(self.updateText_sf, 'bottom', 5, 
                                            self.close_btn)])
    
    def _GetUpdates(self):
        folder = os.path.dirname(__file__)
        folder = os.path.join(folder, 'Updates')
        self._texts = {}
        for f in os.listdir(folder):
            fileName = os.path.splitext(f)[0]
            filePath = os.path.join(folder, f)
            with open(filePath, 'r') as txt:
                self._texts[fileName] = txt.read()
        
    def _Close(self, ignore):
        folder = os.path.dirname(__file__)
        folder = os.path.dirname(folder)
        folder = os.path.join(folder, 'Data')
        filePath = os.path.join(folder, 'Config.json')
        config = genUtil.Json.Load(filePath)
        config['lastVersionViewed'] = config['version']
        genUtil.Json.Save(filePath, config)
        pm.layoutDialog(dis='close')
        
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"

