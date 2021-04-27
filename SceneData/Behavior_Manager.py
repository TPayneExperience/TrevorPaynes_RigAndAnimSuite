
import inspect
import os
import sys

import pymel.core as pm

import Common.Logger as log
reload(log)
import Abstracts.Abstract_Behavior as absBhv
reload(absBhv)
import Data.Rig_Data as rigData
reload(rigData)
import Common.Rig_Utilities as rigUtil
reload(rigUtil)
import SceneData.Group as grp
reload(grp)
import Common.General_Utilities as genUtil
reload(genUtil)
import Data.General_Data as genData
reload(genUtil)

# FUNCTIONS MUST BE STATIC, USED ACROSS MULTIPLE FILES
class Behavior_Manager:
    bhvFiles = {}   # bhvName : [fileName1, fileName 2,...]
    bhvs = {}       # fileName : class

    @staticmethod
    def InitBehaviors():
        log.funcFileDebug()
        Behavior_Manager.bhvFiles = {}
        Behavior_Manager.bhvs = {}
        rootPath = os.path.dirname(__file__)
        rootPath = os.path.dirname(rootPath)
        bhvPath = os.path.join(rootPath, 'Behaviors')
        for opFile in os.listdir(bhvPath):
            if '__init__.py' in opFile:
                continue
            fileName = os.path.splitext(opFile)[0]
            moduleName = '%s.%s' % ('Behaviors', fileName)
            exec('import %s' % moduleName)
            exec('reload (%s)' % moduleName)
            module = sys.modules[moduleName]
            for name, obj in inspect.getmembers(module):
                if inspect.isclass(obj):
                    if issubclass(obj, absBhv.Abstract_Behavior):
                        bhvType = obj.bhvType
                        if bhvType not in Behavior_Manager.bhvFiles:
                            Behavior_Manager.bhvFiles[bhvType] = []
                        if fileName not in Behavior_Manager.bhvFiles[bhvType]:
                            Behavior_Manager.bhvFiles[bhvType].append(
                                                                fileName)
                        Behavior_Manager.bhvs[fileName] = obj()
    
    @staticmethod
    def InitLimb(limb):
        log.funcFileDebug()
        bhvFile = Behavior_Manager._GetDefaultBehaviorFile(limb)
        Behavior_Manager.SetBehavior(limb, bhvFile)
    
    @staticmethod
    def SetBehavior(limb, bhvFile):
        log.funcFileDebug()
        Behavior_Manager._Teardown_GroupVisibility(limb)
        bhv = Behavior_Manager.bhvs[bhvFile]
        limb.bhvFile.set(bhvFile)
        limb.bhvType.set(bhv.bhvType)
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        Behavior_Manager._InitRigRootBhv(rigRoot, bhv)
        Behavior_Manager._SetupLimbGroups(rigRoot, limb, bhv)
        bhv.InitLimb(limb)
        Behavior_Manager._Setup_GroupVisibility(limb)
        return bhv

    @staticmethod
    def Setup_Rig(rigRoot):
        log.funcFileDebug()
        limbs = pm.listConnections(rigRoot.limbs)
        for limb in limbs:
            bhv = Behavior_Manager.bhvs[limb.bhvFile.get()]
            bhv.Setup_Rig_Internal(limb)
        for limb in limbs:
            bhv = Behavior_Manager.bhvs[limb.bhvFile.get()]
            bhv.Setup_Rig_External(limb)
            if pm.listConnections(limb.limbParent):
                rigUtil.Setup_ControllersToParent(limb)
            else:
                rigUtil.Setup_ControllersGroup(limb)
        # CHANNEL BOX SETUP in pfrs???
        
    @staticmethod
    def Teardown_Rig(rigRoot):
        log.funcFileDebug()
        # delete Maya controls, rfk nodes
        limbs = pm.listConnections(rigRoot.limbs)
        # Reset Controls
        for limb in limbs:
            for group in pm.listConnections(limb.usedGroups):
                control = pm.listConnections(group.control)[0]
                rigUtil.ChannelBoxAttrs(control, 1, 1, 1, 0)
                rigUtil.ResetAttrs(control)
        pm.refresh()
        # Teardown Rig
        for limb in limbs:
            bhv = Behavior_Manager.bhvs[limb.bhvFile.get()]
            bhv.Teardown_Rig(limb)
            rigUtil.Teardown_Controllers(limb)
          
#============= UTIL ============================

    @staticmethod
    def _Setup_GroupVisibility(limb): # USE IN CST BHV!
        for group in pm.listConnections(limb.usedGroups):
            group.v.set(1)

    @staticmethod
    def _Teardown_GroupVisibility(limb): # USE IN CST BHV!
        for group in pm.listConnections(limb.usedGroups):
            group.v.set(0)

    @staticmethod
    def _GetDefaultBehaviorFile(limb):
        limbType = limb.limbType.get()
        orderedFiles = {}
        for bhvFiles in list(Behavior_Manager.bhvFiles.values()):
            bhvFile = bhvFiles[-1]
            bhv = Behavior_Manager.bhvs[bhvFile]
            orderIndex = bhv.orderIndex
            if orderIndex in orderedFiles:
                msg = 'All behavior orderIndex values must be unique!'
                msg = '\n"%s" is conflicting.' % bhv.bhvType
                raise ValueError(msg)
            if limbType in bhv.validLimbTypes:
                orderedFiles[orderIndex] = bhvFile
        index = sorted(list(orderedFiles.keys()))[0]
        return orderedFiles[index]

    @staticmethod
    def _InitRigRootBhv(rigRoot, behavior):
        log.funcFileDebug()
        if not behavior.groupCount:
            return
        attr = behavior.groupType + 'Shape'
        if rigRoot.hasAttr(attr):
            return
        groupShape = behavior.groupShape
        pm.addAttr(rigRoot, ln=attr, dt='string', h=genData.HIDE_ATTRS)
        tempParent = pm.listConnections(rigRoot.controlTemplates)[0]
        for ctr in pm.listRelatives(tempParent, c=1):
            if groupShape in ctr.shortName():
                pm.connectAttr(ctr.rigRoot, rigRoot + '.' + attr)
                return

    @staticmethod
    def _SetupLimbGroups(rigRoot, limb, behavior):
        log.funcFileDebug()
        groupType = behavior.groupType
        groupCount = behavior.groupCount
        pm.disconnectAttr(limb.usedGroups)
        limbGroups = pm.listConnections(limb.limbGroups)
        limbGroupDict = {} # groupType : Group
        for group in limbGroups:
            name = group.groupType.get()
            if name not in limbGroupDict:
                limbGroupDict[name] = []
            limbGroupDict[name].append(group)
        if groupType not in limbGroupDict:
            limbGroupDict[groupType] = []
        toCreate = max(groupCount - len(limbGroupDict[groupType]), 0)
        for i in range(toCreate):
            group = grp.Group.AddLimbGroup(rigRoot, i, groupType, limb)
            limbGroupDict[groupType].append(group)
        for i in range(groupCount):
            group = limbGroupDict[groupType][i]
            pm.connectAttr(limb.usedGroups, group.used)
            genUtil.Name.UpdateLimbGroupName(rigRoot, limb, group)


