
import pymel.core as pm

class DuplicateLimbs_UI:
    def __init__(self, parent):
        self.limbMng = parent.pfrs.limbMng

    def Duplicate_Dialog(self):
        self.selectedLimbs = []
        result = pm.layoutDialog(ui=self._Setup, title='Duplicate Limbs')
        if (result == 'duplicate'):
            return [int(ID) for ID in self.selectedLimbs]
        return None

    def _Setup(self):
        form = pm.setParent(q=1)
        temp_fl = pm.frameLayout(l='Select limbs to DUPLICATE', 
                                    bv=1, mh=5, mw=5, p=form)
        self.limbs_tv = pm.treeView(adr=0, arp=0, ann='CTR or Shift + LMB to multi-select',
                                    elc=lambda x,y: '', 
                                    selectCommand=self._LimbSelected)
        for rootLimbID in self.limbMng.GetRootLimbIDs():
            for limbID in self.limbMng.GetLimbCreationOrder(rootLimbID):
                limb = self.limbMng.GetLimb(limbID)
                name = limb.pfrsName.get()
                parentID = limb.limbParentID.get()
                pm.treeView(self.limbs_tv, e=1, addItem=(limbID, str(parentID)))
                pm.treeView(self.limbs_tv, e=1, displayLabel=(limbID, name))
        
        self.close_btn = pm.button(l='Close', parent=form, 
                                c=lambda x: pm.layoutDialog(dis='close'))
        self.dup_btn = pm.button(l='Duplicate', parent=form, en=0,
                                c=lambda x: pm.layoutDialog(dis='duplicate'))
        pm.formLayout(form, edit=True, width=430, height=320,
                        attachForm=[(temp_fl, 'top', 5), 
                                    (temp_fl, 'left', 5), 
                                    (temp_fl, 'right', 5), 
                                    (self.close_btn, 'left', 5), 
                                    (self.close_btn, 'bottom', 5), 
                                    (self.dup_btn, 'bottom', 5), 
                                    (self.dup_btn, 'right', 5)],
                        attachControl=[(temp_fl, 'bottom', 5, self.dup_btn)],
                        attachPosition=[(self.close_btn, 'right', 5, 50), 
                                        (self.dup_btn, 'left', 5, 50)])

    def _LimbSelected(self, limbName, state):
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
        pm.button(self.dup_btn, e=1, enable=bool(self.selectedLimbs))
        return True




