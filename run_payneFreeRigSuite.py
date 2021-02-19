import ptvsd
ptvsd.enable_attach(address=('0.0.0.0', 3000), redirect_output=True)

from maya import cmds

pluginName = 'payneFreeRigSuite_Plugin'
if pluginName in cmds.pluginInfo( q=1, ls=1 ):
    cmds.unloadPlugin(pluginName)
cmds.loadPlugin(pluginName)
reload(cmds)
cmds.payneFreeRigSuite_Plugin()

