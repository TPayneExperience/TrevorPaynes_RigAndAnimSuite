
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
    
