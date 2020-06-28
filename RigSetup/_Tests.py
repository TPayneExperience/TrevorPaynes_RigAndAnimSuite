
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

@unittest.skip("skipping...")
class Test_File_Manager_Skeleton(unittest.TestCase):
    def setUp(self):
        self.fileMng = File_Manager(r'D:\Assets\Programming\Python\Maya\ModularAutoRigger\Templates')
        self.fileMng.SetBuildFolderPath(r'C:\Users\crash\Documents\TPRAS_BuildFiles')
        self.fileMng.SetCustomTemplatePath(r'C:\Users\crash\Documents\TPRAS_CustomTemplates')
        
    def tearDown(self):
        del(self.fileMng)

    def test_InitBuildFilesInfo(self):
        self.fileMng.InitBuildFilesInfo()
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

    def test_GetNextSkeletonBuildPath(self):
        self.fileMng.InitBuildFilesInfo()
        path = self.fileMng.GetNextSkeletonBuildPath('asdf')
        # print(path)
        self.assertFalse(os.path.isfile(path))

    def test_GetSkeletonBuildData(self):
        self.fileMng.InitBuildFilesInfo()
        data = self.fileMng.GetSkeletonBuildData()
        print(data.path)

@unittest.skip("skipping...")
class Test_File_Manager_Behaviors(unittest.TestCase):
    def setUp(self):
        self.fileMng = File_Manager(r'D:\Assets\Programming\Python\Maya\ModularAutoRigger\Templates')
        self.fileMng.SetBuildFolderPath(r'C:\Users\crash\Documents\TPRAS_BuildFiles')
        self.fileMng.SetCustomTemplatePath(r'C:\Users\crash\Documents\TPRAS_CustomTemplates')
        
    def tearDown(self):
        del(self.fileMng)

    def test_GetBehaviorTemplates(self):
        self.fileMng.GetBehaviorTemplates()
        # print (self.fileMng._behaviorTemplates.keys())
        self.assertTrue('Arm_Biped' in self.fileMng._behaviorTemplates.keys())

    def test_GetBehaviorTemplatePath(self):
        self.fileMng.GetBehaviorTemplates()
        path = self.fileMng.GetBehaviorTemplatePath('Arm_Biped')
        self.assertTrue(os.path.isfile(path))
    
    def test_GetBehaviorCustomTemplates(self):
        self.fileMng.GetBehaviorCustomTemplates()
        path = self.fileMng.GetBehaviorCustomTemplatePath('Custom_Arm_Biped')
        self.assertTrue(os.path.isfile(path))

    def test_GetNextBehaviorBuildPath(self):
        self.fileMng.InitBuildFilesInfo()
        path = self.fileMng.GetNextBehaviorBuildPath('asdf')
        # print(path)
        self.assertFalse(os.path.isfile(path))

    def test_GetBehaviorBuildData(self):
        self.fileMng.InitBuildFilesInfo()
        data = self.fileMng.GetBehaviorBuildData()
        if (data):
            print(data.path)


@unittest.skip("skipping...")
class Test_File_Manager_Appearance(unittest.TestCase):
    def setUp(self):
        self.fileMng = File_Manager(r'D:\Assets\Programming\Python\Maya\ModularAutoRigger\Templates')
        self.fileMng.SetBuildFolderPath(r'C:\Users\crash\Documents\TPRAS_BuildFiles')
        self.fileMng.SetCustomTemplatePath(r'C:\Users\crash\Documents\TPRAS_CustomTemplates')
        
    def tearDown(self):
        del(self.fileMng)

    def test_GetAppearanceTemplates(self):
        self.fileMng.GetAppearanceTemplates()
        # print (self.fileMng._appearanceTemplates.keys())
        self.assertTrue('Arm_Biped' in self.fileMng._appearanceTemplates.keys())

    def test_GetAppearanceTemplatePath(self):
        self.fileMng.GetAppearanceTemplates()
        path = self.fileMng.GetAppearanceTemplatePath('Arm_Biped')
        self.assertTrue(os.path.isfile(path))
    
    def test_GetAppearanceCustomTemplates(self):
        self.fileMng.GetAppearanceCustomTemplates()
        path = self.fileMng.GetAppearanceCustomTemplatePath('Custom_Arm_Biped')
        self.assertTrue(os.path.isfile(path))

    def test_GetNextAppearanceBuildPath(self):
        self.fileMng.InitBuildFilesInfo()
        path = self.fileMng.GetNextAppearanceBuildPath('asdf')
        # print(path)
        self.assertFalse(os.path.isfile(path))

    def test_GetAppearanceBuildData(self):
        self.fileMng.InitBuildFilesInfo()
        data = self.fileMng.GetAppearanceBuildData()
        if (data):
            print(data.path)


class Test_File_Manager_Skinning(unittest.TestCase):
    def setUp(self):
        self.fileMng = File_Manager(r'D:\Assets\Programming\Python\Maya\ModularAutoRigger\Templates')
        self.fileMng.SetBuildFolderPath(r'C:\Users\crash\Documents\TPRAS_BuildFiles')
        self.fileMng.SetCustomTemplatePath(r'C:\Users\crash\Documents\TPRAS_CustomTemplates')
        
    def tearDown(self):
        del(self.fileMng)

    def test_GetSkinningTemplates(self):
        self.fileMng.GetSkinningTemplates()
        # print (self.fileMng._skinningTemplates.keys())
        self.assertTrue('Arm_Biped' in self.fileMng._skinningTemplates.keys())

    def test_GetSkinningTemplatePath(self):
        self.fileMng.GetSkinningTemplates()
        path = self.fileMng.GetSkinningTemplatePath('Arm_Biped')
        self.assertTrue(os.path.isfile(path))

    def test_GetNextSkinningBuildPath(self):
        self.fileMng.InitBuildFilesInfo()
        path = self.fileMng.GetNextSkinningBuildPath('asdf')
        # print(path)
        self.assertFalse(os.path.isfile(path))

    def test_GetSkinningBuildData(self):
        self.fileMng.InitBuildFilesInfo()
        data = self.fileMng.GetSkinningBuildData()
        if (data):
            print(data.path)



if __name__ == '__main__':
    unittest.main()




















