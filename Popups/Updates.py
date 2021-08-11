
import os

import pymel.core as pm

import Utilities.General_Utilities as genUtil
reload(genUtil)

class Updates:
    def __init__(self):
        self._GetUpdates()
        pm.layoutDialog(ui=self._Setup, title='Updates to Tool')

    def _Setup(self):
        form = pm.setParent(q=1)
        with pm.scrollLayout() as self._sl:
            with pm.columnLayout(adj=1, rs=10):
                for fileName in sorted(list(self._texts.keys()))[::-1]:
                    text = self._texts[fileName]
                    with pm.frameLayout(l=fileName, bv=1, w=550, h=150):
                        pm.scrollField(ed=0, ww=0, text=text)
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

