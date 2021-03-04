
import pymel.core as pm

class RIG_JointSetup_UI:
    def __init__(self, parent):
        self.parent = parent
        self.jntMng = parent.jntMng
        self.rigBHV = parent.rigBHV
        self.logger = parent.logger

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
        self.logger.debug('\tRIG_JointSetup_UI > InsertParentMidJoint')
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
        self.logger.debug('\tRIG_JointSetup_UI > InsertParentEndJoint')
        joints = pm.ls(sl=1, type='joint')
        if not joints:
            return
        oldJoint = joints[0]
        newJoint = pm.duplicate(oldJoint, po=1, rc=1)[0]
        newJoint.radius.set(0.2)
        pm.parent(oldJoint, newJoint)

    def RemoveJoint(self, ignore):
        self.logger.debug('\tRIG_JointSetup_UI > RemoveJoint')
        for joint in pm.ls(sl=1, type='joint'):
            self.jntMng.DeleteJoint(joint)
    
    def UpdateButtons(self):
        self.logger.debug('\tRIG_JointSetup_UI > UpdateButtons')
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
        self.logger.info('Rigging > Joint Setup SETUP')
        self.UpdateButtons()
        if not self.scriptJob:
            self.scriptJob = pm.scriptJob(  e=("SelectionChanged",
                                                self.UpdateButtons), 
                                            pro=True)
            print ('STARTING JointSetup selection detection script...')

    def Teardown_Editable(self):
        self.logger.info('Rigging > Joint Setup TEARDOWN\n')
        self.KillScripts()
        self.PrintJointTree()
        self.rigBHV.RebuildLimbs()
        self.jntMng.InitSceneJoints()
    
    def KillScripts(self):
        if self.scriptJob:
            pm.scriptJob( kill=self.scriptJob, f=True)
            self.scriptJob = None
            print ('KILLING JointSetup selection detection script...\n')

    def PrintJointTree(self):
        self.logger.info('\tJS > PrintJointTree\n')
        self.logger.debug('=========== JOINT HIERARCHY ===========')
        self.logger.debug('')
        jointParents = {} # childName : ParentName
        invalidParents = [] # parentName
        for child in pm.ls(type='joint'):
            parent = pm.listRelatives(child, p=1)
            if not parent:
                continue
            parent = parent[0]
            if not pm.objectType(parent, isa='joint'):
                if parent.shortName() != 'JOINTS':
                    invalidParents.append(parent)
            jointParents[child] = parent
        children = set(jointParents.keys())
        parents = set(jointParents.values())
        rootParents = list(parents - children)
        for parent in rootParents:
            self._PrintJointChildren(parent, '', invalidParents)
        self.logger.debug('')
        self.logger.debug('=========== END ===========\n')
        if invalidParents:
            msg = 'Please parent joints only to EACHOTHER or the WORLD.'
            msg += '\nNon-Joints:'
            for parent in invalidParents:
                msg += '\n\t%s' % parent
            pm.confirmDialog(t='Joint Parenting Error', m=msg, icon='error', b='Ok')
            self.logger.warning(msg)
    
    def _PrintJointChildren(self, parent, indent, invalidParents):
        self.logger.debug('%s%s' % (indent, parent))
        for child in pm.listRelatives(parent, c=1):
            self._PrintJointChildren(child, indent + '\t', invalidParents)