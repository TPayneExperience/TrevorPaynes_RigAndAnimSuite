
# from maya import cmds
import pymel.core as pm

import SKEL_Scene_Limb_Chain as cl
import SKEL_Scene_Limb_Branch as bl
import SKEL_Scene_Limb_LinearChain as lcl
import SKEL_Scene_Limb_LinearBranch as lbl

reload(cl)
reload(bl)
reload(lcl)
reload(lbl)


class SKEL_Scene_Limb_Manager():
    def __init__(self, limbManager, jointManager, nameManager):
        self.limbMng = limbManager
        self.jntMng = jointManager
        self.nameMng = nameManager

        self.displaySize = 1

        self.limbBuildTypes = { 
            self.limbMng.GetTypes()[0]: cl.SKEL_Scene_Limb_Chain(self),
            self.limbMng.GetTypes()[1]: bl.SKEL_Scene_Limb_Branch(self),
            self.limbMng.GetTypes()[2]: lcl.SKEL_Scene_Limb_LinearChain(self),
            self.limbMng.GetTypes()[3]: lbl.SKEL_Scene_Limb_LinearBranch(self)
            }
        
        self.NewRig()

    def NewRig(self):
        # Always track old data, for teardowns
        self.sceneJoints = {} # ID : sceneJoint 
        self.jointCtrs = {} # jointID : jointCtr
        self.limbCtrs = {} # limbID : limbCtr
        self.limbTypes = {} # limbID : str Type, 'chain', 'branch'...
            # For after the limb type has changed, and teardown needed


#======= SETUP + TEARDOWNS ===================================

    # JOINT INTERNAL PARENTS
    def Setup_Internal_JointParents(self, limbID):
        limbType = self.limbMng.GetType(limbID)
        self.limbTypes[limbID] = limbType
        limbBuilder = self.limbBuildTypes[limbType]
        limbBuilder.Setup_Internal_JointParents(limbID)
    
    def Teardown_Internal_JointParents(self, limbID):
        limbType = self.limbTypes[limbID]
        limbBuilder = self.limbBuildTypes[limbType]
        limbBuilder.Teardown_Internal_JointParents(limbID)
        del(self.limbTypes[limbID])

    # JOINT EXTERNAL PARENTS
    def Setup_External_JointParents(self, limbID):
        limbType = self.limbTypes[limbID]
        limbBuilder = self.limbBuildTypes[limbType]
        limbBuilder.Setup_External_JointParents(limbID)
    
    def Teardown_External_JointParents(self, limbID):
        limbType = self.limbTypes[limbID]
        limbBuilder = self.limbBuildTypes[limbType]
        limbBuilder.Teardown_External_JointParents(limbID)

    # JOINT CONTROLS
    def Setup_JointControls(self, limbID):
        limbType = self.limbTypes[limbID]
        limbBuilder = self.limbBuildTypes[limbType]
        ctrs = limbBuilder.Setup_JointControls(limbID)
        for ctr in ctrs:
            pm.addAttr(ctr, longName = 'limbID', at='short')
            pm.setAttr(ctr + '.limbID', limbID)
            for attr in ['sx', 'sy', 'sz']:
                pm.setAttr(ctr + '.' + attr, k=0)
            pm.setAttr(ctr + '.v', l=1, k=0)
            pm.xform(ctr, s=[self.displaySize, 
                            self.displaySize, 
                            self.displaySize])
        
    def Teardown_JointControls(self, limbID):
        limbType = self.limbTypes[limbID]
        limbBuilder = self.limbBuildTypes[limbType]
        limbBuilder.Teardown_JointControls(limbID)
    
    # LIMB CONTROLS
    def Setup_LimbControl(self, limbID, rootCtrGrp):
        jointIDs = self.jntMng.GetLimbJointIDs(limbID)
        name = self.GetLimbCtrName(limbID)
        ctr = pm.circle(name=name)[0]
        joint = self.jntMng.GetJoint(jointIDs[0])
        pm.xform(ctr, t=joint.t.get(), ro=joint.rotate.get())
        for ID in jointIDs:
            pm.parent(self.jointCtrs[ID], ctr)
        pm.parent(ctr, rootCtrGrp)
        self.limbCtrs[limbID] = ctr
        pm.addAttr(ctr, longName = 'limbID', at='short')
        pm.setAttr(ctr + '.limbID', limbID)
        pm.setAttr(ctr + '.v', l=1, k=0)

    def Teardown_LimbControl(self, limbID, rootCtrGrp):
        jointIDs = self.jntMng.GetLimbJointIDs(limbID)
        for jointID in jointIDs:
            pm.parent(self.jointCtrs[jointID], rootCtrGrp)
        pm.select(d=1)
        if self.limbCtrs[limbID]:
            pm.delete(self.limbCtrs[limbID])
        del(self.limbCtrs[limbID])

