

import pymel.core as pm

import Utilities.Logger as log

class RemoveRigRoot:

    def __init__(self, rigRoot, pfrs):
        self._rigRoot = rigRoot
        self._pfrs = pfrs
        pm.layoutDialog(ui=self._Setup, title='Remove Selected Rig')

#=========== SETUP ====================================

    def _Setup(self):
        form = pm.setParent(q=1)
        self.delete_cbg = pm.checkBoxGrp( ncb=2, l='Delete:',
                                                la2=['Joints', 'Meshes'],
                                                va2=(1,1), cw3=(60,50,50))
                    
        self.cancel_btn = pm.button('Cancel', 
                c=lambda x: pm.layoutDialog(dis='cancel'))
        self.remove_btn = pm.button('Remove', 
                c=self.Remove)

        pm.formLayout(form, e=1, width=150, height=80,
                attachForm=[(self.delete_cbg, 'top', 5), 
                            (self.delete_cbg, 'left', 5), 
                            (self.delete_cbg, 'right', 5), 
                            (self.cancel_btn, 'left', 5), 
                            (self.cancel_btn, 'bottom', 5), 
                            (self.remove_btn, 'bottom', 5), 
                            (self.remove_btn, 'right', 5)],
                attachControl=[(self.delete_cbg, 'bottom', 5, self.cancel_btn),
                                (self.delete_cbg, 'bottom', 5, self.remove_btn)],
                attachPosition=[(self.cancel_btn, 'right', 5, 50), 
                                (self.remove_btn, 'left', 5, 50)])
    
#=========== FUNCTIONALITY ====================================

    def SelectedMode(self, mode):
        log.funcFileInfo()
        log.debug(mode)

    def Remove(self, _):
        log.funcFileInfo()
        vals = pm.checkBoxGrp(self.delete_cbg, q=1, va2=1)
        self._pfrs.RemoveRigRoot(self._rigRoot, vals[0], vals[1])
        pm.layoutDialog(dis='remove')
        

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
