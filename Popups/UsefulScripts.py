
import pymel.core as pm

import Common.Logger as log
reload(log)

class UsefulScripts:
    scripts = {
'Reset Selected Controls':
'''import pymel.core as pm
ctrs = pm.ls(sl=1)
for ctr in ctrs:
    for role,v in zip(('.translate', '.rotate', '.scale'), (0,0,1)):
        for axis in ['X', 'Y', 'Z']:
            if not pm.getAttr(ctr + role + axis, l=1):
                pm.setAttr(ctr + role + axis, v)''',
# -------------------------
'Select Mirror Limb Control':
'''import pymel.core as pm
def SelectMirrorLimbControl():
    control = pm.ls(sl=1)[0]
    group = pm.listConnections(control.group)[0]
    index = group.groupIndex.get()
    limb = pm.listConnections(group.limb)[0]
    mirrorLimbs = pm.listConnections(limb.mirrorLimb)
    if not mirrorLimbs:
        return
    mirrorLimb = mirrorLimbs[0]
    for group in pm.listConnections(mirrorLimb.usedGroups):
        if group.groupIndex.get() == index:
            control = pm.listConnections(group.control)[0]
            pm.select(control)
            return
SelectMirrorLimbControl()'''
        }

    def __init__(self):
        pm.layoutDialog(ui=self._Setup, title='Useful Scripts for Hotkeys')

#=========== SETUP ====================================

    def _Setup(self):
        form = pm.setParent(q=1)
        with pm.scrollLayout() as self._sl:
            with pm.frameLayout(lv=0, w=555, h=444):
                for name in sorted(list(self.scripts.keys())):
                    text = self.scripts[name]
                    with pm.frameLayout(l=name, bv=1):
                        pm.scrollField(ed=0, ww=0, text=text)
        self.close_btn = pm.button('Close', 
                c=lambda x: pm.layoutDialog(dis='close'))

        pm.formLayout(form, e=1, width=600, height=500,
                        attachForm=[(self._sl, 'top', 5), 
                                    (self._sl, 'left', 5), 
                                    (self._sl, 'right', 5),  
                                    (self.close_btn, 'left', 5),
                                    (self.close_btn, 'right', 5), 
                                    (self.close_btn, 'bottom', 5)],
                        attachControl=[(self._sl, 'bottom', 5, 
                                            self.close_btn)])
        
        










