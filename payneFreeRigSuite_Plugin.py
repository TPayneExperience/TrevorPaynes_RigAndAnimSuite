
## TO RUN:
# 
# import ptvsd
# ptvsd.enable_attach(address=('0.0.0.0', 3000), redirect_output=True)

# from maya import cmds
# pluginName = 'payneFreeRigSuite_Plugin'
# if pluginName in cmds.pluginInfo( q=1, ls=1 ):
#     cmds.unloadPlugin(pluginName)
# cmds.loadPlugin(pluginName)
# reload(cmds)
# cmds.payneFreeRigSuite_Plugin()

import sys

import maya.api.OpenMaya as om
from maya import OpenMayaUI as omui 
from shiboken2 import wrapInstance


import payneFreeRigSuite_UI as pfrs_ui
reload(pfrs_ui)


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
        if not args:
            pfrs_ui.PayneFreeRigSuite_UI()
        else:
            import payneFreeRigSuite
            # pfrs.PayneFreeRigSuite()
    

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



# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
