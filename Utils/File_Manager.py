
import os
import time

class File_Manager():
    def __init__(self):
        self._outputFolder = '[Missing Folder Path]'
        self._meshFile = ''
        # self._buildFileData = {}

        path = os.path.dirname(__file__)
        path = os.path.dirname(path)
        self._templatePath = os.path.join(path, 'LimbSetup', 'Templates')

        # self._customTemplatePath = ''
        # self._nextBuildVersion = {  'Skeleton': 0, 
        #                             'Behavior': 0,
        #                             'Appearance': 0,
        #                             'Skinning': 0}

        # name : filePath
        # self._skeletonTemplates = {}
        # self._skeletonCustomTemplates = {}
        # self._behaviorTemplates = {}
        # self._behaviorCustomTemplates = {}
        # self._appearanceTemplates = {}
        # self._appearanceCustomTemplates = {}
        # self._skinningTemplates = {}

#========== ACCESSORS + MUTATORS ==================================

    def GetMeshPath(self):
        return self._meshFile

    def SetMeshPath(self, path):
        self._meshFile = path

    def GetOutputFile(self):
        return self._outputFolder

    def SetOutputFile(self, filePath):
        self._outputFolder = filePath

    # def GetRigPath(self, prefix):
    #     fileName = '%s_PFRS_Rig.json' % prefix
    #     return os.path.join(self._outputFolder, fileName)

    # def GetMeshDeformationPath(self, prefix):
    #     fileName = '%s_MeshDeformation.json' % prefix
    #     return os.path.join(self._outputFolder, fileName)

    def GetTemplateFiles(self):
        temp = {}
        for f in os.listdir(self._templatePath):
            path = os.path.join(self._templatePath, f)
            name = f.split('_LimbTemplate.json')[0]
            temp[name] = path
        return temp
    
    def GetTemplatePath(self, templateName):
        fileName = '%s_LimbTemplate.json' % templateName
        return os.path.join(self._templatePath, fileName)
    
    
#========== OLD ==================================

    # def SetCustomTemplatePath(self, path):
    #     self._customTemplatePath = path
    
    # def GetCustomTemplatePath(self):
    #     return self._customTemplatePath

    # def InitBuildFilesInfo(self):
    #     '''For loading and saving build files for each part'''
    #     self._buildFileData.clear()
    #     self._nextBuildVersion.clear()
        
    #     skelPath = os.path.join(self._outputFolder, 'Skeleton')
    #     bhvPath = os.path.join(self._outputFolder, 'Behavior')
    #     appPath = os.path.join(self._outputFolder, 'Appearance')
    #     skinPath = os.path.join(self._outputFolder, 'Skinning')

    #     temp = {'Skeleton': skelPath, 
    #             'Behavior': bhvPath,
    #             'Appearance': appPath,
    #             'Skinning': skinPath}
    #     for k,v in temp.items():
    #         self._buildFileData[k] = []
    #         self._nextBuildVersion[k] = 0
    #         if not os.path.isdir(v):
    #             os.mkdir(v)
    #         for f in os.listdir(v):
    #             fileName, ext = os.path.splitext(f)
    #             l = len(fileName)
    #             data = File_Data()
    #             data.version = int(fileName[l-3:l])
    #             self._nextBuildVersion[k] = max(self._nextBuildVersion[k], data.version)
    #             data.path = os.path.join(v, f)
    #             data.date = time.ctime(os.path.getmtime(data.path))
    #             self._buildFileData[k].append(data)
    #         self._nextBuildVersion[k] += 1


