
import inspect
import os
import sys

import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
reload(absOp)
import Utilities.Logger as log
reload(log)
import Data.Rig_Data as rigData
reload(rigData)
import SceneData.Limb as lmb
reload(lmb)
import SceneData.Joint as jnt
reload(jnt)
import SceneData.Group as grp
reload(grp)
import Utilities.General_Utilities as genUtil
reload(genUtil)
import SceneData.RigRoot as rrt
reload(rrt)
import Utilities.Rig_Utilities as rigUtil
reload(rigUtil)
import Utilities.Anim_Utilities as animUtil
reload(animUtil)
# import Operations.Rigging_Setup.Autobuild as auto
# reload(auto)
import Abstracts.Abstract_Autobuild as absBld
reload(absBld)
import SceneData.Preset as pst
reload(pst)

class LimbSetup(absOp.Abstract_Operation):
    isRigBuilt = False
    validRigStates = (0, )      # 0 = Setup, 1 = Anim
    controlLayerState = (0, 0)  # isVis, isRef
    jointLayerState = (1, 0)    # isVis, isRef
    meshLayerState = (1, 1)    # isVis, isRef
    mirrorAxisScales = {'X': (-1,1,1),
                        'Y': (1,-1,1),
                        'Z': (1,1,-1)}

    def InitAutobuilders(self):
        log.funcFileDebug()
        self._autobuilders = {} # uiName : class instance
        folder = os.path.dirname(__file__)
        folder = os.path.join(folder, 'Autobuild')
        for buildFile in os.listdir(folder):
            if '__init__.py' in buildFile:
                continue
            fileName = os.path.splitext(buildFile)[0]
            moduleName = 'Operations.Rigging_Setup.Autobuild.%s' % fileName
            exec('import %s' % moduleName)
            exec('reload (%s)' % moduleName)
            module = sys.modules[moduleName]
            for name, obj in inspect.getmembers(module):
                if inspect.isclass(obj):
                    if issubclass(obj, absBld.Abstract_Autobuild):
                        uiName = obj.uiName
                        if uiName not in self._autobuilders:
                            inst = obj()
                            self._autobuilders[uiName] = inst
                            fName = 'Autobuild%s' % name
                            setattr(self, fName, inst.Execute) #Untested
    
    def Autobuild(self, rigRoot, autobuilder):
        config = self._GetConfig()
        upAxis = rigData.JOINT_AIM_UP_VECTORS[config['jointUpAxis']]
        limbs = autobuilder.Execute(rigRoot)
        for limb in limbs:
            self._InitBehavior(rigRoot, limb)
            # Set Preferred angles for IK Bhv, else straight arms break
            bendAxis = upAxis[:]
            side = limb.side.get() 
            if limb.shortName() == 'Arm_Limb_L_NODE':
                pass
            if side in (0, 1):
                bendAxis = [a*-1 for a in bendAxis]
            for joint in pm.listConnections(limb.joints):
                angles = tuple(joint.preferredAngle.get())
                if angles == (0,0,0):
                    joint.preferredAngle.set(bendAxis)
        self._ResetToDefaultParent(limbs)
        # # Zeroing out joint rotations, breaks animations though...
        # for joint in pm.ls(type='joint'):
        #     self.TransferRotationsToJointOrient(joint)
        
