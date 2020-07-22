
import json

class Json_Manager():
    def Save(self, filePath, data):
        with open(filePath, 'w') as outputFile:
            json.dump(data, outputFile, indent=4)
    
    def Load(self, filePath):
        data = None
        with open(filePath, 'r') as readFile:
            data = json.load(readFile)
        return data



