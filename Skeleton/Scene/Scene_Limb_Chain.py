
from maya import cmds

class Scene_Limb_Chain():
    def __init__(self, sceneManager):
        self.sceneMng = sceneManager
        self.type = self.sceneMng.limbMng.GetTypes()[0] # 'Chain'

#========== JOINTS ========================

    # INTERNAL PARENTS
    def Setup_Internal_JointParents(self, limbID, sceneJoints):
        jointIDs = self.sceneMng.jntMng.GetLimbJointIDs(limbID)
        for i in range(0, len(jointIDs)-1):
            ID_01 = jointIDs[i]
            ID_02 = jointIDs[i+1]
            cmds.parent(sceneJoints[ID_02], sceneJoints[ID_01])

    def Teardown_Internal_JointParents(self, oldJntIDs, sceneJoints, jntGrp):
        for i in range(0, len(oldJntIDs)-1):
            ID_02 = oldJntIDs[i+1]
            cmds.parent(sceneJoints[ID_02], jntGrp)

    # EXTERNAL PARENTS
    def Setup_External_JointParents(self, limbID, sceneJoints):
        jointIDs = self.sceneMng.jntMng.GetLimbJointIDs(limbID)
        parentJointID = self.sceneMng.jntMng.GetParentJointId(limbID)
        cmds.parent(sceneJoints[jointIDs[0]], sceneJoints[parentJointID])
 
    def Teardown_External_JointParents(self, oldJntIDs, sceneJoints, jntGrp):
        cmds.parent(sceneJoints[oldJntIDs[0]], jntGrp)

    # EDITABLE CONTROLS
    def Setup_JointControls(self, limbID, sceneJoints, jntCtrDict):
        jointIDs = self.sceneMng.jntMng.GetLimbJointIDs(limbID)
        ID = jointIDs[0]
        jointData = self.sceneMng.jntMng.GetJoint(ID)
        name = self.sceneMng.GetJointCtrName(limbID, ID)
        ctr = cmds.spaceLocator(name=name, position=jointData.position)[0]
        cmds.pointConstraint(ctr, sceneJoints[ID])
        jntCtrDict[ID] = ctr
        for i in range(1, len(jointIDs)):
            ID_01 = jointIDs[i-1]
            ID_02 = jointIDs[i]
            jointData_02 = self.sceneMng.jntMng.GetJoint(ID_02)
            name = self.sceneMng.GetJointCtrName(limbID, ID_02)
            ctr = cmds.spaceLocator(name=name)[0]
            cmds.xform(ctr, t=jointData_02.position)
            cmds.pointConstraint(ctr, sceneJoints[ID_02])
            cmds.aimConstraint(ctr, sceneJoints[ID_01])
            jntCtrDict[ID_02] = ctr

    def Teardown_JointControls(self, oldJntIDs, jntCtrDict):
        ctrs = [jntCtrDict[ID] for ID in oldJntIDs]
        cmds.delete(ctrs)
        for ID in oldJntIDs:
            del(jntCtrDict[ID])