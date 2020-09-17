
import pymel.core as pm


class LS_Scene_Hierarchy_UI:
    def __init__(self, jntMng):
        self.jntMng = jntMng

        self._Setup()

    def Populate(self):
        pm.treeView(self.widget, e=1, removeAll=1)
        self.allJoints = {} # longName : joint
        limbJoints = list(self.jntMng._joints.values())
        for joint in pm.ls(type='joint'):
            self.allJoints[joint.longName()] = joint
        for longName in sorted(list(self.allJoints.keys())):
            parent = pm.listRelatives(joint, parent=1)
            if parent and (parent[0].longName() in self.allJoints):
                pm.treeView(self.widget, e=1, ai=(longName, parent[0].longName()))
            else:
                pm.treeView(self.widget, e=1, ai=(longName, ''))
            pm.treeView(self.widget, e=1, enl=(longName, joint in limbJoints))
            pm.treeView(self.widget, e=1, dl=(longName, joint.shortName()))

    def _Setup(self):
        self.widget = pm.treeView(ams=0, adr=0, arp=0)
        with pm.popupMenu():
            pm.menuItem(l='Auto Build Limbs', c=self.AutoBuildLimbs)

    def GetSelectedJoints(self):
        names = pm.treeView(self.widget, q=1, selectItem=1)
        return [self.allJoints[name] for name in names]
    
    def AutoBuildLimbs(self):
        pass







