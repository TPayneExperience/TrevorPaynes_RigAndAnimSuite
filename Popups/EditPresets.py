

import pymel.core as pm

import Utilities.Logger as log

class EditPresets:
    def __init__(self, rigRoot, behaviorOp):
        self._rigRoot = rigRoot
        self._bhvOp = behaviorOp

        self.presets = {} # longName : presetParent

        pm.layoutDialog(ui=self._Setup, title='Edit Presets')

#=========== SETUP ====================================

    def _Setup(self):
        form = pm.setParent(q=1)
        temp_fl = pm.frameLayout(l='Edit / Delete Presets', 
                                    bv=1, mh=5, mw=5, p=form)
        msg = 'Double click to Rename'
        self.widget = pm.treeView(adr=0, arp=0, ann=msg,
                                    scc=self._SelectionChanged,
                                    elc=self.RenamePreset)
        
        self.delete_btn = pm.button(l='Delete', p=form, en=0, 
                                    c=self.DeletePreset)
        self.close_btn = pm.button(l='Close', p=form, 
                                    c=lambda x: pm.layoutDialog(dis='close'))
        pm.formLayout(form, e=1, width=430, height=320,
                        attachForm=[(temp_fl, 'top', 5), 
                                    (temp_fl, 'left', 5), 
                                    (temp_fl, 'right', 5),  
                                    (self.delete_btn, 'bottom', 5), 
                                    (self.delete_btn, 'left', 5),
                                    (self.close_btn, 'right', 5), 
                                    (self.close_btn, 'bottom', 5)],
                        attachControl=[(temp_fl, 'bottom', 5, self.delete_btn)],
                        attachPosition=[(self.close_btn, 'left', 5, 50), 
                                        (self.delete_btn, 'right', 5, 50)])
        self.Populate()
    
#=========== MISC ====================================

    def Populate(self):
        log.funcFileDebug()
        pm.button(self.delete_btn, e=1, en=0)
        pm.treeView(self.widget, e=1, ra=1)
        allPresets = pm.listConnections(self._rigRoot.presets)
        self.presetIDs = {} # presetID : presetName
        for preset in allPresets:
            self.presetIDs[preset.ID.get()] = preset.presetName.get()
        for presetID in sorted(self.presetIDs.keys()):
            presetName = self.presetIDs[presetID]
            pm.treeView(self.widget, e=1, ai=(presetID, ''))
            pm.treeView(self.widget, e=1, dl=(presetID, presetName))
            # self.presets[ID] = preset

    def _SelectionChanged(self):
        log.funcFileDebug()
        presetIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        enable = bool(presetIDStrs)
        pm.button(self.delete_btn, e=1, en=enable)

    def RenamePreset(self, presetIDStr, newName):
        log.funcFileDebug()
        if not presetIDStr:
            return ''
        presetID = int(float(presetIDStr))
        self._bhvOp.RenamePreset(self._rigRoot, presetID, newName)
        self.Populate()
        return ''

    def DeletePreset(self, _):
        log.funcFileDebug()
        presetIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        msg = 'Delete the following presets?'
        for presetID in presetIDStrs:
            msg += '\n- %s' % self.presetIDs[int(float(presetID))]
        if (pm.confirmDialog(   t='Delete Preset', 
                                icon='warning', 
                                message=msg, 
                                button=['Yes','No'], 
                                defaultButton='Yes', 
                                cancelButton='No', 
                                dismissString='No') == 'No'):
            return
        for presetID in presetIDStrs:
            self._bhvOp.DeletePreset(self._rigRoot, int(float(presetID)))
        self.Populate()



# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"













