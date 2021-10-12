
import os

import pymel.core as pm

import Utilities.General_Utilities as genUtil
reload(genUtil)
import Utilities.Logger as log
reload(log)
import Data.Rig_Data as rigData
reload(rigData)

class UserSettings:
    def __init__(self):
        self.rootNameValid = True
        self.templateValid = True
        self.shapeFileValid = True
        self.save_btn = None

        folder = os.path.dirname(__file__)
        folder = os.path.dirname(folder)
        folder = os.path.join(folder, 'Data')
        self.filePath = os.path.join(folder, 'Config.json')
        self.config = genUtil.Json.Load(self.filePath)

        pm.layoutDialog(ui=self._Setup, title='User Settings')
    
#============ SETUP ============================

    def _Setup(self):
        form = pm.setParent(q=1)
        with pm.frameLayout(lv=0, p=form) as temp_fl:
            with pm.columnLayout(adj=1):
                with pm.frameLayout(l='Text Fields', bv=1, mw=5, mh=5) as self._txt_fl:
                    with pm.columnLayout(adj=1):
                        self._Setup_RigRootName()
                        self._Setup_TemplatesFolder()
                        self._Setup_ControlShapesFile()
                with pm.horizontalLayout():
                    title = 'Control Colors + Transparency'
                    with pm.frameLayout(l=title, bv=1, mw=5, mh=5) as self._clr_fl:
                        self._Setup_Colors()
                    with pm.frameLayout(l='Joint Settings', bv=1, mw=5, mh=5) as self._jr_fl:
                        self._Setup_JointMirrorAxes()
                        self._Setup_JointRotOrder()
                        value = pm.jointDisplayScale(q=1)
                        pm.floatSliderGrp(l='Joint Display Size', min=0.01, max=10,
                                        v=value, f=1, pre=2, 
                                        cw3=(100, 35, 50),
                                        dc=self.SetJointDisplaySize)
                with pm.horizontalLayout():
                    with pm.frameLayout(l='Control Shapes', bv=1, mw=5, mh=5) as self._shp_fl:
                        self._Setup_ControlShapes()
                    with pm.frameLayout(l='Naming Order', bv=1, mw=5, mh=5) as self._shp_fl:
                        self._Setup_Naming()
                with pm.horizontalLayout():
                    with pm.frameLayout(l='Quick Weights', bv=1, mw=5, mh=5) as self._shp_fl:
                        self._Setup_QuickWeights()

        self.save_btn = pm.button(l='Save', p=form, c=self.Save)
        self.cancel_btn = pm.button(l='Close', p=form, 
                                    c=lambda x: pm.layoutDialog(dis='close'))
        pm.formLayout(form, edit=True, width=200, height=320,
                        attachForm=[(temp_fl, 'top', 5), 
                                    (temp_fl, 'left', 5), 
                                    (temp_fl, 'right', 5),  
                                    (self.save_btn, 'bottom', 5), 
                                    (self.save_btn, 'right', 5),
                                    (self.cancel_btn, 'left', 5), 
                                    (self.cancel_btn, 'bottom', 5)],
                        attachControl=[(temp_fl, 'bottom', 5, self.save_btn)],
                        attachPosition=[(self.cancel_btn, 'right', 5, 50), 
                                        (self.save_btn, 'left', 5, 50)])

