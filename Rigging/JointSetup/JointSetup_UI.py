
import pymel.core as pm

class JointSetup_UI:
    def __init__(self, jntMng):
        self.jntMng = jntMng
        self.scriptJob = None
        self._Setup()

#=========== SETUP ====================================

    def _Setup(self):
        with pm.verticalLayout():
            with pm.frameLayout('Scene Joints', bv=1):
                panel = pm.outlinerPanel()
                outliner = pm.outlinerPanel(panel, q=1, outlinerEditor=True)
                pm.outlinerEditor(outliner, e=1, f='DefaultJointsFilter', eo=1)
        with pm.verticalLayout():
            with pm.frameLayout('Tools', bv=1):
                with pm.rowLayout(adj=1, rat=(1,'top', 5)):
                    with pm.columnLayout(adj=1, cat=('both', 5), rs=5):
                        pm.button(l='Joint Tool', c=pm.Callback(pm.mel.eval, 'JointTool()'))
                        self.insert_b = pm.button(  l='Insert Limb End Joint', 
                                                    c=self.InsertLimbEndJoint)
                        msg = 'PLEASE USE! Removes joint and all bound data properly'
                        self.remove_b = pm.button(  l='Remove Joint', 
                                                    c=self.RemoveJoint, 
                                                    ann=msg)

#=========== FUNCTIONS ====================================

    def InsertLimbEndJoint(self, ignore):
        joints = pm.ls(sl=1, type='joint')
        if not joints:
            return
        oldJoint = joints[0]
        newJoint = pm.duplicate(oldJoint, po=1, rc=1)[0]
        newJoint.radius.set(0.2)
        pm.parent(oldJoint, newJoint)

    def RemoveJoint(self, ignore):
        for joint in pm.ls(sl=1, type='joint'):
            self.jntMng.RemovePerm(joint)
    
    def UpdateButtons(self):
        isEnabled = bool(pm.ls(sl=1, type='joint'))
        pm.button(self.insert_b, e=1, en=isEnabled)
        pm.button(self.remove_b, e=1, en=isEnabled)

#=========== TAB FUNCTIONALITY ====================================
    
    def Setup_Editable(self):
        self.UpdateButtons()
        if not self.scriptJob:
            self.scriptJob = pm.scriptJob(  e=("SelectionChanged",
                                                self.UpdateButtons), 
                                            pro=True)
            print ('STARTING JointSetup selection detection script...')

    def Teardown_Editable(self):
        self.KillScripts()
    
    def KillScripts(self):
        if self.scriptJob:
            pm.scriptJob( kill=self.scriptJob, f=True)
            self.scriptJob = None
            print ('KILLING JointSetup selection detection script...\n')
