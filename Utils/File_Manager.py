
import os
import time

class File_Manager():
    def __init__(self):
        self._buildFolderPath = ''
        self._customTemplatePath = ''
        self._meshPath = ''
        self._buildFileData = {}
        self._nextBuildVersion = {}
        self._buildIndex = {}

        self._skeletonTemplates = {}
        self._skeletonCustomTemplates = {}
        self._behaviorTemplates = {}
        self._behaviorCustomTemplates = {}
        self._appearanceTemplates = {}
        self._appearanceCustomTemplates = {}
        self._skinningTemplates = {}

        path = os.path.dirname(__file__)
        path = os.path.dirname(path)
        self._templatePath = os.path.join(path, 'Templates')

#========== ACCESSORS + MUTATORS ==================================

    def SetCustomTemplatePath(self, path):
        self._customTemplatePath = path
    
    def GetCustomTemplatePath(self):
        return self._customTemplatePath

    def SetBuildFolderPath(self, path):
        self._buildFolderPath = path

    def GetBuildFolderPath(self):
        return self._buildFolderPath

    def SetMeshPath(self, path):
        self._meshPath = path

    def GetMeshPath(self):
        return self._meshPath

    def InitBuildFilesInfo(self):
        '''For loading and saving build files for each part'''
        self._buildFileData.clear()
        self._nextBuildVersion.clear()
        self._buildIndex.clear()

        skelPath = os.path.join(self._buildFolderPath, 'Skeleton')
        bhvPath = os.path.join(self._buildFolderPath, 'Behaviors')
        appPath = os.path.join(self._buildFolderPath, 'Appearance')
        skinPath = os.path.join(self._buildFolderPath, 'Skinning')

        temp = {'Skeleton': skelPath, 
                'Behaviors': bhvPath,
                'Appearance': appPath,
                'Skinning': skinPath}
        for k,v in temp.items():
            self._buildFileData[k] = []
            self._nextBuildVersion[k] = 0
            if not os.path.isdir(v):
                os.mkdir(v)
            for f in os.listdir(v):
                fileName, ext = os.path.splitext(f)
                l = len(fileName)
                data = File_Data()
                data.version = int(fileName[l-3:l])
                self._nextBuildVersion[k] = max(self._nextBuildVersion[k], data.version)
                data.path = os.path.join(v, f)
                data.date = time.ctime(os.path.getmtime(data.path))
                self._buildFileData[k].append(data)
            self._nextBuildVersion[k] += 1
            self._buildIndex[k] = len(self._buildFileData[k])-1

#========== SKELETON ==================================

    def GetSkeletonTemplates(self):
        # Files NEED to exist
        self._skeletonTemplates.clear()
        skelPath = os.path.join(self._templatePath, 'Skeleton')
        for f in os.listdir(skelPath):
            filePath = os.path.join(skelPath, f)
            fileName, ext = os.path.splitext(f)
            self._skeletonTemplates[fileName] = filePath
        return self._skeletonTemplates.keys()

    def GetSkeletonTemplatePath(self, name):
        return self._skeletonTemplates[name]

    def GetSkeletonCustomTemplates(self):
        self._skeletonCustomTemplates.clear()
        skelPath = os.path.join(self._customTemplatePath, 'Skeleton')
        if not os.path.isdir(skelPath):
            os.mkdir(skelPath)
        for f in os.listdir(skelPath):
            filePath = os.path.join(skelPath, f)
            fileName, ext = os.path.splitext(f)
            self._skeletonCustomTemplates[fileName] = filePath

    def GetSkeletonCustomTemplatePath(self, name=None):
        '''Returns folder path if no name designated'''
        if (name not in self._skeletonCustomTemplates.keys()):
            return os.path.join(self._customTemplatePath, 'Skeleton')
        return self._skeletonCustomTemplates[name]

    def GetNextSkeletonBuildPath(self, name = ''):
        skelPath = os.path.join(self._buildFolderPath, 'Skeleton')
        fileName = '%s_%03d.json' %(name, self._nextBuildVersion['Skeleton'])
        self._nextBuildVersion['Skeleton'] += 1
        if (os.path.isfile(fileName)):
            fileName = self.GetNextSkeletonBuildPath(name)
        return os.path.join(skelPath, fileName)
    
    def IncrementSkeletonBuildIndex(self):
        self._buildIndex['Skeleton'] += 1

    def DecrementSkeletonBuildIndex(self):
        self._buildIndex['Skeleton'] -= 1
    
    def GetSkeletonBuildData(self):
        if len(self._buildFileData['Skeleton']) == 0:
            return None
        return self._buildFileData['Skeleton'][self._buildIndex['Skeleton']]

