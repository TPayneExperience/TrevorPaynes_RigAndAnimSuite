
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
import Managers.Rig_Manager as rigMng
reload(rigMng)
import Managers.Mesh_Manager as meshMng
reload(meshMng)
import Managers.Skin_Manager as skinMng
reload(skinMng)
import Managers.Root_Manager as rootMng
reload(rootMng)

import Rigging.Behavior.RIG_Behaviors as rigBHV
reload(rigBHV)
import Rigging.LimbSetup.RIG_LimbSetup as rigLS
reload(rigLS)
import Rigging.JointSetup.RIG_JointSetup as rigJS
reload(rigJS)

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
        self.rigMng = rigMng.Rig_Manager(self)
        self.meshMng = meshMng.Mesh_Manager(self)
        self.skinMng = skinMng.Skin_Mananger(self) # REMOVE LATER
        self.rootMng = rootMng.Root_Manager(self)

        # RIGGING
        self.rigJS = rigJS.RIG_JointSetup(self)
        self.rigLS = rigLS.RIG_LimbSetup(self)
        self.rigBHV = rigBHV.RIG_Behaviors(self)

        # START UP
        self.InitScene()

#============= ROOT ============================

    def InitScene(self):
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

    def NewRoot(self, prefix, nameOrder, showPrefix):
        self.root = self.rootMng.AddRoot(prefix, nameOrder, showPrefix)
        self.limbMng.NewRoot()
        self.jntMng.NewRoot()
        self.meshMng.NewRoot()

    def LoadRoot(self):
        self.limbMng.LoadRoot()
        self.jntMng.LoadRoot()
        self.meshMng.LoadRoot()

    def NewScene(self):
        self.ctrMng.NewScene()
        self.jntMng.NewScene()
        self.meshMng.NewScene()

    def LoadScene(self):
        self.ctrMng.LoadScene()
        self.jntMng.LoadScene()
        self.meshMng.LoadScene()

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
