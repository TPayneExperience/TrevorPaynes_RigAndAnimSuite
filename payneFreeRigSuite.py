
import os
import logging
import platform
import subprocess
import time

import pymel.core as pm

import Managers.File_Manager as fm
reload(fm)
import Managers.Json_Manager as js
reload(js)
import Managers.Name_Manager as nm
reload(nm)
import Managers.Joint_Manager as jm
reload(jm)
import Managers.Limb_Manager as lm
reload(lm)
import Managers.Group_Manager as grp
reload(grp)
import Managers.Control_Manager as ctr
reload(ctr)
import Managers.Build_Manager as bldMng
reload(bldMng)
import Managers.Mesh_Manager as meshMng
reload(meshMng)
import Managers.Skin_Manager as skinMng
reload(skinMng)
import Managers.Root_Manager as rootMng
reload(rootMng)
import Managers.Preset_Manager as pstMng
reload(pstMng)
import Managers.Pose_Manager as posMng
reload(posMng)

import Rigging.Behavior.RIG_Behaviors as rigBHV
reload(rigBHV)
import Rigging.LimbSetup.RIG_LimbSetup as rigLS
reload(rigLS)
import Rigging.JointSetup.RIG_JointSetup as rigJS
reload(rigJS)
import Animation.Poses.ANM_Poses as anmPOS
reload(anmPOS)

import PFRS_Debug as debug
reload(debug)

class PayneFreeRigSuite:
    def __init__(self):
        self.root = None

        # self.loggingMode = logging.INFO
        self.loggingMode = logging.DEBUG
        self.StartLogger()

        # MANAGERS
        self.fileMng = fm.File_Manager()
        self.jsonMng = js.Json_Manager()
        self.nameMng = nm.Name_Manager(self)
        self.ctrMng = ctr.Control_Manager(self)
        self.grpMng = grp.Group_Manager(self)
        self.jntMng = jm.Joint_Manager(self)
        self.limbMng = lm.Limb_Manager(self)
        self.bldMng = bldMng.Build_Manager(self)
        self.meshMng = meshMng.Mesh_Manager(self)
        self.skinMng = skinMng.Skin_Mananger(self) # REMOVE LATER
        self.rootMng = rootMng.Root_Manager(self)
        self.pstMng = pstMng.Preset_Manager(self)
        self.posMng = posMng.Pose_Manager(self)

        # RIGGING
        self.rigJS = rigJS.RIG_JointSetup(self)
        self.rigLS = rigLS.RIG_LimbSetup(self)
        self.rigBHV = rigBHV.RIG_Behaviors(self)
        
        # ANIMATION
        self.anmPOS = anmPOS.ANM_Poses(self)

        self.debug = debug.PFRS_Debug(self)

        # START UP
        self.InitScene()