#========== SKELETON ==================================

    # # TEMPLATES
    # def GetSkeletonDefaultTemplates(self):
    #     self._skeletonTemplates.clear()
    #     skelPath = os.path.join(self._templatePath, 'Skeleton')
    #     for f in os.listdir(skelPath):
    #         filePath = os.path.join(skelPath, f)
    #         fileName, ext = os.path.splitext(f)
    #         self._skeletonTemplates[fileName] = filePath
    #     return self._skeletonTemplates

    # # CUSTOM TEMPLATES
    # def GetSkeletonCustomTemplates(self):
    #     if (os.path.isdir(self._customTemplatePath)):
    #         self._skeletonCustomTemplates.clear()
    #         skelPath = os.path.join(self._customTemplatePath, 'Skeleton')
    #         if not os.path.isdir(skelPath):
    #             os.mkdir(skelPath)
    #         for f in os.listdir(skelPath):
    #             filePath = os.path.join(skelPath, f)
    #             fileName, ext = os.path.splitext(f)
    #             self._skeletonCustomTemplates[fileName] = filePath
    #         return dict(self._skeletonCustomTemplates)
    #     else:
    #         return {}

    # def DeleteSkeletonCustomTemplate(self, fileName):
    #     filePath = self._skeletonCustomTemplates[fileName]
    #     os.remove(filePath)
    #     del(self._skeletonCustomTemplates[fileName])

    # def GetSkeletonCustomTemplatePath(self, name=None):
    #     '''Returns folder path if no name designated'''
    #     if (name not in self._skeletonCustomTemplates.keys()):
    #         return os.path.join(self._customTemplatePath, 'Skeleton')
    #     return self._skeletonCustomTemplates[name]

    # SAVING
    # def GetNextSkeletonCustomTemplatePath(self, name = ''):
    #     return self.GetNextSkeletonPath(self._customTemplatePath, name)
        
    # def GetNextSkeletonBuildPath(self, name = ''):
    #     return self.GetNextSkeletonPath(self._outputFolder, name)

    # def GetNextSkeletonPath(self, folderPath, name = ''):
    #     skelPath = os.path.join(folderPath, 'Skeleton')
    #     fileName = '%s_%03d.json' %(name, self._nextBuildVersion['Skeleton'])
    #     self._nextBuildVersion['Skeleton'] += 1
    #     if (os.path.isfile(fileName)):
    #         return self.GetNextSkeletonPath(name)
    #     return os.path.join(skelPath, fileName)
    
    # LOADING
    # def GetSkeletonFileCount(self):
    #     if ('Skeleton' in self._buildFileData):
    #         return len(self._buildFileData['Skeleton'])
    #     return 0
    
    # def GetSkeletonBuildData(self, index):
    #     return self._buildFileData['Skeleton'][index]

#========== BEHAVIOR ==================================

#     # SAVING
#     def GetNextBehaviorBuildPath(self, name = ''):
#         path = os.path.join(self._outputFolder, 'Behavior')
#         fileName = '%s_%03d.json' %(name, self._nextBuildVersion['Behavior'])
#         self._nextBuildVersion['Behavior'] += 1
#         if (os.path.isfile(fileName)):
#             return self.GetNextBehaviorBuildPath(name)
#         return os.path.join(path, fileName)
    
#     # LOADING
#     def GetBehaviorFileCount(self):
#         if ('Behavior' in self._buildFileData):
#             return len(self._buildFileData['Behavior'])
#         return 0
    
#     def GetBehaviorBuildData(self, index):
#         return self._buildFileData['Behavior'][index]

# #========== APPEARANCE ==================================

#     # SAVING
#     def GetNextAppearanceBuildPath(self, name = ''):
#         path = os.path.join(self._outputFolder, 'Appearance')
#         fileName = '%s_%03d.json' %(name, self._nextBuildVersion['Appearance'])
#         self._nextBuildVersion['Appearance'] += 1
#         if (os.path.isfile(fileName)):
#             return self.GetNextAppearanceBuildPath(name)
#         return os.path.join(path, fileName)
    
#     # LOADING
#     def GetAppearanceFileCount(self):
#         if ('Appearance' in self._buildFileData):
#             return len(self._buildFileData['Appearance'])
#         return 0
    
#     def GetAppearanceBuildData(self, index):
#         return self._buildFileData['Appearance'][index]


# #========== SKINNING ==================================

#     # SAVING
#     def GetNextSkinningBuildPath(self, name = ''):
#         path = os.path.join(self._outputFolder, 'Skinning')
#         fileName = '%s_%03d.json' %(name, self._nextBuildVersion['Skinning'])
#         self._nextBuildVersion['Skinning'] += 1
#         if (os.path.isfile(fileName)):
#             return self.GetNextSkinningBuildPath(name)
#         return os.path.join(path, fileName)
    
#     # LOADING
#     def GetSkinningFileCount(self):
#         if ('Skinning' in self._buildFileData):
#             return len(self._buildFileData['Skinning'])
#         return 0
    
#     def GetSkinningBuildData(self, index):
#         return self._buildFileData['Skinning'][index]




# class File_Data():
#     def __init__(self):
#         self.path = ''
#         self.date = ''
#         self.version = ''