
import pymel.core as pm

class SKEL_Scene_Limb_LinearChain():
    def __init__(self, sceneManager):
        self.sceneMng = sceneManager
        self.type = self.sceneMng.limbMng.GetTypes()[2] # 'Linear Chain'
        self.lockAttrs = [  'tx', 'ty', 'tz',
                            'rx', 'ry', 'rz',
                            'sx', 'sy', 'sz',
                            'v']

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

        # Constrain joints to locators
        for jointID in jointIDs:
            joint = self.sceneMng.jntMng.GetJoint(jointID)
            name = self.sceneMng.GetJointCtrName(limbID, jointID)
            ctr = pm.spaceLocator(name=name)[0]
            pm.xform(ctr, t=joint.t.get(), ro=joint.rotate.get())
            pm.parentConstraint(ctr, joint)
            self.sceneMng.jointCtrs[jointID] = ctr
            ctrs.append(ctr)
        jointCount = len(jointIDs)
        
        # Constrain locators to end locators
        for i in range(1, jointCount-1):
            ctr = ctrs[i]
            lerp = float(i) / max(1, (jointCount-1))
            pm.parentConstraint(ctrs[0], ctrs[-1], ctr)
            pm.parentConstraint(ctrs[0], ctr, e=1, w=(1-lerp))
            pm.parentConstraint(ctrs[-1], ctr, e=1, w=lerp)
            # LOCK + HIDE ATTRS + CTR
            pm.setAttr(ctr + '.v', 0)
            for attr in self.lockAttrs:
                pm.setAttr(ctr + '.' + attr, l=1, k=0)
        return ctrs


    def Teardown_JointControls(self, limbID):
        jointIDs = self.sceneMng.jntMng.GetLimbJointIDs(limbID)
        ctrs = [self.sceneMng.jointCtrs[ID] for ID in jointIDs]
        pm.delete(ctrs)
        for jointID in jointIDs:
            del(self.sceneMng.jointCtrs[jointID])