
from random import random, shuffle

import pymel.core as pm

import Data.Rig_Data as rigData
reload(rigData)

import Common.Utilities as util
reload(util)

class Joint_Manager:
    def __init__(self, parent):
        self.nameMng = parent.nameMng
        self.grpMng = parent.grpMng
        self.logger = parent.logger
        self.pfrs = parent

        self.colorIndex = 0
        
#============= SCENE ============================

    def NewScene(self):
        self.jointLayer = pm.createDisplayLayer(n='Joints', e=True)
        self.jointLayer.displayType.set(2)
    
    def LoadScene(self):
        self.jointLayer = pm.ls('Joints', type='displayLayer')[0]

    def SetLayerState(self, isVisible, isReference):
        self.logger.debug('\tCtrMng > SetLayerState')
        # Maya Bug: Layer Editor won't refresh buttons
        if isReference:
            self.jointLayer.displayType.set(2) # 2 = reference, 0 = default
        else:
            self.jointLayer.displayType.set(0)
        self.jointLayer.visibility.set(isVisible) # 0 = off, 1 = on

    def InitSceneJoints(self):
        self.logger.debug('\tJntMng > InitSceneJoints')
        joints = pm.ls(type='joint')
        for joint in joints:
            if not joint.hasAttr('ID'):
                self.InitJoint(joint)
            parent = pm.listRelatives(joint, p=1)
            if not parent or pm.objectType(parent[0]) != 'joint':
                pm.parent(joint, self.jntGroup)

#============= ROOT ============================

    def NewRoot(self):
        self.logger.debug('\tJntMng > NewRoot')
        root = self.pfrs.root
        self.jntGroup = pm.group(name='JOINTS', em=1, p=root)

    def LoadRoot(self):
        self.logger.debug('\tJntMng > LoadRoot')
        root = self.pfrs.root
        for child in pm.listRelatives(root, c=1, type='transform'):
            if child.shortName() == 'JOINTS':
                self.jntGroup = child
                break

#============= INIT, ADD, REMOVE, DELETE ============================

    def InitJoint(self, joint):
        self.logger.debug('\tJntMng > InitJoint')
        colors = list(rigData.JOINT_COLORS[self.colorIndex])
        self.colorIndex = (self.colorIndex + 1) % len(rigData.JOINT_COLORS)
        shuffle(colors)
        pm.addAttr(joint, ln='ID', at='short')
        pm.addAttr(joint, ln='limb', dt='string')
        pm.addAttr(joint, ln='jointIndex', at='short')
        pm.addAttr(joint, ln='pfrsName', dt='string')
        pm.addAttr(joint, ln='group', dt='string')
        pm.addAttr(joint, ln='bhvRFKGroup', dt='string')
        
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

        jointID = self.pfrs.root.nextJointID.get()
        self.pfrs.root.nextJointID.set(jointID + 1)
        joint.ID.set(jointID)
        joint.pfrsName.set('Joint%03d' % (jointID))
        pm.editDisplayLayerMembers(self.jointLayer, joint, nr=1)

        self.grpMng.AddJointGroup(joint)

    def AddJoint(self, limb, joint):
        self.logger.debug('\tJntMng > AddJoint')
        if limb.limbType.get() != 0:
            for child in pm.listConnections(limb.bhvChildren):
                self.AssignClosestBhvParentJoint(child)
        pm.connectAttr(limb.joints, joint.limb)

    def RemoveJoint(self, joint):
        self.logger.debug('\tJntMng > RemoveJoint')
        limb = pm.listConnections(joint.limb)[0]
        if limb.limbType.get() != 0:
            for child in pm.listConnections(limb.bhvChildren):
                self.AssignClosestBhvParentJoint(child)
        pm.disconnectAttr(joint.limb)

    def DeleteJoint(self, joint):
        self.logger.debug('\tJntMng > DeleteJoint')
        parents = pm.listRelatives(joint, p=1)
        children = pm.listRelatives(joint, c=1, type='joint')
        if parents:
            pm.parent(children, parents[0])
        else:
            pm.parent(children, w=1)
        # if pm.listConnections(joint.limb):
        #     self.RemoveJoint(joint)
        pm.delete(joint)
        
#============= FUNCTIONALITY ============================

    def ReindexJoints(self, limb):
        self.logger.debug('\tJntMng > ReindexJoints')
        joints = pm.listConnections(limb.joints)
        joints = util.GetSortedJoints(joints)
        for i in range(len(joints)):
            joints[i].jointIndex.set(i)
    
    # def UpdateJointName(self, joint):
    #     self.logger.debug('\tJntMng > UpdateJointName')
    #     limb = pm.listConnections(joint.limb)[0]
    #     side = rigData.LIMB_SIDES[limb.side.get()]
    #     name = self.nameMng.GetName(limb.pfrsName.get(),
    #                                 joint.pfrsName.get(),
    #                                 side,
    #                                 'JNT')
    #     joint.rename(name)
    #     group = pm.listConnections(joint.group)[0]
    #     self.grpMng.UpdateGroupName(group)

    def UpdateLimbParentJoint(self, childLimb):
        '''Updates limb parent group enum to closest to root group'''
        self.logger.debug('\tJntMng > UpdateLimbParentJoint')
        parents = pm.listConnections(childLimb.limbParent)

        # If NO PARENT or parent EMPTY, set and return
        if not parents:
            pm.addAttr(childLimb.limbParentJoint, e=1, en='None')
            childLimb.limbParentJoint.set(0)
            return
        parentLimb = parents[0]
        parentBhvType = parentLimb.bhvType.get()
        if parentBhvType in rigData.EMPTY_BHV_INDEXES:
            pm.addAttr(childLimb.limbParentJoint, e=1, en='Empty')
            childLimb.limbParentJoint.set(0)
            return
        parentJoints = util.GetSortedLimbJoints(parentLimb)
        names = [j.pfrsName.get() for j in parentJoints]
        namesStr = ':'.join(names)
        pm.addAttr(childLimb.limbParentJoint, e=1, en=namesStr)
        rootGroup = self.grpMng.GetJointGroups(childLimb)[0]
        sourcePos = pm.xform(rootGroup, q=1, t=1, ws=1)
        index = self.GetClosestJointIndex(sourcePos, parentLimb)
        childLimb.limbParentJoint.set(index)

    def GetClosestJointIndex(self, sourcePos, targetLimb):
        self.logger.debug('\tJntMng > GetClosestJointIndex')
        targetJoints = util.GetSortedLimbJoints(targetLimb)
        distances = {} # dist : [targetJoint1, joint2...]
        for targetJoint in targetJoints:
            targetPos = pm.xform(targetJoint, q=1, t=1, ws=1)
            dist = 0
            for i in range(3):
                dist += (sourcePos[i]-targetPos[i])**2
            if dist not in distances:
                distances[dist] = []
            distances[dist].append(targetJoint)
        targetDist = sorted(list(distances.keys()))[0]
        joint = distances[targetDist][0]
        return targetJoints.index(joint)

    def AssignClosestBhvParentJoint(self, childLimb):
        parentLimb = pm.listConnections(childLimb.bhvParent)[0]
        parentJoints = util.GetSortedLimbJoints(parentLimb)
        names = [j.pfrsName.get() for j in parentJoints]
        pm.addAttr(childLimb.bhvParentJoint, e=1, en=':'.join(names))
        sourceJoint = util.GetSortedLimbJoints(childLimb)[-1]
        sourcePos = pm.xform(sourceJoint, q=1, t=1, ws=1)
        index = self.GetClosestJointIndex(sourcePos, parentLimb)
        childLimb.bhvParentJoint.set(index)










