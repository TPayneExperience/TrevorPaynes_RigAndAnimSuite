
import pymel.core as pm

import Rigging.Rigging_UI as rig_ui
reload(rig_ui)
import RigSetup.RigSetup_UI as rs_ui
reload(rs_ui)

import Common.File_Manager as fm
reload(fm)
import Common.Json_Manager as js
reload(js)
import RigSetup.Name_Manager as nm
reload(nm)


__author__ = 'Trevor Payne'
__version__ = '0.1'
LICENSE = 'INDIE'
SUITE = 'Rig'

class PayneFreeRigSuite_UI():
    def __init__(self):
        self.fileMng = fm.File_Manager()
        self.jsonMng = js.Json_Manager()
        self.nameMng = nm.Name_Manager()
        self.rigRoot = None

        self.rigSetupUI = rs_ui.RigSetup_UI(self.nameMng,
                                            self.fileMng,
                                            self)
        self._Setup()
        self.limbMng = self.rig_ui.limbMng
        self.jntMng = self.rig_ui.jntMng
        self.Debug()
        # self.Populate()

    # def Populate(self):
    #     pass
        # folder = os.path.join(os.path.dirname(__file__), 'TEST_OUTPUT')
        # self.pfrs.limbSetup.fileMng.SetOutputFile(os.path.join(folder, 'temp.json'))
        # self.pfrs.limbSetup.fileMng.SetMeshPath(os.path.join(folder, 'temp.ma'))
        

        # self.NewRig()

    # def NewRig(self):
        # self.pfrs.NewRig('somePrefix', [0,1,2,3,4], True)

    def NewRig(self, prefix, nameOrder, showPrefix):
        # prefix = 'somePrefix'
        # nameOrder = range(5)
        # showPrefix = True
        pm.flushUndo()
        pm.newFile(newFile=1, force=1)
        self.rigRoot = pm.group(name='temp', em=True)

        # NAMING
        pm.addAttr(self.rigRoot, ln='prefixIndex', at='short', dv=nameOrder[0])
        pm.addAttr(self.rigRoot, ln='limbIndex', at='short', dv=nameOrder[1])
        pm.addAttr(self.rigRoot, ln='jointIndex', at='short', dv=nameOrder[2])
        pm.addAttr(self.rigRoot, ln='sideIndex', at='short', dv=nameOrder[3])
        pm.addAttr(self.rigRoot, ln='typeIndex', at='short', dv=nameOrder[4])
        pm.addAttr(self.rigRoot, ln='showPrefix', at='bool', dv=showPrefix)
        pm.addAttr(self.rigRoot, ln='mainTab', at='enum', en='Rig:Skin:Anim')
        pm.addAttr(self.rigRoot, ln='limbsTab', at='enum', en='Jnt:Limbs:Bhv:App:Test')
        pm.addAttr(self.rigRoot, ln='meshDefTab', at='enum', en='Mesh:QW:Paint')
        pm.addAttr(self.rigRoot, ln='prefix', dt='string')
        self.rigRoot.prefix.set(prefix)
        # pm.setAttr(self.rigRoot +'.prefix', prefix)

        # MESH LAYER
        self.meshLayer = pm.createDisplayLayer(n='Rig Mesh', e=True)
        pm.setAttr(self.meshLayer + '.displayType', 2)
        pm.select(d=True)
        self.meshGroup = pm.group(name='Mesh_GRP', em=True)
        pm.parent(self.meshGroup, self.rigRoot)
        self.UpdatePrefix()
        self.nameMng.NewRig(self.rigRoot)
        self.rig_ui.NewRig(self.rigRoot)
        # self.pfrs.rigSetup.NewRig('somePrefix', [0,1,2,3,4], True)
        # self.rig_ui.NewRig(self.pfrs.rigSetup.rigRoot)
        # self.pfrs.rigSceneMng.NewRig()
        # self.limbs_tw.NewRig(self.pfrs.rigSceneMng.rootGroup)
        # self.pfrs.saveLoadRig.Save()

    def UpdatePrefix(self):
        self.rigRoot.rename('%s_ROOT' % self.rigRoot.prefix.get())

    def SetRig(self, rigRoot):
        self.rigRoot = rigRoot

    def Debug(self):
        self.NewRig('PFX', 
                    range(5), 
                    True)
        # Testing Joints
        # path = r'D:/Assets/Programming/Python/Maya/ModularAutoRigger/TEST_OUTPUT/temp_joints2.ma'
        path = r'D:/Assets/Programming/Python/Maya/ModularAutoRigger'
        path += r'/TEST_OUTPUT/temp_joints2.ma'
        pm.importFile(path)
        self.UpdateEnableUI()
        pm.tabLayout(self.rig_ui.tab, e=1, sti=2) # Select Limb setup tab

#=========== SETUP ====================================

    def _Setup(self):
        name = '%s - Payne Free %s Suite - v%s' % (LICENSE, SUITE, __version__)
        name += ' - by Trevor Payne'
        with pm.window(mb=True,mbv=True, t=name, w=500, h=500) as self.win:
            with pm.tabLayout(enable=0) as self.rigTabs:
                with pm.horizontalLayout() as self.rigging_l:
                    self.rig_ui = rig_ui.Rigging_UI(  self.nameMng,
                                                            self.fileMng,
                                                            self.jsonMng,
                                                            self)
                with pm.horizontalLayout() as self.skinning_l:
                    with pm.tabLayout() as self.mdTab:
                        with pm.horizontalLayout():
                            pm.button('test', label='Three')
                with pm.horizontalLayout() as self.animation_l:
                    with pm.tabLayout() as self.mdTab:
                        with pm.horizontalLayout():
                            pm.button('test', label='Three')
        pm.tabLayout(self.rigTabs, edit=1, 
                    tabLabel=(  (self.rigging_l,'Rigging'), 
                                (self.skinning_l,'Skinning'), 
                                (self.animation_l,'Animation')))
        pm.window(self.win, e=1, cc=self.closeEvent)
        self._Setup_MenuBar()
        pm.showWindow()
    
