
from maya import cmds

class Scene_Limb_Branch():
    def __init__(self, sceneManager):
        self.sceneMng = sceneManager
        self.type = self.sceneMng.limbMng.GetTypes()[1] # 'Branch'

#========== JOINTS ========================

    # INTERNAL PARENTS
    def Setup_Internal_JointParents(self, limbID, sceneJoints):
        pass

    def Teardown_Internal_JointParents(self, oldJntIDs, sceneJoints, jntGrp):
        pass

    # EXTERNAL PARENTS
    def Setup_External_JointParents(self, limbID, sceneJoints):
        jointIDs = self.sceneMng.jntMng.GetLimbJointIDs(limbID)
        parentJointID = self.sceneMng.jntMng.GetParentJointId(limbID)
        for jointID in jointIDs:
            cmds.parent(jointID, parentJointID)
 
    def Teardown_External_JointParents(self, oldJntIDs, sceneJoints, jntGrp):
        for jointID in oldJntIDs:
            cmds.parent(jointID, jntGrp)

    # EDITABLE CONTROLS
    def Setup_JointControls(self, limbID, sceneJoints, jntCtrDict):
        ctrs = []
        jointIDs = self.sceneMng.jntMng.GetLimbJointIDs(limbID)
        for jointID in jointIDs:
            jointData = self.sceneMng.jntMng.GetJoint(jointID)
            name = self.sceneMng.GetJointCtrName(limbID, jointID)
            ctr = cmds.spaceLocator(name=name)[0]
            cmds.xform(ctr, t=jointData.position, ro=jointData.rotation)
            cmds.parentConstraint(ctr, sceneJoints[jointID])
            jntCtrDict[jointID] = ctr
            ctrs.append(ctr)
        return ctrs

    def Teardown_JointControls(self, oldJntIDs, jntCtrDict):
        ctrs = [jntCtrDict[ID] for ID in oldJntIDs]
        cmds.delete(ctrs)
        for ID in oldJntIDs:
            del(jntCtrDict[ID])