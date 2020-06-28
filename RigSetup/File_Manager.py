
import os
import time

class File_Manager():
    def __init__(self, templateFolderPath):
        self._templatePath = templateFolderPath
        self._buildFolderPath = ''
        self._customTemplatePath = ''
        self._buildPaths = {}
        self._nextBuildVersion = {}
        self._skeletonTemplates = {}
        self._skeletonCustomTemplates = {}

    def SetCustomTemplatePath(self, path):
        self._customTemplatePath = path
    
    def GetCustomTemplatePath(self):
        return self._customTemplatePath

    def SetBuildFolderPath(self, path):
        self._buildFolderPath = path

    def GetBuildFolderPath(self):
        return self._buildFolderPath

    def GetBuildFilesInfo(self):
        '''For loading and saving build files for each part'''
        self._buildPaths.clear()
        self._nextBuildVersion.clear()

        skelPath = os.path.join(self._buildFolderPath, 'Skeleton')
        bhvPath = os.path.join(self._buildFolderPath, 'Behaviors')
        appPath = os.path.join(self._buildFolderPath, 'Appearance')
        skinPath = os.path.join(self._buildFolderPath, 'Skinning')

        temp = {'Skeleton': skelPath, 
                'Behaviors': bhvPath,
                'Appearance': appPath,
                'Skinning': skinPath}
        for k,v in temp.items():
            self._buildPaths[k] = []
            self._nextBuildVersion[k] = -2
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
                self._buildPaths[k].append(data)
            self._nextBuildVersion[k] += 1

#========== SKELETONS ==================================

    def GetSkeletonTemplates(self):
        # Files NEED to exist
        self._skeletonTemplates.clear()
        skelPath = os.path.join(self._templatePath, 'Skeleton')
        for f in os.listdir(skelPath):
            filePath = os.path.join(skelPath, f)
            fileName, ext = os.path.splitext(f)
            self._skeletonTemplates[fileName] = filePath

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
        fileName = name + '_' + str(self._nextBuildVersion['Skeleton'])
        # MISSING: account for if file exists...
        self._nextBuildVersion['Skeleton'] += 1
        return os.path.join(skelPath, fileName)

#========== SKELETONS ==================================


class File_Data():
    def __init__(self):
        self.path = ''
        self.date = ''
        self.version = ''