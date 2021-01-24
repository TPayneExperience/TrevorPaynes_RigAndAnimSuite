
import pymel.core as pm


class LS_Scene_Hierarchy_UI:
    def __init__(self, parent):
        self.parent = parent
        self.limbMng = parent.limbMng
        self.jntMng = parent.jntMng
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
        self.widget = pm.treeView(adr=0, arp=0, sc=self.Selection, scc=self.SelectionChanged)
        with pm.popupMenu():
            self.buildHier_mi = pm.menuItem(l='Auto Build by HIERARCHY', 
                                            c=self.AutoBuildByHierarchy)
            self.buildNames_mi = pm.menuItem(l='Auto Build by NAMES', 
                                            c=self.AutoBuildByName)

#=========== FUNCTIONALITY ====================================

    def GetSelectedJoints(self):
        self.logger.debug('\tLS_SceneHier > GetSelectedJoints')
        names = pm.treeView(self.widget, q=1, selectItem=1)
        if not names:
            return []
        return [self.allJoints[name] for name in names]
    
    def Selection(self, name, state):
        return name in self.selectableJoints
    
    def SelectionChanged(self):
        self.logger.info('\tSceneJointHier > SELECTED joints:')
        joints = self.GetSelectedJoints()
        for joint in joints:
            self.logger.info('\t\t' + str(joint))
        self.parent.SelectSceneJoints(joints)
        self.parent.SetJointsToAdd(joints)

    def SelectSceneHierJoints(self):
        self.logger.debug('\tLS_SceneHier > SelectSceneHierJoints')
        if self.acceptSelection:
            sel = pm.ls(sl=1, type='joint')
            pm.treeView(self.widget, e=1, cs=1)
            for joint in sel:
                if joint.longName() in self.selectableJoints:
                    pm.treeView(self.widget, e=1, si=(joint.longName(), 1))