#============= LIMBS ============================

    def GetLimbFuncForJoints(self, joints):
        if (len(joints) == 1):
            return lmb.Limb.AddOneJointBranch
        elif rigUtil.Joint._AreJointsSiblings(joints):
            return lmb.Limb.AddTwoJointBranch
        elif rigUtil.Joint._AreJointsChained(joints):
            if (len(joints) == 2):
                return lmb.Limb.AddTwoJointChain
            else:
                return lmb.Limb.AddThreeJointChain
        return None

    def AddJointLimb(self, rigRoot, joints):
        if not joints or type(joints) != list:
            raise ValueError('Please pass in LIST of JOINTS')
        for joint in joints:
            if pm.objectType(joint) != 'joint':
                raise ValueError('Please pass in LIST of JOINTS')
        if not rigUtil.Joint._AreJointsDisconnected(joints):
            raise ValueError('Joints must be DISCONNECTED from LIMB')
        createLimbFunc = self.GetLimbFuncForJoints(joints)
        if not createLimbFunc:
            msg = 'Joints must be either chained or siblings'
            msg += ' of same parent'
            raise ValueError(msg)
        limb = createLimbFunc(rigRoot, joints)
        self._InitBehavior(rigRoot, limb)
        return limb

    def DuplicateLimbs(self, limbs):
        oldNewLimbs = {}
        oldNewJoints = {}
        oldNewPresetIDs = {}
        oldNewPresets = {}
        newLimbs = []
        for oldLimb in limbs:
            oldJoints = pm.listConnections(oldLimb.joints)
            ojGroups = [pm.listConnections(j.group)[0] for j in oldJoints]
            ojControls = [pm.listConnections(g.control)[0] for g in ojGroups]

            # Old Joint Group Setup
            for joint, group in zip(oldJoints, ojGroups):
                pm.parent(group, joint)

            # New Limb, limbGroups, rigRoot
            newLimb = pm.duplicate(oldLimb)[0]
            oldNewLimbs[oldLimb] = newLimb
            for group in pm.listRelatives(newLimb, c=1):
                pm.connectAttr(newLimb.limbGroups, group.limb)
            rigRoot = pm.listConnections(oldLimb.rigRoot)[0]
            nextID = rigRoot.nextLimbID.get()
            rigRoot.nextLimbID.set(nextID + 1)
            newLimb.ID.set(nextID)
            
            pm.connectAttr(rigRoot.limbs, newLimb.rigRoot)
            
            # New Joints
            newJoints = pm.duplicate(oldJoints, po=1)
            for oldJoint, newJoint in zip(oldJoints, newJoints):
                oldNewJoints[oldJoint] = newJoint
            njGroups = pm.duplicate(ojGroups, po=1)
            njControls = pm.duplicate(ojControls)
            for joint, group, control in zip(newJoints, njGroups, njControls):
                pm.connectAttr(newLimb.joints, joint.limb)
                pm.connectAttr(joint.group, group.joint)
                pm.connectAttr(group.control, control.group)
                pm.connectAttr(newLimb.jointGroups, group.limb)
                pm.parent(group, newLimb)
                pm.parent(control, group)
            
            # New Presets
            for oldPreset in pm.listConnections(oldLimb.presets):
                oldPresetID = oldPreset.ID.get()
                if oldPresetID not in oldNewPresetIDs:
                    ID = rigRoot.nextPresetID.get()
                    rigRoot.nextPresetID.set(ID + 1)
                    oldNewPresetIDs[oldPresetID] = ID
                newPreset = pm.duplicate(oldPreset)[0]
                newPreset.ID.set(oldNewPresetIDs[oldPresetID])
                pm.connectAttr(newLimb.presets, newPreset.limb)
                pm.connectAttr(rigRoot.presets, newPreset.rigRoot)
                oldNewPresets[oldPreset] = newPreset

            # Old Joint Group Teardown
            for group in ojGroups:
                pm.parent(group, oldLimb)
            
            # Setup behavior
            bhvFile = newLimb.bhvFile.get()
            self.bhvMng.SetBehavior(newLimb, bhvFile)

            self.RenameLimb(newLimb, newLimb.pfrsName.get() + '_Copy')
            newLimbs.append(newLimb)

        # Reparenting Limbs
        for oldLimb, newLimb in oldNewLimbs.items():
            parent = pm.listConnections(oldLimb.limbParent)
            if parent:
                parent = parent[0]
                if parent in oldNewLimbs:
                    parent = oldNewLimbs[parent]
                pm.connectAttr(parent.limbChildren, newLimb.limbParent)
            oldJoints = pm.listConnections(oldLimb.joints)
            for oldJoint in oldJoints:
                oldParents = pm.listRelatives(oldJoint, p=1)
                if not oldParents:
                    continue
                oldParent = oldParents[0]
                if oldParent not in oldNewJoints:
                    continue
                newJoint = oldNewJoints[oldJoint]
                newParent = oldNewJoints[oldParent]
                pm.parent(newJoint, newParent)

        # Reparenting presets
        for oldPreset, newPreset in oldNewPresets.items():
            oldParents = pm.listConnections(oldPreset.limbParent)
            if not oldParents:
                continue
            oldParent = oldParents[0]
            if oldParent not in oldNewLimbs:
                pm.connectAttr( oldParent.presetLimbChildren, 
                                newPreset.limbParent)
            else:
                newParent = oldNewLimbs[oldParent]
                pm.connectAttr( newParent.presetLimbChildren, 
                                newPreset.limbParent)
        return newLimbs

    def MirrorBodyLimbs(self, limbs, axisLetter):
        newLimbs = self.DuplicateLimbs(limbs)
        newJoints = []
        for newLimb in newLimbs:
            newJoints += pm.listConnections(newLimb.joints)
        self._MirrorBodyJoints(newJoints)
        self._MirrorLimbs(limbs, newLimbs, axisLetter)
        for limb in newLimbs + limbs:
            limb.limbLocation.set(0) # Body
    
    def MirrorFaceLimbs(self, limbs, axisLetter):
        newLimbs = self.DuplicateLimbs(limbs)
        newJoints = []
        for newLimb in newLimbs:
            newJoints += pm.listConnections(newLimb.joints)
        self._MirrorFaceJoints(newJoints)
        self._MirrorLimbs(limbs, newLimbs, axisLetter)
        for limb in newLimbs + limbs:
            limb.limbLocation.set(1) # Face

    def _MirrorLimbs(self, oldLimbs, newLimbs, axisLetter):
        scale = self.mirrorAxisScales[axisLetter.upper()]
        for oldLimb, newLimb in zip(oldLimbs, newLimbs):
            self.RenameLimb(newLimb, oldLimb.pfrsName.get())
            groups = pm.listConnections(newLimb.limbGroups)
            groups += pm.listConnections(newLimb.jointGroups)
            oldParents = {}
            for group in groups:
                oldParents[group] = pm.listRelatives(group, p=1)
            rootGroup = pm.group(em=1, w=1)
            pm.parent(groups, rootGroup)
            pm.xform(rootGroup, s=scale)
            for group in groups:
                parents = oldParents[group]
                if parents: # Delete later, after limbsetup
                    parent = parents[0]
                    pm.parent(group, parent)
                else:
                    pm.parent(group, w=1)
            pm.makeIdentity(groups, a=1, s=1, pn=1)
            pm.delete(rootGroup)

    def UpdateMirrorBodyJoints(self, limb):
        config = self._GetConfig()
        aimIndex = config['jointAimAxis']
        upIndex = config['jointUpAxis']
        aimVector = rigData.JOINT_AIM_UP_VECTORS[aimIndex]
        upVector = rigData.JOINT_AIM_UP_VECTORS[upIndex]
        rot = [1,1,1]
        rot = [rot[i] - abs(aimVector[i]) for i in range(3)]
        rot = [rot[i] - abs(upVector[i]) for i in range(3)]
        rot = [rot[i] * 180 for i in range(3)]
        self._UpdateMirrorLimbJoints(limb, rot)

    def UpdateMirrorFaceJoints(self, limb):
        config = self._GetConfig()
        index = config['jointUpAxis']
        upVector = rigData.JOINT_AIM_UP_VECTORS[index]
        rot = [abs(i*180) for i in upVector]
        self._UpdateMirrorLimbJoints(limb, rot)

    def RemoveLimb(self, limb):
        if pm.listConnections(limb.mirrorLimb):
            self._BreakMirror(limb)
        lmb.Limb.Remove(limb)
        
    def RemoveLimbAndJoints(self, limb):
        if pm.listConnections(limb.mirrorLimb):
            self._BreakMirror(limb)
        joints = pm.listConnections(limb.joints)

        lmb.Limb.Remove(limb)
        for joint in joints:
            jnt.Joint.Delete(joint)
        
    def RenameLimb(self, limb, newName):
        if not genUtil.Name.IsValidCharacterLength(newName):
            msg = 'Limb Name Must be 2 or more characters'
            log.error(msg)
            return False
        if not genUtil.Name.DoesNotStartWithNumber(newName):
            msg = 'Cannot start with number OR _'
            log.error(msg)
            return False
        if not genUtil.Name.AreAllValidCharacters(newName):
            msg = 'May only contain A-Z, a-z, 0-9, _'
            log.error(msg)
            return False
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        if self._LimbNamesCount(rigRoot, newName) >= 2:
            msg = 'Rig may only contain 2 limbs of the same name'
            log.error(msg)
            return False
        self._RenameLimb(limb, newName)
        return True

    def FlipSides(self, sourceLimb):
        mirrors = pm.listConnections(sourceLimb.mirrorLimb)
        if not mirrors:
            msg = 'Limb must have mirror to flip sides'
            log.error(msg)
            return
        mirrorLimb = mirrors[0]
        rigRoot = pm.listConnections(sourceLimb.rigRoot)[0]
        side1 = sourceLimb.side.get()
        side2 = mirrorLimb.side.get()
        sourceLimb.side.set(side2)
        mirrorLimb.side.set(side1)
        genUtil.Name.UpdateLimbName(rigRoot, sourceLimb)
        genUtil.Name.UpdateLimbName(rigRoot, mirrorLimb)

    def SaveTemplate(self, rigRoot, limbs, filePath):
        log.funcFileInfo()
        curFile = pm.sceneName()
        pm.saveFile()

        # Delete Layers
        layers = [l for l in pm.ls(type='displayLayer') if str(l) != 'defaultLayer']
        pm.delete(layers)

        # Delete Extra Limbs / Joints
        jointGroup = pm.listConnections(rigRoot.jointsParentGroup)
        for limb in pm.listConnections(rigRoot.limbs):
            if limb not in limbs:
                joints = pm.listConnections(limb.joints)
                lmb.Limb.Remove(limb)
                for joint in joints:
                    for child in pm.listRelatives(joint, c=1):
                        pm.parent(child, jointGroup)
                    jnt.Joint.Remove(joint)

        rigRoot.rigMode.set(2) # To Template
        pm.saveAs(filePath, f=1)
        pm.openFile(curFile, f=1)

    def LoadTemplate(self, rigRoot, filePath):
        log.funcFileInfo()
        limbsParent = pm.listConnections(rigRoot.limbsParentGroup)[0]
        jointsParent = pm.listConnections(rigRoot.jointsParentGroup)[0]
        pm.importFile(filePath, rnn=1)
        roots = genUtil.GetRigRoots()
        tempRoot = [r for r in roots if r.rigMode.get()==2][0]

        # Reparent Limbs + Joints
        tempLimbs = pm.listConnections(tempRoot.limbs)
        tempJointGrp = pm.listConnections(tempRoot.jointsParentGroup)[0]
        for limb in tempLimbs:
            pm.parent(limb, limbsParent)
        for joint in pm.listRelatives(tempJointGrp, c=1):
            pm.parent(joint, jointsParent)
        pm.delete(tempRoot)
        
        # Setup limbs, joints IDs / Names
        controls = []
        for limb in tempLimbs:
            pm.connectAttr(rigRoot.limbs, limb.rigRoot)
            for group in pm.listConnections(limb.jointGroups):
                controls += pm.listConnections(group.control)
            for group in pm.listConnections(limb.limbGroups):
                controls += pm.listConnections(group.control)
            nextLimbID = rigRoot.nextLimbID.get()
            rigRoot.nextLimbID.set(nextLimbID + 1)
            limb.ID.set(nextLimbID)
            genUtil.Name.UpdateLimbName(rigRoot, limb)
            joints = pm.listConnections(limb.joints)
            for joint in joints:
                nextJointID = rigRoot.nextJointID.get()
                rigRoot.nextJointID.set(nextJointID + 1)
                joint.ID.set(nextJointID)
            pm.editDisplayLayerMembers( rigData.JOINTS_DISP_LAYER, 
                                        joints, nr=1)
        pm.editDisplayLayerMembers( rigData.CONTROL_DISP_LAYER, 
                                    controls, nr=1)
    
    def SetLimbLocationAsBody(self, limb):
        log.funcFileInfo()
        self._SetLimbLocation(limb, 0)

    def SetLimbLocationAsFace(self, limb):
        log.funcFileInfo()
        self._SetLimbLocation(limb, 1)

    def _SetLimbLocation(self, limb, value):
        log.funcFileInfo()
        limb.limbLocation.set(value)

