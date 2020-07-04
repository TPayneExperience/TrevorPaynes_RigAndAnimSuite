import json

class Json_Manager():
    def Save(self, filePath, dataDict):
        with open(filePath, 'w') as output:
            json.dump(dataDict, output)
    
    def Load(self, filePath):
        with open(filePath, 'r') as jsonFile:
            data = json.load(jsonFile)
        return data


