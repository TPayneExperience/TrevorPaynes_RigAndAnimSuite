

class SaveLoad_Manager():
    def __init__(self, 
                jsonMng,
                saveLoadSkel, 
                saveLoadBhv, 
                saveLoadApp,
                saveLoadSkin):
        self.jsonMng = jsonMng
        self.saveLoadSkel = saveLoadSkel
        self.saveLoadBhv = saveLoadBhv
        self.saveLoadApp = saveLoadApp
        self.saveLoadSkin = saveLoadSkin
    
    def Save_Skeleton(self, skelFilePath):  
        data = self.saveLoadSkel.GetAllData()
        self.jsonMng.Save(skelFilePath, data)

    def Save_Skel_Limbs(self, skelFilePath, limbIDs):
        data = self.saveLoadSkel.GetData(limbIDs)
        self.jsonMng.Save(skelFilePath, data)

    def Load_Skel_Limbs(self, skelFilePath):
        data = self.jsonMng.Load(skelFilePath)
        self.saveLoadSkel.LoadData(data)
    