#============= AUTO BUILDERS ============================

    def AutoBuildByHierarchy(self, ignore):
        self.logger.info('\tSceneJointHier > Auto Build by Hierarchy')
        # Build Joint Parent Dictionary
        jointParents = {}   # childJoint : parentJoint
        for joint in pm.ls(type='joint'):
            parent = pm.listRelatives(joint, parent=1)
            if parent:
                jointParents[joint] = parent[0]
            else:
                jointParents[joint] = None
        # # NEW ALGORITHM
        # # Branches, then chains, repeat
        # branches = {None: []} # parent : [[j1], [j2, j3], ...]
        # chains = {None: []} # parent : [[j1], [j2, j3], ...]
        # for i in range(99):
        #     # BRANCHES
        #     children = set(jointParents.keys())
        #     parents = set(jointParents.values())
        #     for child in list(children - parents):
        #         if child not in jointParents:
        #             continue
        #         joints = self.GetJointBranch(child)
        #         if len(joints) == 1:
        #             continue
        #         parent = pm.listRelatives(child, p=1)
        #         if parent:
        #             parent = parent[0]
        #             if parent not in branches:
        #                 branches[parent] = []
        #             branches[parent].append(joints)
        #             pm.parent(joints, w=1)
        #         else:
        #             branches[None].append(joints)
        #         for joint in joints:
        #             del(jointParents[joint])
        #     # CHAINS
        #     children = set(jointParents.keys())
        #     parents = set(jointParents.values())
        #     for child in list(children - parents):
        #         if child not in jointParents:
        #             continue
        #         joints = self.GetJointChain(child)
        #         parent = pm.listRelatives(joints[-1], p=1)
        #         if parent:
        #             parent = parent[0]
        #             if parent not in chains:
        #                 chains[parent] = []
        #             chains[parent].append(joints)
        #             pm.parent(joints, w=1)
        #         else:
        #             chains[None].append(joints)
        #         for joint in joints:
        #             del(jointParents[joint])
        # for parent, children in branches.items():
        #     if len(children) == 1:
        #         pm.parent(children[0], parent)
        #     else:
        #         pm.parent(children, parent)
        # for parent, children in chains.items():
        #     if len(children) == 1:
        #         pm.parent(children[0], parent)
        #     else:
        #         pm.parent(children, parent)
        
        # OLD ALGORITHM
        # Group joints by limb structure: one, chain or branch
        disconnectJoints = {} # parent : [[j1, j2], [j3], ...]
        newLimbJointSets = []  # [[jnt1, jnt2], [jnt3], ...]
        for i in range(99):
            children = set(jointParents.keys())
            parents = set(jointParents.values())
            # Iterate through all end children,
            # solving for branches and end chains
            for child in list(children - parents):
                if child not in jointParents:
                    continue
                # Unparent CHAIN root joint + track
                joints = self.GetJointChain(child)
                if len(joints) == 1:
                    joints = self.GetJointBranch(child)
                    parent = pm.listRelatives(child, p=1)
                    if parent:
                        parent = parent[0]
                        if parent not in disconnectJoints:
                            disconnectJoints[parent] = []
                        disconnectJoints[parent] += joints
                        if len(joints) == 1:
                            pm.parent(joints[0], w=1)
                        else:
                            pm.parent(joints, w=1)
                newLimbJointSets.append(joints)
                for joint in joints:
                    del(jointParents[joint])
        for parent, children in disconnectJoints.items():
            pm.parent(children, parent)
        for newLimbJoints in newLimbJointSets:
            limb = self.parent.AddLimbByJoints(newLimbJoints)
            # if limb:
            self.parent.parent.AddLimb(limb)
            for joint in newLimbJoints:
                # self.jntMng.Setup_Editable(limb, joint)
                self.jntMng.UpdateJointName(joint)
            self.jntMng.ReindexJoints(limb)
        self.parent.parent.AutoBuildHier()
        self.parent.Populate()
        self.parent.UpdateSceneFrame()
        self.logger.info('\tComplete')

    def AutoBuildByName(self, ignore):
        '''Auto builds limb/joint hier by name LIMB_SIDE[M/R/L]_JOINT'''
        self.logger.info('\tSceneJointHier > Auto Build by Name')
        # VERY INFLEXIBLE! NEED TO BUILD UI FOR BETTER USER
        # CUSTOMIZATION LATER, like the rig setup ui
        allJoints = pm.ls(type='joint')
        limbJoints = self.jntMng.GetAllJoints()
        newLimbs = {} # limbName : jointList
        invalidJoints = []
        for joint in list(set(allJoints) - set(limbJoints)):
            splitName = joint.shortName().split('_')
            if len(splitName) != 3:
                invalidJoints.append(joint)
                continue
            limbSideName = '_'.join(splitName[:-1])
            if limbSideName not in newLimbs:
                newLimbs[limbSideName] = []
            newLimbs[limbSideName].append(joint)
        # ERROR IF INVALID JOINT NAMES
        if invalidJoints:
            msg = 'Joints must be named as "LimbName_Side_JointName"'
            msg += '\nThe following joints are misnamed'
            for joint in invalidJoints:
                msg += '\n\t- %s' % joint
            pm.confirmDialog(   t='Breaking IK Connections!', 
                                m=msg, 
                                icon='error', 
                                b='Ok')
            return
        invalidLimbs = []
        validLimbs = []
        for limbName, sourceJoints in newLimbs.items():
            isChain = self.jntMng.AreJointsChained(sourceJoints)
            isBranch = self.jntMng.AreJointsSiblings(sourceJoints)
            if isChain or isBranch:
                limb = self.parent.AddLimbByJoints(sourceJoints)
                tempJoint = sourceJoints[0]
                splitName = tempJoint.shortName().split('_')
                self.limbMng.Rename(limb, splitName[0])
                for joint in sourceJoints:
                    splitName = joint.shortName().split('_')
                    joint.pfrsName.set(splitName[-1])
                validLimbs.append(limb)
            else:
                invalidLimbs.append(limbName)
        for limb in validLimbs:
            # tempJoints = self.jntMng.GetLimbTempJoints(limb)
            tempJoints = self.jntMng.GetLimbJoints(limb)
            tempJoint = tempJoints[0]
            side = tempJoint.shortName().split('_')[1]
            if side.upper() == 'L':
                limb.side.set(1)
            elif side.upper() == 'R':
                limb.side.set(2)
            self.parent.parent.AddLimb(limb)
            for joint in tempJoints:
                # self.jntMng.Setup_Editable(limb, joint)
                self.jntMng.UpdateJointName(joint)
            self.jntMng.ReindexJoints(limb)

        # WARNING IF LIMB JOINTS WRONG
        if invalidLimbs:
            msg = 'Limbs may only have the following joint arrangements:\n'
            msg += '\n- 0 or 1 joint selected'
            msg += '\n- 2+ joints that are all the immediate children '
            msg += 'of the same parent [BRANCH]'
            msg += '\n- 2+ joints that are parented to one another [CHAIN]'
            msg += '\n--------------------------'
            msg += '\nThe following limbs were skipped:'
            for limbName in invalidLimbs:
                msg += '\n\t- %s' % limbName
            pm.confirmDialog(   t='Limbs Skipped', 
                                m=msg, 
                                icon='warning', 
                                b='Ok')
        self.parent.parent.AutoBuildHier()
        self.parent.Populate()
        self.parent.UpdateSceneFrame()
        self.logger.info('\tComplete')

    def GetJointChain(self, startJoint):
        self.logger.debug('\tLS_SceneHier > GetJointChain')
        joints = [startJoint]
        if self.HasSibling(startJoint):
            return joints
        lastPos = pm.xform(startJoint, q=1, t=1, ws=1)
        parent = pm.listRelatives(startJoint, parent=1)
        for i in range(99):
            if not parent:
                return joints
            parent = parent[0]
            curPos = pm.xform(parent, q=1, t=1, ws=1)
            if curPos == lastPos:
                return joints
            joints.append(parent)
            if self.HasSibling(parent):
                return joints
            parent = pm.listRelatives(parent, parent=1)
            lastPos = curPos[:]

    def GetJointBranch(self, startJoint):
        self.logger.debug('\tLS_SceneHier > GetJointBranch')
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
        self.logger.debug('\tLS_SceneHier > HasSibling')
        parent = pm.listRelatives(joint, parent=1, type='joint')
        if not parent:
            return False
        children = pm.listRelatives(parent, children=1, type='joint')
        return (len(children) > 1)
        