#============= SCENE ============================

    def InitScene(self):
        self.logger.debug('\tPFRS > InitScene')
        roots = self.rootMng.GetSceneRoots()
        if roots:
            self.root = roots[0]
            self.LoadScene()
            self.LoadRoot()
        else:
            self.NewScene()
            self.NewRoot('PFX', range(5), True)
        self.meshMng.InitSceneMeshes()
        self.jntMng.InitSceneJoints()

    def NewScene(self):
        self.logger.debug('\tPFRS > NewScene')
        self.ctrMng.NewScene()
        self.jntMng.NewScene()
        self.meshMng.NewScene()

    def LoadScene(self):
        self.logger.debug('\tPFRS > LoadScene')
        self.ctrMng.LoadScene()
        self.jntMng.LoadScene()
        self.meshMng.LoadScene()

    def ExportAnimationRig(self):
        self.logger.debug('\tPFRS > ExportAnimationRig')
        name = '%s_AnimRig' % self.root.prefix.get()
        setupFile = pm.sceneName()
        filePath = os.path.join(os.path.dirname(setupFile), name)
        result = pm.fileDialog2(ff='Maya ASCII (*.ma);;Maya Binary (*.mb)', 
                                dir=filePath, 
                                cap='Save Exported Animation Rig')
        if not result:
            return
        animFile = result[0]
        # Make pose folder
        folder = os.path.dirname(animFile)
        poseFolder = os.path.join(folder, 'Poses')
        if not os.path.exists(poseFolder):
            os.makedirs(poseFolder)
        self.root.posesFolderPath.set(poseFolder)

        # BUILD RIG
        limbs = pm.listConnections(self.root.jointLimbs)
        limbs += pm.listConnections(self.root.emptyLimbs)
        for limb in limbs:
            self.grpMng.Setup_LimbGroupVisibility(limb)
        self.bldMng.Setup_Rig()
        self.ctrMng.SetLayerState(True, False)

        # SET STARTING TAB
        oldTab = self.root.mainTab.get()
        self.root.mainTab.set(2)
        # SAVE
        pm.saveAs(animFile)

        # REVERT
        self.root.mainTab.set(oldTab)
        self.bldMng.Teardown_Rig()
        for limb in limbs:
            self.grpMng.Teardown_LimbGroupVisibility(limb)

        if setupFile:
            pm.saveAs(setupFile)

#============= ROOT ============================

    def NewRoot(self, prefix, nameOrder, showPrefix):
        self.logger.debug('\tPFRS > NewRoot')
        self.root = self.rootMng.AddRoot(prefix, nameOrder, showPrefix)
        self.limbMng.NewRoot()
        self.jntMng.NewRoot()
        self.meshMng.NewRoot()

    def LoadRoot(self):
        self.logger.debug('\tPFRS > LoadRoot')
        self.limbMng.LoadRoot()
        self.jntMng.LoadRoot()
        self.meshMng.LoadRoot()
        self.posMng.InitPoses()

    def UpdateNames(self):
        self.logger.debug('\tPFRS > UpdateNames')
        self.rootMng.UpdateRootName(self.root)

#=========== LOGGER ====================================
   
    def OpenLog(self, ignore):
        if platform.system() == 'Darwin':       # macOS
            subprocess.call(('open', self.logFile))
        elif platform.system() == 'Windows':    # Windows
            os.startfile(self.logFile)
        else:                                   # linux variants
            subprocess.call(('xdg-open', self.logFile))

    def StartLogger(self):
        self.logger = logging.getLogger(__name__)
        if not self.logger.handlers:
            path = os.path.join(os.path.dirname(__file__), 'Logs')
            t = time.localtime()
            fileName = '%02d-%02d-%02d_PFRS.log' % (t[0] %100, t[1], t[2])
            self.logFile = os.path.join(path, fileName)
            hdlr = logging.FileHandler(self.logFile)
            formatter = logging.Formatter('%(asctime)s %(levelname)s | %(message)s', 
                                                        '%H:%M:%S')
            hdlr.setFormatter(formatter)
            self.logger.addHandler(hdlr) 
        else:
            handler = self.logger.handlers[0]
            self.logFile = handler.baseFilename
        self.logger.setLevel(self.loggingMode)
        startTxt = '\n'
        startTxt += '='*40
        startTxt += '\n'
        startTxt += '-'*15
        startTxt += ' START '
        startTxt += '-'*15
        startTxt += '\n'
        self.logger.info(startTxt)
        # self.logger.debug('DEBUG') # logger's level is logging.INFO = Ignored
        # self.logger.info('INFO')
        # self.logger.warning('WARNING')
        # self.logger.error('ERROR')
        # self.logger.critical('CRITICAL')
    
    def EndLogger(self):
        endTxt = '\n\n'
        endTxt += '-'*15
        endTxt += ' END '
        endTxt += '-'*15
        endTxt += '\n'
        endTxt += '='*40
        endTxt += '\n\n'
        self.logger.info(endTxt)
