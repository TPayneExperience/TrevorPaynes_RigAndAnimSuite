
import os
import time

class File_Manager():
    def __init__(self):

        path = os.path.dirname(__file__)
        path = os.path.dirname(path)
        self._templatePath = os.path.join(path, 'LimbSetup', 'Templates')


#========== ACCESSORS + MUTATORS ==================================

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
    


#=========== DEPRICATED ====================================
#=========== DEPRICATED ====================================
#=========== DEPRICATED ====================================

    
# import os
# import time

# class File_Manager():
#     def __init__(self):
#         self._outputFolder = '[Missing Folder Path]'
#         self._meshFile = ''

#         path = os.path.dirname(__file__)
#         path = os.path.dirname(path)
#         self._templatePath = os.path.join(path, 'LimbSetup', 'Templates')


# #========== ACCESSORS + MUTATORS ==================================

#     def GetMeshPath(self):
#         return self._meshFile

#     def SetMeshPath(self, path):
#         self._meshFile = path

#     def GetOutputFile(self):
#         return self._outputFolder

#     def SetOutputFile(self, filePath):
#         self._outputFolder = filePath

#     def GetTemplateFiles(self):
#         temp = {}
#         for f in os.listdir(self._templatePath):
#             path = os.path.join(self._templatePath, f)
#             name = f.split('_LimbTemplate.json')[0]
#             temp[name] = path
#         return temp
    
#     def GetTemplatePath(self, templateName):
#         fileName = '%s_LimbTemplate.json' % templateName
#         return os.path.join(self._templatePath, fileName)
    
    