
# from maya import pm
import pymel.core as pm

class SKEL_Scene_Limb_Branch():
    def __init__(self, sceneManager):
        self.sceneMng = sceneManager
        self.type = self.sceneMng.limbMng.limbTypes[1] # 'Branch'

#========== JOINTS ========================

    # INTERNAL PARENTS
    def Setup_Internal_JointParents(self, limbID):
        pass

    def Teardown_Internal_JointParents(self, limbID):
        pass

    # EXTERNAL PARENTS
    def Setup_External_JointParents(self, limbID):
        jointIDs = self.sceneMng.jntMng.GetLimbJointIDs(limbID)
        parentJoint = self.sceneMng.GetParentJoint(limbID)
        for joint in [self.sceneMng.jntMng.GetJoint(ID) for ID in jointIDs]:
            pm.parent(joint, parentJoint)
 
    def Teardown_External_JointParents(self, limbID):
        jointIDs = self.sceneMng.jntMng.GetLimbJointIDs(limbID)
        for joint in [self.sceneMng.jntMng.GetJoint(ID) for ID in jointIDs]:
            pm.parent(joint, self.sceneMng.jntMng.jntGrp)

    # EDITABLE CONTROLS
    def Setup_JointControls(self, limbID):
        ctrs = []
        jointIDs = self.sceneMng.jntMng.GetLimbJointIDs(limbID)
        for joint in [self.sceneMng.jntMng.GetJoint(ID) for ID in jointIDs]:
            name = self.sceneMng.GetJointCtrName(limbID, joint.ID.get())
            ctr = pm.spaceLocator(name=name)
            pm.xform(ctr, t=joint.t.get(), ro=joint.rotate.get())
            pm.parentConstraint(ctr, joint)
            self.sceneMng.jointCtrs[joint.ID.get()] = ctr
            ctrs.append(ctr)
        return ctrs

    def Teardown_JointControls(self, limbID):
        jointIDs = self.sceneMng.jntMng.GetLimbJointIDs(limbID)
        ctrs = [self.sceneMng.jointCtrs[ID] for ID in jointIDs]
        pm.delete(ctrs)
        for ID in jointIDs:
            del(self.sceneMng.jointCtrs[ID])