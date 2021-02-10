
import pymel.core as pm
from random import random, shuffle

class Joint_Manager:
    def __init__(self, parent):
        self.limbMng = parent.limbMng
        self.grpMng = parent.grpMng
        self.ctrMng = parent.ctrMng
        self.nameMng = parent.nameMng
        self.logger = parent.logger

        self.mirrorXform = {'X': (-1,1,1),
                            'Y': (1,-1,1),
                            'Z': (1,1,-1)}
        self.jointColors = ((1, 0, 0), # Red
                            (0, 1, 0), # Green
                            (0, 0, 1), # Blue
                            (1, 1, 0), # Yellow
                            (0, 1, 1), # Cyan
                            (1, 0, 1),# Magenta
                            (1, 0.5, 0), # 
                            (0, 1, 0.5), # 
                            (0.5, 0, 1),# 
                            (0.5, 1, 0), # 
                            (0, 0.5, 1), # 
                            (1, 0, 0.5)) 
        self.colorIndex = 0
        self.hideAttrs = False

    def NewRig(self, rigRoot):
        self.logger.debug('\tJntMng > NewRig')
        self._joints = {} # jointID: jointNode
        self.rigRoot = rigRoot
        pm.addAttr(rigRoot, ln='nextJointID', at='short', dv=1)

        pm.select(d=1)
        self.jntGroup = pm.group(name='Skeleton', em=1, p=rigRoot)
        self.skelLayer = pm.createDisplayLayer(n='Skel Joints', e=True)
        self.skelLayer.displayType.set(2)

#============= ACCESSORS + MUTATORS ============================

    def GetJoint(self, jointID):
        self.logger.debug('\tJntMng > GetJoint')
        return self._joints[jointID]

    def GetAllJoints(self):
        self.logger.debug('\tJntMng > GetAllJoints')
        return list(self._joints.values())

    def HasLimb(self, joint):
        self.logger.debug('\tJntMng > HasLimb')
        if not joint.hasAttr('limb'):
            return False
        return bool(pm.listConnections(joint.limb))

    # def GetLimb(self, joint):
    #     self.logger.debug('\tJntMng > GetLimb')
    #     return pm.listConnections(joint.limb)[0]

    def GetLimbJoints(self, limb):
        '''Order joints by internal joint index. child to root parent'''
        self.logger.debug('\tJntMng > GetLimbJoints')
        temp = {}
        for joint in pm.listConnections(limb.joints):
            temp[joint.limbIndex.get()] = joint
        return [temp[i] for i in range(len(temp))]

    def GetJointCount(self): # for Skel tool label
        self.logger.debug('\tJntMng > GetJointCount')
        return len(self._joints)

#============= ADD + REMOVE ============================

    def Add(self, limb, joint):
        self.logger.debug('\tJntMng > Add')
        if (not joint.hasAttr('pfrsName')):
            colors = list(self.jointColors[self.colorIndex])
            self.colorIndex = (self.colorIndex + 1) % len(self.jointColors)
            shuffle(colors)
            pm.addAttr(joint, ln='ID', at='short')
            pm.addAttr(joint, ln='limb', dt='string')
            pm.addAttr(joint, ln='limbIndex', at='short')
            pm.addAttr(joint, ln='pfrsName', dt='string')
            pm.addAttr(joint, ln='group', dt='string')
            pm.addAttr(joint, ln='bhvRFKGroup', dt='string')
            pm.addAttr(joint, ln='bhvDistanceJoint', dt='string')
            pm.addAttr(joint, ln='bhvFKIKSwitchSource', dt='string')
            # SKIN ATTRS
            pm.addAttr(joint, ln='skinAnimStart', at='float')
            pm.addAttr(joint, ln='skinAnimEnd', at='float')
            pm.addAttr(joint, ln='jointColor', at='float3')
            pm.addAttr(joint, ln='jointColorR', at='float', 
                                p='jointColor', dv=colors[0])
            pm.addAttr(joint, ln='jointColorG', at='float', 
                                p='jointColor', dv=colors[1])
            pm.addAttr(joint, ln='jointColorB', at='float', 
                                p='jointColor', dv=colors[2])

            jointID = self.rigRoot.nextJointID.get()
            self.rigRoot.nextJointID.set(jointID + 1)
            joint.ID.set(jointID)
            joint.pfrsName.set('Joint%03d' % (jointID))
            pm.editDisplayLayerMembers(self.skelLayer, joint, nr=1)

            self.grpMng.AddJointGroup(joint)
            # self.ctrMng.Add(group)
            # self.grpMng.UpdateGroupName(group)
            
        # Only add Joint if pfrs name not already on limb
        name = joint.pfrsName.get()
        # names = [j.pfrsName.get() for j in pm.listConnections(limb.infJoints)]
        names = [j.pfrsName.get() for j in pm.listConnections(limb.joints)]
        if name in names:
            self.logger.error('**** Cannot add joint: joint of same pfrsName')
            self.logger.error('****     already exists on limb')
            return
        # pm.connectAttr(limb.infJoints, joint.limb)
        pm.connectAttr(limb.joints, joint.limb)
        group = pm.listConnections(joint.group)[0]
        self.grpMng.UpdateGroupName(group)
        if joint.ID.get() not in self._joints:
            self._joints[joint.ID.get()] = joint

    def RemoveTemp(self, joint):
        self.logger.debug('\tJntMng > RemoveTemp')
        pm.disconnectAttr(joint.limb)
        del(self._joints[joint.ID.get()])

    def RemovePerm(self, joint):
        self.logger.debug('\tJntMng > RemovePerm')
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
        