#============= JOINTS ============================

    def JointTool(self):
        log.funcFileDebug()
        pm.mel.eval('JointTool()')

    def RenameJoint(self, joint, newName):
        oldName = joint.pfrsName.get()
        msg = '\t"%s" to "%s"' % (oldName, newName)
        log.info(msg)
        if not genUtil.Name.IsValidCharacterLength(newName):
            msg = 'Joint Name Must be 2 or more characters'
            log.error(msg)
        if not genUtil.Name.DoesNotStartWithNumber(newName):
            msg = 'Cannot start with number OR _'
            log.error(msg)
        if not genUtil.Name.AreAllValidCharacters(newName):
            msg = 'May only contain A-Z, a-z, 0-9, _'
            log.error(msg)
        limbs = pm.listConnections(joint.limb)
        if not limbs:
            msg = 'Cannot rename joint DISCONNECTED from limb'
            log.error(msg)
        limb = limbs[0]
        joints = pm.listConnections(limb.joints)
        jointNames = [j.pfrsName.get() for j in joints]
        if newName in jointNames:
            msg = 'Every limb joint name must be UNIQUE'
            log.error(msg)
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        self._RenameJoint(rigRoot, limb, joint, newName)

    def ReparentJoint(self, rigRoot, childJoint, parentJoint):
        if parentJoint:
            pm.parent(childJoint, parentJoint)
        if not parentJoint:
            jointGroup = pm.listConnections(rigRoot.jointsParentGroup)[0]
            pm.parent(childJoint, jointGroup)
        if not childJoint.hasAttr('limb'):
            return
        childLimbs = pm.listConnections(childJoint.limb)
        if not childLimbs:
            return
        childLimb = childLimbs[0]
        self.SetupDefaultLimbParent(childLimb)

    def ApplyAimUpToLimbJoints(self, limbs):
        folder = os.path.dirname(__file__)
        folder = os.path.dirname(folder)
        folder = os.path.dirname(folder)
        folder = os.path.join(folder, 'Data')
        filePath = os.path.join(folder, 'Config.json')
        config = genUtil.Json.Load(filePath)

        aimLM = rigData.JOINT_AIM_UP_VECTORS[config['jointAimAxis']]
        upLM = rigData.JOINT_AIM_UP_VECTORS[config['jointUpAxis']]
        aimR = (i*-1 for i in aimLM)
        upR = (i*-1 for i in upLM)
        for limb in limbs:
            aim = aimLM
            up = upLM
            if limb.side.get() == 2: # Right side
                aim = aimR
                up = upR
            for joint in pm.listConnections(limb.joints):
                self._ApplyAimUpToJoint(joint, aim, up)
                self.TransferRotationsToJointOrient(joint)

    def TransferRotationsToJointOrient(self, joint):
        temp = pm.group(em=1, p=joint)
        parent = pm.listRelatives(joint, p=1)[0]
        pm.parent(temp, parent)
        rot = pm.xform(temp, q=1, ro=1)
        joint.jointOrient.set(rot)
        joint.r.set(0, 0, 0)
        pm.delete(temp)

    def ExportJointAnimation(self, rigRoot, animName):
        log.funcFileDebug()
        curFile = pm.sceneName()
        animUtil.UpdateAnimFolder(rigRoot, curFile)
        pm.saveFile()
        limbs = pm.listConnections(rigRoot.limbs)
        animLimbs = self.bhvMng.BakeJointAnimation(limbs, animName)
        self._ExportAnimation(rigRoot, animLimbs, animName)
        pm.openFile(curFile, f=1)
    
    def _ExportAnimation(self, rigRoot, animLimbs, animName):
        # File paths
        jsonFileName = '%s.json' % animName
        mayaFileName = '%s.ma' % animName
        folder = rigRoot.animationFolderPath.get()
        jsonFilePath = os.path.join(folder, jsonFileName)
        mayaFilePath = os.path.join(folder, mayaFileName)

        # Anim Stuff
        start = pm.playbackOptions(q=1, ast=1)
        end = pm.playbackOptions(q=1, aet=1)

        # Delete layers, joints, unused limbs, groups
        layers = [l for l in pm.ls(type='displayLayer') if str(l) != 'defaultLayer']
        pm.delete(layers)
        pm.delete(pm.listConnections(rigRoot.jointsParentGroup))
        pm.delete(pm.listConnections(rigRoot.meshesParentGroup))
        pm.delete(pm.listConnections(rigRoot.controlTemplates))
        
        # DELETE LATER, MESH CLEANUP
        pm.delete([pm.listRelatives(m, p=1)[0] for m in pm.ls(type='mesh')])
        limbs = pm.listConnections(rigRoot.limbs)
        delLimbs = [l for l in limbs if l not in animLimbs]
        for limb in delLimbs:
            lmb.Limb.Remove(limb)
        for limb in animLimbs:
            for child in pm.listRelatives(limb, c=1):
                if not child.hasAttr('pfrsName'):
                    pm.delete(child)
                elif child.pfrsName.get() != animName:
                    pm.delete(child)
                else:
                    child.v.set(1)
        rigRoot.rigMode.set(3) # Baked Animations
        
        # Json file
        data = {}
        data['limbs'] = []
        for limb in animLimbs:
            data['limbs'].append([limb.pfrsName.get(), limb.side.get()])
        data['startFrame'] = start
        data['frameCount'] = end-start
        genUtil.Json.Save(jsonFilePath, data)

        # Save, Reopen, disable window
        pm.saveAs(mayaFilePath, f=1)

    def RemoveJointAnimation(self, rigRoot):
        log.funcFileDebug()
        for limb in pm.listConnections(rigRoot.limbs):
            pm.cutKey(pm.listConnections(limb.joints))

    def SetJointRotationToZero(self, limb):
        for joint in pm.listConnections(limb.joints):
            joint.r.set(0,0,0)

    def ResetControlTransforms(self, limb):
        for group in pm.listConnections(limb.jointGroups):
            joint = pm.listConnections(group.joint)[0]
            control = pm.listConnections(group.control)[0]
            pm.parent(group, joint)
            rigUtil.ResetAttrs(group)
            # Center control pivot
            c = pm.objectCenter(control, gl=1)
            pm.move(c[0], c[1], c[2], 
                    control.scalePivot, 
                    control.rotatePivot, ws=1)
            rigUtil.ResetAttrs(control)
            pm.parent(group, limb)

    def _ApplyAimUpToJoint(self, joint, aimVector, upVector):
        children = pm.listRelatives(joint, c=1)
        if children:
            pm.parent(children, w=1)
            pm.select(d=1)
            cst = pm.aimConstraint(children[0], joint, 
                                    aim=aimVector, u=upVector) 
            pm.delete(cst)
            pm.parent(children, joint)
        else:
            joint.r.set(0, 0, 0)
            joint.jointOrient.set(0, 0, 0)

    def _MirrorFaceJoints(self, joints):
        config = self._GetConfig()
        index = config['jointUpAxis']
        upVector = rigData.JOINT_AIM_UP_VECTORS[index]
        rot = [abs(i*180) for i in upVector]
        self._FlipJoints(joints, rot)

    def _MirrorBodyJoints(self, joints):
        config = self._GetConfig()
        aimIndex = config['jointAimAxis']
        upIndex = config['jointUpAxis']
        aimVector = rigData.JOINT_AIM_UP_VECTORS[aimIndex]
        upVector = rigData.JOINT_AIM_UP_VECTORS[upIndex]
        rot = [1,1,1]
        rot = [rot[i] - abs(aimVector[i]) for i in range(3)]
        rot = [rot[i] - abs(upVector[i]) for i in range(3)]
        rot = [rot[i] * 180 for i in range(3)]
        self._FlipJoints(joints, rot)

    def _FlipJoints(self, joints, jointRotation):
        sourceTargetJoints = {}
        for joint in joints:
            sourceTargetJoints[joint] = joint
        self._UpdateMirrorJoints(sourceTargetJoints, jointRotation)

    def _UpdateMirrorLimbJoints(self, sourceLimb, jointRotation):
        sourceGroups = pm.listConnections(sourceLimb.jointGroups)
        sourceGroups = rigUtil.SortGroups(sourceGroups)
        sourceJoints = [pm.listConnections(g.joint)[0] for g in sourceGroups]
        mirrorLimb = pm.listConnections(sourceLimb.mirrorLimb)[0]
        mirrorGroups = pm.listConnections(mirrorLimb.jointGroups)
        mirrorGroups = rigUtil.SortGroups(mirrorGroups)
        mirrorJoints = [pm.listConnections(g.joint)[0] for g in mirrorGroups]
        sourceTargetJoints = {}
        for i in range(len(sourceJoints)):
            s = sourceJoints[i]
            m = mirrorJoints[i]
            sourceTargetJoints[s] = m
        self._UpdateMirrorJoints(sourceTargetJoints, jointRotation)

    def _UpdateMirrorJoints(self, sourceTargetJoints, jointRotation):
        jointParents = {} # joint : parent
        jointGroups = {} # joint : group

        # Store parents + create joint group
        for sourceJoint, mirrorJoint in sourceTargetJoints.items():
            jointParents[mirrorJoint] = pm.listRelatives(mirrorJoint, p=1)[0]
            jointGroups[mirrorJoint] = pm.group(em=1, p=sourceJoint)

        # Group groups + flip
        rootGroup = pm.group(em=1, w=1)
        groups = list(jointGroups.values())
        pm.parent(groups, rootGroup)
        pm.xform(rootGroup, s=(-1, 1, 1))
        pm.parent(groups, w=1)
        pm.makeIdentity(groups, a=1, s=1)
        pm.delete(rootGroup)

        # Pos + rot joints
        for targetJoint, group in jointGroups.items():
            pm.parent(targetJoint, group)
            targetJoint.t.set(0,0,0)
            targetJoint.r.set(0,0,0)
            targetJoint.jointOrient.set(jointRotation)
            
        # Reparent joints
        for child, parent in jointParents.items():
            pm.parent(child, parent)

        pm.delete(groups)

