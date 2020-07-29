
from maya import cmds

class Scene_Limb_LinearChain():
    def __init__(self, sceneManager):
        self.sceneMng = sceneManager
        self.type = self.sceneMng.limbMng.GetTypes()[2] # 'Linear Chain'
        self.lockAttrs = [  'tx', 'ty', 'tz',
                            'rx', 'ry', 'rz',
                            'sx', 'sy', 'sz',
                            'v']

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
        jointCount = len(jointIDs)
        for i in range(1, jointCount-1):
            ctr = ctrs[i]
            lerp = float(i) / max(1, (jointCount-1))
            cmds.parentConstraint(ctrs[0], ctrs[-1], ctr)
            cmds.parentConstraint(ctrs[0], ctr, e=1, w=(1-lerp))
            cmds.parentConstraint(ctrs[-1], ctr, e=1, w=lerp)
            # LOCK + HIDE ATTRS + CTR
            cmds.setAttr(ctr + '.v', 0)
            for attr in self.lockAttrs:
                cmds.setAttr(ctr + '.' + attr, l=1, k=0)
        
        return ctrs


    def Teardown_JointControls(self, oldJntIDs, jntCtrDict):
        ctrs = [jntCtrDict[ID] for ID in oldJntIDs]
        cmds.delete(ctrs)
        for ID in oldJntIDs:
            del(jntCtrDict[ID])