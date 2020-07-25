
## TO RUN:
# import ptvsd
# ptvsd.enable_attach(address=('0.0.0.0', 3000), redirect_output=True)

# from maya import cmds
# cmds.flushUndo()
# cmds.file(newFile=1, force=1)
# try:
#     cmds.unloadPlugin('tpRigAndAnimSuite_Plugin')
# except:
#     pass
# cmds.loadPlugin('tpRigAndAnimSuite_Plugin')
# reload(cmds)
# cmds.tpRigAndAnimSuite_Plugin()

import sys

import maya.api.OpenMaya as om
from maya import OpenMayaUI as omui 
from shiboken2 import wrapInstance

import Qt
from Qt import QtWidgets, QtCore, QtGui
import tpRigAndAnimSuite_UI as tpras_ui
reload(tpras_ui)


QT_VER = Qt.__binding__
PY_VER = sys.version[:3]

def maya_useNewAPI():
    pass

class TrevorPayneRigAndAnimSuite_Plugin(om.MPxCommand):
    kPluginCmdName = "tpRigAndAnimSuite_Plugin"

    def __init__(self):
        om.MPxCommand.__init__(self)

    @staticmethod
    def cmdCreator():
        return TrevorPayneRigAndAnimSuite_Plugin()

    def doIt(self, args):
        print (PY_VER)
        print (QT_VER)
        mayaMainWindowPtr = omui.MQtUtil.mainWindow()
        mayaMainWindow = wrapInstance(long(mayaMainWindowPtr), QtWidgets.QWidget) 
        ex = tpras_ui.TPRigAndAnimSuite_UI_MainWindow(mayaMainWindow)
        ex.show()


def initializePlugin(plugin):
    pluginFn = om.MFnPlugin(plugin)
    try:
        pluginFn.registerCommand(
            TrevorPayneRigAndAnimSuite_Plugin.kPluginCmdName, TrevorPayneRigAndAnimSuite_Plugin.cmdCreator
        )
    except:
        sys.stderr.write(
            "Failed to register command: %s\n" % TrevorPayneRigAndAnimSuite_Plugin.kPluginCmdName
        )
        raise


def uninitializePlugin(plugin):
    pluginFn = om.MFnPlugin(plugin)
    try:
        pluginFn.deregisterCommand(TrevorPayneRigAndAnimSuite_Plugin.kPluginCmdName)
    except:
        sys.stderr.write(
            "Failed to unregister command: %s\n" % TrevorPayneRigAndAnimSuite_Plugin.kPluginCmdName
        )
        raise