#============ SETUP OTHERS ============================

    def _Setup_JointMirrorAxes(self):
        with pm.optionMenu(l=' Joint Aim Axis') as self.jAim_om:
            for i in range(6):
                axis = rigData.JOINT_AIM_UP_AXES[i]
                pm.menuItem(l=axis)
                if i == self.config['jointAimAxis']:
                    pm.optionMenu(self.jAim_om, e=1, sl=(i+1))
        with pm.optionMenu(l=' Joint Up Axis') as self.jUp_om:
            for i in range(6):
                axis = rigData.JOINT_AIM_UP_AXES[i]
                pm.menuItem(l=axis)
                if i == self.config['jointUpAxis']:
                    pm.optionMenu(self.jUp_om, e=1, sl=(i+1))

        pm.optionMenu(self.jAim_om, e=1, cc=self.SetJAim)
        pm.optionMenu(self.jUp_om, e=1, cc=self.SetJUp)
        
    def _Setup_JointRotOrder(self):
        with pm.optionMenu(l=' Joint Rot Order') as self.jRotOrder_om:
            for i in range(6):
                axis = rigData.JOINT_ROT_ORDER[i]
                pm.menuItem(l=axis)
                if i == self.config['jointRotOrder']:
                    pm.optionMenu(self.jRotOrder_om, e=1, sl=(i+1))
        pm.optionMenu(self.jRotOrder_om, e=1, cc=self.SetJRotOrder)

    def _Setup_TemplatesFolder(self):
        self.tmpFolder_tbg = pm.textFieldButtonGrp(l='Templates Folder', 
                                            adj=2,
                                            bl='Find', 
                                            cw3=(150, 50, 30),
                                            bc=self.FindTemplatesFolder,
                                            tcc=self.SetTemplateFolderText)
        folderPath = self.config['templateFolderPath']
        if not folderPath:
            return 
        pm.textFieldButtonGrp(self.tmpFolder_tbg, e=1, fi=folderPath)

    def _Setup_ControlShapesFile(self):
        self.ctrShpFile_tbg = pm.textFieldButtonGrp(l='Control Shapes File', 
                                            adj=2,
                                            bl='Find', 
                                            cw3=(150, 50, 30),
                                            bc=self.FindControlShapesFile,
                                            tcc=self.SetControlShapeFileText)
        filePath = self.config['controlShapesFilePath']
        if not filePath:
            return 
        pm.textFieldButtonGrp(self.ctrShpFile_tbg, e=1, fi=filePath)

    def _Setup_Colors(self):
        lColor = self.config['lControlColor']
        lTrans = self.config['lControlTransparency']
        mColor = self.config['mControlColor']
        mTrans = self.config['mControlTransparency']
        rColor = self.config['rControlColor']
        rTrans = self.config['rControlTransparency']
        self.lClr_csg = pm.colorSliderGrp(  l='L Ctr Color', 
                                            rgb=lColor, 
                                            cw3=(60, 60, 20),
                                            cc=self.SetLColor)
        self.lTsp_fsg = pm.floatSliderGrp(l='L Ctr Trans',  
                                            pre=2, f=1, max=1, 
                                            v=lTrans, 
                                            cw3=(60, 30, 50),
                                            cc=self.SetLTrans)
        self.mClr_csg = pm.colorSliderGrp(  l='M Ctr Color', 
                                            rgb=mColor, 
                                            cw3=(60, 60, 20),
                                            cc=self.SetMColor)
        self.mTsp_fsg = pm.floatSliderGrp(l='M Ctr Trans',  
                                            pre=2, f=1, max=1, v=mTrans, 
                                            cw3=(60, 30, 50),
                                            cc=self.SetMTrans)
        self.rClr_csg = pm.colorSliderGrp(  l='R Ctr Color', 
                                            rgb=rColor, 
                                            cw3=(60, 60, 20),
                                            cc=self.SetRColor)
        self.rTsp_fsg = pm.floatSliderGrp(l='R Ctr Trans',  
                                            pre=2, f=1, max=1, v=rTrans, 
                                            cw3=(60, 30, 50),
                                            cc=self.SetRTrans)

    def _Setup_ControlShapes(self):
        configAttrs = [k for k in list(self.config.keys()) if 'controlShape_' in k]
        rigRoot = genUtil.GetRigRoots()[0]
        group = pm.listConnections(rigRoot.controlTemplates)[0]
        controlShapes = pm.listRelatives(group, c=1)
        shapeNames = [s.shortName() for s in controlShapes]
        self.ctrShape_ui = {}
        for configAttr in configAttrs:
            name = configAttr[13:]
            with pm.optionMenu(l=' Control Shape '+ name) as temp:
                for i in range(len(shapeNames)):
                    shape = shapeNames[i]
                    pm.menuItem(l=shape)
                    if self.config[configAttr] == shape:
                        pm.optionMenu(temp, e=1, sl=(i+1))
            pm.optionMenu(temp, e=1, cc=pm.Callback(
                                self.SetControlShape, temp, configAttr))

    def _Setup_Naming(self):
        self.rigNaming = (  'RootName (CAT, ELF)',
                            'Limb (ARM, LEG)',
                            'Joint (ELBOW, KNEE_02)',
                            'Side (L, M, R)',
                            'Type (JNT, CTR)')
        self.nameIndexes = ('rigRootIndex',
                            'limbIndex',
                            'jointIndex',
                            'sideIndex',
                            'typeIndex')
        msg = 'MMB + Drag to reorganize'
        self.showPfx_cb = pm.checkBox(  l='Show RootName', 
                                        v=self.config['showRootName'], 
                                        cc=self.ToggleShowRootName)
        self.order_tv = pm.treeView(ams=0, arp=0, h=110, ann=msg, 
                                                dad=self.StoreNameOrder)
        startOrder = {} # orderNumber : attr
        for i in range(5):
            configAttr = self.nameIndexes[i]
            index = self.config[configAttr]
            startOrder[index] = self.rigNaming[i]
        for i in range(5):
            part = startOrder[i]
            pm.treeView(self.order_tv, e=1, ai=(part, ''))

    def _Setup_RigRootName(self):
        name = self.config['rigRootName']
        self.rootName_grp = pm.textFieldGrp(l='Default Rig Root Name', 
                                            adj=1, 
                                            pht='CAT...', 
                                            tcc=self.RootNameChanged, 
                                            text=name,
                                            cw=(2,80), 
                                            cal=(1,'left'))

    def _Setup_QuickWeights(self):
        with pm.verticalLayout():
            lTitle = 'Limb Mask Midpoints'
            jTitle = 'Joint Mask Midpoints'
            lVal = self.config['quickWeightsLimbMaskMidpoints']
            jVal = self.config['quickWeightsJointMaskMidpoints']
            self._lMidpoints_is = pm.intSliderGrp(l=lTitle, 
                                        f=1, v=lVal, 
                                        cw3=(120, 30, 60),
                                        min=1, max=10, cc=self.SetLimbMidpoints)
            self._jMidpoints_is = pm.intSliderGrp(l=jTitle, 
                                        f=1, v=jVal, 
                                        cw3=(120, 30, 60),
                                        min=1, max=10, cc=self.SetJointMidpoints)

