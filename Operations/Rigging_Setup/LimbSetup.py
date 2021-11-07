
import inspect
import os
import sys

import pymel.core as pm

import Abstracts.Abstract_Operation as absOp
import Utilities.Logger as log
import Data.Rig_Data as rigData
import SceneData.Limb as lmb
import SceneData.Joint as jnt
import Utilities.General_Utilities as genUtil
import Utilities.Rig_Utilities as rigUtil
import Abstracts.Abstract_Autobuild as absBld
import SceneData.Preset as pst
import Operations.Skinning_Setup.MeshSetup as msh

class LimbSetup(absOp.Abstract_Operation):
    isRigBuilt = False
    applyBakedAnimations = False
    areLimbsRequired = False
    areMeshesRequired = False
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
            if buildFile.startswith('__'):
                continue
            fileName = os.path.splitext(buildFile)[0]
            moduleName = 'Operations.Rigging_Setup.Autobuild.%s' % fileName
            exec('import %s' % moduleName)
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
        
#============= LIMBS ============================

    def GetLimbFuncForJoints(self, joints):
        if (len(joints) == 1):
            return lmb.Limb.AddOneJointBranch
        elif rigUtil.AreJointsSiblings(joints):
            return lmb.Limb.AddTwoJointBranch
        elif rigUtil.AreJointsChained(joints):
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
        if not rigUtil.AreJointsDisconnected(joints):
            raise ValueError('Joints must be DISCONNECTED from LIMB')
        createLimbFunc = self.GetLimbFuncForJoints(joints)
        if not createLimbFunc:
            msg = 'Joints must be either chained or siblings'
            msg += ' of same parent'
            raise ValueError(msg)
        limb = createLimbFunc(rigRoot, joints)
        self._InitBehavior(rigRoot, limb)
        return limb

    def AddEmptyLimb(self, rigRoot):
        log.funcFileDebug()
        limb = lmb.Limb.AddEmpty(rigRoot)
        self._InitBehavior(rigRoot, limb)
        return limb

    def DuplicateLimbs(self, limbs):
        newLimbs = []
        rigRoot = pm.listConnections(limbs[0].rigRoot)[0]
        oldJoints = []
        for oldLimb in limbs:
            oldJoints += pm.listConnections(oldLimb.joints)

        # Duplicate Limb
        newParts = pm.duplicate(limbs, oldJoints, ic=1, rc=1)
        newLimbs = newParts[:len(limbs)]
        newJoints = newParts[len(limbs):]
        for newLimb in newLimbs:
            nextID = rigRoot.nextLimbID.get()
            rigRoot.nextLimbID.set(nextID + 1)
            newLimb.ID.set(nextID)
            self.RenameLimb(newLimb, newLimb.pfrsName.get() + '_Copy')
        for newJoint in newJoints:
            nextID = rigRoot.nextJointID.get()
            rigRoot.nextJointID.set(nextID + 1)
            newJoint.ID.set(nextID)
            for child in pm.listRelatives(newJoint, c=1, type='joint'):
                if child in newJoints:
                    continue
                pm.delete(child)
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
        pm.select(d=1)
    
    def MirrorFaceLimbs(self, limbs, axisLetter):
        newLimbs = self.DuplicateLimbs(limbs)
        newJoints = []
        for newLimb in newLimbs:
            newJoints += pm.listConnections(newLimb.joints)
        self._MirrorFaceJoints(newJoints)
        self._MirrorLimbs(limbs, newLimbs, axisLetter)
        for limb in newLimbs + limbs:
            limb.limbLocation.set(1) # Face
        pm.select(d=1)

    def _MirrorLimbs(self, oldLimbs, newLimbs, axisLetter):
        scale = self.mirrorAxisScales[axisLetter.upper()]
        for oldLimb, newLimb in zip(oldLimbs, newLimbs):
            self.RenameLimb(newLimb, oldLimb.pfrsName.get())
            limbGroups = pm.listConnections(newLimb.limbGroups)
            if limbGroups:
                oldParents = {}
                for group in limbGroups:
                    oldParents[group] = pm.listRelatives(group, p=1)
                rootGroup = pm.group(em=1, w=1)
                pm.parent(limbGroups, rootGroup)
                pm.xform(rootGroup, s=scale)
                for group in limbGroups:
                    parents = oldParents[group]
                    if parents: # Delete later, after limbsetup
                        parent = parents[0]
                        pm.parent(group, parent)
                    else:
                        pm.parent(group, w=1)
                pm.makeIdentity(limbGroups, a=1, s=1, pn=1)
                pm.delete(rootGroup)
            jointGroups = pm.listConnections(newLimb.jointGroups)
            for jointGroup in jointGroups:
                control = pm.listConnections(jointGroup.control)[0]
                pm.polyNormal(control, nm=2, ch=0) 

    def UpdateMirrorJoints(self, limb):
        config = self._GetConfig()
        if limb.limbLocation.get() == 1: # Face
            index = config['jointUpAxis']
            upVector = rigData.JOINT_AIM_UP_VECTORS[index]
            rot = [abs(i*180) for i in upVector]
        else:
            aimIndex = config['jointAimAxis']
            upIndex = config['jointUpAxis']
            aimVector = rigData.JOINT_AIM_UP_VECTORS[aimIndex]
            upVector = rigData.JOINT_AIM_UP_VECTORS[upIndex]
            rot = [1,1,1]
            rot = [rot[i] - abs(aimVector[i]) for i in range(3)]
            rot = [rot[i] - abs(upVector[i]) for i in range(3)]
            rot = [rot[i] * 180 for i in range(3)]
        self._UpdateMirrorLimbJoints(limb, rot)

    def RemoveLimb(self, limb):
        if pm.listConnections(limb.mirrorLimb):
            self._BreakMirror(limb)
        self.bhvMng.CleanupLimb(limb)
        lmb.Limb.Remove(limb)
        
    def RemoveLimbAndJoints(self, limb):
        if pm.listConnections(limb.mirrorLimb):
            self._BreakMirror(limb)
        joints = pm.listConnections(limb.joints)

        lmb.Limb.Remove(limb)
        for joint in joints:
            jnt.Joint.Delete(joint)
        
    def RenameLimb(self, limb, newName):
        if not genUtil.IsValidCharacterLength(newName):
            msg = 'Limb Name Must be 2 or more characters'
            log.error(msg)
            return False
        if not genUtil.DoesNotStartWithNumber(newName):
            msg = 'Cannot start with number OR _'
            log.error(msg)
            return False
        if not genUtil.AreAllValidCharacters(newName):
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
        genUtil.UpdateLimbName(rigRoot, sourceLimb)
        genUtil.UpdateLimbName(rigRoot, mirrorLimb)

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

    def LoadTemplate(self, rigRoot, filePath, suffix):
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
            pfrsName = limb.pfrsName.get() + suffix
            limb.pfrsName.set(pfrsName)
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
            genUtil.UpdateLimbName(rigRoot, limb)
            joints = pm.listConnections(limb.joints)
            for joint in joints:
                nextJointID = rigRoot.nextJointID.get()
                rigRoot.nextJointID.set(nextJointID + 1)
                joint.ID.set(nextJointID)
            pm.editDisplayLayerMembers( rigData.JOINTS_DISP_LAYER, 
                                        joints, nr=1)
        pm.editDisplayLayerMembers( rigData.CONTROL_DISP_LAYER, 
                                    controls, nr=1)
    
    def SetLimbLocation(self, limb, locationIndex):
        log.funcFileInfo()
        limb.limbLocation.set(locationIndex)