#========== BEHAVIORS ==================================

    def GetBehaviorTemplates(self):
        # Files NEED to exist
        self._behaviorTemplates.clear()
        bhvPath = os.path.join(self._templatePath, 'Behaviors')
        for f in os.listdir(bhvPath):
            filePath = os.path.join(bhvPath, f)
            fileName, ext = os.path.splitext(f)
            self._behaviorTemplates[fileName] = filePath
        return self._behaviorTemplates.keys()

    def GetBehaviorTemplatePath(self, name):
        return self._behaviorTemplates[name]

    def GetBehaviorCustomTemplates(self):
        self._behaviorCustomTemplates.clear()
        bhvPath = os.path.join(self._customTemplatePath, 'Behaviors')
        if not os.path.isdir(bhvPath):
            os.mkdir(bhvPath)
        for f in os.listdir(bhvPath):
            filePath = os.path.join(bhvPath, f)
            fileName, ext = os.path.splitext(f)
            self._behaviorCustomTemplates[fileName] = filePath

    def GetBehaviorCustomTemplatePath(self, name=None):
        '''Returns folder path if no name designated'''
        if (name not in self._behaviorCustomTemplates.keys()):
            return os.path.join(self._customTemplatePath, 'Behaviors')
        return self._behaviorCustomTemplates[name]

    def GetNextBehaviorBuildPath(self, name = ''):
        bhvPath = os.path.join(self._buildFolderPath, 'Behaviors')
        fileName = '%s_%03d.json' %(name, self._nextBuildVersion['Behaviors'])
        self._nextBuildVersion['Behaviors'] += 1
        if (os.path.isfile(fileName)):
            fileName = self.GetNextBehaviorBuildPath(name)
        return os.path.join(bhvPath, fileName)
    
    def IncrementBehaviorBuildIndex(self):
        self._buildIndex['Behaviors'] += 1

    def DecrementBehaviorBuildIndex(self):
        self._buildIndex['Behaviors'] -= 1
    
    def GetBehaviorBuildData(self):
        if len(self._buildFileData['Behaviors']) == 0:
            return None
        return self._buildFileData['Behaviors'][self._buildIndex['Behaviors']]

#========== APPEARANCE ==================================

    def GetAppearanceTemplates(self):
        # Files NEED to exist
        self._appearanceTemplates.clear()
        appPath = os.path.join(self._templatePath, 'Appearance')
        for f in os.listdir(appPath):
            filePath = os.path.join(appPath, f)
            fileName, ext = os.path.splitext(f)
            self._appearanceTemplates[fileName] = filePath
        return self._appearanceTemplates.keys()

    def GetAppearanceTemplatePath(self, name):
        return self._appearanceTemplates[name]

    def GetAppearanceCustomTemplates(self):
        self._appearanceCustomTemplates.clear()
        appPath = os.path.join(self._customTemplatePath, 'Appearance')
        if not os.path.isdir(appPath):
            os.mkdir(appPath)
        for f in os.listdir(appPath):
            filePath = os.path.join(appPath, f)
            fileName, ext = os.path.splitext(f)
            self._appearanceCustomTemplates[fileName] = filePath

    def GetAppearanceCustomTemplatePath(self, name=None):
        '''Returns folder path if no name designated'''
        if (name not in self._appearanceCustomTemplates.keys()):
            return os.path.join(self._customTemplatePath, 'Appearance')
        return self._appearanceCustomTemplates[name]

    def GetNextAppearanceBuildPath(self, name = ''):
        appPath = os.path.join(self._buildFolderPath, 'Appearance')
        fileName = '%s_%03d.json' %(name, self._nextBuildVersion['Appearance'])
        self._nextBuildVersion['Appearance'] += 1
        if (os.path.isfile(fileName)):
            fileName = self.GetNextAppearanceBuildPath(name)
        return os.path.join(appPath, fileName)
    
    def IncrementAppearanceBuildIndex(self):
        self._buildIndex['Appearance'] += 1

    def DecrementAppearanceBuildIndex(self):
        self._buildIndex['Appearance'] -= 1
    
    def GetAppearanceBuildData(self):
        if len(self._buildFileData['Appearance']) == 0:
            return None
        return self._buildFileData['Appearance'][self._buildIndex['Appearance']]

#========== SKINNING ==================================

    def GetSkinningTemplates(self):
        # Files NEED to exist
        self._skinningTemplates.clear()
        appPath = os.path.join(self._templatePath, 'Skinning')
        for f in os.listdir(appPath):
            filePath = os.path.join(appPath, f)
            fileName, ext = os.path.splitext(f)
            self._skinningTemplates[fileName] = filePath
        return self._skinningTemplates.keys()

    def GetSkinningTemplatePath(self, name):
        return self._skinningTemplates[name]

    def GetNextSkinningBuildPath(self, name = ''):
        appPath = os.path.join(self._buildFolderPath, 'Skinning')
        fileName = '%s_%03d.json' %(name, self._nextBuildVersion['Skinning'])
        self._nextBuildVersion['Skinning'] += 1
        if (os.path.isfile(fileName)):
            fileName = self.GetNextSkinningBuildPath(name)
        return os.path.join(appPath, fileName)
    
    def IncrementSkinningBuildIndex(self):
        self._buildIndex['Skinning'] += 1

    def DecrementSkinningBuildIndex(self):
        self._buildIndex['Skinning'] -= 1
    
    def GetSkinningBuildData(self):
        if len(self._buildFileData['Skinning']) == 0:
            return None
        return self._buildFileData['Skinning'][self._buildIndex['Skinning']]



class File_Data():
    def __init__(self):
        self.path = ''
        self.date = ''
        self.version = ''