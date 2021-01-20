
import pymel.core as pm
from random import random, shuffle

class Joint_Manager:
    def __init__(self, limbMng, grpMng, ctrMng, nameMng, parent):

        self.limbMng = limbMng
        self.grpMng = grpMng
        self.ctrMng = ctrMng
        self.nameMng = nameMng
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
        self._joints = {} # jointID: jointNode
        self.rigRoot = rigRoot
        pm.addAttr(rigRoot, ln='nextJointID', at='short', dv=1)
        # pm.addAttr(rigRoot, ln='joints', dt='string')

        pm.select(d=1)
        self.jntGroup = pm.group(name='Skeleton', em=1, p=rigRoot)
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

    def GetLimb(self, joint):
        return pm.listConnections(joint.limb)[0]

    # def GetLimbJoints(self, limb, includeNonInf=True):
    def GetLimbJoints(self, limb):
        '''Order joints by internal joint index. child to root parent'''
        orderedJoints = []
        temp = {}
        # joints = pm.listConnections(limb.infJoints)
        # if includeNonInf:
        #     joints += pm.listConnections(limb.nonInfJoint)
        # for joint in joints:
        for joint in pm.listConnections(limb.joints):
            temp[joint.limbIndex.get()] = joint
        for index in sorted(list(temp.keys())):
            orderedJoints.append(temp[index])
        return orderedJoints

    def GetJointCount(self): # for Skel tool label
        return len(self._joints)

#============= ADD + REMOVE ============================

    def Add(self, limb, joint):
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
            pm.addAttr(joint, ln='bhvDistanceGroup', dt='string')
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

            group = self.grpMng.AddJointGroup(joint)
            self.ctrMng.Add(group, self.ctrMng.ctrTypes[1])
            # self.grpMng.UpdateGroupName(group)
            
        # Only add Joint if pfrs name not already on limb
        name = joint.pfrsName.get()
        # names = [j.pfrsName.get() for j in pm.listConnections(limb.infJoints)]
        names = [j.pfrsName.get() for j in pm.listConnections(limb.joints)]
        if name in names:
            self.logger.error('\t\t\tCannot add joint: joint of same pfrsName')
            self.logger.error('\t\t\t\talready exists on limb')
            return
        # pm.connectAttr(limb.infJoints, joint.limb)
        pm.connectAttr(limb.joints, joint.limb)
        group = pm.listConnections(joint.group)[0]
        self.grpMng.UpdateGroupName(group)
        if joint.ID.get() not in self._joints:
            self._joints[joint.ID.get()] = joint


    def RemoveTemp(self, joint):
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
        
#============= NON INF JOINT HANDLING ============================

    # def _ConnectLimbToJoint(self, limb, joint):
    #     pm.connectAttr(limb.infJoints, joint.limb)
        # self._SetupNonInfJoint(limb)

    # def _DisconnectLimbJoint(self, joint):
    #     limb = pm.listConnections(joint.limb)[0]
    #     nonInfJoints = pm.listConnections(limb.nonInfJoint)
    #     if nonInfJoints:
    #         nonInfJoint = nonInfJoints[0]
    #         pm.disconnectAttr(nonInfJoint.limb)
    #         pm.connectAttr(limb.infJoints, nonInfJoint.limb)
        # self._SetupNonInfJoint(limb)

    # def Setup_NonInfJoint(self, limb):
    #     joint = self.GetLimbJoints(limb)[-1]
    #     pm.disconnectAttr(joint.limb)
    #     pm.connectAttr(limb.nonInfJoint, joint.limb)

    # def Teardown_NonInfJoint(self, limb):
    #     joint = self.GetLimbJoints(limb)[-1]
    #     pm.disconnectAttr(joint.limb)
    #     pm.connectAttr(limb.infJoints, joint.limb)

#============= FUNCTIONALITY ============================

    def ReindexJoints(self, limb):
        temp = {} # longName : joint
        # for joint in pm.listConnections(limb.infJoints):
        for joint in pm.listConnections(limb.joints):
            temp[joint.longName()] = joint
        i = 0
        for key in sorted(list(temp.keys())):
            temp[key].limbIndex.set(i)
            i += 1

    # def Teardown_Editable(self, joint): # for Limb Setup
    #     pass
        # group = pm.listConnections(joint.group)[0]
        # pm.disconnectAttr(group.limb)
        # pm.disconnectAttr(joint.tempLimb)
        # pm.connectAttr(limb.tempJoints, joint.tempLimb)
        # self.ReindexJoints(limb)
    
    # def Setup_Editable(self, joint):
    #     # group = pm.listConnections(joint.group)[0]
    #     # pm.disconnectAttr(group.limb)
    #     self.UpdateJointName(joint)
    
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
        '''returns child most to parent most joint list'''
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

    def UpdateLimbParentJoint(self, childLimb):
        '''Updates limb parent group enum to closest to root group'''
        # childLimb = self.limbMng.GetLimb(limbID)
        parents = pm.listConnections(childLimb.parentLimb)

        # If NO PARENT or parent EMPTY, set and return
        if not parents:
            pm.addAttr(childLimb.parentJoint, e=1, en='None')
            return
        parentLimb = parents[0]
        parentBhvType = parentLimb.bhvType.get()
        if parentBhvType == 7:
            pm.addAttr(childLimb.parentJoint, e=1, en='Empty')
            return
        
        # Default to closest joint
        distances = {} # dist : joint
        names = []
        # joints = self.jngMng.GetLimbJoints(parentLimb)
        rootGroup = self.grpMng.GetLimbGroups(childLimb)[0]
        sourcePos = pm.xform(rootGroup, q=1, t=1, ws=1)
        parentJoints = self.GetLimbJoints(parentLimb)
        for joint in parentJoints:
            # Create distance dict
            targetPos = pm.xform(joint, q=1, t=1, ws=1)
            dist = 0
            for i in range(3):
                dist += (sourcePos[i]-targetPos[i])**2
            distances[dist] = joint
            names.append(joint.pfrsName.get())
        pm.addAttr(childLimb.parentJoint, e=1, en=':'.join(names))
        # Set Closest Group Index
        closestDist = sorted(list(distances.keys()))[0]
        index = parentJoints.index(distances[closestDist])
        # index = self.grpMng.GetLimbGroups(parentLimb).index(closestGroup)
        childLimb.parentJoint.set(index)


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













