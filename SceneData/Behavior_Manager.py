
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
                        bhvName = obj.bhvName
                        if bhvName not in Behavior_Manager.bhvFiles:
                            Behavior_Manager.bhvFiles[bhvName] = []
                        Behavior_Manager.bhvFiles[bhvName].append(
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
        limb.bhvFile.set(bhvFile)
        bhv = Behavior_Manager.bhvs[bhvFile]
        Behavior_Manager._SetupLimbGroups(  limb, 
                                            bhv.groupName, 
                                            bhv.groupCount)
        bhv.InitLimb(limb)

    @staticmethod
    def Setup_Editable(limb):
        log.funcFileDebug()
        log.debug('\t%s' % limb.pfrsName.get())
        bhvFile = limb.bhvFile.get()
        bhv = Behavior_Manager.bhvs[bhvFile]
        bhv.Setup_Editable(limb)
        
    @staticmethod
    def Teardown_Editable(limb):
        log.funcFileDebug()
        bhvFile = limb.bhvFile.get()
        log.debug('\t%s : %s' % (limb.pfrsName.get(), bhvFile))
        bhv = Behavior_Manager.bhvs[bhvFile]
        bhv.Teardown_Editable(limb)
    
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
        # CHANNEL BOX SETUP in pfrs???
        
    @staticmethod
    def Teardown_Rig(rigRoot):
        log.funcFileDebug()
        # delete Maya controls, rfk nodes
        pm.delete(pm.ls(type='controller'))
        pm.delete(pm.ls(type='multiplyDivide')) 
        for limb in pm.listConnections(rigRoot.limbs):
            for group in pm.listConnections(limb.usedGroups):
                control = pm.listConnections(group.control)[0]
                rigUtil.ChannelBoxAttrs(control, 1, 1, 1, 0)
                rigUtil.ResetAttrs(control)
                if group.groupType.get() == 'Joint':
                    joint = pm.listConnections(group.joint)[0]
                    pm.parent(group, joint)
                else:
                    pm.parent(group, limb)
        Behavior_Manager._DeleteChildConstraints(rigRoot)
          
#============= UTIL ============================

    @staticmethod
    def _DeleteChildConstraints(parent): # USE IN CST BHV!
        toDelete = []
        types = [   'ikHandle',
                    'parentConstraint',
                    'pointConstraint' ,
                    'orientConstraint', 
                    'scaleConstraint', 
                    'aimConstraint']
        for t in types:
            toDelete += pm.listRelatives(parent, ad=1, type=t)
        pm.delete(toDelete)
        pm.refresh()

    @staticmethod
    def _GetDefaultBehaviorFile(limb):
        limbType = limb.limbType.get()
        bhvOptions = {} # orderIndex : [bhvFile1, bhvFile2...]
        for bhvFile, bhv in Behavior_Manager.bhvs.items():
            if limbType in bhv.validLimbTypes:
                if bhv.orderIndex not in bhvOptions:
                    bhvOptions[bhv.orderIndex] = []
                bhvOptions[bhv.orderIndex].append(bhvFile)
        index = sorted(list(bhvOptions.keys()))[0]
        bhvFile = bhvOptions[index][-1]
        return bhvFile

    @staticmethod
    def _SetupLimbGroups(limb, groupName, groupCount):
        log.funcFileDebug()
        pm.disconnectAttr(limb.usedGroups)
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        limbGroups = pm.listConnections(limb.limbGroups)
        limbGroupDict = {} # groupName : Group
        for group in limbGroups:
            name = group.groupType.get()
            if name not in limbGroupDict:
                limbGroupDict[name] = []
            limbGroupDict[name].append(group)
        if groupName not in limbGroupDict:
            limbGroupDict[groupName] = []
        toCreate = max(groupCount - len(limbGroupDict[groupName]), 0)
        for i in range(toCreate):
            group = grp.Group.AddLimbGroup(rigRoot, i, groupName, limb)
            limbGroupDict[groupName].append(group)
        for i in range(groupCount):
            group = limbGroupDict[groupName][i]
            pm.connectAttr(limb.usedGroups, group.used)
            genUtil.Name.UpdateLimbGroupName(rigRoot, limb, group)


