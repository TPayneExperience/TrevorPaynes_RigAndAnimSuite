
import pymel.core as pm

class RIG_JointSetup:
    def __init__(self, parent):
        self.jntMng = parent.jntMng
        self.logger = parent.logger

    def IsJointValidForLimb(self, limb, joint):
        name = joint.pfrsName.get()
        names = [j.pfrsName.get() for j in pm.listConnections(limb.joints)]
        if name in names:
            self.logger.error('**** Cannot add joint: joint of same pfrsName')
            self.logger.error('****     already exists on limb')
            return False
        return True

    def AimSelection(self):
        sl = pm.ls(sl=1)
        target = sl[-1]
        for source in sl[:-1]:
            temp = pm.aimConstraint(target, source)
            pm.delete(temp)

