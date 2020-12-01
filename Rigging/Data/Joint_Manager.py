
import pymel.core as pm

class Joint_Manager:
    def __init__(self, limbMng, grpMng, ctrMng, nameMng):

        self.limbMng = limbMng
        self.grpMng = grpMng
        self.ctrMng = ctrMng
        self.nameMng = nameMng
        self.mirrorXform = {'X': [-1,1,1],
                            'Y': [1,-1,1],
                            'Z': [1,1,-1]}

    def NewRig(self, rigRoot):
        self._joints = {} # jointID: jointNode
        self.rigRoot = rigRoot
        pm.addAttr(rigRoot, ln='nextJointID', at='short', dv=1)
        # pm.addAttr(rigRoot, ln='joints', dt='string')

        pm.select(d=1)
        self.jntGroup = pm.group(name='Skeleton', em=1)
        pm.parent(self.jntGroup, rigRoot)
        self.skelLayer = pm.createDisplayLayer(n='Skel Joints', e=True)
        self.skelLayer.displayType.set(2)

    # def SetRig(self, rigRoot):
    #     self.rigRoot = rigRoot
    #     self._joints = {} # jointID: jointNode
    #     for rootLimbID in self.limbMng.GetRootLimbIDs():
    #         for limbID in self.limbMng.GetLimbCreationOrder(rootLimbID):
    #             for joint in self.GetLimbJoints(limbID):
    #                 self._joints[joint.ID.get()] = joint
        # Missing: Get Skeleton group, get skeleton layer

#============= ACCESSORS + MUTATORS ============================

    def GetJoint(self, jointID):
        return self._joints[jointID]

    def GetAllJoints(self):
        return list(self._joints.values())

    def HasLimb(self, joint):
        if not joint.hasAttr('limb'):
            return False
        return bool(pm.listConnections(joint.limb))

    # def HasTempLimb(self, joint):
    #     if not joint.hasAttr('tempLimb'):
    #         return False
    #     return bool(pm.listConnections(joint.tempLimb))

    def GetLimb(self, joint):
        return pm.listConnections(joint.limb)[0]

    # def GetTempLimb(self, joint):
    #     return pm.listConnections(joint.tempLimb)[0]

    def GetLimbJoints(self, limb):
        '''Order joints by internal joint index'''
        orderedJoints = []
        temp = {}
        for joint in pm.listConnections(limb.joints):
            temp[joint.limbIndex.get()] = joint
        for index in sorted(list(temp.keys())):
            orderedJoints.append(temp[index])
        return orderedJoints

    # def GetLimbTempJoints(self, limb):
    #     orderedJoints = []
    #     temp = {}
    #     joints = pm.listConnections(limb.tempJoints)
    #     for joint in joints:
    #         temp[joint.limbIndex.get()] = joint
    #     for index in sorted(list(temp.keys())):
    #         orderedJoints.append(temp[index])
    #     return orderedJoints

    def GetJointCount(self): # for Skel tool label
        return len(self._joints)

