
import pymel.core as pm

import Utilities.Logger as log
reload(log)
import Utilities.General_Utilities as genUtil
reload(genUtil)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import Data.Rig_Data as rigData
reload(rigData)
import Control as ctr
reload(ctr)
import Data.General_Data as genData
reload(genData)

class Group:
    @staticmethod
    def _Add(rigRoot, index, groupType):
        group = pm.group(em=1, w=1)
        genUtil.AbstractInitializer(group, 'Group')
        group.groupType.set(groupType)
        group.groupIndex.set(index)
        ctr.Control.Add(rigRoot, group)
        return group

    @staticmethod
    def AddJointGroup(rigRoot, index, limb, joint):
        log.funcFileDebug()
        group = Group._Add(rigRoot, index, 'Joint')
        pm.connectAttr(joint.group, group.joint)
        pm.parent(group, joint)
        pm.xform(group, t=(0,0,0), ro=(0,0,0), s=(1,1,1))
        # pm.parent(group, limb)
        return group
    
    @staticmethod
    def AddLimbGroup(rigRoot, index, groupType, limb):
        log.funcFileDebug()
        group = Group._Add(rigRoot, index, groupType)
        pm.connectAttr(limb.limbGroups, group.limb)
        pm.parent(group, limb)
        return group

    @staticmethod
    def AddConstraintGroup(control):
        log.funcFileDebug()
        hide = genData.HIDE_ATTRS
        limbGroup = pm.listConnections(control.group)[0]
        group = pm.group(n='CstGroup_#', em=1, w=1)
        pm.addAttr(group, ln='limbGroup', dt='string', h=hide)
        pm.addAttr(group, ln='target1', dt='string', h=hide)
        pm.addAttr(group, ln='target2', dt='string', h=hide)
        cstTypes = ':'.join(rigData.CST_TYPES)
        pm.addAttr(group, ln='cstType', at='enum', 
                                en=cstTypes, h=hide)
        pm.addAttr(group, ln='cstWeight', at='float', k=1,
                                dv=0.5, min=0, max=1, h=hide)
        pm.addAttr(group, ln='maintainOffset', at='bool', dv=1, h=hide)
        pm.addAttr(group, ln='lockX', at='bool', h=hide)
        pm.addAttr(group, ln='lockY', at='bool', h=hide)
        pm.addAttr(group, ln='lockZ', at='bool', h=hide)

        pm.connectAttr(limbGroup.constraintGroups, group.limbGroup)
        attrs = ('.tx', '.ty', '.tz',
                '.rx', '.ry', '.rz',
                '.sx', '.sy', '.sz',
                '.v')
        for attr in attrs:
            pm.setAttr(group + attr, k=0)
        return group

    @staticmethod
    def Remove(group):
        log.funcFileDebug()
        # missing remove control??/
        pm.delete(group)
    
# Copyright (c) 2021 Trevor Payne
# See user license in "PayneFreeRigSuite\Data\LicenseAgreement.txt"
