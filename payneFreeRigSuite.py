
import os
import logging
import platform
import subprocess
import time

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
import Rigging.Behavior.RIG_Behaviors as bhv
reload(bhv)
import Managers.BHV_Group_Manager as grp
reload(grp)
import Managers.APP_Control_Manager as ctr
reload(ctr)
import Managers.Rig_Manager as rigMng
reload(rigMng)
import Managers.Mesh_Manager as meshMng
reload(meshMng)
import Managers.Skin_Manager as skinMng
reload(skinMng)

class PayneFreeRigSuite:
    def __init__(self):
        # self.loggingMode = logging.INFO
        self.loggingMode = logging.DEBUG
        self.StartLogger()

        self.fileMng = fm.File_Manager()
        self.jsonMng = js.Json_Manager()

        # RIGGING
        self.nameMng = nm.Name_Manager(self)
        self.limbMng = lm.Limb_Manager(self)
        self.ctrMng = ctr.APP_Control_Manager(self)
        self.jntMng = jm.Joint_Manager(self)
        self.grpMng = grp.BHV_Group_Manager(self)
        self.bhvMng = bhv.RIG_Behaviors(self)
        self.rigMng = rigMng.Rig_Manager(self)

        # SKINNING
        self.meshMng = meshMng.Mesh_Manager()
        self.skinMng = skinMng.Skin_Mananger(self)

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