#============= JOINTS ============================

    def JointTool(self):
        log.funcFileDebug()
        pm.mel.eval('JointTool()')

    def RenameJoint(self, joint, newName):
        oldName = joint.pfrsName.get()
        msg = '\t"%s" to "%s"' % (oldName, newName)
        log.info(msg)
        if not genUtil.IsValidCharacterLength(newName):
            msg = 'Joint Name Must be 2 or more characters'
            log.error(msg)
            return False
        if not genUtil.DoesNotStartWithNumber(newName):
            msg = 'Cannot start with number OR _'
            log.error(msg)
            return False
        if not genUtil.AreAllValidCharacters(newName):
            msg = 'May only contain A-Z, a-z, 0-9, _'
            log.error(msg)
            return False
        limbs = pm.listConnections(joint.limb)
        if not limbs:
            msg = 'Cannot rename joint DISCONNECTED from limb'
            log.error(msg)
            return False
        limb = limbs[0]
        joints = pm.listConnections(limb.joints)
        jointNames = [j.pfrsName.get() for j in joints]
        if newName in jointNames:
            msg = 'Every limb joint name must be UNIQUE'
            log.error(msg)
            return False
        rigRoot = pm.listConnections(limb.rigRoot)[0]
        self._RenameJoint(rigRoot, limb, joint, newName)
        return True

    def ReparentJoint(self, rigRoot, childJoint, parentJoint):
        if parentJoint:
            pm.parent(childJoint, parentJoint)
        else:
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
        config = self._GetConfig()

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
                self.FreezeJointRotations(joint)

    def FreezeJointRotations(self, joint):
        temp = pm.group(em=1, p=joint)
        parent = pm.listRelatives(joint, p=1)[0]
        pm.parent(temp, parent)
        rot = pm.xform(temp, q=1, ro=1)
        joint.jointOrient.set(rot)
        joint.r.set(0, 0, 0)
        pm.delete(temp)

    def ExportAnimation(self, rigRoot, animFilePath):
        log.funcFileDebug()
        curFile = pm.sceneName()
        pm.saveFile()
        jointDict = self.bhvMng.SetupAnimJoints(rigRoot)

        # Inter-Parent Anim joints between limbs
        for joint, animJoint in jointDict.items():
            parentJoint = pm.listRelatives(joint, p=1)[0]
            if parentJoint not in jointDict:
                continue
            parentAnimJoint = jointDict[parentJoint]
            pm.parent(animJoint, parentAnimJoint)

        # Delete layers, joints, unused limbs, groups
        layers = pm.ls(type='displayLayer')
        layers = [l for l in layers if str(l) != 'defaultLayer']
        pm.delete(layers)
        rigGroups = pm.listRelatives(rigRoot, c=1)
        jointParentGroup = pm.listConnections(rigRoot.jointsParentGroup)[0]
        limbParentGroup = pm.listConnections(rigRoot.limbsParentGroup)[0]
        for group in rigGroups:
            if group not in (jointParentGroup, limbParentGroup):
                pm.delete(group)

        rigRoot.rigMode.set(3) # Baked Animations
        
        # Remove reg joint anims, joint groups
        limbs = pm.listConnections(rigRoot.limbs)
        joints = []
        for limb in limbs:
            joints += pm.listConnections(limb.joints)
        pm.cutKey(joints)

        # Hide stuff
        for joint in joints:
            joint.v.set(0)
        rigUtil.ChannelBoxAttrs(limbParentGroup,0,0,0,1)
        limbParentGroup.v.set(0)

        # Save, Reopen, disable window
        mayaFilePath = animFilePath + '.ma'
        pm.saveAs(mayaFilePath, f=1)
        pm.openFile(curFile, f=1)
        if os.path.exists(animFilePath):
            os.remove(animFilePath)
        os.rename(mayaFilePath, animFilePath)

    def RemoveAnimation(self, rigRoot):
        log.funcFileDebug()
        joints = []
        for limb in pm.listConnections(rigRoot.limbs):
            joints += pm.listConnections(limb.joints)
        pm.cutKey(joints)

    def SetJointRotationToZero(self, limb):
        for joint in pm.listConnections(limb.joints):
            joint.r.set(0,0,0)

    def FreezeJointScale(self, limbs):
        jointChildren = {}
        toDelete = []
        for limb in limbs:
            for joint in pm.listConnections(limb.joints):
                for child in pm.listRelatives(joint, c=1):
                    jointChildren[child] = joint
                    pm.parent(child, w=1)
                    toDelete += pm.listRelatives(child, p=1)
        for limb in limbs:
            joints = pm.listConnections(limb.joints)
            for joint in joints:
                if joint not in jointChildren:
                    parent = pm.listRelatives(joint, p=1)[0]
                    pm.parent(joint, w=1)
                    jointChildren[joint] = parent
                    toDelete += pm.listRelatives(joint, p=1)
        joints = []
        for joint in set(jointChildren.values()):
            if pm.objectType(joint) == 'joint':
                joints.append(joint)
                joint.radius.set(1)
                parents = pm.listRelatives(joint, p=1)
                if parents:
                    parent = parents[0]
                    joints.append(parent)
        pm.makeIdentity(joints, a=1, s=1)
        for child, joint in jointChildren.items():
            pm.parent(child, joint)
            if pm.objectType(child) != 'joint':
                pm.makeIdentity(child, a=1, s=1)
        pm.delete(toDelete)

    def ResetControlTransforms(self, limb):
        for group in pm.listConnections(limb.jointGroups):
            joint = pm.listConnections(group.joint)[0]
            control = pm.listConnections(group.control)[0]
            pm.parent(group, joint)
            rigUtil.ResetAttrs(group)
            # Center control pivot
            center = pm.objectCenter(control, gl=1)
            pm.xform(control, piv=center)
            # pm.move(c[0], c[1], c[2], 
            #         control.scalePivot, 
            #         control.rotatePivot, ws=1)
            rigUtil.ResetAttrs(control)
            pm.parent(group, limb)

    def MakeLimbJointsPlanar(self, limb):
        joints = rigUtil.GetSortedLimbJoints(limb)
        j1 = joints[0]
        j2 = joints[1]
        j3 = joints[-1]
        
        # Get vectors
        pos1 = pm.xform(j1, t=1, q=1, ws=1)
        pos2 = pm.xform(j2, t=1, q=1, ws=1)
        pos3 = pm.xform(j3, t=1, q=1, ws=1)
        v12 = (pos2[0] - pos1[0], pos2[1] - pos1[1], pos2[2] - pos1[2])
        v13 = (pos3[0] - pos1[0], pos3[1] - pos1[1], pos3[2] - pos1[2])

        # Get Angle
        dot = (v12[0]*v13[0] + v12[1]*v13[1] + v12[2]*v13[2])
        mag12 = (v12[0]**2 + v12[1]**2 + v12[2]**2)**0.5
        mag13 = (v13[0]**2 + v13[1]**2 + v13[2]**2)**0.5
        magProd = mag12 * mag13
        cosAngle = dot / magProd

        # Get perp v13 point
        scalar = (cosAngle*mag12)/ mag13
        v13s = (scalar*v13[0], scalar*v13[1], scalar*v13[2])
        posP = (v13s[0]+pos1[0], v13s[1]+pos1[1], v13s[2]+pos1[2])
        vp = (pos2[0]-posP[0], pos2[1]-posP[1], pos2[2]-posP[2])
        
        # cross vector
        vc = [  v12[1]*vp[2] - v12[2]*vp[1],
                v12[2]*vp[0] - v12[0]*vp[2],
                v12[0]*vp[1] - v12[1]*vp[0]]
        vcSquared = vc[0]**2 + vc[1]**2 + vc[2]**2
        magC = (vcSquared)**0.5
        vc = [vc[i]/magC for i in range(3)]
        
        # project joints onto plane
        for joint in joints[2:-1]:
            children = pm.listRelatives(joint, c=1)
            pm.parent(children, w=1)
            posJ = pm.xform(joint, t=1, q=1, ws=1)
            top = vc[0]*pos1[0] - vc[0]*posJ[0]
            top += vc[1]*pos1[1] - vc[1]*posJ[1]
            top += vc[2]*pos1[2] - vc[2]*posJ[2]
            vcj = [vc[i]*top for i in range(3)]
            newPos = (vcj[0]+posJ[0], vcj[1]+posJ[1], vcj[2]+posJ[2])
            pm.xform(joint, t=newPos, ws=1)
            pm.parent(children, joint)

        config = self._GetConfig()
        aimLM = rigData.JOINT_AIM_UP_VECTORS[config['jointAimAxis']]
        aimUP = rigData.JOINT_AIM_UP_VECTORS[config['jointUpAxis']]
        for joint in joints:
            self._ApplyAimUpToJoint(joint, aimLM, aimUP, vp)
            self.FreezeJointRotations(joint)

    def _ApplyAimUpToJoint(self, joint, aimVector, upVector, 
                                    worldUpVector=(0,1,0)):
        children = pm.listRelatives(joint, c=1)
        if children:
            pm.parent(children, w=1)
            pm.select(d=1)
            cst = pm.aimConstraint(children[0], joint, 
                                    aim=aimVector, u=upVector,
                                    wu=worldUpVector) 
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

