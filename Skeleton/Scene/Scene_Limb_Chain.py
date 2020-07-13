
from maya import cmds

class Scene_Limb_Chain():
    def __init__(self, limbManager, jointManager, nameManager):
        self.limbMng = limbManager
        self.jntMng = jointManager
        self.nameMng = nameManager
        self.type = self.limbMng.GetTypes()[0] # 'Chain'

#========== JOINTS ========================

    # JOINT PARENTS
    def Setup_JointParents(self, limbID, sceneJoints):
        jointIDs = self.jntMng.GetLimbJointIDs(limbID)
        for i in range(0, len(jointIDs)-1):
            ID_01 = jointIDs[i]
            ID_02 = jointIDs[i+1]
            cmds.parent(sceneJoints[ID_02], sceneJoints[ID_01])
        parentJointID = self.jntMng.GetParentJointId(limbID)
        if (parentJointID != -1):
            cmds.parent(sceneJoints[0], sceneJoints[parentJointID])
    
    # EDITABLE CONTROLS
    def Setup_JointControls(self, limbID, sceneJoints, jntCtrDict, limbCstDict):
        limbName = self.limbMng.GetName(limbID)
        limbSide = self.limbMng.GetSide(limbID)
        jointIDs = self.jntMng.GetLimbJointIDs(limbID)
        if (jointIDs): # IF NOT EMPTY LIMB
            ID = jointIDs[0]
            jointData = self.jntMng.GetJoint(ID)
            name = self.nameMng.GetName(limbName,
                                        jointData.name,
                                        limbSide,
                                        'JCTR')
            ctr = cmds.spaceLocator(name=name, position=jointData.position)[0]
            cmds.pointConstraint(ctr, sceneJoints[ID])
            jntCtrDict[ID] = ctr
            for i in range(1, len(jointIDs)):
                ID_01 = jointIDs[i-1]
                ID_02 = jointIDs[i]
                jointData_02 = self.jntMng.GetJoint(ID_02)
                name = self.nameMng.GetName(limbName,
                                            jointData_02.name,
                                            limbSide,
                                            'JCTR')
                ctr = cmds.spaceLocator(name=name, position=jointData_02.position)[0]
                cmds.pointConstraint(ctr, sceneJoints[ID_02])
                cmds.aimConstraint(ctr, sceneJoints[ID_01])
                jntCtrDict[ID_02] = ctr


