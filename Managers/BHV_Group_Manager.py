
import pymel.core as pm

import Common.Utilities as util
reload(util)

import Data.Rig_Data as rigData
reload(rigData)

class BHV_Group_Manager:
    def __init__(self, parent):
        self.limbMng = parent.limbMng
        self.nameMng = parent.nameMng
        self.ctrMng = parent.ctrMng
        self.jntMng = parent.jntMng
        self.logger = parent.logger

        # self.grpTypes = (   'Empty', # DO NOT CHANGE ORDER

        #                     'Joint', # FK, CST, IK Chain
        #                     'IKPV',
        #                     'DEPRICATED - FKIKSwitch',
        #                     'LookAt')#,
                            # 'RFK_B',

                            # 'RFK_M',
                            # 'RFK_T')
        self.hideAttrs = False

        self._groups = {} # grpID : grpData
        # self.bhvGroup = None
        self.rigRoot = None

    def NewRig(self, rigRoot):
        self.logger.debug('\tGrpMng > NewRig')
        self.rigRoot = rigRoot

        self._groups = {} # grpID : grpData

        pm.select(d=1)
        # self.bhvGroup = pm.group(name='BehaviorGroups', em=1, p=rigRoot)
        # pm.addAttr(rigRoot, ln='behaviors', dt='string')
        pm.addAttr(rigRoot, ln='nextGroupID', at='long')


#============= ACCESSORS  ============================

    def GetGroup(self, groupID):
        self.logger.debug('\tGrpMng > GetGroup')
        return self._groups[groupID]

    def GetAllGroups(self):
        self.logger.debug('\tGrpMng > GetAllGroups')
        return list(self._groups.values())

#============= ADD + REMOVE ============================

    def _AddGroup(self):
        groupID = self.rigRoot.nextGroupID.get()
        self.rigRoot.nextGroupID.set(groupID + 1)
        
        # groupTypes = ':'.join(self.grpTypes)
        groupTypes = ':'.join(rigData.GROUP_TYPES)

        group = pm.group(em=1, w=1)
        pm.addAttr(group, ln='ID', at='long', dv=groupID)
        pm.addAttr(group, ln='control', dt='string')
        pm.addAttr(group, ln='groupType', at='enum', en=groupTypes) # IKPV, LookAt
        util.ChannelBoxAttrs(group, 1, 1, 0, 1)

        self._groups[groupID] = group
        return group

    # EMPTY
    # Called from Rigging > SetupEditable_Limbs()
    def AddEmptyGroup(self, limb):
        self.logger.debug('\tGrpMng > AddEmptyGroup')
        group = self._AddGroup()
        pm.addAttr(group, ln='limb', dt='string')
        pm.connectAttr(limb.bhvEmptyGroup, group.limb)
        self.ctrMng.AddEmptyControl(group)
        pm.parent(group, limb)
        return group

    # FK, CST, IK Chain
    # Called from Limb Setup > AutoBuild OR RMB > Add Limb
    def AddJointGroup(self, limb, joint): 
        self.logger.debug('\tGrpMng > AddJointGroup')
        group = self._AddGroup()
        group.groupType.set(1)
        pm.addAttr(group, ln='targetJoint', at='enum', en='None') # IK Chain
        pm.addAttr(group, ln='joint', dt='string')
        pm.addAttr(group, ln='weight', at='float', min=0, max=1) # Cst
        group.weight.set(0.5)

        self.jntMng.Add(limb, joint)
        pm.connectAttr(joint.group, group.joint)
        
        self.ctrMng.AddJointControl(group)
        pm.parent(group, joint)
        pm.xform(group, t=(0,0,0), ro=(0,0,0), s=(1,1,1))
        return group

    def AddIKPVGroup(self, limb):
        self.logger.debug('\tGrpMng > AddIKPVGroup')
        group = self._AddGroup()
        group.groupType.set(2)
        pm.addAttr(group, ln='limb', dt='string')
        pm.connectAttr(limb.bhvIKPVGroup, group.limb)
        pm.parent(group, limb)
        self.ctrMng.AddIKPVControl(group)
        return group

    def AddLookAtGroup(self, limb):
        self.logger.debug('\tGrpMng > AddLookAtGroup')
        group = self._AddGroup()
        group.groupType.set(4)
        pm.addAttr(group, ln='limb', dt='string')
        pm.connectAttr(limb.bhvLookAtGroup, group.limb)
        pm.parent(group, limb)
        self.ctrMng.AddLookAtControl(group)
        return group

    def Remove(self, group):
        self.logger.debug('\tGrpMng > Remove')
        control = pm.listConnections(group.control)[0]
        self.ctrMng.Remove(control)
        del(self._groups[group.ID.get()])
        pm.delete(group)


#============= UTILS ============================

    def UpdateGroupName(self, group):
        self.logger.debug('\tGrpMng > UpdateGroupName')
        '''Updates limb + joint GROUP + CONTROL renaming'''
        index = group.groupType.get()
        # groupType = self.grpTypes[index]
        groupType = rigData.GROUP_TYPES[index]
        if index == 1: # Joint
            joint = pm.listConnections(group.joint)[0]
            pfrsName = joint.pfrsName.get()
            limb = pm.listConnections(joint.limb)[0]
        else:
            limb = pm.listConnections(group.limb)[0]
            pfrsName = limb.pfrsName.get()
        groupName = self.nameMng.GetName(pfrsName,
                                    groupType,
                                    # self.limbMng.GetLimbSide(limb), 
                                    rigData.LIMB_SIDES[limb.side.get()],
                                    'GRP')
        group.rename(groupName)
        control = pm.listConnections(group.control)[0]
        controlName = self.nameMng.GetName(pfrsName,
                                    groupType,
                                    # self.limbMng.GetLimbSide(limb), 
                                    rigData.LIMB_SIDES[limb.side.get()],
                                    'CTR')
        control.rename(controlName)















