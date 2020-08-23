
## TO RUN:
# 
# import ptvsd
# ptvsd.enable_attach(address=('0.0.0.0', 3000), redirect_output=True)

# from maya import cmds
# try:
#     cmds.unloadPlugin('payneFreeRigSuite_Plugin')
# except:
#     pass
# cmds.loadPlugin('payneFreeRigSuite_Plugin')
# reload(cmds)
# cmds.payneFreeRigSuite_Plugin()

import sys

import maya.api.OpenMaya as om
from maya import OpenMayaUI as omui 
from shiboken2 import wrapInstance


import payneFreeRigSuite_UI as pfrs_ui
reload(pfrs_ui)


# QT_VER = Common.Qt.__binding__
PY_VER = sys.version[:3]

def maya_useNewAPI():
    pass

class PayneFreeRigSuite_Plugin(om.MPxCommand):
    kPluginCmdName = "payneFreeRigSuite_Plugin"

    def __init__(self):
        om.MPxCommand.__init__(self)

    @staticmethod
    def cmdCreator():
        return PayneFreeRigSuite_Plugin()

    def doIt(self, args):
        print (PY_VER)
        # print (QT_VER)
        # mayaMainWindowPtr = omui.MQtUtil.mainWindow()
        # mayaMainWindow = wrapInstance(long(mayaMainWindowPtr), QtWidgets.QWidget) 
        pfrs_ui.PayneFreeRigSuite_UI()
        # ex.show()


def initializePlugin(plugin):
    pluginFn = om.MFnPlugin(plugin)
    try:
        pluginFn.registerCommand(
            PayneFreeRigSuite_Plugin.kPluginCmdName, PayneFreeRigSuite_Plugin.cmdCreator
        )
    except:
        sys.stderr.write(
            "Failed to register command: %s\n" % PayneFreeRigSuite_Plugin.kPluginCmdName
        )
        raise


def uninitializePlugin(plugin):
    pluginFn = om.MFnPlugin(plugin)
    try:
        pluginFn.deregisterCommand(PayneFreeRigSuite_Plugin.kPluginCmdName)
    except:
        sys.stderr.write(
            "Failed to unregister command: %s\n" % PayneFreeRigSuite_Plugin.kPluginCmdName
        )
        raise


# #=========== DEPRICATED ====================================


# ## TO RUN:
# # 
# # import ptvsd
# # ptvsd.enable_attach(address=('0.0.0.0', 3000), redirect_output=True)

# # from maya import cmds
# # try:
# #     cmds.unloadPlugin('payneFreeRigSuite_Plugin')
# # except:
# #     pass
# # cmds.loadPlugin('payneFreeRigSuite_Plugin')
# # reload(cmds)
# # cmds.payneFreeRigSuite_Plugin()

# import sys

# import maya.api.OpenMaya as om
# from maya import OpenMayaUI as omui 
# from shiboken2 import wrapInstance

# import Common.Qt
# from Common.Qt import QtWidgets, QtCore, QtGui
# import payneFreeRigSuite_UI as pfrs_ui
# reload(pfrs_ui)


# QT_VER = Common.Qt.__binding__
# PY_VER = sys.version[:3]

# def maya_useNewAPI():
#     pass

# class PayneFreeRigSuite_Plugin(om.MPxCommand):
#     kPluginCmdName = "payneFreeRigSuite_Plugin"

#     def __init__(self):
#         om.MPxCommand.__init__(self)

#     @staticmethod
#     def cmdCreator():
#         return PayneFreeRigSuite_Plugin()

#     def doIt(self, args):
#         print (PY_VER)
#         print (QT_VER)
#         mayaMainWindowPtr = omui.MQtUtil.mainWindow()
#         mayaMainWindow = wrapInstance(long(mayaMainWindowPtr), QtWidgets.QWidget) 
#         ex = pfrs_ui.PayneFreeRigSuite_UI(mayaMainWindow)
#         ex.show()


# def initializePlugin(plugin):
#     pluginFn = om.MFnPlugin(plugin)
#     try:
#         pluginFn.registerCommand(
#             PayneFreeRigSuite_Plugin.kPluginCmdName, PayneFreeRigSuite_Plugin.cmdCreator
#         )
#     except:
#         sys.stderr.write(
#             "Failed to register command: %s\n" % PayneFreeRigSuite_Plugin.kPluginCmdName
#         )
#         raise


# def uninitializePlugin(plugin):
#     pluginFn = om.MFnPlugin(plugin)
#     try:
#         pluginFn.deregisterCommand(PayneFreeRigSuite_Plugin.kPluginCmdName)
#     except:
#         sys.stderr.write(
#             "Failed to unregister command: %s\n" % PayneFreeRigSuite_Plugin.kPluginCmdName
#         )
#         raise