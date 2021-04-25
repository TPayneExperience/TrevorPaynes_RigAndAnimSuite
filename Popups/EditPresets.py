
import pymel.core as pm

import Common.Logger as log
reload(log)

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
        pm.formLayout(form, edit=True, width=430, height=320,
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
        self.presets = {}
        for preset in pm.listConnections(self._rigRoot.presets):
            name = preset.presetName.get()
            ID = preset.shortName()
            pm.treeView(self.widget, e=1, ai=(ID, ''))
            pm.treeView(self.widget, e=1, dl=(ID, name))
            self.presets[ID] = preset

    def _SelectionChanged(self):
        log.funcFileDebug()
        presetIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        enable = bool(presetIDStrs)
        pm.button(self.delete_btn, e=1, en=enable)

    def RenamePreset(self, presetIDStr, newName):
        log.funcFileDebug()
        if not presetIDStr:
            return ''
        preset = self.presets[presetIDStr]
        self._bhvOp.RenamePreset(preset, newName, self._rigRoot)
        self.Populate()
        return ''

    def DeletePreset(self, ignore):
        log.funcFileDebug()
        presetIDStrs = pm.treeView(self.widget, q=1, selectItem=1)
        msg = 'Delete the following presets?'
        for ID in presetIDStrs:
            msg += '\n- %s' % ID
        if (pm.confirmDialog(   t='Delete Preset', 
                                icon='warning', 
                                message=msg, 
                                button=['Yes','No'], 
                                defaultButton='Yes', 
                                cancelButton='No', 
                                dismissString='No') == 'No'):
            return
        for ID in presetIDStrs:
            preset = self.presets[ID]
            self._bhvOp.DeletePreset(preset)
        self.Populate()















