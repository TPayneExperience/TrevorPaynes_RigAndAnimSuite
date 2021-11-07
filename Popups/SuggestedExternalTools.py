
import webbrowser

import pymel.core as pm

class SuggestedExternalTools:
    def __init__(self):
        pm.layoutDialog(ui=self.Setup, title='Suggested External Tools')

    def close(self, _):
        pm.layoutDialog(dis='close')

#=========== SETUP UI ====================================

    def Setup(self):
        form = pm.setParent(q=1)
        with pm.columnLayout(adj=1, p=form) as self.cl:
            with pm.frameLayout('Animation', bv=1, mw=5, mh=5):
                with pm.horizontalLayout():
                    pm.text(l='MAYA STUDIO LIBRARY')
                    pm.text(l='(Anim library tool, FREE)')
                    url = 'https://www.studiolibrary.com/'
                    pm.button('Open URL', w=30,
                            c=lambda x: webbrowser.open(url))
                with pm.horizontalLayout():
                    pm.text(l='ANIMBOT')
                    pm.text(l='(Anim keyframe tools,$60-$400)')
                    url = 'https://animbot.ca/'
                    pm.button('Open URL', w=30,
                            c=lambda x: webbrowser.open(url))
        self.close_b = pm.button(l='Close', p=form, c=self.close)

        pm.formLayout(form, e=1, width=400, height=200,
            attachForm=[(self.cl, 'top', 5), 
                        (self.cl, 'left', 5),
                        (self.cl, 'right', 5),  
                        (self.close_b, 'left', 5),
                        (self.close_b, 'right', 5), 
                        (self.close_b, 'bottom', 5)],
            attachControl=[(self.cl, 'bottom', 5, self.close_b)])
    

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
