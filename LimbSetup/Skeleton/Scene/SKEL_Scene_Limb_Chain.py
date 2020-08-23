
import pymel.core as pm

class SKEL_Scene_Limb_Chain():
    def __init__(self, sceneManager):
        self.sceneMng = sceneManager
        self.type = self.sceneMng.limbMng.GetTypes()[0] # 'Chain'

#========== JOINTS ========================

    # INTERNAL PARENTS
    def Setup_Internal_JointParents(self, limbID):
        jointIDs = self.sceneMng.jntMng.GetLimbJointIDs(limbID)
        for i in range(0, len(jointIDs)-1):
            joint1 = self.sceneMng.jntMng.GetJoint(jointIDs[i])
            joint2 = self.sceneMng.jntMng.GetJoint(jointIDs[i+1])
            pm.parent(joint2, joint1)

    def Teardown_Internal_JointParents(self, limbID):
        jointIDs = self.sceneMng.jntMng.GetLimbJointIDs(limbID)
        for i in range(0, len(jointIDs)-1):
            joint = jointIDs[i+1]
            pm.parent(joint, self.sceneMng.jntMng.jntGrp)

    # EXTERNAL PARENTS
    def Setup_External_JointParents(self, limbID):
        jointIDs = self.sceneMng.jntMng.GetLimbJointIDs(limbID)
        parentJoint = self.sceneMng.GetParentJoint(limbID)
        joint = self.sceneMng.jntMng.GetJoint(jointIDs[0])
        pm.parent(joint, parentJoint)
 
    def Teardown_External_JointParents(self, limbID):
        jointIDs = self.sceneMng.jntMng.GetLimbJointIDs(limbID)
        joint = self.sceneMng.jntMng.GetJoint(jointIDs[0])
        pm.parent(joint, self.sceneMng.jntMng.jntGrp)

    # EDITABLE CONTROLS
    def Setup_JointControls(self, limbID):
        ctrs = []
        jointIDs = self.sceneMng.jntMng.GetLimbJointIDs(limbID)
        jointID = jointIDs[0]
        ctrs.append(self._Setup_JointControl(limbID, jointID))
        for i in range(1, len(jointIDs)):
            joint = self.sceneMng.jntMng.GetJoint(jointIDs[i-1])
            ID_02 = jointIDs[i]
            ctr = self._Setup_JointControl(limbID, ID_02)
            pm.aimConstraint(ctr, joint)
            ctrs.append(ctr)
        return ctrs

    def _Setup_JointControl(self, limbID, jointID):
        joint = self.sceneMng.jntMng.GetJoint(jointID)
        name = self.sceneMng.GetJointCtrName(limbID, jointID)
        ctr = pm.spaceLocator(name=name, p=joint.translate.get())
        pm.pointConstraint(ctr, joint)
        self.sceneMng.jointCtrs[jointID] = ctr
        return ctr

    def Teardown_JointControls(self, limbID):
        jointIDs = self.sceneMng.jntMng.GetLimbJointIDs(limbID)
        ctrs = [self.sceneMng.jointCtrs[ID] for ID in jointIDs]
        pm.delete(ctrs)
        for jointID in jointIDs:
            del(self.sceneMng.jointCtrs[jointID])