#============= FUNCTIONALITY ============================

    def ReindexJoints(self, limb):
        temp = {} # longName : joint
        # for joint in pm.listConnections(limb.tempJoints):
        for joint in pm.listConnections(limb.joints):
            temp[joint.longName()] = joint
        i = 0
        for key in sorted(list(temp.keys())):
            temp[key].limbIndex.set(i)
            i += 1

    def Teardown_Editable(self, limb, joint): # for Limb Setup
        '''Connect limb.temp to joint.temp, disconnect joint group'''
        group = pm.listConnections(joint.group)[0]
        pm.disconnectAttr(group.limb)
        # pm.disconnectAttr(joint.tempLimb)
        # pm.connectAttr(limb.tempJoints, joint.tempLimb)
        # self.ReindexJoints(limb)
    
    def Setup_Editable(self, limb, joint):
        # pm.disconnectAttr(joint.limb)
        # pm.connectAttr(limb.joints, joint.limb)
        group = pm.listConnections(joint.group)[0]
        pm.disconnectAttr(group.limb)
        pm.connectAttr(limb.bhvJointGroups, group.limb)
        self.UpdateJointName(joint)
    
    def Add(self, limb, joint):
        if (not joint.hasAttr('pfrsName')):
            pm.addAttr(joint, ln='ID', at='short')
            pm.addAttr(joint, ln='limb', dt='string')
            # pm.addAttr(joint, ln='tempLimb', dt='string') # limb setup
            pm.addAttr(joint, ln='limbIndex', at='short')
            pm.addAttr(joint, ln='pfrsName', dt='string')
            pm.addAttr(joint, ln='group', dt='string')
            pm.addAttr(joint, ln='bhvDistanceGroup', dt='string')
            # pm.addAttr(joint, ln='bhvFKGroup', dt='string')
            # pm.addAttr(joint, ln='bhvIKGroup', dt='string')
            # pm.addAttr(joint, ln='bhvCstGroup', dt='string')
            
            jointID = self.rigRoot.nextJointID.get()
            self.rigRoot.nextJointID.set(jointID + 1)
            joint.ID.set(jointID)
            joint.pfrsName.set('Joint%03d' % (jointID))
            pm.editDisplayLayerMembers(self.skelLayer, joint, nr=1)

            group = self.grpMng.AddJointGroup(limb, joint)
            self.ctrMng.Add(group, self.ctrMng.ctrTypes[1])
            self.grpMng.UpdateGroupName(limb, group)

        # pm.connectAttr(limb.tempJoints, joint.tempLimb)
        pm.connectAttr(limb.joints, joint.limb)
        if joint.ID.get() not in self._joints:
            self._joints[joint.ID.get()] = joint

    def RemoveTemp(self, joint):
        # pm.disconnectAttr(joint.tempLimb)
        pm.disconnectAttr(joint.limb)
        del(self._joints[joint.ID.get()])

    def RemovePerm(self, joint):
        parents = pm.listRelatives(joint, p=1)
        children = pm.listRelatives(joint, c=1, type='joint')
        if parents:
            pm.parent(children, parents[0])
        else:
            pm.parent(children, w=1)

        if joint.hasAttr('group'):
            groups = pm.listConnections(joint.group)
            if groups:
                group = groups[0]
                control = pm.listConnections(group.control)[0]
                self.ctrMng.Remove(control)
                self.grpMng.Remove(group)
        pm.delete(joint)
        

    def UpdateAllJointNames(self): # if prefix changed
        for joint in self.GetAllJoints():
            self.UpdateJointName(joint)

    def UpdateLimbJointNames(self, limb):
        for joint in self.GetLimbJoints(limb):
            self.UpdateJointName(joint)

    def UpdateJointName(self, joint):
        limb = self.GetLimb(joint)
        name = self.nameMng.GetName(limb.pfrsName.get(),
                                    joint.pfrsName.get(),
                                    self.limbMng.GetLimbSide(limb), 
                                    'JNT')
        joint.rename(name)
    
#============= UTILS ============================

    def AreJointsSiblings(self, joints):
        isBranch = True
        parent1 = pm.listRelatives(joints[0], parent=1)
        for joint in joints[1:]:
            parent2 = pm.listRelatives(joint, parent=1)
            if (parent1 != parent2):
                isBranch = False
        return isBranch
    
    def AreJointsChained(self, joints):
        bestChain = self.GetJointChain(joints)
        return all([j in bestChain for j in joints])
    
    def GetJointChain(self, joints):
        if len(joints) == 1:
            return joints
        temp = {} # longName : node
        for joint in joints:
            temp[joint.longName()] = joint
        rootParent = temp[min(list(temp.keys()))]
        child = temp[max(list(temp.keys()))]
        jointChain = [child]
        parent = child
        for i in range(999):
            parent = pm.listRelatives(parent, p=1)
            if not parent:
                break
            parent = parent[0]
            jointChain.append(parent)
            if parent == rootParent:
                break
        return jointChain

    # def DuplicateLimb(self, sourceLimbID, targetLimbID):
    #     self._limbJoints[targetLimbID] = []
    #     sourceJoints = [self.GetJoint(ID) for ID in self.GetLimbJointIDs(sourceLimbID)]
    #     targetJoints = pm.duplicate(sourceJoints)
    #     for targetJoint in targetJoints:
    #         targetJoint.ID.set(self._nextJointID)
    #         targetJoint.limbID.set(targetLimbID)
    #         self._limbJoints[targetLimbID].append(self._nextJointID)
    #         self._joints[self._nextJointID] = targetJoint
    #         self._nextJointID += 1
    #     self.UpdateLimbJointNames(targetLimbID)

    # def SetMirrorLimb(self, sourceLimbID, targetLimbID, axis):
    #     # NEEDS TO BE CALLED AFTER SCENE SKEL TEARDOWN!!!
    #     self.DuplicateLimb(sourceLimbID, targetLimbID)
    #     jointIDs = self.GetLimbJointIDs(targetLimbID)
    #     joints = [self.GetJoint(ID) for ID in jointIDs]
    #     temp = pm.group(w=1, a=1, em=1)
    #     pm.parent(joints, temp)
    #     pm.xform(temp, s=self.mirrorXform[axis])
    #     pm.parent(joints, self.jntGroup)
    #     pm.delete(temp)
    #     for joint in joints:
    #         aim = [i*-1 for i in list(joint.aimAxis.get())]
    #         joint.aimAxis.set(aim)













