import ptvsd
ptvsd.enable_attach(address=('0.0.0.0', 3000), redirect_output=True)

from maya import cmds
try:
    cmds.unloadPlugin('payneFreeRigSuite_Plugin')
except:
    pass
cmds.loadPlugin('payneFreeRigSuite_Plugin')
reload(cmds)
cmds.payneFreeRigSuite_Plugin()