#============= MISC ============================

    def _IsChildAParent(self, child, parent):
        if parent == child:
            return True
        parents = pm.listConnections(parent.limbParent)
        if not parents:
            return False
        return self._IsChildAParent(child, parents[0])

    def _InitBehavior(self, rigRoot, limb):
        self.bhvMng.InitLimb(limb)
        rigUtil.UpdateUsedControlMaterials(rigRoot, limb)

    def _LimbNamesCount(self, rigRoot, limbName):
        limbs = pm.listConnections(rigRoot.limbs)
        names = [limb.pfrsName.get() for limb in limbs]
        return names.count(limbName)

    def _JointNamesCount(self, rigRoot, limbName):
        limbs = pm.listConnections(rigRoot.limbs)
        names = [limb.pfrsName.get() for limb in limbs]
        return names.count(limbName)

    def InitSceneJoints(self, rigRoot):
        log.funcFileInfo()
        jointGroup = pm.listConnections(rigRoot.jointsParentGroup)[0]
        joints = pm.ls(type='joint')
        newJoints = []
        for joint in joints:
            parent = pm.listRelatives(joint, p=1)
            if not parent or pm.objectType(parent[0]) != 'joint':
                pm.parent(joint, jointGroup)
            if not pm.listConnections(joint.tx, type='animLayer'):
                newJoints.append(joint)
        if newJoints:
            pm.select(newJoints)

    def _GetConfig(self):
        folder = os.path.dirname(__file__)
        folder = os.path.dirname(folder)
        folder = os.path.dirname(folder)
        folder = os.path.join(folder, 'Data')
        filePath = os.path.join(folder, 'Config.json')
        return genUtil.Json.Load(filePath)

