
from maya import cmds

class Scene_Limb_LinearChain():
    def __init__(self, limbManager, jointManager, nameManager, limbID):
        self.limbMng = limbManager
        self.jntMng = jointManager
        self.nameMng = nameManager
        self.type = self.limbMng.GetTypes()[0] # 'Chain'
        self.limbID = limbID
        self._jointIDs = []

#========== JOINTS ========================

    # JOINT PARENTS
    def Setup_JointParents(self, sceneJoints):
        for i in range(0, len(self._jointIDs)-1):
            ID_01 = self._jointIDs[i]
            ID_02 = self._jointIDs[i+1]
            self.parent(sceneJoints[ID_02], sceneJoints[ID_01])
        parentJointID = self.jntMng.GetParentJointId(self.limbID)
        if (parentJointID != -1):
            self.parent(sceneJoints[0], sceneJoints[parentJointID])

    # EDITABLE CONTROLS
    def Setup_Controls(self):
        pass

    # LISTENERS
    def Setup_Listeners(self):
        pass

    def Teardown_Listeners(self):
        pass


