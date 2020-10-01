
import pymel.core as pm


class LS_Scene_Hierarchy_UI:
    def __init__(self, jntMng, parent):
        self.jntMng = jntMng
        self.parent = parent

        self.selectableJoints = []

        self._Setup()

    def Populate(self):
        self.selectableJoints = []
        pm.treeView(self.widget, e=1, removeAll=1)
        self.allJoints = {} # longName : joint
        limbJoints = list(self.jntMng._joints.values())
        for joint in pm.ls(type='joint'):
            self.allJoints[joint.longName()] = joint
        for longName in sorted(list(self.allJoints.keys())):
            joint = self.allJoints[longName]
            parent = pm.listRelatives(joint, parent=1)
            if parent and (parent[0].longName() in self.allJoints):
                pm.treeView(self.widget, e=1, ai=(longName, parent[0].longName()))
            else:
                pm.treeView(self.widget, e=1, ai=(longName, ''))
            pm.treeView(self.widget, e=1, enl=(longName, joint not in limbJoints))
            if joint not in limbJoints:
                self.selectableJoints.append(longName)
            pm.treeView(self.widget, e=1, dl=(longName, joint.shortName()))

    def _Setup(self):
        self.widget = pm.treeView(adr=0, arp=0, sc=self.Selection)
        with pm.popupMenu():
            pm.menuItem(l='Auto Build Limbs', c=self.AutoBuildLimbs)

    def GetSelectedJoints(self):
        names = pm.treeView(self.widget, q=1, selectItem=1)
        if not names:
            return []
        return [self.allJoints[name] for name in names]
    
    def Selection(self, name, state):
        return name in self.selectableJoints

#============= AUTO BUILDER ============================

    def AutoBuildLimbs(self, ignore):
        jointParents = {}   # childJoint : parentJoint
        newLimbJointSets = []  # [[jnt1, jnt2], [jnt3], ...]
        allJoints = pm.ls(type='joint')
        for joint in allJoints:
            parent = pm.listRelatives(joint, parent=1)
            if parent:
                jointParents[joint] = parent[0]
            else:
                jointParents[joint] = None
        for i in range(99):
            if len(jointParents) == 0:
                break
            children = set(jointParents.keys())
            parents = set(jointParents.values())
            # Iterate through all end children,
            # solving for branches and end chains
            for child in list(children - parents):
                if child not in jointParents:
                    continue
                print 'child is ' + str(child)
                joints = self.GetJointChain(child)
                if len(joints) == 1:
                    joints = self.GetJointBranch(child)
                newLimbJointSets.append(joints)
                print 'Limb Created for:'
                for joint in joints:
                    print '\t' + str(joint)
                    del(jointParents[joint])
        for newLimbJoints in newLimbJointSets:
            self.parent.AddLimbByJoints(newLimbJoints)
        self.parent.Populate()
        self.parent.UpdateSceneFrame()

    def GetJointChain(self, startJoint):
        joints = [startJoint]
        if self.HasSibling(startJoint):
            return joints
        parent = pm.listRelatives(startJoint, parent=1)
        for i in range(99):
            if not parent:
                return joints
            parent = parent[0]
            joints.append(parent)
            if self.HasSibling(parent):
                return joints
            parent = pm.listRelatives(parent, parent=1)

    def GetJointBranch(self, startJoint):
        joints = [startJoint]
        parent = pm.listRelatives(startJoint, parent=1)
        if not parent:
            return [startJoint]
        for child in pm.listRelatives(parent[0], c=1, type='joint'):
            if not pm.listRelatives(child, c=1, type='joint'):
                if child not in joints:
                    joints.append(child)
        return joints

    def HasSibling(self, joint):
        parent = pm.listRelatives(joint, parent=1, type='joint')
        if not parent:
            return False
        children = pm.listRelatives(parent, children=1, type='joint')
        return (len(children) > 1)
        