#============= RELATIONSHIP ============================

    def _BreakMirror(self, sourceLimb):
        log.funcFileDebug()
        mirrorLimb = pm.listConnections(sourceLimb.mirrorLimb)[0]
        mirrorLimb.side.set(0)
        sourceLimb.side.set(0)
        pm.disconnectAttr(sourceLimb.mirrorLimb)
        rigRoot = pm.listConnections(mirrorLimb.rigRoot)[0]
        genUtil.Name.UpdateLimbName(rigRoot, mirrorLimb)

    def _UpdateMirrorConnection(self, rigRoot, limb):
        log.funcFileDebug()
        # PAIR WITH MIRROR
        name = limb.pfrsName.get()
        allLimbs = pm.listConnections(rigRoot.limbs)
        names = [l.pfrsName.get() for l in allLimbs]
        if (names.count(name) == 2):
            for mirrorLimb in allLimbs:
                if (mirrorLimb.pfrsName.get() == name):
                    if mirrorLimb != limb:
                        break
            pm.connectAttr(limb.mirrorLimb, mirrorLimb.mirrorLimb)
            mirrorLimb.side.set(1)
            limb.side.set(2)
            rigUtil.UpdateUsedControlMaterials(rigRoot, limb)
            rigUtil.UpdateUsedControlMaterials(rigRoot, mirrorLimb)
            genUtil.Name.UpdateLimbName(rigRoot, mirrorLimb)

        # BREAK MIRROR
        else:
            mirrorLimbs = pm.listConnections(limb.mirrorLimb)
            if mirrorLimbs:
                self._BreakMirror(limb)
                rigUtil.UpdateUsedControlMaterials(rigRoot, limb)
                rigUtil.UpdateUsedControlMaterials(rigRoot, mirrorLimbs[0])

    def _RenameLimb(self, sourceLimb, newName): # list should repopulate after call
        log.funcFileDebug()
        rigRoot = pm.listConnections(sourceLimb.rigRoot)[0]
        # Rename joints if limb named as preset 'leg', 'arm'...
        if newName.lower() in rigData.LIMB_JOINT_NAME_PRESETS:
            jointNames = rigData.LIMB_JOINT_NAME_PRESETS[newName.lower()]
            for joint in pm.listConnections(sourceLimb.joints):
                group = pm.listConnections(joint.group)[0]
                index = group.groupIndex.get()
                if index < len(jointNames):
                    joint.pfrsName.set(jointNames[index])
        # Rename joints if they're default names
        else:
            oldName = sourceLimb.pfrsName.get()
            for joint in pm.listConnections(sourceLimb.joints):
                jointName = joint.pfrsName.get()
                if 'Joint' in jointName or oldName in jointName:
                    group = pm.listConnections(joint.group)[0]
                    index = group.groupIndex.get()
                    indexStr = '%03d' % (index + 1)
                    joint.pfrsName.set(newName + indexStr)
        sourceLimb.pfrsName.set(newName)
        self._UpdateMirrorConnection(rigRoot, sourceLimb)
        genUtil.Name.UpdateLimbName(rigRoot, sourceLimb)
        for childLimb in pm.listConnections(sourceLimb.limbChildren):
            if self._UpdateParentControlEnum(childLimb):
                self._UpdateParentControlIndex(childLimb)
        return True
    
    def _RenameJoint(self, rigRoot, limb, joint, newName):
        joint.pfrsName.set(newName)
        genUtil.Name.UpdateJointName(rigRoot, limb, joint)
        for childLimb in pm.listConnections(limb.limbChildren):
            self._UpdateParentControlEnum(childLimb)

    def SetupDefaultLimbParent(self, limb):
        jointGroups = pm.listConnections(limb.jointGroups)
        jointGroups = rigUtil.SortGroups(jointGroups)
        joints = [pm.listConnections(g.joint)[0] for g in jointGroups]
        joint = joints[0]
        parentLimb = None
        parentJoints = pm.listRelatives(joint, p=1, type='joint')
        if parentJoints:
            parentJoint = parentJoints[0]
            if parentJoint.hasAttr('limb'):
                parentLimbs = pm.listConnections(parentJoint.limb)
                if parentLimbs:
                    parent = parentLimbs[0]
                    if limb != parent:
                        if not self._IsChildAParent(limb, parent):
                            parentLimb = parent
        self._ReparentLimb(limb, parentLimb)

    def SetupDefaultLimbChildren(self, limb):
        joints = pm.listConnections(limb.joints)
        for joint in joints:
            childrenJoints = pm.listRelatives(joint, c=1)
            for childJoint in childrenJoints:
                if not childJoint.hasAttr('limb'):
                    continue
                childLimbs = pm.listConnections(childJoint.limb)
                if not childLimbs:
                    continue
                childLimb = childLimbs[0]
                if childLimb == limb:
                    continue
                pm.disconnectAttr(childLimb.limbParent)
                pm.connectAttr(limb.limbChildren, childLimb.limbParent)

    def ApplyJointAimUp(self, limb):
        log.funcFileInfo()
        # config = self._GetConfig()
        # aim = config['jointAimAxis']
        # up = config['jointUpAxis']
        # MISSING

    def ApplyMirrorAimUp(self, limb):
        log.funcFileInfo()
        # config = self._GetConfig()
        # aim = config['mirrorAimAxis']
        # up = config['mirrorUpAxis']
        # mISSING

    def _GetConfig(self):
        folder = os.path.dirname(__file__)
        folder = os.path.dirname(folder)
        folder = os.path.dirname(folder)
        folder = os.path.join(folder, 'Data')
        filePath = os.path.join(folder, 'Config.json')
        return genUtil.Json.Load(filePath)

    def _ResetToDefaultParent(self, limbs):
        log.funcFileDebug()
        limbParents = genUtil.GetDefaultLimbHier(limbs)
        for child in limbs:
            parent = limbParents[child]
            self._ReparentLimb(child, parent)

    def _ReparentLimb(self, childLimb, parentLimb):
        log.funcFileDebug()
        pm.disconnectAttr(childLimb.limbParent)
        if parentLimb:
            pm.connectAttr(parentLimb.limbChildren, childLimb.limbParent)
        if self._UpdateParentControlEnum(childLimb):
            self._UpdateParentControlIndex(childLimb)
    
    def _UpdateParentControlEnum(self, childLimb):
        log.funcFileDebug()
        parentGroups = rigUtil.GetJointGroupsOfParent(childLimb)
        if not parentGroups:
            pm.addAttr(childLimb.limbParentJoint, e=1, en='None', dv=0)
            return False
        parentJoints = [pm.listConnections(g.joint)[0] for g in parentGroups]
        parentJointNames = [j.pfrsName.get() for j in parentJoints]
        namesStr = ':'.join(parentJointNames)
        pm.addAttr(childLimb.limbParentJoint, e=1, en=namesStr)
        return True

    def _UpdateParentControlIndex(self, childLimb):
        log.funcFileDebug()
        parentGroups = rigUtil.GetJointGroupsOfParent(childLimb)
        childGroups = pm.listConnections(childLimb.jointGroups)
        childGroup = rigUtil.SortGroups(childGroups)[0]
        sourcePos = pm.xform(childGroup, q=1, t=1, ws=1)
        index = self._GetClosestGroupIndex(sourcePos, parentGroups)
        childLimb.limbParentJoint.set(index)

    def _GetClosestGroupIndex(self, sourcePos, groups):
        log.funcFileDebug()
        distances = {} # dist : [targetJoint1, joint2...]
        for group in groups:
            targetPos = pm.xform(group, q=1, t=1, ws=1)
            dist = 0
            for i in range(3):
                dist += (sourcePos[i]-targetPos[i])**2
            if dist not in distances:
                distances[dist] = []
            distances[dist].append(group)
        targetDist = sorted(list(distances.keys()))[0]
        group = distances[targetDist][0]
        return groups.index(group)


