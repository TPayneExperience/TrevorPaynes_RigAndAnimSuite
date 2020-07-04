
import os
import unittest

from TreeData import TreeData

# @unittest.skip("skipping...")
class Test_TreeData(unittest.TestCase):
    def setUp(self):
        self.t1 = TreeData()
        self.t2 = TreeData()
        self.t3 = TreeData()
        self.t4 = TreeData()

    def tearDown(self):
        del(self.t1)
        del(self.t2)
        del(self.t3)
        del(self.t4)

    def test_SetParent(self):
        self.t2.SetParent(self.t1)
        self.t3.SetParent(self.t2)

    def test_IsValidParent(self):
        self.t2.SetParent(self.t1)
        self.t3.SetParent(self.t2)
        self.assertFalse(self.t1._IsValidParent(self.t1))
        self.assertFalse(self.t1._IsValidParent(self.t2))
        self.assertFalse(self.t1._IsValidParent(self.t3))
        self.assertTrue(self.t3._IsValidParent(self.t1))
    
    def test_Unparent(self):
        self.t2.SetParent(self.t1)
        self.t2.Unparent()
        self.assertTrue(self.t2 not in self.t1.GetChildren())
        self.assertTrue(self.t2.GetParent() == None)
    
    def test_InsertAbove(self):
        self.t2.SetParent(self.t1)
        self.t3.SetParent(self.t2)
        self.t4.InsertAbove(self.t3)
        self.assertTrue(self.t4.GetParent() == self.t2)
        self.assertTrue(self.t3.GetParent() == self.t4)
    
    def test_RemoveFromTree(self):
        self.t2.SetParent(self.t1)
        self.t3.SetParent(self.t2)
        self.t4.SetParent(self.t3)
        self.t3.RemoveFromTree()
        self.assertTrue(self.t4.GetParent() == self.t2)
        self.assertTrue(self.t3.GetParent() == None)


if __name__ == '__main__':
    unittest.main()




















