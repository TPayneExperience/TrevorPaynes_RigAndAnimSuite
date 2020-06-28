
## TO RUN:
# from maya import cmds
# cmds.flushUndo()
# try:
#     cmds.unloadPlugin('tpRigAndAnimSuite')
# except:
#     pass
# cmds.loadPlugin('tpRigAndAnimSuite')
# reload(cmds)
# cmds.tpRigAndAnimSuite()

import sys

import maya.api.OpenMaya as om

# import Skeleton.test as ttt
# reload(ttt)
import tpRigAndAnimSuite_UI as UI


def maya_useNewAPI():
    pass

class TrevorPayneRigAndAnimSuite_Plugin(om.MPxCommand):
    kPluginCmdName = "tpRigAndAnimSuite"

    def __init__(self):
        om.MPxCommand.__init__(self)

    @staticmethod
    def cmdCreator():
        return TrevorPayneRigAndAnimSuite_Plugin()

    def doIt(self, args):
        pass


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