#============= RELATIONSHIP ============================

    def _BreakMirror(self, sourceLimb):
        log.funcFileDebug()
        mirrorLimb = pm.listConnections(sourceLimb.mirrorLimb)[0]
        mirrorLimb.side.set(0)
        sourceLimb.side.set(0)
        pm.disconnectAttr(sourceLimb.mirrorLimb)
        rigRoot = pm.listConnections(mirrorLimb.rigRoot)[0]
        genUtil.UpdateLimbName(rigRoot, mirrorLimb)

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
            genUtil.UpdateLimbName(rigRoot, mirrorLimb)

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
        limbNamePresets = self._GetLimbNamePresets()
        if newName.lower() in limbNamePresets:
            jointNames = limbNamePresets[newName.lower()]
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
                if jointName.startswith('Joint') or jointName.startswith(oldName):
                    group = pm.listConnections(joint.group)[0]
                    index = group.groupIndex.get()
                    indexStr = '%03d' % (index + 1)
                    joint.pfrsName.set(newName + indexStr)
        sourceLimb.pfrsName.set(newName)
        self._UpdateMirrorConnection(rigRoot, sourceLimb)
        genUtil.UpdateLimbName(rigRoot, sourceLimb)
        for childLimb in pm.listConnections(sourceLimb.limbChildren):
            if self._UpdateParentControlEnum(childLimb):
                self._UpdateParentControlIndex(childLimb)
        return True
    
    def _GetLimbNamePresets(self):
        folder = os.path.dirname(__file__)
        folder = os.path.dirname(folder)
        folder = os.path.dirname(folder)
        folder = os.path.join(folder, 'Data')
        filePath = os.path.join(folder, 'LimbNamePresets.json')
        return genUtil.Json.Load(filePath)

    def _RenameJoint(self, rigRoot, limb, joint, newName):
        joint.pfrsName.set(newName)
        genUtil.UpdateJointName(rigRoot, limb, joint)
        for childLimb in pm.listConnections(limb.limbChildren):
            self._UpdateParentControlEnum(childLimb)

    def SetupDefaultLimbParent(self, limb):
        joint = rigUtil.GetSortedLimbJoints(limb)[0]
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
        if pm.listConnections(childLimb.animJoints):
            childLimb.toBeBaked.set(1)
    
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
        targetDist = sorted(distances.keys())[0]
        group = distances[targetDist][0]
        return groups.index(group)

    def RebuildSkins(self, rigRoot):
        meshSetup = msh.MeshSetup()
        meshSetup.bhvMng = self.bhvMng
        for mesh in pm.listConnections(rigRoot.meshes):
            meshSetup.RebuildSkin(mesh)