#=========== SETUP MENUBAR ====================================

    def _Setup_MenuBar(self):
        with self.win:
            with pm.menu('File'):
                pm.menuItem(l='New Rig...', c=self.NewRig_Dialog)
                pm.menuItem(l='Edit Rig...', c=self.EditRig_Dialog)
                pm.menuItem(divider=1)
                pm.menuItem(l='Quit', command=(''))
                
            with pm.menu('Rigging'):
                with pm.subMenuItem(l='Mirror'):
                    pm.menuItem(l='X')#c=lambda x: self.limbs_ui.Mirror_Dialog('X'))
                    pm.menuItem(l='Y')
                    pm.menuItem(l='Z')
                pm.menuItem(l='Duplicate') # , c=self.limbs_ui.Duplicate_Dialog)
                pm.menuItem(divider=1)
                pm.menuItem(l='Load Template...')
                pm.menuItem(l='Save Template...')
                pm.menuItem(divider=1)
                pm.menuItem(l='Clean Up Unused Controls') # Deletes Unused Ctrs + Groups

            with pm.menu('Skinning'):
                pm.menuItem(l='disabled')

            with pm.menu('Help'):
                pm.menuItem(l='Tutorials...', en=0)
                pm.menuItem(divider=1)
                pm.menuItem(l='Submit Feedback...', en=0)
                pm.menuItem(l='Share...', en=0)

    
#=========== LIMBS ====================================

    def AddLimb(self, limb):
        pass

    def RemoveLimb(self, limb):
        pass

    # def UpdateLimb(self, limb):
    #     pass

    
#=========== FUNCTIONALITY ====================================

    # def UpdateNaming(self):
    #     self.pfrs.UpdatePrefix()
    #     self.limbs_ui.UpdateNaming()

    def closeEvent(self):
        self.rig_ui.jntSetup_ui.KillScripts()
        self.rig_ui.limbSetup_ui.KillScripts()

    def UpdateEnableUI(self):
        pm.tabLayout(self.rigTabs, e=1, en=bool(self.rigRoot))

    def NewRig_Dialog(self, ignore):
        self.rigSetupUI.NewRig_Dialog()
        self.UpdateEnableUI()

    def EditRig_Dialog(self, ignore):
        pass
        # self.rigSetupUI.EditRig_Dialog()
        # tempPrefix = self.pfrs.nameMng.GetPrefix()
        # tempMeshPath = self.pfrs.fileMng.GetMeshPath()
        # tempOutputPath = self.pfrs.fileMng.GetOutputFile()
        # tempShowPrefix = self.pfrs.nameMng.GetShowPrefix()
        # tempOrder = self.pfrs.nameMng.GetNamingOrder()

        # rigUI = rs_ui.RigSetup_UI(  self.pfrs.nameMng,
        #                             self.pfrs.fileMng,
        #                             self)
        # rigUI.SetData(  self.pfrs.nameMng.GetPrefix(),
        #                 self.pfrs.fileMng.GetMeshPath(),
        #                 self.pfrs.fileMng.GetOutputFile(),
        #                 self.pfrs.nameMng.GetShowPrefix(),
        #                 self.pfrs.nameMng.GetNamingOrder())

        # if (rigUI.exec_()):
        #     prefix = (tempPrefix != self.pfrs.nameMng.GetPrefix())
        #     meshPath = (tempMeshPath != self.pfrs.fileMng.GetMeshPath())
        #     outputPath = (tempOutputPath != self.pfrs.fileMng.GetOutputFile())
        #     showPrefix = (tempShowPrefix != self.pfrs.nameMng.GetShowPrefix())
        #     order = (tempOrder != self.pfrs.nameMng.GetNamingOrder())
        #     if (prefix):
        #         self.pfrs.rigSceneMng.UpdatePrefix()
        #     if (prefix or showPrefix or order):
        #         self.limbs_tw.UpdateNaming()
        #     if meshPath:
        #         self.pfrs.rigSceneMng.UpdateMeshes()
        #     if outputPath:
        #         self.pfrs.saveLoadRig.Save()

    def LoadRig_Dialog(self):
        pass
        # filePath, ignore = QtWidgets.QFileDialog.getOpenFileName(
        #                                         self, 
        #                                         'Load Rig File',
        #                                         __file__,
        #                                         '*.json')
        # if (os.path.isfile(filePath)):
        #     self.pfrs.saveLoadRig.Load(filePath)
        #     self.limbs_tw.Populate()
    
    def SaveAs_Dialog(self):
        pass
        # filePath, ignore = QtWidgets.QFileDialog.getSaveFileName(self, 
        #                                                 'Save Rig File',
        #                                                 os.path.dirname(__file__),
        #                                                 '*.json')
        # if (filePath):
        #     self.pfrs.fileMng.SetOutputFile(filePath)
        #     self.pfrs.saveLoadRig.Save()

