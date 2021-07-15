import datetime as dt
reload(dt)
import functools
import inspect
import logging
import os
import platform
import subprocess
import sys
import time

import Utilities.General_Utilities as genUtil
reload(genUtil)

# ---- USES ------
# log.funcFileInfo()
# log.funcFileDebug()
# log.debug(msg)
# log.info(msg)

LOGGING_LEVEL = None
# LOGGING_LEVEL = logging.DEBUG
# LOGGING_LEVEL = logging.INFO

def info(msg):
    logger_obj = _General_Logger.Get()
    logger_obj.info(msg)

def debug(msg):
    logger_obj = _General_Logger.Get()
    logger_obj.debug(msg)

def error(msg):
    logger_obj = _General_Logger.Get()
    logger_obj.error(msg)

def warning(msg):
    logger_obj = _General_Logger.Get()
    logger_obj.warning(msg)

def funcFileInfo():
    logger_obj = _FuncFile_Logger.Get()
    funcName = inspect.stack()[1][3]
    filePath = inspect.stack()[1][1]
    fileName = os.path.basename(filePath)
    fileName = os.path.splitext(fileName)[0]
    extra_args = { 'func_name_override': funcName,
                'file_name_override': fileName }
    logger_obj.info('', extra=extra_args)

def funcFileDebug():
    config = _GetConfig()
    if config['debug']:
        LOGGING_LEVEL = logging.DEBUG
    else:
        LOGGING_LEVEL = logging.INFO
    if LOGGING_LEVEL != logging.DEBUG:
        return
    logger_obj = _FuncFile_Logger.Get()
    funcName = inspect.stack()[1][3]
    filePath = inspect.stack()[1][1]
    fileName = os.path.basename(filePath)
    fileName = os.path.splitext(fileName)[0]
    extra_args = { 'func_name_override': funcName,
                'file_name_override': fileName }
    logger_obj.debug('', extra=extra_args)

def OpenLog():
    logFile = _GetLogPath()
    if platform.system() == 'Darwin':       # macOS
        subprocess.call(('open', logFile))
    elif platform.system() == 'Windows':    # Windows
        os.startfile(logFile)
    else:                                   # linux variants
        subprocess.call(('xdg-open', logFile))

def _GetConfig():
    folder = os.path.dirname(__file__)
    folder = os.path.dirname(folder)
    folder = os.path.join(folder, 'Data')
    filePath = os.path.join(folder, 'Config.json')
    return genUtil.Json.Load(filePath)

#=========== LOGGER ====================================
   
def _GetLogPath():
    folder = os.path.dirname(__file__)
    folder = os.path.dirname(folder)
    folder = os.path.join(folder, 'Logs')
    t = time.localtime()
    fileName = '%02d-%02d-%02d_PFRS.log' % (t[0] %100, t[1], t[2])
    return os.path.join(folder, fileName)

class _General_Logger:
    logger = None
    # loggingLevel = LOGGING_LEVEL # INFO

    @staticmethod
    def Get():
        if _General_Logger.logger:
            return _General_Logger.logger
        logger = logging.getLogger('_General_Logger')
        logger.handlers = []
        hdlr = logging.FileHandler(_GetLogPath())
        f = '%(asctime)s %(levelname)s | '
        f += '%(message)s'
        formatter = _CustomFormatter(f)
        hdlr.setFormatter(formatter)
        logger.addHandler(hdlr) 
        # logger.setLevel(_General_Logger.loggingLevel)
        config = _GetConfig()
        if config['debug']:
            LOGGING_LEVEL = logging.DEBUG
        else:
            LOGGING_LEVEL = logging.INFO
        logger.setLevel(LOGGING_LEVEL)
        _General_Logger.logger = logger
        return logger

class _FuncFile_Logger:
    logger = None
    # loggingLevel = LOGGING_LEVEL # INFO

    @staticmethod
    def Get():
        if _FuncFile_Logger.logger:
            return _FuncFile_Logger.logger
        logger = logging.getLogger('_FuncFile_Logger')
        logger.handlers = []
        hdlr = logging.FileHandler(_GetLogPath())
        f = '%(asctime)s %(levelname)s | '
        f += '%(filename)s > %(funcName)s'
        formatter = _CustomFormatter(f)
        hdlr.setFormatter(formatter)
        logger.addHandler(hdlr) 
        # logger.setLevel(_FuncFile_Logger.loggingLevel)
        config = _GetConfig()
        if config['debug']:
            LOGGING_LEVEL = logging.DEBUG
        else:
            LOGGING_LEVEL = logging.INFO
        logger.setLevel(LOGGING_LEVEL)
        _FuncFile_Logger.logger = logger
        return logger

class _CustomFormatter(logging.Formatter):
    def format(self, record):
        if hasattr(record, 'func_name_override'):
            record.funcName = record.func_name_override
        if hasattr(record, 'file_name_override'):
            fileName = record.file_name_override
            ender = '-'*(25-len(fileName))
            record.filename = '%s %s' % (ender, fileName)
        return super(_CustomFormatter, self).format(record)

    converter=dt.datetime.fromtimestamp
    def formatTime(self, record, datefmt=None):
        ct = _CustomFormatter.converter(record.created)
        t = ct.strftime('%H:%M:%S')
        s = '%s.%02d' % (t, (record.msecs / 10))
        return s

# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"








