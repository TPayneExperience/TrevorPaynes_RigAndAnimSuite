
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
                        self.insertMid_b = pm.button(  l='Insert MID Parent Joint', 
                                                    c=self.InsertParentMidJoint)
                        self.insertEnd_b = pm.button(  l='Insert END Parent Joint', 
                                                    c=self.InsertParentEndJoint)
                        msg = 'PLEASE USE! Removes joint and all bound data properly'
                        self.remove_b = pm.button(  l='Remove Joint', 
                                                    c=self.RemoveJoint, 
                                                    ann=msg)

#=========== FUNCTIONS ====================================

    def InsertParentMidJoint(self, ignore):
        joints = pm.ls(sl=1, type='joint')
        if not joints:
            return
        oldJoint = joints[0]
        newJoint = pm.duplicate(oldJoint, po=1, rc=1)[0]
        parent = pm.listRelatives(oldJoint, p=1)
        startPos = pm.xform(parent,q=1, t=1, ws=1)
        startRot = pm.xform(parent,q=1, ro=1, ws=1)
        endPos = pm.xform(oldJoint, q=1, t=1, ws=1)
        endRot = pm.xform(oldJoint, q=1, ro=1, ws=1)
        midPos = [(startPos[i] + endPos[i])/2 for i in range(3)]
        midRot = [(startRot[i] + endRot[i])/2 for i in range(3)]
        pm.xform(newJoint, t=midPos, ro=midRot, ws=1)
        newJoint.radius.set(0.2)
        pm.parent(oldJoint, newJoint)

    def InsertParentEndJoint(self, ignore):
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
        pm.button(self.insertMid_b, e=1, en=0)
        joints = pm.ls(sl=1, type='joint')
        jointSelected = bool(joints)
        if joints:
            if pm.listRelatives(joints[0], p=1):
                pm.button(self.insertMid_b, e=1, en=1)
        pm.button(self.insertEnd_b, e=1, en=jointSelected)
        pm.button(self.remove_b, e=1, en=jointSelected)

#=========== TAB FUNCTIONALITY ====================================
    
    def Setup_Editable(self):
        print ('joint Setup, setup')
        self.UpdateButtons()
        if not self.scriptJob:
            self.scriptJob = pm.scriptJob(  e=("SelectionChanged",
                                                self.UpdateButtons), 
                                            pro=True)
            print ('STARTING JointSetup selection detection script...')

    def Teardown_Editable(self):
        print ('joint Setup, teardown')
        self.KillScripts()
    
    def KillScripts(self):
        if self.scriptJob:
            pm.scriptJob( kill=self.scriptJob, f=True)
            self.scriptJob = None
            print ('KILLING JointSetup selection detection script...\n')