#======= ACCESSORS  ===================================

    def GetJointCtrName(self, limbID, jointID):
        return self.nameMng.GetName(limbID, jointID, 'JCTR')
    
    def GetLimbCtrName(self, limbID):
        pfrsName = self.limbMng.GetLimb(limbID).pfrsName.get()
        side = self.limbMng.GetLimbSide(limbID)
        return '%s_%s_LCTR' % (pfrsName, side)

    def GetParentJoint(self, limbID):
        limb = self.limbMng.GetLimb(limbID)
        parentLimbID = limb.parentLimbID.get()
        parentLimbJointIDs = self.jntMng.GetLimbJointIDs(parentLimbID)
        parentJointID = parentLimbJointIDs[limb.parentJntIndex.get()]
        parentJoint = self.jntMng.GetJoint(parentJointID)
        return parentJoint

#======= NAMING  ===================================

    def RenameLimb(self, limbID):
        self.limbCtrs[limbID].rename(self.GetLimbCtrName(limbID))
        for jointID in self.jntMng.GetLimbJointIDs(limbID):
            self.RenameJoint(limbID, jointID)

    def RenameJoint(self, limbID, jointID):
        self.jointCtrs[jointID].rename(self.GetJointCtrName(limbID, jointID))

#======= DEPRICATED  ===================================

# class SKEL_Scene_Limb_Manager():
#     def __init__(self, limbManager, jointManager, nameManager):
#         self.limbMng = limbManager
#         self.jntMng = jointManager
#         self.nameMng = nameManager

#         self.displaySize = 1

#         self.limbBuildTypes = { 
#             self.limbMng.GetTypes()[0]: cl.SKEL_Scene_Limb_Chain(self),
#             self.limbMng.GetTypes()[1]: bl.SKEL_Scene_Limb_Branch(self),
#             self.limbMng.GetTypes()[2]: lcl.SKEL_Scene_Limb_LinearChain(self),
#             self.limbMng.GetTypes()[3]: lbl.SKEL_Scene_Limb_LinearBranch(self)
#             }
        
#         self.NewRig()

#     def NewRig(self):
#         # Always track old data, for teardowns
#         self.sceneJoints = {} # ID : sceneJoint 
#         self.jointCtrs = {} # jointID : jointCtr
#         self.limbCtrs = {} # limbID : limbCtr
#         self.limbJoints = {} #limbID : jointIdList
#         self.limbTypes = {} # limbID : str Type, 'chain', 'branch'...


# #======= SETUP + TEARDOWNS ===================================

#     # JOINTS
#     def Setup_Joints(self, limbID, rootJntGrp):
#         jointIDs = self.jntMng.GetLimbJointIDs(limbID)
#         tempSceneJoints = []
#         for ID in jointIDs:
#             # cmds.select(d=1)
#             # jointData = self.jntMng.GetJoint(ID)
#             # name = self.GetJointName(limbID, ID)
#             # jnt = cmds.joint(   name=name, 
#             #                     position=jointData.position, 
#             #                     orientation=jointData.rotation, 
#             #                     rotationOrder=jointData.rotationOrder,
#             #                     rad=self.displaySize)
#             cmds.parent(jnt, rootJntGrp)
#             self.sceneJoints[ID] = jnt
#             tempSceneJoints.append(jnt)
#         self.limbJoints[limbID] = jointIDs[:]
#         return tempSceneJoints
    
#     def Teardown_Joints(self, limbID):
#         jointIDs = self.limbJoints[limbID]
#         joints = [self.sceneJoints[ID] for ID in jointIDs]
#         cmds.select(d=1)
#         cmds.delete(joints)
#         for ID in jointIDs:
#             del(self.sceneJoints[ID])
#         del(self.limbJoints[limbID])

#     # JOINT INTERNAL PARENTS
#     def Setup_Internal_JointParents(self, limbID):
#         limbType = self.limbMng.GetType(limbID)
#         self.limbTypes[limbID] = limbType
#         limbBuilder = self.limbBuildTypes[limbType]
#         limbBuilder.Setup_Internal_JointParents(limbID, self.sceneJoints)
    
#     def Teardown_Internal_JointParents(self, limbID, rootJntGrp):
#         limbType = self.limbTypes[limbID]
#         limbBuilder = self.limbBuildTypes[limbType]
#         jointIDs = self.limbJoints[limbID]
#         limbBuilder.Teardown_Internal_JointParents(jointIDs, self.sceneJoints, rootJntGrp)
#         del(self.limbTypes[limbID])

#     # JOINT EXTERNAL PARENTS
#     def Setup_External_JointParents(self, limbID):
#         limbType = self.limbTypes[limbID]
#         limbBuilder = self.limbBuildTypes[limbType]
#         limbBuilder.Setup_External_JointParents(limbID, self.sceneJoints)
    
