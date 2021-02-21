
import pymel.core as pm


class SaveTemplate_UI:
    def __init__(self, parent):

        self.limbMng = parent.limbMng
        self.nameMng = parent.nameMng

        self.selectedLimbs = []
        self.templateName = ''

    def SaveTemplate_Dialog(self):
        result = pm.layoutDialog(ui=self._Setup, title='Save Template')
        if (result == 'save'):
            limbIDs = []
            for limbID in self.selectedLimbs:
                limbIDs += self.limbMng.GetLimbCreationOrder(int(limbID))
            return (limbIDs, self.templateName)
        return (None, None)

#=========== SETUP ====================================

    def _Setup(self):
        form = pm.setParent(q=1)
        self.name_grp = pm.textFieldGroup(  l='', adj=1, pht='Biped Arm...', 
                                            tcc=self.NameChanged, cw=(2,80), 
                                            cal=(1,'left'), p=form)
        temp_fl = pm.frameLayout(l='Select limbs to SAVE in Template', 
                                    bv=1, mh=5, mw=5, p=form)
        self.limbs_tv = pm.treeView(adr=0, arp=0, ann='CTR or Shift + LMB to multi-select',
                                    elc=lambda x,y: '', 
                                    selectCommand=self.LimbSelected)
        for rootLimbID in self.limbMng.GetRootLimbIDs():
            for limbID in self.limbMng.GetLimbCreationOrder(rootLimbID):
                limb = self.limbMng.GetLimb(limbID)
                name = limb.pfrsName.get()
                parentID = limb.limbParentID.get()
                # if (parentID == -1):
                #     parentID = ''
                pm.treeView(self.limbs_tv, e=1, addItem=(limbID, str(parentID)))
                pm.treeView(self.limbs_tv, e=1, displayLabel=(limbID, name))
        
        self.close_btn = pm.button(l='Close', parent=form, 
                                c=lambda x: pm.layoutDialog(dis='close'))
        self.save_btn = pm.button(l='Save', parent=form, 
                                c=lambda x: pm.layoutDialog(dis='save'))
        pm.formLayout(form, edit=True, width=430, height=320,
                        attachForm=[(self.name_grp, 'top', 5), 
                                    (self.name_grp, 'left', 5), 
                                    (self.name_grp, 'right', 5), 
                                    (temp_fl, 'left', 5), 
                                    (temp_fl, 'right', 5), 
                                    (self.close_btn, 'left', 5), 
                                    (self.close_btn, 'bottom', 5), 
                                    (self.save_btn, 'bottom', 5), 
                                    (self.save_btn, 'right', 5)],
                        attachControl=[(temp_fl, 'bottom', 5, self.save_btn),
                                        (temp_fl, 'top', 5, self.name_grp)],
                        attachPosition=[(self.close_btn, 'right', 5, 50), 
                                        (self.save_btn, 'left', 5, 50)])
        self.NameChanged('')

#=========== FUNCTIONALITY ====================================

    def LimbSelected(self, limbName, state):
        if state:
            if (limbName not in self.selectedLimbs):
                # PREVENT SELECTING CHILD OF ALREADY SELECTED PARENT
                parent = pm.treeView(self.limbs_tv, q=1, ip=limbName)
                isValid = True
                while (parent):
                    if (parent in self.selectedLimbs):
                        return False
                    parent = pm.treeView(self.limbs_tv, q=1, ip=parent)

                # DESELECT CHILDREN
                for selected in self.selectedLimbs[:]:
                    parent = pm.treeView(self.limbs_tv, q=1, ip=selected)
                    while (parent):
                        if (parent == limbName):
                            pm.treeView(self.limbs_tv, e=1, si=(selected, 0))
                            self.selectedLimbs.remove(selected)
                        parent = pm.treeView(self.limbs_tv, q=1, ip=parent)
                if isValid:
                    self.selectedLimbs.append(limbName)

        elif (limbName in self.selectedLimbs):
            self.selectedLimbs.remove(limbName)
        self.Update_SaveBtn()
        return True

    def NameChanged(self, text):
        self.templateName = text
        self.nameValid = False
        if self.nameMng.IsValidCharacterLength(text):
            if self.nameMng.DoesNotStartWithNumber(text):
                if self.nameMng.AreAllValidCharacters(text):
                    self.nameValid = True
        msg = 'TEMPLATE NAME | '+ self.nameMng.errorMsg[5:]
        pm.textFieldGroup(self.name_grp, e=1, l=msg)
        self.Update_SaveBtn()

    def Update_SaveBtn(self):
        combo = self.nameValid and bool(self.selectedLimbs)
        pm.button(self.save_btn, e=1, enable=combo)

        

















