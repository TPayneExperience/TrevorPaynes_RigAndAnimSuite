
import pymel.core as pm


class POPUP_EditRoot:
    def __init__(self, parent):
        self.pfrs = parent.pfrs
        self.nameMng = parent.pfrs.nameMng
        self.fileMng = parent.pfrs.fileMng
        self.parent = parent
        self.logger = parent.logger
        
        self.prefix = ''
        self.showPrefix = True
        self.nameOrder = [0,1,2,3,4]

        self.prefixValid = False
        # self.meshPathValid = False

        self.rigNaming = [  'Prefix (CAT, ELF)',
                            'Limb (ARM, LEG)',
                            'Joint (ELBOW, KNEE_02)',
                            'Side (L, M, R)',
                            'Type (JNT, CTR)']
    
    # def NewRig_Dialog(self):
    #     self.startPrefix = 'PFX'
    #     self.startShowPrefix = True
    #     self.startNameOrder = [0,1,2,3,4]
    #     self._CopyInitValues()
    #     result = pm.layoutDialog(ui=self._Setup, title='Rig Setup')
    #     if result == 'save':
    #         self.parent.NewRig(   self.prefix, 
    #                                 self.nameOrder, 
    #                                 self.showPrefix)

    # def EditRig_Dialog(self, prefix, showPrefix, order, root):
    def EditRoot_Dialog(self):
        order = [self.pfrs.root.prefixIndex.get()]
        order.append(self.pfrs.root.limbIndex.get())
        order.append(self.pfrs.root.jointIndex.get())
        order.append(self.pfrs.root.sideIndex.get())
        order.append(self.pfrs.root.typeIndex.get())
        self.startPrefix = self.pfrs.root.prefix.get()
        self.startShowPrefix = self.pfrs.root.showPrefix.get()
        self.startNameOrder = order
        self._CopyInitValues()
        result = pm.layoutDialog(ui=self._Setup, title='Rig Root Setup')
        prefixChanged = (self.startPrefix != self.prefix)
        showPrefixChanged = (self.startShowPrefix != self.showPrefix)
        nameOrderChanged = (self.startNameOrder != self.nameOrder)
        namesChanged = any((prefixChanged, showPrefixChanged, nameOrderChanged))
        if result == 'Save':
            if (prefixChanged):
                self.pfrs.root.prefix.set(self.prefix)
            if (showPrefixChanged):
                self.pfrs.root.showPrefix.set(self.showPrefix)
            if (nameOrderChanged):
                self.pfrs.root.prefixIndex.set(self.nameOrder[0])
                self.pfrs.root.limbIndex.set(self.nameOrder[1])
                self.pfrs.root.jointIndex.set(self.nameOrder[2])
                self.pfrs.root.sideIndex.set(self.nameOrder[3])
                self.pfrs.root.typeIndex.set(self.nameOrder[4])
            if namesChanged:
                self.pfrs.UpdateNames()
    
#============ SETUP ============================

    def _Setup(self):
        form = pm.setParent(q=1)
    
        # ASSET DETAILS
        ass_fl = pm.frameLayout(l='Asset Details', 
                                    bv=1, mh=5, mw=5, p=form)
        self.prefix_grp = pm.textFieldGrp(  l='ASSET PREFIX', adj=1, pht='CAT...', 
                                            tcc=self.PrefixChanged, 
                                            text=self.startPrefix,
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
        self.showPfx_cb = pm.checkBox(l='Show Prefix', v=self.showPrefix, cc=self.ToggleShowPrefix)
        self.order_tv = pm.treeView(ams=0, arp=0, h=110, ann=msg, 
                                                dad=self.Update_ExampleLabels)
        for i in range(5):
            part = self.rigNaming[self.startNameOrder[i]]
            pm.treeView(self.order_tv, e=1, ai=(part, ''))

        # BUTTONS + LAYOUT
        self.close_btn = pm.button(l='Close', parent=form, c=self.Close)
        self.save_btn = pm.button(l='Save', parent=form, c=self.Save)
        pm.formLayout(form, edit=True, width=340, height=250,
                        attachForm=[(ass_fl, 'top', 5), 
                                    (ass_fl, 'left', 5), 
                                    (ass_fl, 'right', 5), 
                                    (ex_fl, 'left', 5), 
                                    (order_fl, 'right', 5), 
                                    (self.close_btn, 'left', 5), 
                                    (self.close_btn, 'bottom', 5), 
                                    (self.save_btn, 'bottom', 5), 
                                    (self.save_btn, 'right', 5)],
                        attachControl=[(ex_fl, 'top', 5, ass_fl),
                                        (ex_fl, 'bottom', 5, self.close_btn),
                                        (order_fl, 'top', 5, ass_fl),
                                        (order_fl, 'bottom', 5, self.save_btn)],
                        attachPosition=[(ex_fl, 'right', 5, 50), 
                                        (order_fl, 'left', 5, 50), 
                                        (self.close_btn, 'right', 5, 50), 
                                        (self.save_btn, 'left', 5, 50)])
        self.Update_ExampleLabels(0,0,0,0,0,0,0)
        self.PrefixChanged(self.startPrefix)

#============ POPULATE + UPDATE ============================

    def _CopyInitValues(self):
        self.prefix = self.startPrefix 
        self.showPrefix = self.startShowPrefix
        self.nameOrder = self.startNameOrder[:]

    def _GetName(self, prefix, limb, joint, side, objType):
        temp = {self.nameOrder[1]:limb,
                self.nameOrder[2]:joint,
                self.nameOrder[3]:side,
                self.nameOrder[4]:objType}
        if self.showPrefix:
            temp[self.nameOrder[0]] = prefix
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

    def ToggleShowPrefix(self, state):
        self.showPrefix = state
        self.Update_ExampleLabels(0,0,0,0,0,0,0)

    def PrefixChanged(self, text):
        self.logger.debug('\tEditRoot > PrefixChanged')
        self.prefix = text
        self.prefixValid = False
        pm.button(self.save_btn, e=1, en=0)
        msg = 'ASSET PREFIX'
        if not self.nameMng.IsValidCharacterLength(text):
            msg += ' | Must be 2 or more characters'
            return pm.textFieldGrp(self.prefix_grp, e=1, l=msg)
        if not self.nameMng.DoesNotStartWithNumber(text):
            msg += ' | Cannot start with number OR _'
            return pm.textFieldGrp(self.prefix_grp, e=1, l=msg)
        if not self.nameMng.AreAllValidCharacters(text):
            msg += ' | May only contain A-Z, a-z, 0-9, _'
            return pm.textFieldGrp(self.prefix_grp, e=1, l=msg)
        self.prefixValid = True
        pm.textFieldGrp(self.prefix_grp, e=1, l=msg)
        pm.button(self.save_btn, e=1, en=1)
    #     self.Update_SaveBtn()
    
    # def Update_SaveBtn(self):
    #     combo = self.prefixValid and self.meshPathValid
    #     pm.button(self.save_btn, e=1, en=combo)

    def Close(self, ignore):
        pm.layoutDialog(dis='close')
    
    def Save(self, ignore):
        pm.layoutDialog(dis='Save')



