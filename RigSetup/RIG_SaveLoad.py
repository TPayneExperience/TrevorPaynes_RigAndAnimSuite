
'''
This will hold everything needed to read/write the rig file.
All LimbSetup, MeshDeformation and Animation data will be
packaged here for saving.
'''

class RIG_SaveLoad():
    def __init__(   self, 
                    nameMng,
                    fileMng,
                    jsonMng,
                    saveLoadSkel):
        self.fileMng = fileMng
        self.nameMng = nameMng
        self.jsonMng = jsonMng
        self.saveLoadSkel = saveLoadSkel

    def Save(self):
        data = self.saveLoadSkel.GetAllData()
        data['Rig Data'] = self._GetRigData()
        filePath = self.fileMng.GetOutputFile()
        self.jsonMng.Save(filePath, data)

    def Load(self, filePath):
        self.fileMng.SetOutputFile(filePath)
        data = self.jsonMng.Load(filePath)
        self._SetRigData(data['Rig Data'], filePath)
        self.saveLoadSkel.LoadData(data)

    def _GetRigData(self):
        data = {}
        data['Prefix'] = self.nameMng.GetPrefix()
        data['Naming Order'] = self.nameMng.GetNamingOrder()
        data['Show Prefix'] = self.nameMng.GetShowPrefix()
        data['Mesh File'] = self.fileMng.GetMeshPath()
        return data

    def _SetRigData(self, data, filePath):
        self.nameMng.SetPrefix(data['Prefix'])
        self.nameMng.SetNamingOrder(data['Naming Order'])
        self.nameMng.SetShowPrefix(data['Show Prefix'])
        self.fileMng.SetMeshPath(data['Mesh File'])
















