
import functools
import inspect
import logging
import os
import platform
import subprocess
import sys
import time

# ---- USES ------
# log.funcFileInfo()
# log.funcFileDebug()
# log.debug(msg)
# log.info(msg)

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
    loggingLevel = logging.DEBUG # INFO

    @staticmethod
    def Get():
        if _General_Logger.logger:
            return _General_Logger.logger
        logger = logging.getLogger('_General_Logger')
        logger.handlers = []
        hdlr = logging.FileHandler(_GetLogPath())
        f = '%(asctime)s %(levelname)s | '
        f += '%(message)s'
        formatter = logging.Formatter(f, '%H:%M:%S')
        hdlr.setFormatter(formatter)
        logger.addHandler(hdlr) 
        logger.setLevel(_General_Logger.loggingLevel)
        _General_Logger.logger = logger
        return logger

class _FuncFile_Logger:
    logger = None
    loggingLevel = logging.DEBUG # INFO

    @staticmethod
    def Get():
        if _FuncFile_Logger.logger:
            return _FuncFile_Logger.logger
        logger = logging.getLogger('_FuncFile_Logger')
        logger.handlers = []
        hdlr = logging.FileHandler(_GetLogPath())
        f = '%(asctime)s %(levelname)s | '
        f += '%(filename)s > %(funcName)s'
        formatter = _CustomFormatter(f, '%H:%M:%S')
        hdlr.setFormatter(formatter)
        logger.addHandler(hdlr) 
        logger.setLevel(_FuncFile_Logger.loggingLevel)
        _FuncFile_Logger.logger = logger
        return logger

class _CustomFormatter(logging.Formatter):
    def format(self, record):
        if hasattr(record, 'func_name_override'):
            record.funcName = record.func_name_override
        if hasattr(record, 'file_name_override'):
            record.filename = record.file_name_override
        return super(_CustomFormatter, self).format(record)


