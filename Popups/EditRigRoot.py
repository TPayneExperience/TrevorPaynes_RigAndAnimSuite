
import pymel.core as pm

import Common.General_Utilities as genUtil
reload(genUtil)
import Common.Logger as log
reload(log)

class EditRigRoot:
    def __init__(self, rigRoot, parentUI):
        self._rigRoot = rigRoot
        self._parentUI = parentUI
        
        self.rootName = ''
        self.showRootName = True
        self.nameOrder = [0,1,2,3,4]

        self.rootNameValid = False

        self.rigNaming = (  'RootName (CAT, ELF)',
                            'Limb (ARM, LEG)',
                            'Joint (ELBOW, KNEE_02)',
                            'Side (L, M, R)',
                            'Type (JNT, CTR)')
    
        self.startNameOrder = [ rigRoot.rigRootIndex.get(),
                                rigRoot.limbIndex.get(),
                                rigRoot.jointIndex.get(),
                                rigRoot.sideIndex.get(),
                                rigRoot.typeIndex.get()]
        self.startRootName = rigRoot.pfrsName.get()
        self.startShowRootName = rigRoot.showRootName.get()
        self._CopyInitValues()
        result = pm.layoutDialog(ui=self._Setup, title='Rig Root Setup') # WINDOW
        rootNameChanged = (self.startRootName != self.rootName)
        showRootNameChanged = (self.startShowRootName != self.showRootName)
        nameOrderChanged = (self.startNameOrder != self.nameOrder)
        namesChanged = any((rootNameChanged, showRootNameChanged, nameOrderChanged))
        # IF PROBLEMS ARISE, CHECK OUT UserSettings.PY. Naming order correct there
        if result == 'Save':
            if (rootNameChanged):
                self._rigRoot.pfrsName.set(self.rootName)
            if (showRootNameChanged):
                self._rigRoot.showRootName.set(self.showRootName)
            if (nameOrderChanged):
                self._rigRoot.rigRootIndex.set(self.nameOrder[0])
                self._rigRoot.limbIndex.set(self.nameOrder[1])
                self._rigRoot.jointIndex.set(self.nameOrder[2])
                self._rigRoot.sideIndex.set(self.nameOrder[3])
                self._rigRoot.typeIndex.set(self.nameOrder[4])
            if namesChanged:
                self._parentUI.UpdateRigRoot()
    
#============ SETUP ============================

    def _Setup(self):
        form = pm.setParent(q=1)
    
        # ASSET DETAILS
        ass_fl = pm.frameLayout(l='Asset Details', 
                                    bv=1, mh=5, mw=5, p=form)
        self.rootName_grp = pm.textFieldGrp(  l='ASSET PREFIX', adj=1, pht='CAT...', 
                                            tcc=self.RootNameChanged, 
                                            text=self.startRootName,
                                            cw=(2,80), cal=(1,'left'))

        # EXAMPLE NAMING
        ex_fl = pm.frameLayout(l='Example Results', bv=1, mh=5, mw=5, p=form)
        self.ex0_t = pm.text(l='')
        pm.text(l='------------')
        self.ex1_t = pm.text(l='')
        self.ex2_t = pm.text(l='')
        self.ex3_t = pm.text(l='')
    
        # RIG NAMING
        msg = 'MMB + Drag to reorganize'
        order_fl = pm.frameLayout(l='Rig Naming', bv=1, mh=5, mw=5, p=form)
        self.showPfx_cb = pm.checkBox(l='Show RootName', v=self.showRootName, cc=self.ToggleShowRootName)
        self.order_tv = pm.treeView(ams=0, arp=0, h=110, ann=msg, 
                                                dad=self.Update_ExampleLabels)
        for i in range(5):
            part = self.rigNaming[self.startNameOrder[i]]
            pm.treeView(self.order_tv, e=1, ai=(part, ''))

        # BUTTONS + LAYOUT
        self.cancel_btn = pm.button(l='Cancel', parent=form, c=self.Cancel)
        self.save_btn = pm.button(l='Save', parent=form, c=self.Save)
        pm.formLayout(form, edit=True, width=340, height=250,
                        attachForm=[(ass_fl, 'top', 5), 
                                    (ass_fl, 'left', 5), 
                                    (ass_fl, 'right', 5), 
                                    (ex_fl, 'left', 5), 
                                    (order_fl, 'right', 5), 
                                    (self.cancel_btn, 'left', 5), 
                                    (self.cancel_btn, 'bottom', 5), 
                                    (self.save_btn, 'bottom', 5), 
                                    (self.save_btn, 'right', 5)],
                        attachControl=[(ex_fl, 'top', 5, ass_fl),
                                        (ex_fl, 'bottom', 5, self.cancel_btn),
                                        (order_fl, 'top', 5, ass_fl),
                                        (order_fl, 'bottom', 5, self.save_btn)],
                        attachPosition=[(ex_fl, 'right', 5, 50), 
                                        (order_fl, 'left', 5, 50), 
                                        (self.cancel_btn, 'right', 5, 50), 
                                        (self.save_btn, 'left', 5, 50)])
        self.Update_ExampleLabels(0,0,0,0,0,0,0)
        self.RootNameChanged(self.startRootName)

