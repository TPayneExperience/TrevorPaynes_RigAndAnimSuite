
import os
import unittest

from Joint_Data import Joint_Data
from Joint_Manager import Joint_Manager
from Limb_Manager import Limb_Manager

@unittest.skip("skipping...")
class Test_Joint_Manager(unittest.TestCase):
    def setUp(self):
        self.jntMng = Joint_Manager()

    def tearDown(self):
        del(self.jntMng)

    def test_AddJoints(self):
        jointIDs = self.jntMng.AddJoints(3, 0)
        self.assertTrue(len(jointIDs) == 3)
        self.assertTrue(jointIDs[0] == 0)
        joint = self.jntMng.GetJoint(jointIDs[0])
        self.assertTrue(joint.name == '000')

    def test_RemoveJoints(self):
        jointIDs = self.jntMng.AddJoints(3, 0)
        self.jntMng.RemoveJoints([0])
        self.assertFalse(0 in self.jntMng._joints)
    
    def test_DuplicateJoints(self):
        sourceJointIDs = self.jntMng.AddJoints(3, 0)
        dupJointIDs = self.jntMng.DuplicateJoints(sourceJointIDs)
        for sID, dID in zip(sourceJointIDs, dupJointIDs):
            self.assertTrue(sID != dID)
            s = self.jntMng.GetJoint(sID)
            d = self.jntMng.GetJoint(dID)
            self.assertTrue(s.name == d.name)


class Test_Limb_Manager(unittest.TestCase):
    def setUp(self):
        self.limbMng = Limb_Manager()

    def tearDown(self):
        del(self.limbMng)

    def test_AddLimb(self):
        limb = self.limbMng.AddLimb('Branch')
        self.assertTrue(limb.ID == 0)
        self.assertTrue(limb.name == 'Branch_000')
        self.assertTrue(limb.side == 'M')

    def test_RemoveLimb(self):
        limb = self.limbMng.AddLimb('Branch')
        self.assertTrue(limb.ID in self.limbMng._limbs)
        self.limbMng._RemoveLimb(limb.ID)
        self.assertFalse(limb.ID in self.limbMng._limbs)

    def test_SetParent(self):
        limb_01 = self.limbMng.AddLimb('Branch')
        limb_02 = self.limbMng.AddLimb('Branch')
        ID1 = limb_01.ID
        ID2 = limb_02.ID
        self.limbMng.SetParent(ID1, ID2)
        self.assertTrue(self.limbMng._limbParents[ID1] == ID2)
        self.limbMng.SetParent(ID2, ID1)
        self.assertFalse(self.limbMng._limbParents[ID2] == ID1)


if __name__ == '__main__':
    unittest.main()




