#     def Teardown_External_JointParents(self, limbID, rootJntGrp):
#         limbType = self.limbTypes[limbID]
#         limbBuilder = self.limbBuildTypes[limbType]
#         jointIDs = self.limbJoints[limbID]
#         limbBuilder.Teardown_External_JointParents(jointIDs, self.sceneJoints, rootJntGrp)

#     # JOINT CONTROLS
#     def Setup_JointControls(self, limbID):
#         limbType = self.limbTypes[limbID]
#         limbBuilder = self.limbBuildTypes[limbType]
#         ctrs = limbBuilder.Setup_JointControls( limbID, 
#                                                 self.sceneJoints,
#                                                 self.jointCtrs)
#         for ctr in ctrs:
#             cmds.addAttr(ctr, longName = 'limbID', at='short')
#             cmds.setAttr(ctr + '.limbID', limbID)
#             for attr in ['sx', 'sy', 'sz']:
#                 cmds.setAttr(ctr + '.' + attr, k=0)
#             cmds.setAttr(ctr + '.v', l=1, k=0)
#             cmds.xform(ctr, s=[self.displaySize, 
#                             self.displaySize, 
#                             self.displaySize])
        
#     def Teardown_JointControls(self, limbID):
#         limbType = self.limbTypes[limbID]
#         limbBuilder = self.limbBuildTypes[limbType]
#         limbBuilder.Teardown_JointControls(self.limbJoints[limbID], 
#                                             self.jointCtrs)
    
#     # LIMB CONTROLS
#     def Setup_LimbControl(self, limbID, rootCtrGrp):
#         jointIDs = self.limbJoints[limbID]
#         name = self.GetLimbCtrName(limbID)
#         ctr = cmds.circle(name=name, r=self.displaySize*5)[0]
#         jointData = self.jntMng.GetJoint(jointIDs[0])
#         cmds.xform(ctr, t=jointData.position, ro=[90,0,0])
#         for ID in jointIDs:
#             cmds.parent(self.jointCtrs[ID], ctr)
#         cmds.parent(ctr, rootCtrGrp)
#         self.limbCtrs[limbID] = ctr
#         cmds.addAttr(ctr, longName = 'limbID', at='short')
#         cmds.setAttr(ctr + '.limbID', limbID)
#         cmds.setAttr(ctr + '.v', l=1, k=0)

#     def Teardown_LimbControl(self, limbID, rootCtrGrp):
#         jointIDs = self.limbJoints[limbID]
#         for ID in jointIDs:
#             cmds.parent(self.jointCtrs[ID], rootCtrGrp)
#         cmds.select(d=1)
#         if self.limbCtrs[limbID]:
#             cmds.delete(self.limbCtrs[limbID])
#         del(self.limbCtrs[limbID])

# #======= ACCESSORS  ===================================

#     # def GetJointName(self, limbID, jointID):
#     #     jointData = self.jntMng.GetJoint(jointID)
#     #     name = self.nameMng.GetName(self.nameMng.GetPrefix(),
#     #                                 self.limbMng.GetName(limbID),
#     #                                 jointData.name,
#     #                                 self.limbMng.GetSide(limbID),
#     #                                 'JNT')
#     #     return name

#     def GetJointCtrName(self, limbID, jointID):
#         jointData = self.jntMng.GetJoint(jointID)
#         name = self.nameMng.GetName(self.nameMng.GetPrefix(),
#                                     self.limbMng.GetName(limbID),
#                                     jointData.name,
#                                     self.limbMng.GetSide(limbID),
#                                     'JCTR')
#         return name
    
#     def GetLimbCtrName(self, limbID):
#         name = self.nameMng.GetName(self.nameMng.GetPrefix(),
#                                     self.limbMng.GetName(limbID),
#                                     'ROOT',
#                                     self.limbMng.GetSide(limbID),
#                                     'LCTR')
#         return name

# #======= NAMING  ===================================

#     def RenameLimb(self, limbID):
#         oldLimbCtrName = self.limbCtrs[limbID]
#         newLimbCtrName = self.GetLimbCtrName(limbID)
#         cmds.rename(oldLimbCtrName, newLimbCtrName)
#         self.limbCtrs[limbID] = newLimbCtrName

#         for jointID in self.jntMng.GetLimbJointIDs(limbID):
#             self.RenameJoint(limbID, jointID)

#     def RenameJoint(self, limbID, jointID):
#         # oldJntName = self.sceneJoints[jointID]
#         # newJntName = self.GetJointName(limbID, jointID)
#         # cmds.rename(oldJntName, newJntName)
#         # self.sceneJoints[jointID] = newJntName

#         oldCtrName = self.jointCtrs[jointID]
#         newCtrName = self.GetJointCtrName(limbID, jointID)
#         cmds.rename(oldCtrName, newCtrName)
#         self.jointCtrs[jointID] = newCtrName

