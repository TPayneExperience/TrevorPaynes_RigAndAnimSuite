
import functools
import inspect
import logging
import os
import platform
import subprocess
import sys
import time

# ---- USES ------
# @log.class_decorator      = regular class methods
# @log.static_decorator     = static '' '', place AFTER @staticmethod
# @log.Logger.Get().debug(msg) = regular logging

def GetLogPath():
    folder = os.path.dirname(__file__)
    folder = os.path.dirname(folder)
    folder = os.path.join(folder, 'Logs')
    t = time.localtime()
    fileName = '%02d-%02d-%02d_PFRS.log' % (t[0] %100, t[1], t[2])
    return os.path.join(folder, fileName)

def OpenLog():
    logFile = GetLogPath()
    if platform.system() == 'Darwin':       # macOS
        subprocess.call(('open', logFile))
    elif platform.system() == 'Windows':    # Windows
        os.startfile(logFile)
    else:                                   # linux variants
        subprocess.call(('xdg-open', logFile))

class Decorator_Logger:
    logger = None
    loggingLevel = logging.INFO # INFO

    @staticmethod
    def Get():
        if Decorator_Logger.logger:
            return Decorator_Logger.logger
        logger = logging.getLogger('Decorator_Logger')
        logger.handlers = []
        hdlr = logging.FileHandler(GetLogPath())
        f = '%(asctime)s %(levelname)s | '
        f += '%(filename)s > %(funcName)s | '
        f += '%(message)s'
        formatter = CustomFormatter(f, '%H:%M:%S')
        hdlr.setFormatter(formatter)
        logger.addHandler(hdlr) 
        logger.setLevel(Decorator_Logger.loggingLevel)
        Decorator_Logger.logger = logger
        return logger

class Logger:
    logger = None
    loggingLevel = logging.DEBUG # INFO

    @staticmethod
    def Get():
        if Logger.logger:
            return Logger.logger
        logger = logging.getLogger('Logger')
        logger.handlers = []
        hdlr = logging.FileHandler(GetLogPath())
        f = '%(asctime)s %(levelname)s | '
        f += '%(message)s'
        formatter = logging.Formatter(f, '%H:%M:%S')
        hdlr.setFormatter(formatter)
        logger.addHandler(hdlr) 
        logger.setLevel(Logger.loggingLevel)
        Logger.logger = logger
        return logger

class Inner_Logger:
    logger = None
    loggingLevel = logging.DEBUG # INFO

    @staticmethod
    def Get():
        if Inner_Logger.logger:
            return Inner_Logger.logger
        logger = logging.getLogger('Inner_Logger')
        logger.handlers = []
        hdlr = logging.FileHandler(GetLogPath())
        f = '%(asctime)s %(levelname)s | '
        f += '%(filename)s > %(funcName)s'
        formatter = CustomFormatter(f, '%H:%M:%S')
        hdlr.setFormatter(formatter)
        logger.addHandler(hdlr) 
        logger.setLevel(Inner_Logger.loggingLevel)
        Inner_Logger.logger = logger
        return logger


def class_decorator(_func=None):
    def class_decorator_info(func):
        @functools.wraps(func)
        def class_decorator_wrapper(self, *args, **kwargs):
            logger_obj = Decorator_Logger.Get()
            fileName = os.path.basename(func.func_code.co_filename)
            fileName = os.path.splitext(fileName)[0]
            extra_args = { 'func_name_override': func.__name__,
                        'file_name_override': fileName }
            logger_obj.info('', extra=extra_args)
            return func(self, *args, **kwargs)
        return class_decorator_wrapper
    if _func is None:
        return class_decorator_info
    else:
        return class_decorator_info(_func)

def logFuncFile():
    logger_obj = Inner_Logger.Get()
    funcName = inspect.stack()[1][3]
    filePath = inspect.stack()[1][1]
    fileName = os.path.basename(filePath)
    fileName = os.path.splitext(fileName)[0]
    extra_args = { 'func_name_override': funcName,
                'file_name_override': fileName }
    logger_obj.info('', extra=extra_args)

class CustomFormatter(logging.Formatter):
    def format(self, record):
        if hasattr(record, 'func_name_override'):
            record.funcName = record.func_name_override
        if hasattr(record, 'file_name_override'):
            record.filename = record.file_name_override
        return super(CustomFormatter, self).format(record)

def static_decorator(_func=None):
    def static_decorator_info(func):
        def static_decorator_wrapper(*args, **kwargs):
            logger_obj = Decorator_Logger.Get()
            fileName = os.path.basename(func.func_code.co_filename)
            fileName = os.path.splitext(fileName)[0]
            extra_args = { 'func_name_override': func.__name__,
                        'file_name_override': fileName }
            logger_obj.info('', extra=extra_args)
            return func(*args, **kwargs)
        return static_decorator_wrapper
    if _func is None:
        return static_decorator_info
    else:
        return static_decorator_info(_func)