#============= FUNCTIONALITY ============================

    def ReindexJoints(self, limb):
        self.logger.debug('\tJntMng > ReindexJoints')
        joints = pm.listConnections(limb.joints)
        joints = self.SortJoints(joints)
        for i in range(len(joints)):
            joints[i].limbIndex.set(i)
    
    def UpdateAllJointNames(self): # if prefix changed
        self.logger.debug('\tJntMng > UpdateAllJointNames')
        for joint in self.GetAllJoints():
            self.UpdateJointName(joint)

    def UpdateLimbJointNames(self, limb):
        self.logger.debug('\tJntMng > UpdateLimbJointNames')
        for joint in self.GetLimbJoints(limb):
            self.UpdateJointName(joint)

    def UpdateJointName(self, joint):
        self.logger.debug('\tJntMng > UpdateJointName')
        limb = pm.listConnections(joint.limb)[0]
        name = self.nameMng.GetName(limb.pfrsName.get(),
                                    joint.pfrsName.get(),
                                    self.limbMng.GetLimbSide(limb), 
                                    'JNT')
        joint.rename(name)
    
#============= UTILS ============================

    def AreJointsSiblings(self, joints):
        self.logger.debug('\tJntMng > AreJointsSiblings')
        isBranch = True
        parent1 = pm.listRelatives(joints[0], parent=1)
        for joint in joints[1:]:
            parent2 = pm.listRelatives(joint, parent=1)
            if (parent1 != parent2):
                isBranch = False
        return isBranch
    
    def AreJointsChained(self, joints):
        self.logger.debug('\tJntMng > AreJointsChained')
        jointsCopy = self.SortJoints(joints)
        child = jointsCopy[-1]
        jointsCopy.remove(child)
        while (jointsCopy):
            parent = pm.listRelatives(child, p=1)
            if not parent:
                return False
            parent = parent[0]
            if not pm.objectType(parent, isa='joint'):
                msg = '*** Only Joints Allowed in Skeleton hierarchy'
                self.logger.error(msg)
                return False
            if parent in jointsCopy:
                jointsCopy.remove(parent)
            child = parent
        return True

    def GetCompleteJointChain(self, joints):
        '''returns child most to parent most joint list'''
        self.logger.debug('\tJntMng > GetCompleteJointChain')
        sortedJoints = self.SortJoints(joints)
        parent = sortedJoints[-1]
        rootParent = sortedJoints[0]
        jointChain = [parent]
        while(parent != rootParent):
            parent = pm.listRelatives(parent, p=1, type='joint')[0]
            jointChain.append(parent)
        return jointChain

        # # OLD ALGO
        # if len(joints) == 1:
        #     return joints
        # temp = {} # longName : node
        # for joint in joints:
        #     temp[joint.longName()] = joint
        # names = sorted(temp.keys())
        # rootParent = temp[names[0]]
        # child = temp[names[-1]]
        # jointChain = [child]
        # parent = child
        # for i in range(999):
        #     parent = pm.listRelatives(parent, p=1)
        #     if not parent:
        #         break
        #     parent = parent[0]
        #     jointChain.append(parent)
        #     if parent == rootParent:
        #         break
        # return jointChain

    def SortJoints(self, joints):
        '''Returns root parent to bottom most child'''
        temp = {} # LongName : joint
        for joint in joints:
            temp[joint.longName()] = joint
        names = sorted(temp.keys())
        orderedJoints = []
        for i in range(len(names)):
            orderedJoints.append(temp[names[i]])
        return orderedJoints

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













