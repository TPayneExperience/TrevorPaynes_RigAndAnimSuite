
import os
import unittest

from Name_Manager import Name_Manager
from File_Manager import File_Manager

@unittest.skip("skipping...")
class Test_Name_Manager(unittest.TestCase):
    def setUp(self):
        self.nameMng = Name_Manager()

    def tearDown(self):
        del(self.nameMng)

    def test_IsValidCharacterLength(self):
        self.assertFalse(self.nameMng.IsValidCharacterLength(''))
        self.assertFalse(self.nameMng.IsValidCharacterLength('L'))
        self.assertTrue(self.nameMng.IsValidCharacterLength('TR'))

    def test_DoesNotStartWithNumber(self):
        self.assertFalse(self.nameMng.DoesNotStartWithNumber('1asdf'))
        self.assertTrue(self.nameMng.DoesNotStartWithNumber('asdf'))

    def test_AreAllValidCharacters(self):
        self.assertFalse(self.nameMng.AreAllValidCharacters(' '))
        self.assertFalse(self.nameMng.AreAllValidCharacters('asdf['))
        self.assertFalse(self.nameMng.AreAllValidCharacters('asdf('))
        self.assertFalse(self.nameMng.AreAllValidCharacters('"fsdf'))
        self.assertTrue(self.nameMng.AreAllValidCharacters('asdf'))
        self.assertTrue(self.nameMng.AreAllValidCharacters('ASDF'))

    def test_GetName(self):
        name = self.nameMng.GetName(prefix='CAT',
                                    limb='ARM', 
                                    limbPart='ELBOW', 
                                    side='L', 
                                    number='01',
                                    objType='JNT')
        self.assertTrue(name == 'CAT_ARM_ELBOW_L_01_JNT')

    def test_Reorder(self):
        self.nameMng.Reorder(   prefix=0,
                                limb=3, 
                                limbPart=2, 
                                side=1, 
                                number=4,
                                objType=5)
        name = self.nameMng.GetName(prefix='CAT',
                                    limb='ARM', 
                                    limbPart='ELBOW', 
                                    side='L', 
                                    number='01',
                                    objType='JNT')
        self.assertTrue(name == 'CAT_L_ELBOW_ARM_01_JNT')

class Test_File_Manager(unittest.TestCase):
    def setUp(self):
        self.fileMng = File_Manager(r'D:\Assets\Programming\Python\Maya\ModularAutoRigger\Templates')
        self.fileMng.SetBuildFolderPath(r'C:\Users\crash\Documents\TPRAS_BuildFiles')
        self.fileMng.SetCustomTemplatePath(r'C:\Users\crash\Documents\TPRAS_CustomTemplates')
        
    def tearDown(self):
        del(self.fileMng)

    def test_GetBuildFilesInfo(self):
        self.fileMng.GetBuildFilesInfo()
        self.assertTrue(self.fileMng._buildPaths['Appearance'][0].path)
        self.assertTrue(self.fileMng._buildPaths['Appearance'][0].version)
        self.assertTrue(self.fileMng._buildPaths['Appearance'][0].date)

    def test_GetSkeletonTemplates(self):
        self.fileMng.GetSkeletonTemplates()
        # print (self.fileMng._skeletonTemplates.keys())
        self.assertTrue('Arm_Biped' in self.fileMng._skeletonTemplates.keys())

    def test_GetSkeletonTemplatePath(self):
        self.fileMng.GetSkeletonTemplates()
        path = self.fileMng.GetSkeletonTemplatePath('Arm_Biped')
        self.assertTrue(os.path.isfile(path))
    
    def test_GetSkeletonCustomTemplates(self):
        self.fileMng.GetSkeletonCustomTemplates()
        path = self.fileMng.GetSkeletonCustomTemplatePath('Custom_Arm_Biped')
        self.assertTrue(os.path.isfile(path))






if __name__ == '__main__':
    unittest.main()




