#============ COLOR ============================

    def SetLColor(self, ignore):
        self.config['lControlColor'] = pm.colorSliderGrp(
                                        self.lClr_csg, q=1, rgb=1)

    def SetMColor(self, ignore):
        self.config['mControlColor'] = pm.colorSliderGrp(
                                        self.mClr_csg, q=1, rgb=1)

    def SetRColor(self, ignore):
        self.config['rControlColor'] = pm.colorSliderGrp(
                                        self.rClr_csg, q=1, rgb=1)

    def SetLTrans(self, value):
        self.config['lControlTransparency'] = value

    def SetMTrans(self, value):
        self.config['mControlTransparency'] = value

    def SetRTrans(self, value):
        self.config['rControlTransparency'] = value

#============ TEXT ============================

    def FindTemplatesFolder(self):
        folderPath = pm.textFieldButtonGrp(self.tmpFolder_tbg, q=1, tx=1)
        if not folderPath:
            folder = os.path.dirname(__file__)
            folder = os.path.dirname(folder)
            folder = os.path.join(folder, 'Templates')
            folderPath = os.path.join(folder, 'Limbs')
        result = pm.fileDialog2(fm=3, dir=folderPath, 
                                cap='Set Templates Folder')
        if result:
            pm.textFieldButtonGrp(self.tmpFolder_tbg, e=1, fi=result[0])

    def FindControlShapesFile(self):
        filePath = pm.textFieldButtonGrp(self.ctrShpFile_tbg, q=1, tx=1)
        if not filePath:
            folder = os.path.dirname(__file__)
            folder = os.path.dirname(folder)
            folder = os.path.join(folder, 'Templates')
            filePath = os.path.join(folder, 'Control_Shapes.ma')
        result = pm.fileDialog2(fm=1, dir=filePath, 
                                cap='Set Control Shapes File')
        if result:
            pm.textFieldButtonGrp(self.ctrShpFile_tbg, e=1, fi=result[0])

    def RootNameChanged(self, text):
        log.funcFileDebug()
        self.config['rigRootName'] = text
        self.rootNameValid = False
        self.UpdateSaveButton()
        msg = 'Rig Root Name'
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
        self.UpdateSaveButton()
        
    def SetTemplateFolderText(self, text):
        label = 'Templates Folder'
        self.config['templateFolderPath'] = text
        self.templateValid = True
        if text and not os.path.isdir(text):
            self.templateValid = False
            label += ' | INVALID'
        pm.textFieldButtonGrp(self.tmpFolder_tbg, e=1, l=label)
        self.UpdateSaveButton()

    def SetControlShapeFileText(self, text):
        label = 'Control Shapes File'
        self.config['controlShapesFilePath'] = text
        self.shapeFileValid = True
        if text and not os.path.isfile(text):
            self.shapeFileValid = False
            label += ' | INVALID'
        pm.textFieldButtonGrp(self.ctrShpFile_tbg, e=1, l=label)
        self.UpdateSaveButton()

#============ NAME ORDER ============================

    def ToggleShowRootName(self, state):
        self.config['showRootName'] = state

    def StoreNameOrder(self, i1, i2, i3, i4, i5, i6, i7):
        for i in range(5):
            index = pm.treeView(self.order_tv, q=1, idx=self.rigNaming[i])
            self.config[self.nameIndexes[i]] = index

#============ ROTATION ============================

    def SetJRotOrder(self, order):
        self.config['jointRotOrder'] = rigData.JOINT_ROT_ORDER.index(order)

    def SetJAim(self, axis):
        self.config['jointAimAxis'] = rigData.JOINT_AIM_UP_AXES.index(axis)

    def SetJUp(self, axis):
        self.config['jointUpAxis'] = rigData.JOINT_AIM_UP_AXES.index(axis)

    def SetJointDisplaySize(self, value):
        pm.jointDisplayScale(value)

#============ SHAPES ============================

    def SetControlShape(self, opMenu, controlShape):
        self.config[controlShape] = pm.optionMenu(opMenu, q=1, v=1)
    
#============ MISC ============================
    
    def SetLimbMidpoints(self, value):
        self.config['quickWeightsLimbMaskMidpoints'] = value

    def SetJointMidpoints(self, value):
        self.config['quickWeightsJointMaskMidpoints'] = value

#============ SAVE ============================

    def UpdateSaveButton(self):
        if not self.save_btn: # Text fields can cause weird error
            return
        pm.button(self.save_btn, e=1, en=0)
        if not self.rootNameValid:
            return
        if not self.templateValid:
            return
        if not self.shapeFileValid:
            return
        pm.button(self.save_btn, e=1, en=1)

    def Save(self, ignore):
        genUtil.Json.Save(self.filePath, self.config)
        pm.layoutDialog(dis='save')

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
