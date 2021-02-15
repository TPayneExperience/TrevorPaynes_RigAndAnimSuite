
import pymel.core as pm


class LS_Scene_Hierarchy_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
        self.bhvMng = parent.bhvMng
        self.logger = parent.logger

        self.selectableJoints = []
        self.acceptSelection = True

        self._Setup()

    def Populate(self):
        self.logger.debug('\tLS_SceneHier > Populate')
        self.selectableJoints = []
        pm.treeView(self.widget, e=1, removeAll=1)
        self.allJoints = {} # longName : joint
        limbJoints = list(self.jntMng.GetAllJoints())
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
        hasJoints = bool(self.allJoints)
        pm.menuItem(self.buildHier_mi, e=1, en=hasJoints)
        pm.menuItem(self.buildNames_mi, e=1, en=hasJoints)

#=========== SETUP ====================================

    def _Setup(self):
        self.widget = pm.treeView(adr=0, arp=0, sc=self.Selection, 
                                        scc=self.SelectionChanged,
                                        elc=self.IgnoreRename)
        with pm.popupMenu():
            self.buildHier_mi = pm.menuItem(l='Autobuild by JOINT HIERARCHY', 
                                            c=self.AutoBuildByHierarchy)
            self.buildNames_mi = pm.menuItem(l='Autobuild by JOINT NAMES: [limb]_[L/M/R]_[joint]', 
                                            c=self.AutoBuildByName)

#=========== FUNCTIONALITY ====================================

    def IgnoreRename(self, idStr, newName):
        self.logger.debug('\tApp_LimbHier > IgnoreRename')
        return ''

    def GetSelectedJoints(self):
        self.logger.debug('\tLS_SceneHier > GetSelectedJoints')
        names = pm.treeView(self.widget, q=1, selectItem=1)
        if not names:
            return []
        return [self.allJoints[name] for name in names]
    
    def Selection(self, name, state):
        return name in self.selectableJoints
    
    def SelectionChanged(self):
        self.logger.info('\tLS_SceneHier > SELECTED joints:')
        joints = self.GetSelectedJoints()
        for joint in joints:
            self.logger.info('\t\t' + str(joint))
        self.parent.SelectSceneJoints(joints)
        self.parent.SetJointsToAdd(joints)

    def SelectSceneHierJoints(self):
        self.logger.debug('\tLS_SceneHier > SelectSceneHierJoints')
        if not self.acceptSelection:
            return
        sel = pm.ls(sl=1, type='joint')
        pm.treeView(self.widget, e=1, cs=1)
        for joint in sel:
            if joint.longName() in self.selectableJoints:
                pm.treeView(self.widget, e=1, si=(joint.longName(), 1))

#============= AUTO BUILDERS ============================

    def AutoBuildByHierarchy(self, ignore):
        self.logger.info('\tLS_SceneHier > Auto Build by Hierarchy')
        self.bhvMng.AutoBuildByHierarchy()
        self.parent.Populate()
        self.parent.UpdateSceneFrame()
        self.logger.info('\tComplete')

    def AutoBuildByName(self, ignore):
        '''Auto builds limb/joint hier by name LIMB_SIDE[M/R/L]_JOINT'''
        self.logger.info('\tLS_SceneHier > Auto Build by Name')
        self.bhvMng.AutoBuildByName()
        self.parent.Populate()
        self.parent.UpdateSceneFrame()
        self.logger.info('\tComplete')





