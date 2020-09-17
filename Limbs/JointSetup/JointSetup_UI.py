
import pymel.core as pm

class JointSetup_UI:
    def __init__(self):
        with pm.verticalLayout():
            with pm.frameLayout('Scene Joints', bv=1):
                panel = pm.outlinerPanel()
                outliner = pm.outlinerPanel(panel, q=1, outlinerEditor=True)
                pm.outlinerEditor(outliner, e=1, f='DefaultJointsFilter', eo=1)
        with pm.verticalLayout():
            with pm.frameLayout('Tools', bv=1):
                with pm.rowLayout(adj=1, rat=(1,'top', 5)):
                    with pm.columnLayout(adj=1, cat=('both', 5), rs=5):
                        pm.button(l='Joints Tool', c=pm.Callback(pm.mel.eval, 'JointTool()'))
                        pm.text(l='Joint Count: 128')