#============ POPULATE + UPDATE ============================

    def _CopyInitValues(self):
        self.rootName = self.startRootName 
        self.showRootName = self.startShowRootName
        self.nameOrder = self.startNameOrder[:]

    def _GetName(self, rootName, limb, joint, side, objType):
        temp = {self.nameOrder[1]:limb,
                self.nameOrder[2]:joint,
                self.nameOrder[3]:side,
                self.nameOrder[4]:objType}
        if self.showRootName:
            temp[self.nameOrder[0]] = rootName
        partNames = [temp[i] for i in sorted(list(temp.keys()))]
        return '_'.join(partNames)

    def Update_ExampleLabels(self, i1, i2, i3, i4, i5, i6, i7):
        for i in range(5):
            index = pm.treeView(self.order_tv, q=1, idx=self.rigNaming[i])
            self.nameOrder[i] = index
        ex0 = self._GetName('PREFIX', 'LIMB', 'JOINT', 'SIDE', 'TYPE')
        ex1 = self._GetName('CAT', 'BLEG', 'KNEE', 'L', 'CTR')
        ex2 = self._GetName('MMonroe', 'SexyArm', 'SexyElbow', 'R', 'JNT')
        ex3 = self._GetName('JohnWick', 'Head', 'MidBrow', 'L', 'JNT')
        pm.text(self.ex0_t, e=1, l=ex0)
        pm.text(self.ex1_t, e=1, l=ex1)
        pm.text(self.ex2_t, e=1, l=ex2)
        pm.text(self.ex3_t, e=1, l=ex3)

    def ToggleShowRootName(self, state):
        self.showRootName = state
        self.Update_ExampleLabels(0,0,0,0,0,0,0)

    def RootNameChanged(self, text):
        log.funcFileDebug()
        self.rootName = text
        self.rootNameValid = False
        pm.button(self.save_btn, e=1, en=0)
        msg = 'ASSET PREFIX'
        if not genUtil.Name.IsValidCharacterLength(text):
            msg += ' | Must be 2 or more characters'
            return pm.textFieldGrp(self.rootName_grp, e=1, l=msg)
        if not genUtil.Name.DoesNotStartWithNumber(text):
            msg += ' | Cannot start with number OR _'
            return pm.textFieldGrp(self.rootName_grp, e=1, l=msg)
        if not genUtil.Name.AreAllValidCharacters(text):
            msg += ' | May only contain A-Z, a-z, 0-9, _'
            return pm.textFieldGrp(self.rootName_grp, e=1, l=msg)
        self.rootNameValid = True
        pm.textFieldGrp(self.rootName_grp, e=1, l=msg)
        pm.button(self.save_btn, e=1, en=1)
        
    def Cancel(self, ignore):
        pm.layoutDialog(dis='close')
    
    def Save(self, ignore):
        pm.layoutDialog(dis='Save')



